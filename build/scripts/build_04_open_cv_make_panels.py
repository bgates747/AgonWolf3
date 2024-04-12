import cv2
import numpy as np
from PIL import Image
import sqlite3
import os
import shutil

def make_view_04_panels_lookup(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    cursor.execute('''DROP VIEW IF EXISTS qry_04_panels_lookup;''')
    conn.commit()
    cursor.execute("""
        CREATE VIEW qry_04_panels_lookup AS
        SELECT t1.cube_id, t1.poly_id, t1.face, t1.cube_x, t1.cube_y, t1.poly_x0, t1.poly_y0, t1.poly_x1, t1.poly_y1, t1.poly_x2, t1.poly_y2, t1.poly_x3, t1.poly_y3, t1.plot_x, t1.plot_y, t1.dim_x, t1.dim_y, t1.r, t1.g, t1.b, t1.mask_filename, t2.render_type, t2.render_obj_id, t2.scale, t2.align_vert, t2.align_horiz,
        t2.render_obj_id || '_' || printf('%03d', t1.panel_base_filename) as panel_base_filename
        FROM qry_01_polys as t1
        cross join (
                select distinct render_obj_id, 
                   coalesce(render_type, 'cube') as render_type, render_obj_id, 
                   coalesce(scale,100.00) as scale, coalesce(align_vert,'center') as align_vert, 
                   coalesce(align_horiz,'center') as align_horiz
                from tbl_02_tiles
                where is_active = 1 and render_type in('cube','sprite')
        ) as t2
        order by t2.render_obj_id, t1.poly_id;""")
    conn.commit()
    conn.close()

def fetch_panels_lookup_data(db_path):
    conn = sqlite3.connect(db_path)
    conn.row_factory = sqlite3.Row 
    cursor = conn.cursor()
    cursor.execute('''
        SELECT cube_id, poly_id, face, cube_x, cube_y, poly_x0, poly_y0, poly_x1, poly_y1, poly_x2, poly_y2, poly_x3, poly_y3, plot_x, plot_y, dim_x, dim_y, r, g, b, mask_filename, render_type, render_obj_id, scale, align_vert, align_horiz, panel_base_filename
        FROM qry_04_panels_lookup
                   -- where poly_id = 32
        ORDER BY render_obj_id, poly_id;''')
    return cursor.fetchall()

def perspective_transform_old(texture_path, current_poly_data, screen_width, screen_height):
    vertices = [
        (current_poly_data["poly_x0"], current_poly_data["poly_y0"]),
        (current_poly_data["poly_x1"], current_poly_data["poly_y1"]),
        (current_poly_data["poly_x2"], current_poly_data["poly_y2"]),
        (current_poly_data["poly_x3"], current_poly_data["poly_y3"]),
    ]
    image = cv2.imread(texture_path, cv2.IMREAD_UNCHANGED)
    # Identify min and max x,y coordinates of the polygon to determine its bounding box and set the appropriate initial scaling factor for the original image texture
    poly_min_x = min(vertices, key=lambda v: v[0])[0]
    poly_min_y = min(vertices, key=lambda v: v[1])[1]
    max_x = max(vertices, key=lambda v: v[0])[0]
    max_y = max(vertices, key=lambda v: v[1])[1]
    # Calculate the scaling factor based on the maximum x and y values of the vertices
    resampling_factor = max(max_x, max_y) / 16.0
    # Scale the source points accordingly
    resampled_texture_verts = np.float32([[0, 0], [16 * resampling_factor, 0], [16 * resampling_factor, 16 * resampling_factor], [0, 16 * resampling_factor]])
    # Scale the image using the calculated scaling factor with nearest neighbor interpolation
    image = cv2.resize(image, None, fx=resampling_factor, fy=resampling_factor, interpolation=cv2.INTER_NEAREST)
    # Calculate the shifts needed for x and y
    shift_x = -poly_min_x
    shift_y = -max_y
    # Apply the shifts to all vertices
    vertices = [(x + shift_x, y + shift_y) for x, y in vertices]
    # Ensure the bottom of the tallest base has a y-coordinate of 0 by finding the vertex with the maximum y-value (post-shift)
    min_y_shift = min(vertices, key=lambda v: v[1])[1]
    # If any y-coordinate is still negative, adjust all y-coordinates up
    if min_y_shift < 0:
        vertices = [(x, y - min_y_shift) for x, y in vertices]
    # Convert the points to float32 numpy array
    vertices = np.float32(vertices)
    # Compute the transformation matrix
    M = cv2.getPerspectiveTransform(resampled_texture_verts, vertices)
    # Dimensions of the output image
    width = int(max(vertices[:, 0]) - min(vertices[:, 0])) 
    height = int(max(vertices[:, 1]) - min(vertices[:, 1])) 
    # Split the image into its channels
    channels = cv2.split(image)
    # Apply the perspective warp with nearest neighbor interpolation to each channel
    trans_channels = [cv2.warpPerspective(ch, M, (width, height), flags=cv2.INTER_NEAREST) for ch in channels]
    # Merge the channels back together
    trans_image = cv2.merge(trans_channels)
    trans_image = cv2.cvtColor(trans_image, cv2.COLOR_BGRA2RGBA)

    # Get the dimensions of the transformed image
    trans_img_size = trans_image.shape
    img_width, img_height = trans_img_size[1], trans_img_size[0]
    # Recompute polygon's bounding box after perspective transformation
    # Based on the trans_img_size
    max_x = poly_min_x + img_width
    max_y = poly_min_y + img_height
    # Crop the image to fit within the screen dimensions
    # maintaining the original polygon's relative position
    x0 = int(max(0, -poly_min_x))
    y0 = int(max(0, -poly_min_y))
    x1 = int(min(screen_width, img_width) + x0)
    y1 = int(min(screen_height, img_height) + y0)
    cropped_image = trans_image[y0:y1, x0:x1]
    return Image.fromarray(cropped_image) 

def perspective_transform(texture_path, poly_data, screen_width, screen_height):
    scale = poly_data["scale"] / 100  # Convert scale from percentage to fractional
    align_horiz = poly_data["align_horiz"]
    align_vert = poly_data["align_vert"]

    # Open the texture image and get its dimensions
    img_tex = cv2.imread(texture_path, cv2.IMREAD_UNCHANGED)
    img_tex_dim_x, img_tex_dim_y = img_tex.shape[1], img_tex.shape[0]
    img_tex_max_dim = max(img_tex_dim_x, img_tex_dim_y)

    poly_verts = [
        (poly_data["poly_x0"], poly_data["poly_y0"]),
        (poly_data["poly_x1"], poly_data["poly_y1"]),
        (poly_data["poly_x2"], poly_data["poly_y2"]),
        (poly_data["poly_x3"], poly_data["poly_y3"]),
    ]
    
    # Identify min and max x,y coordinates of the polygon to determine its bounding box and set the appropriate initial scaling factor for the original image texture
    poly_min_x = min(poly_verts, key=lambda v: v[0])[0]
    poly_min_y = min(poly_verts, key=lambda v: v[1])[1]
    poly_max_x = max(poly_verts, key=lambda v: v[0])[0]
    poly_max_y = max(poly_verts, key=lambda v: v[1])[1]

    # Find the polygon's geometric center
    poly_center_x = (poly_min_x + poly_max_x) / 2
    poly_center_y = (poly_min_y + poly_max_y) / 2

    # Scale the polygon's vertices relative to the center of the polygon using the scale parameter from poly_data
    scaled_poly_verts = [(poly_center_x + scale * (x - poly_center_x), poly_center_y + scale * (y - poly_center_y)) for x, y in poly_verts]
    
    # Compute the scaled poygon's min and max x,y coordinates
    scaled_poly_min_x = min(scaled_poly_verts, key=lambda v: v[0])[0]
    scaled_poly_min_y = min(scaled_poly_verts, key=lambda v: v[1])[1]
    scaled_poly_max_x = max(scaled_poly_verts, key=lambda v: v[0])[0]
    scaled_poly_max_y = max(scaled_poly_verts, key=lambda v: v[1])[1]

    # Calculate scaled poly dimensions
    scaled_poly_width = int(scaled_poly_max_x - scaled_poly_min_x)
    scaled_poly_height = int(scaled_poly_max_y - scaled_poly_min_y)
    
    # Calculate the texture resampling factor based on the relative sizes of the image and scaled polygon bounding boxes
    resampling_factor = max(scaled_poly_width, scaled_poly_height) / img_tex_max_dim
    
    # Scale the source texture's bounding vertices accordingly
    resampled_texture_verts = np.float32([[0, 0], [img_tex_dim_x * resampling_factor, 0], [img_tex_dim_x * resampling_factor, img_tex_dim_y * resampling_factor], [0, img_tex_dim_y * resampling_factor]])
    
    # Scale the texture image using the calculated scaling factor with nearest neighbor interpolation
    resampled_img_tex = cv2.resize(img_tex, (int(img_tex_dim_x * resampling_factor), int(img_tex_dim_y * resampling_factor)), interpolation=cv2.INTER_NEAREST)

    # The perspective transform requires shifting the upper left corner of the scaled polygon to the origin
    scaled_shift_x = -scaled_poly_min_x
    scaled_shift_y = -scaled_poly_min_y
    # Ensure the bottom of the tallest base has a y-coordinate of 0 by finding the vertex with the maximum y-value (post-shift)
    min_y_shift = min(scaled_poly_verts, key=lambda v: v[1])[1]
    # If any y-coordinate is still negative, adjust all y-coordinates up
    if min_y_shift < 0:
        scaled_poly_verts = [(x, y - min_y_shift) for x, y in scaled_poly_verts]
    
    # Apply the shifts to the scaled polygon's vertices
    shifted_poly_verts = [(x + scaled_shift_x, y + scaled_shift_y) for x, y in scaled_poly_verts]

    # Convert the points to float32 numpy array
    shifted_poly_verts = np.float32(shifted_poly_verts)
    
    # Compute the transformation matrix
    M = cv2.getPerspectiveTransform(resampled_texture_verts, shifted_poly_verts)

    # Split the image into its channels
    channels = cv2.split(resampled_img_tex)
    
    # Apply the perspective warp with nearest neighbor interpolation to each channel
    trans_channels = [cv2.warpPerspective(ch, M, (scaled_poly_width, scaled_poly_height), flags=cv2.INTER_NEAREST) for ch in channels]
    
    # Merge the channels back together
    trans_image = cv2.merge(trans_channels)
    trans_image = cv2.cvtColor(trans_image, cv2.COLOR_BGRA2RGBA)

    # Compute offset values for aligning the transformed image with the original polygon's bounding box
    offset_x, offset_y = align(align_horiz, align_vert, screen_width, screen_height, scaled_poly_width, scaled_poly_height)
    scaled_poly_min_x += offset_x
    scaled_poly_min_y += offset_y

    # Crop the image to fit within the screen dimensions maintaining the original polygon's relative position
    x0 = int(max(0, -scaled_poly_min_x))
    y0 = int(max(0, -scaled_poly_min_y))
    x1 = int(min(screen_width, scaled_poly_width) + x0)
    y1 = int(min(screen_height, scaled_poly_height) + y0)
    cropped_image = trans_image[y0:y1, x0:x1]

    return Image.fromarray(cropped_image) 


def align(align_horiz, align_vert, screen_width, screen_height, scaled_poly_width, scaled_poly_height):
    # Align the transformed image with the original polygon's bounding box according to the alignment parameters
    offset_x = 0
    offset_y = 0
    if align_horiz == 'left':
        offset_x = 0
    elif align_horiz == 'center':
        offset_x = (screen_width - scaled_poly_width ) // 2
    elif align_horiz == 'right':
        offset_x = screen_width - scaled_poly_width

    if align_vert == 'top':
        offset_y = 0
    elif align_vert == 'center':
        offset_y = (screen_height - scaled_poly_height ) // 2
    elif align_vert == 'bottom':
        offset_y = screen_height - scaled_poly_height

    return offset_x, offset_y

def update_tbl_01_polys(db_path, panels_png_dir):
    conn = sqlite3.connect(db_path)
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()
    cursor.execute("""SELECT MIN(render_obj_id) as min_render_obj_id FROM qry_04_panels_lookup
                   WHERE render_type = 'cube';""")
    min_render_obj_id = cursor.fetchone()['min_render_obj_id']
    cursor.execute(f"""
        SELECT poly_id, face, cube_y, panel_base_filename
        FROM qry_04_panels_lookup
        WHERE render_obj_id = {min_render_obj_id}
        ORDER BY poly_id;""")
    for row in cursor.fetchall():
        poly_id = row['poly_id']
        cube_y = row['cube_y']
        panel_base_filename = row['panel_base_filename']
        panel_filepath = os.path.join(panels_png_dir, f"{panel_base_filename}.png")
        # Open the image file and get its dimensions
        image = Image.open(panel_filepath)
        image_width, image_height = image.size
        cursor.execute(f"""
            UPDATE tbl_01_polys
            SET dim_x = {image_width}, dim_y = {image_height}
            WHERE (poly_id = {poly_id} AND face <> 'south') 
            OR (face = 'south' AND cube_y = {cube_y});""")
    conn.commit()
    cursor.execute(f"""UPDATE tbl_01_polys SET plot_x = max(0, plot_x), plot_y = max(0, plot_y);""")
    conn.commit()
    conn.close()

def make_panels(db_path, panels_png_dir, textures_dir, screen_width, screen_height):
    poly_data = fetch_panels_lookup_data(db_path)
    for current_poly_data in poly_data:
        texture_path = os.path.join(textures_dir, f"thumb_{current_poly_data['render_obj_id']}.png")
        face = current_poly_data['face']
        cube_x = current_poly_data['cube_x']
        render_type = current_poly_data['render_type']

        if (face == 'south' and cube_x == 0) or (face != 'south' and render_type == 'cube'):
            output_path = os.path.join(panels_png_dir, f"{current_poly_data['panel_base_filename']}.png")
            trans_image = perspective_transform(texture_path, current_poly_data, screen_width, screen_height)
            trans_image.save(output_path)
    # Ensure the polys table bounding box dimenions match the actual image sizes
    # and update tbl_01_polys accordingly; this is especially important for the south face polys as they share the same texture bitmmap, but often have slightly different dimensions due to rounding errors in the polygon calculations
    update_tbl_01_polys(db_path, panels_png_dir)

def make_panels_and_sprites(db_path, panels_png_dir, textures_dir, screen_width, screen_height):
    if os.path.exists(panels_png_dir):
        shutil.rmtree(panels_png_dir)
    os.makedirs(panels_png_dir)
    make_view_04_panels_lookup(db_path)
    make_panels(db_path, panels_png_dir, textures_dir, screen_width, screen_height)
    
if __name__ == "__main__":
    db_path = f'build/data/build.db'
    panels_png_dir = f'build/panels/png'
    textures_dir = f'build/panels/thumbs'
    screen_width = 320
    screen_height = 160

    make_panels_and_sprites(db_path, panels_png_dir, textures_dir, screen_width, screen_height)