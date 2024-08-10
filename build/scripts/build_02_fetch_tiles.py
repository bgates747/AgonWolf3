import pandas as pd
import sqlite3
from PIL import Image
import os
import shutil
from agonImages import rgba8_to_img

# This routine extracts the 16x16 Mapmaker tiles and makes .png images out of them
# These images are eventually scaled and projected into the textured 3d panels
def make_thumbs(db_path, mapmaker_tiles_dir, thumbs_tgt_dir, upload_dir):
    # Create the thumbs target directory
    if os.path.exists(thumbs_tgt_dir):
        shutil.rmtree(thumbs_tgt_dir)
    os.makedirs(thumbs_tgt_dir)

    # Create the tiles upload directory
    if os.path.exists(upload_dir):
        shutil.rmtree(upload_dir)
    os.makedirs(upload_dir)
    
    conn = sqlite3.connect(db_path)
    conn.row_factory = sqlite3.Row  # For easier column access by name
    cursor = conn.cursor()
    
    cursor.execute('''
        SELECT bank_id, obj_id, render_type, scale, dim_x, dim_y
        FROM tbl_02_tiles 
        WHERE is_active = 1;
    ''')
    
    for tile_row in cursor.fetchall():
        obj_id = tile_row['obj_id']
        bank_id = tile_row['bank_id']
        src_img_dir = os.path.join(mapmaker_tiles_dir, str(bank_id))
        texture_filepath = os.path.join(src_img_dir, f'{obj_id % 10}.RGB')

        # Convert the rgba8 image to a PIL image
        texture_img = rgba8_to_img(texture_filepath, 16, 16)

        tgt_thumb_filepath = os.path.join(thumbs_tgt_dir, f'thumb_{obj_id}.png')
        texture_img.save(tgt_thumb_filepath) 

        # copy the source image to the upload directory
        tgt_upload_filepath = os.path.join(upload_dir, f'{obj_id}.rgba8')
        shutil.copy(texture_filepath, tgt_upload_filepath)
    conn.close()

def make_tbl_tiles(db_path, src_tiles_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    cursor.execute(f'DROP TABLE IF EXISTS tbl_02_tiles')
    cursor.execute(f'''
        CREATE TABLE tbl_02_tiles (
            bank_id INT,
            obj_id INT PRIMARY KEY,
            tile_name TEXT,
            is_active INT,
            is_door INT,
            is_wall INT,
            is_trigger INT,
            is_blocking INT,
            render_type TEXT,
            render_obj_id INT,
            scale REAL,
            align_vert TEXT,
            align_horiz TEXT,
            special TEXT,
            notes TEXT,
            dim_x INT,
            dim_y INT
        )
    ''')
    df_tiles = pd.read_csv(src_tiles_path, sep='\t')
    # df_tiles = df_tiles[df_tiles['is_active'] == 1]
    df_tiles.to_sql('tbl_02_tiles', conn, if_exists='replace', index=False, 
        dtype={
            'bank_id': 'INTEGER',
            'obj_id': 'INTEGER',
            'tile_name': 'TEXT',
            'is_active': 'INTEGER',
            'is_door': 'INTEGER',
            'is_wall': 'INTEGER',
            'is_trigger': 'INTEGER',
            'is_blocking': 'INTEGER',
            'render_type': 'TEXT',
            'render_obj_id': 'INTEGER',
            'scale': 'REAL',
            'align_vert': 'TEXT',
            'align_horiz': 'TEXT',
            'special': 'TEXT',
            'notes': 'TEXT',
            'dim_x': 'INTEGER',
            'dim_y': 'INTEGER'
        })
    conn.commit()
    cursor.execute("""UPDATE tbl_02_tiles SET render_obj_id = obj_id WHERE render_obj_id IS NULL AND is_active = 1;""")
    conn.commit()
    conn.close()

def make_qry_img_idx(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    cursor.execute(f'DROP VIEW IF EXISTS qry_02_img_idx')
    cursor.execute(f'''
        CREATE VIEW qry_02_img_idx AS
        SELECT ROW_NUMBER() OVER (PARTITION BY render_type ORDER BY obj_id)-1 AS img_idx,
        bank_id, obj_id, tile_name, is_active, is_door, is_wall, is_trigger, is_blocking, render_type, render_obj_id, scale, align_vert, align_horiz, special, notes, dim_x, dim_y
        FROM tbl_02_tiles
        WHERE obj_id = render_obj_id AND is_active = 1 AND render_type in('cube', 'sprite')
    ''')
    conn.commit()
    conn.close()

def fetch_tiles(db_path, src_tiles_path, mapmaker_tiles_dir, thumbs_tgt_dir, upload_dir):
    make_tbl_tiles(db_path, src_tiles_path)
    make_qry_img_idx(db_path)
    make_thumbs(db_path, mapmaker_tiles_dir, thumbs_tgt_dir, upload_dir)

if __name__ == "__main__":
    db_path = 'build/data/build.db'
    src_tiles_path = 'src/mapmaker/tiles.txt'
    mapmaker_tiles_dir = 'src/mapmaker'
    src_tiles_path = f'{mapmaker_tiles_dir}/tiles.txt'
    uvs_tgt_dir = 'build/panels/uv'
    thumbs_tgt_dir = 'build/panels/thumbs'
    upload_dir = 'tgt/tiles'

    fetch_tiles(db_path, src_tiles_path, mapmaker_tiles_dir, thumbs_tgt_dir, upload_dir)