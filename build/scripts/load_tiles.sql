-- SQLite
-- SELECT t2.img_idx, t1.obj_id, t1.tile_name, t1.is_active, t1.is_door, t1.is_wall, t1.is_trigger, t1.is_blocking, t1.render_type, t1.render_obj_id, t1.scale, t1.align_vert, t1.align_horiz, t1.special, t1.notes
-- FROM tbl_02_tiles as t1
-- INNER JOIN qry_02_img_idx as t2
-- ON t1.render_obj_id = t2.obj_id
-- WHERE t1.render_type in('cube', 'sprite')
-- ORDER BY t1.render_type, t1.obj_id;

SELECT img_idx, obj_id, tile_name, is_active, is_door, is_wall, is_trigger, is_blocking, render_type, render_obj_id, scale, align_vert, align_horiz, special, notes, render_obj_id || '.rgba8' as panel_base_filename
FROM qry_02_img_idx
ORDER BY render_type, obj_id;