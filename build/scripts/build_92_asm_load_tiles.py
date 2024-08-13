import sqlite3

def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

def get_tiles_data(db_path, render_type):
    conn = sqlite3.connect(db_path)
    conn.row_factory = dict_factory
    cursor = conn.cursor()

    query = f"""
        SELECT img_idx, obj_id, tile_name, is_active, is_door, is_wall, is_trigger, is_blocking, render_type, render_obj_id, scale, align_vert, align_horiz, special, notes, dim_x, dim_y
        FROM qry_02_img_idx
        WHERE render_type = '{render_type}'
        ORDER BY render_type, obj_id;
    """
    cursor.execute(query)
    rows = cursor.fetchall()
    conn.close()
    return rows

# This script is responsible for creating the tiles.inc file which is used by the assembly code to load the tiles into VDP buffers.
def make_asm_img_load(tiles_inc_path, render_type, src_img_dir, unique_rows):
    with open(tiles_inc_path, 'a') as asm_writer: # append to the file
        asm_writer.write(f"\n; {render_type} buffer ids:\n")
        for row in unique_rows:
            render_obj_id = row['render_obj_id']
            asm_writer.write(f"BUF_{render_obj_id}: equ 0x{render_obj_id:04X}\n")

        asm_writer.write(f"\n{render_type}_num_tiles: equ {len(unique_rows)} \n")

        asm_writer.write(f"\n; {render_type} buffer id reverse lookup:\n")
        asm_writer.write(f"{render_type}_buffer_id_lut:\n")
        for row in unique_rows:
            render_obj_id = row['render_obj_id']
            asm_writer.write(f"\tdl BUF_{render_obj_id}\n")

        asm_writer.write(f"\n; {render_type} load routines jump table:\n")
        asm_writer.write(f"{render_type}_load_tiles_table:\n")
        for row in unique_rows:
            render_obj_id = row['render_obj_id']
            asm_writer.write(f"\tdl ld_{render_obj_id}\n")

        if render_type == "cube":
            asm_writer.write(f"\n; TexPanelLut for {render_type} tiles:\n")
            asm_writer.write(f"; typedef struct TexPanel {{\n")
            asm_writer.write(f";     uint8_t img_idx;           // Image Index (handled on the vdp side so no need to load it here.\n")
            asm_writer.write(f";     uint16_t texture_id;       // Texture ID for the panel\n")
            asm_writer.write(f";     uint16_t width;            // Texture width\n")
            asm_writer.write(f";     uint16_t height;           // Texture height\n")
            asm_writer.write(f"; }} TexPanel;\n")

            asm_writer.write(f"{render_type}_tex_panel_lut:")
            for row in unique_rows:
                render_obj_id = row['render_obj_id']
                dim_x = row['dim_x']
                dim_y = row['dim_y']
                asm_writer.write(f"\n\tdw 0x{render_obj_id:04X}")
                asm_writer.write(f",{dim_x}")
                asm_writer.write(f",{dim_y}")

        asm_writer.write(f"\n\n; Import {render_type} .rgba8 bitmap files and load them into VDP buffers\n")

        for row in unique_rows:
            render_obj_id = row['render_obj_id']
            dim_x = row['dim_x']
            dim_y = row['dim_y']
            constName = f"BUF_{render_obj_id}"
            asm_writer.write(f"\n")
            asm_writer.write(f"ld_{render_obj_id}:\n")
            asm_writer.write(f"\tld hl,{constName}\n")
            asm_writer.write(f"\tld bc,{dim_x}\n")
            asm_writer.write(f"\tld de,{dim_y}\n")
            asm_writer.write(f"\tld ix,{dim_x*dim_y*4}\n") # 4 bytes per pixel in rgba8 format
            asm_writer.write(f"\tld iy,F{render_obj_id}\n")
            asm_writer.write(f"\tld (cur_filename),iy\n")
            asm_writer.write("\tcall vdu_load_img_8\n")
            asm_writer.write("\tret\n")

        asm_writer.write("\n; File name lookups:\n")
        for row in unique_rows:
            render_obj_id = row['render_obj_id']
            asm_writer.write(f"F{render_obj_id}: db \"{src_img_dir}/{render_obj_id}.rgba8\",0\n")

def make_asm_images_inc(db_path, tiles_inc_path):
    # create target assembly file and write header information
    with open(tiles_inc_path, 'w') as asm_writer:
        asm_writer.write("; This file is created by build_92_asm_load_tiles.py, do not edit it!\n")

    # generate the code for the 3D tiles
    render_type = "cube"
    src_img_dir = "tiles"
    unique_rows = get_tiles_data(db_path, render_type)
    make_asm_img_load(tiles_inc_path, render_type, src_img_dir, unique_rows)

    # generate the code for the 3D sprites
    render_type = "sprite"
    src_img_dir = "tiles"
    unique_rows = get_tiles_data(db_path, render_type)
    make_asm_img_load(tiles_inc_path, render_type, src_img_dir, unique_rows)

if __name__ == "__main__":
    db_path = 'build/data/build.db'
    tiles_inc_path = "src/asm/images.inc"
    
    make_asm_images_inc(db_path, tiles_inc_path)
