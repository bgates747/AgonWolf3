import subprocess
import os
import shutil

def do_all_the_things(db_path, map_dim_x, map_dim_y, tgt_dir, floor_nums):
    # build_00_delete_tgt_dir.py
    if do_00_delete_tgt_dir:
        print(f"Deleting target directory: {tgt_dir}")
        # Check and delete the target directory if necessary
        if os.path.exists(tgt_dir):
            shutil.rmtree(tgt_dir)
        os.makedirs(tgt_dir)
        # delete db_path if it exists
        if os.path.exists(db_path):
            os.remove(db_path)

    # build_02_fetch_tiles.py
    src_tiles_path = 'src/mapmaker/tiles.txt'
    mapmaker_tiles_dir = 'src/mapmaker'
    src_tiles_path = f'{mapmaker_tiles_dir}/tiles.txt'
    thumbs_tgt_dir = 'build/panels/thumbs'
    upload_dir = 'tgt/tiles'
    if do_02_fetch_tiles:
        print(f"build_02_fetch_tiles: Fetching tiles")
        from build_02_fetch_tiles import fetch_tiles
        fetch_tiles(db_path, src_tiles_path, mapmaker_tiles_dir, thumbs_tgt_dir, upload_dir)

# build_06b_map_import_mapmaker
    map_src_dir = f'src/mapmaker'
    if do_06_import_mapmaker_files:
        print(f"build_06_map_import_mapmaker: Importing mapmaker files")
        from build_06_map_import_mapmaker import import_mapmaker
        for floor_num in floor_nums:
            import_mapmaker(db_path, floor_num, map_src_dir, map_dim_x, map_dim_y)

# build_08_make_sfx.py
    sfx_src_dir = 'src/assets/sfx'
    sfx_tgt_dir = 'tgt/sfx'
    if do_08_make_sfx:
        print(f"build_08_make_sfx: Making sound effects")
        from build_08_make_sfx import make_sfx
        make_sfx(db_path, sfx_src_dir, sfx_tgt_dir)
        
# build_92_asm_load_tiles.py
    if do_92_asm_load_tiles:
        print(f"build_92_asm_load_tiles: Making image load assembler file")
        from build_92_asm_load_tiles import make_asm_images_inc
        panels_inc_path = f"src/asm/images.asm"
        make_asm_images_inc(db_path, panels_inc_path)

# build_91a_asm_font.py
    if do_91a_asm_font:
        start_buffer_id = 0x0100
        print(f"build_91a_asm_font: Making font assembler file")
        from build_91a_asm_font import maken_zee_fonts
        maken_zee_fonts(start_buffer_id)

# build_91b_asm_ui.py
    if do_91b_asm_ui:
        print(f"build_91b_asm_ui: Making UI assembler file")
        from build_91b_asm_ui import make_tbl_91b_UI, make_rgba2_files, make_asm_ui
        ui_inc_path = "src/asm/ui_img.asm"
        src_png_dir = "src/assets/images/ui"
        tgt_cmp_rgba2_dir = "tgt/ui"
        start_buffer_id = 0x0300
        make_tbl_91b_UI(db_path, src_png_dir)
        make_rgba2_files(db_path, src_png_dir, tgt_cmp_rgba2_dir)
        make_asm_ui(db_path, ui_inc_path, start_buffer_id)

# build_91c_asm_map_masks.py
    if do_91c_asm_map_masks:
        print(f"build_91c_asm_map_masks: Making map masks assembler file")
        from build_91c_asm_map_masks import asm_make_map_masks, update_maps_asm
        maps_tgt_dir = 'tgt/maps'
        asm_make_map_masks(db_path, floor_nums, maps_tgt_dir)
        update_maps_asm(db_path)

# build_91d_asm_ui_bj.py
    if do_91d_asm_ui_bj:
        print(f"build_91d_asm_ui_bj: Making BJ UI assembler file")
        from build_91d_asm_ui_bj import asm_ui_bj
        ui_inc_path = "src/asm/ui_img_bj.asm"
        src_png_dir = "src/assets/images/ui/bj"
        tgt_rgba2_dir = "tgt/ui/bj"
        start_buffer_id = 0x0400
        asm_ui_bj(db_path, ui_inc_path, src_png_dir, tgt_rgba2_dir, start_buffer_id)

# build_98_asm_sfx.py
    sfx_inc_path = 'src/asm/sfx.asm'
    sfx_tgt_dir = 'sfx'
    if do_98_asm_sfx:
        print(f"build_98_asm_sfx: Making sfx assembler file")
        from build_98_asm_sfx import make_asm_sfx
        start_buffer_id = 0x0500 
        make_asm_sfx(db_path, sfx_inc_path, sfx_tgt_dir, start_buffer_id)

# build_99_asm_assemble.py
    if do_99_asm_assemble:
        print(f"build_99_asm_assemble: Assembling application")
        from build_99_asm_assemble import do_assembly
        src_file = 'src/asm/wolf3d.asm'
        do_assembly(src_file, tgt_dir)


if __name__ == "__main__":
# Set build parameters
    # Set paths
    db_path = 'build/data/build.db' # Literally everything the app needs to build goes through this database
    tgt_dir = 'tgt' # This is where all the build artifacts go

# By default don't run any scripts
    do_00_delete_tgt_dir = False
# Start here if you've changed tile textures or definitions
    do_02_fetch_tiles = False
# Start here if all you've done is edit maps but not changed tile textures or defintionss
    do_06_import_mapmaker_files = False
    do_08_make_sfx = False
    do_92_asm_load_tiles = False
    do_91a_asm_font = False
    do_91b_asm_ui = False
    do_91c_asm_map_masks = False
    do_91d_asm_ui_bj = False
    do_98_asm_sfx = False
# Start here if all you've done is change assembler code but not map defintions, tile textures, or 3d gemoetry
    do_99_asm_assemble = False

# I find it easier to simply comment out the scripts I don't want to run
    do_00_delete_tgt_dir = True
# Start here if you've changed tile textures or definitions
    do_02_fetch_tiles = True
# Start here if all you've done is edit maps but not changed tile textures or defintionss
    do_06_import_mapmaker_files = True
    do_08_make_sfx = True
    do_92_asm_load_tiles = True
    do_91a_asm_font = True
    do_91b_asm_ui = True
    do_91c_asm_map_masks = True
    do_91d_asm_ui_bj = True
    do_98_asm_sfx = True
# Start here if all you've done is change assembler code but not map defintions, tile textures, or 3d gemoetry
    do_99_asm_assemble = True

# Global parameters for all build scripts
    map_dim_x, map_dim_y = 16, 16 # Don't mess with this

    # Set which maps to build
    floor_nums = list(range(1))

    do_all_the_things(db_path, map_dim_x, map_dim_y, tgt_dir, floor_nums)
