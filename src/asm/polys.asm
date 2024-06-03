num_polys: equ 45

polys_lookup_plot:
;	   plot_x,  plot_y:
	dl 0x000000,0x00003E ; poly_id:0 00
	dl 0x000023,0x00003E ; poly_id:1 01
	dl 0x000047,0x00003E ; poly_id:2 02
	dl 0x00006A,0x00003E ; poly_id:3 03
	dl 0x00008E,0x00003E ; poly_id:4 04
	dl 0x0000B1,0x00003E ; poly_id:5 05
	dl 0x0000D5,0x00003E ; poly_id:6 06
	dl 0x0000F8,0x00003E ; poly_id:7 07
	dl 0x00011C,0x00003E ; poly_id:8 08
	dl 0x000000,0x000039 ; poly_id:9 09
	dl 0x00002E,0x000039 ; poly_id:10 0A
	dl 0x00005B,0x000039 ; poly_id:11 0B
	dl 0x000089,0x000039 ; poly_id:12 0C
	dl 0x0000B1,0x000039 ; poly_id:13 0D
	dl 0x0000D5,0x000039 ; poly_id:14 0E
	dl 0x0000F8,0x000039 ; poly_id:15 0F
	dl 0x00011C,0x000039 ; poly_id:16 10
	dl 0x000000,0x000039 ; poly_id:17 11
	dl 0x00002E,0x000039 ; poly_id:18 12
	dl 0x00005B,0x000039 ; poly_id:19 13
	dl 0x000089,0x000039 ; poly_id:20 14
	dl 0x0000B6,0x000039 ; poly_id:21 15
	dl 0x0000E4,0x000039 ; poly_id:22 16
	dl 0x000111,0x000039 ; poly_id:23 17
	dl 0x000000,0x000030 ; poly_id:24 18
	dl 0x00003F,0x000030 ; poly_id:25 19
	dl 0x000080,0x000030 ; poly_id:26 1A
	dl 0x0000B6,0x000030 ; poly_id:27 1B
	dl 0x0000E4,0x000030 ; poly_id:28 1C
	dl 0x000111,0x000030 ; poly_id:29 1D
	dl 0x000000,0x000030 ; poly_id:30 1E
	dl 0x00003F,0x000030 ; poly_id:31 1F
	dl 0x000080,0x000030 ; poly_id:32 20
	dl 0x0000C0,0x000030 ; poly_id:33 21
	dl 0x000100,0x000030 ; poly_id:34 22
	dl 0x000000,0x00001A ; poly_id:35 23
	dl 0x00006A,0x00001A ; poly_id:36 24
	dl 0x0000C0,0x00001A ; poly_id:37 25
	dl 0x000100,0x00001A ; poly_id:38 26
	dl 0x000000,0x00001A ; poly_id:39 27
	dl 0x00006A,0x00001A ; poly_id:40 28
	dl 0x0000D5,0x00001A ; poly_id:41 29
	dl 0x000000,0x000000 ; poly_id:42 2A
	dl 0x0000D5,0x000000 ; poly_id:43 2B
	dl 0x000000,0x000000 ; poly_id:44 2C

cube_poly_idx_lookup:
;	 img_idx,  poly_id
	db 0 ; poly_id:0 0
	db 0 ; poly_id:1 1
	db 0 ; poly_id:2 2
	db 0 ; poly_id:3 3
	db 0 ; poly_id:4 4
	db 0 ; poly_id:5 5
	db 0 ; poly_id:6 6
	db 0 ; poly_id:7 7
	db 0 ; poly_id:8 8
	db 1 ; poly_id:9 9
	db 2 ; poly_id:10 10
	db 3 ; poly_id:11 11
	db 4 ; poly_id:12 12
	db 5 ; poly_id:13 13
	db 6 ; poly_id:14 14
	db 7 ; poly_id:15 15
	db 8 ; poly_id:16 16
	db 9 ; poly_id:17 17
	db 9 ; poly_id:18 18
	db 9 ; poly_id:19 19
	db 9 ; poly_id:20 20
	db 9 ; poly_id:21 21
	db 9 ; poly_id:22 22
	db 9 ; poly_id:23 23
	db 10 ; poly_id:24 24
	db 11 ; poly_id:25 25
	db 12 ; poly_id:26 26
	db 13 ; poly_id:27 27
	db 14 ; poly_id:28 28
	db 15 ; poly_id:29 29
	db 16 ; poly_id:30 30
	db 16 ; poly_id:31 31
	db 16 ; poly_id:32 32
	db 16 ; poly_id:33 33
	db 16 ; poly_id:34 34
	db 17 ; poly_id:35 35
	db 18 ; poly_id:36 36
	db 19 ; poly_id:37 37
	db 20 ; poly_id:38 38
	db 21 ; poly_id:39 39
	db 21 ; poly_id:40 40
	db 21 ; poly_id:41 41
	db 22 ; poly_id:42 42
	db 23 ; poly_id:43 43
	db 24 ; poly_id:44 44

cube_img_idx_lookup:
;	 img_idx,  bank_id,  obj_id,  tile_name
	dl BUF_10_004 ; idx:0 render_obj_id:10 LIGHT GREY WALL
	dl BUF_11_004 ; idx:1 render_obj_id:11 JAIL CELL
	dl BUF_12_004 ; idx:2 render_obj_id:12 STONE ARCH BIRD
	dl BUF_13_004 ; idx:3 render_obj_id:13 DARK GREY WALL
	dl BUF_14_004 ; idx:4 render_obj_id:14 WOOD WALL
	dl BUF_15_004 ; idx:5 render_obj_id:15 HANGING FLAG
	dl BUF_16_004 ; idx:6 render_obj_id:16 WOOD EAGLE
	dl BUF_17_004 ; idx:7 render_obj_id:17 BLUE WALL
	dl BUF_57_004 ; idx:8 render_obj_id:57 REGULAR DOOR
	dl BUF_58_004 ; idx:9 render_obj_id:58 ELEVATOR SWITCH
	dl BUF_59_004 ; idx:10 render_obj_id:59 ELEVATOR DOOR

; map_delta_x,  map_delta_y
polys_map_deltas_0: ; north orientation
	db 0xFC,0xFB ; poly_id:0 00
	db 0xFD,0xFB ; poly_id:1 01
	db 0xFE,0xFB ; poly_id:2 02
	db 0xFF,0xFB ; poly_id:3 03
	db 0x00,0xFB ; poly_id:4 04
	db 0x01,0xFB ; poly_id:5 05
	db 0x02,0xFB ; poly_id:6 06
	db 0x03,0xFB ; poly_id:7 07
	db 0x04,0xFB ; poly_id:8 08
	db 0xFC,0xFC ; poly_id:9 09
	db 0xFD,0xFC ; poly_id:10 0A
	db 0xFE,0xFC ; poly_id:11 0B
	db 0xFF,0xFC ; poly_id:12 0C
	db 0x01,0xFC ; poly_id:13 0D
	db 0x02,0xFC ; poly_id:14 0E
	db 0x03,0xFC ; poly_id:15 0F
	db 0x04,0xFC ; poly_id:16 10
	db 0xFD,0xFC ; poly_id:17 11
	db 0xFE,0xFC ; poly_id:18 12
	db 0xFF,0xFC ; poly_id:19 13
	db 0x00,0xFC ; poly_id:20 14
	db 0x01,0xFC ; poly_id:21 15
	db 0x02,0xFC ; poly_id:22 16
	db 0x03,0xFC ; poly_id:23 17
	db 0xFD,0xFD ; poly_id:24 18
	db 0xFE,0xFD ; poly_id:25 19
	db 0xFF,0xFD ; poly_id:26 1A
	db 0x01,0xFD ; poly_id:27 1B
	db 0x02,0xFD ; poly_id:28 1C
	db 0x03,0xFD ; poly_id:29 1D
	db 0xFE,0xFD ; poly_id:30 1E
	db 0xFF,0xFD ; poly_id:31 1F
	db 0x00,0xFD ; poly_id:32 20
	db 0x01,0xFD ; poly_id:33 21
	db 0x02,0xFD ; poly_id:34 22
	db 0xFE,0xFE ; poly_id:35 23
	db 0xFF,0xFE ; poly_id:36 24
	db 0x01,0xFE ; poly_id:37 25
	db 0x02,0xFE ; poly_id:38 26
	db 0xFF,0xFE ; poly_id:39 27
	db 0x00,0xFE ; poly_id:40 28
	db 0x01,0xFE ; poly_id:41 29
	db 0xFF,0xFF ; poly_id:42 2A
	db 0x01,0xFF ; poly_id:43 2B
	db 0x00,0xFF ; poly_id:44 2C

polys_map_deltas_1: ; east orientation
	db 0x05,0xFC ; poly_id:0 00
	db 0x05,0xFD ; poly_id:1 01
	db 0x05,0xFE ; poly_id:2 02
	db 0x05,0xFF ; poly_id:3 03
	db 0x05,0x00 ; poly_id:4 04
	db 0x05,0x01 ; poly_id:5 05
	db 0x05,0x02 ; poly_id:6 06
	db 0x05,0x03 ; poly_id:7 07
	db 0x05,0x04 ; poly_id:8 08
	db 0x04,0xFC ; poly_id:9 09
	db 0x04,0xFD ; poly_id:10 0A
	db 0x04,0xFE ; poly_id:11 0B
	db 0x04,0xFF ; poly_id:12 0C
	db 0x04,0x01 ; poly_id:13 0D
	db 0x04,0x02 ; poly_id:14 0E
	db 0x04,0x03 ; poly_id:15 0F
	db 0x04,0x04 ; poly_id:16 10
	db 0x04,0xFD ; poly_id:17 11
	db 0x04,0xFE ; poly_id:18 12
	db 0x04,0xFF ; poly_id:19 13
	db 0x04,0x00 ; poly_id:20 14
	db 0x04,0x01 ; poly_id:21 15
	db 0x04,0x02 ; poly_id:22 16
	db 0x04,0x03 ; poly_id:23 17
	db 0x03,0xFD ; poly_id:24 18
	db 0x03,0xFE ; poly_id:25 19
	db 0x03,0xFF ; poly_id:26 1A
	db 0x03,0x01 ; poly_id:27 1B
	db 0x03,0x02 ; poly_id:28 1C
	db 0x03,0x03 ; poly_id:29 1D
	db 0x03,0xFE ; poly_id:30 1E
	db 0x03,0xFF ; poly_id:31 1F
	db 0x03,0x00 ; poly_id:32 20
	db 0x03,0x01 ; poly_id:33 21
	db 0x03,0x02 ; poly_id:34 22
	db 0x02,0xFE ; poly_id:35 23
	db 0x02,0xFF ; poly_id:36 24
	db 0x02,0x01 ; poly_id:37 25
	db 0x02,0x02 ; poly_id:38 26
	db 0x02,0xFF ; poly_id:39 27
	db 0x02,0x00 ; poly_id:40 28
	db 0x02,0x01 ; poly_id:41 29
	db 0x01,0xFF ; poly_id:42 2A
	db 0x01,0x01 ; poly_id:43 2B
	db 0x01,0x00 ; poly_id:44 2C

polys_map_deltas_2: ; south orientation
	db 0x04,0x05 ; poly_id:0 00
	db 0x03,0x05 ; poly_id:1 01
	db 0x02,0x05 ; poly_id:2 02
	db 0x01,0x05 ; poly_id:3 03
	db 0x00,0x05 ; poly_id:4 04
	db 0xFF,0x05 ; poly_id:5 05
	db 0xFE,0x05 ; poly_id:6 06
	db 0xFD,0x05 ; poly_id:7 07
	db 0xFC,0x05 ; poly_id:8 08
	db 0x04,0x04 ; poly_id:9 09
	db 0x03,0x04 ; poly_id:10 0A
	db 0x02,0x04 ; poly_id:11 0B
	db 0x01,0x04 ; poly_id:12 0C
	db 0xFF,0x04 ; poly_id:13 0D
	db 0xFE,0x04 ; poly_id:14 0E
	db 0xFD,0x04 ; poly_id:15 0F
	db 0xFC,0x04 ; poly_id:16 10
	db 0x03,0x04 ; poly_id:17 11
	db 0x02,0x04 ; poly_id:18 12
	db 0x01,0x04 ; poly_id:19 13
	db 0x00,0x04 ; poly_id:20 14
	db 0xFF,0x04 ; poly_id:21 15
	db 0xFE,0x04 ; poly_id:22 16
	db 0xFD,0x04 ; poly_id:23 17
	db 0x03,0x03 ; poly_id:24 18
	db 0x02,0x03 ; poly_id:25 19
	db 0x01,0x03 ; poly_id:26 1A
	db 0xFF,0x03 ; poly_id:27 1B
	db 0xFE,0x03 ; poly_id:28 1C
	db 0xFD,0x03 ; poly_id:29 1D
	db 0x02,0x03 ; poly_id:30 1E
	db 0x01,0x03 ; poly_id:31 1F
	db 0x00,0x03 ; poly_id:32 20
	db 0xFF,0x03 ; poly_id:33 21
	db 0xFE,0x03 ; poly_id:34 22
	db 0x02,0x02 ; poly_id:35 23
	db 0x01,0x02 ; poly_id:36 24
	db 0xFF,0x02 ; poly_id:37 25
	db 0xFE,0x02 ; poly_id:38 26
	db 0x01,0x02 ; poly_id:39 27
	db 0x00,0x02 ; poly_id:40 28
	db 0xFF,0x02 ; poly_id:41 29
	db 0x01,0x01 ; poly_id:42 2A
	db 0xFF,0x01 ; poly_id:43 2B
	db 0x00,0x01 ; poly_id:44 2C

polys_map_deltas_3: ; west orientation
	db 0xFB,0x04 ; poly_id:0 00
	db 0xFB,0x03 ; poly_id:1 01
	db 0xFB,0x02 ; poly_id:2 02
	db 0xFB,0x01 ; poly_id:3 03
	db 0xFB,0x00 ; poly_id:4 04
	db 0xFB,0xFF ; poly_id:5 05
	db 0xFB,0xFE ; poly_id:6 06
	db 0xFB,0xFD ; poly_id:7 07
	db 0xFB,0xFC ; poly_id:8 08
	db 0xFC,0x04 ; poly_id:9 09
	db 0xFC,0x03 ; poly_id:10 0A
	db 0xFC,0x02 ; poly_id:11 0B
	db 0xFC,0x01 ; poly_id:12 0C
	db 0xFC,0xFF ; poly_id:13 0D
	db 0xFC,0xFE ; poly_id:14 0E
	db 0xFC,0xFD ; poly_id:15 0F
	db 0xFC,0xFC ; poly_id:16 10
	db 0xFC,0x03 ; poly_id:17 11
	db 0xFC,0x02 ; poly_id:18 12
	db 0xFC,0x01 ; poly_id:19 13
	db 0xFC,0x00 ; poly_id:20 14
	db 0xFC,0xFF ; poly_id:21 15
	db 0xFC,0xFE ; poly_id:22 16
	db 0xFC,0xFD ; poly_id:23 17
	db 0xFD,0x03 ; poly_id:24 18
	db 0xFD,0x02 ; poly_id:25 19
	db 0xFD,0x01 ; poly_id:26 1A
	db 0xFD,0xFF ; poly_id:27 1B
	db 0xFD,0xFE ; poly_id:28 1C
	db 0xFD,0xFD ; poly_id:29 1D
	db 0xFD,0x02 ; poly_id:30 1E
	db 0xFD,0x01 ; poly_id:31 1F
	db 0xFD,0x00 ; poly_id:32 20
	db 0xFD,0xFF ; poly_id:33 21
	db 0xFD,0xFE ; poly_id:34 22
	db 0xFE,0x02 ; poly_id:35 23
	db 0xFE,0x01 ; poly_id:36 24
	db 0xFE,0xFF ; poly_id:37 25
	db 0xFE,0xFE ; poly_id:38 26
	db 0xFE,0x01 ; poly_id:39 27
	db 0xFE,0x00 ; poly_id:40 28
	db 0xFE,0xFF ; poly_id:41 29
	db 0xFF,0x01 ; poly_id:42 2A
	db 0xFF,0xFF ; poly_id:43 2B
	db 0xFF,0x00 ; poly_id:44 2C

num_sprite_polys: equ 25

sprite_polys_lookup:
;south_id 	; poly_id
	db 0	; 0
	db 1	; 1
	db 2	; 2
	db 3	; 3
	db 4	; 4
	db 5	; 5
	db 6	; 6
	db 7	; 7
	db 8	; 8
	db 255	; 9
	db 255	; 10
	db 255	; 11
	db 255	; 12
	db 255	; 13
	db 255	; 14
	db 255	; 15
	db 255	; 16
	db 9	; 17
	db 10	; 18
	db 11	; 19
	db 12	; 20
	db 13	; 21
	db 14	; 22
	db 15	; 23
	db 255	; 24
	db 255	; 25
	db 255	; 26
	db 255	; 27
	db 255	; 28
	db 255	; 29
	db 16	; 30
	db 17	; 31
	db 18	; 32
	db 19	; 33
	db 20	; 34
	db 255	; 35
	db 255	; 36
	db 255	; 37
	db 255	; 38
	db 21	; 39
	db 22	; 40
	db 23	; 41
	db 255	; 42
	db 255	; 43
	db 24	; 44

sprite_imgs_lookup:
;	 sprite_obj; render_obj_id
	dl sprite_obj_000 ; render_obj_id:20
	dl sprite_obj_001 ; render_obj_id:21
	dl sprite_obj_002 ; render_obj_id:22
	dl sprite_obj_003 ; render_obj_id:23
	dl sprite_obj_004 ; render_obj_id:24
	dl sprite_obj_005 ; render_obj_id:40
	dl sprite_obj_006 ; render_obj_id:41
	dl sprite_obj_007 ; render_obj_id:42
	dl sprite_obj_008 ; render_obj_id:43
	dl sprite_obj_009 ; render_obj_id:44
	dl sprite_obj_010 ; render_obj_id:45
	dl sprite_obj_011 ; render_obj_id:46
	dl sprite_obj_012 ; render_obj_id:47
	dl sprite_obj_013 ; render_obj_id:48
	dl sprite_obj_014 ; render_obj_id:49
	dl sprite_obj_015 ; render_obj_id:50
	dl sprite_obj_016 ; render_obj_id:51
	dl sprite_obj_017 ; render_obj_id:52
	dl sprite_obj_018 ; render_obj_id:56
;	 plot_x,  plot_y, buffer_label

; render_obj_id:20
sprite_obj_000:
	dl 0x000009,0x00004E,BUF_20_004
	dl 0x00002C,0x00004E,BUF_20_004
	dl 0x000050,0x00004E,BUF_20_004
	dl 0x000073,0x00004E,BUF_20_004
	dl 0x000097,0x00004E,BUF_20_004
	dl 0x0000BA,0x00004E,BUF_20_004
	dl 0x0000DE,0x00004E,BUF_20_004
	dl 0x000101,0x00004E,BUF_20_004
	dl 0x000125,0x00004E,BUF_20_004
	dl 0x00000B,0x00004E,BUF_20_020
	dl 0x000039,0x00004E,BUF_20_020
	dl 0x000066,0x00004E,BUF_20_020
	dl 0x000094,0x00004E,BUF_20_020
	dl 0x0000C1,0x00004E,BUF_20_020
	dl 0x0000EF,0x00004E,BUF_20_020
	dl 0x00011C,0x00004E,BUF_20_020
	dl 0x000011,0x00004D,BUF_20_032
	dl 0x000050,0x00004D,BUF_20_032
	dl 0x000091,0x00004D,BUF_20_032
	dl 0x0000D1,0x00004D,BUF_20_032
	dl 0x000111,0x00004D,BUF_20_032
	dl 0x00001B,0x00004C,BUF_20_040
	dl 0x000085,0x00004C,BUF_20_040
	dl 0x0000F0,0x00004C,BUF_20_040
	dl 0x00006B,0x000044,BUF_20_044

; render_obj_id:21
sprite_obj_001:
	dl 0x00000D,0x000055,BUF_21_004
	dl 0x000030,0x000055,BUF_21_004
	dl 0x000054,0x000055,BUF_21_004
	dl 0x000077,0x000055,BUF_21_004
	dl 0x00009B,0x000055,BUF_21_004
	dl 0x0000BE,0x000055,BUF_21_004
	dl 0x0000E2,0x000055,BUF_21_004
	dl 0x000105,0x000055,BUF_21_004
	dl 0x000129,0x000055,BUF_21_004
	dl 0x000010,0x000057,BUF_21_020
	dl 0x00003E,0x000057,BUF_21_020
	dl 0x00006B,0x000057,BUF_21_020
	dl 0x000099,0x000057,BUF_21_020
	dl 0x0000C6,0x000057,BUF_21_020
	dl 0x0000F4,0x000057,BUF_21_020
	dl 0x000121,0x000057,BUF_21_020
	dl 0x000016,0x00005A,BUF_21_032
	dl 0x000055,0x00005A,BUF_21_032
	dl 0x000096,0x00005A,BUF_21_032
	dl 0x0000D6,0x00005A,BUF_21_032
	dl 0x000116,0x00005A,BUF_21_032
	dl 0x000026,0x000060,BUF_21_040
	dl 0x000090,0x000060,BUF_21_040
	dl 0x0000FB,0x000060,BUF_21_040
	dl 0x00006E,0x000082,BUF_21_044

; render_obj_id:22
sprite_obj_002:
	dl 0x000009,0x000055,BUF_22_004
	dl 0x00002C,0x000055,BUF_22_004
	dl 0x000050,0x000055,BUF_22_004
	dl 0x000073,0x000055,BUF_22_004
	dl 0x000097,0x000055,BUF_22_004
	dl 0x0000BA,0x000055,BUF_22_004
	dl 0x0000DE,0x000055,BUF_22_004
	dl 0x000101,0x000055,BUF_22_004
	dl 0x000125,0x000055,BUF_22_004
	dl 0x00000B,0x000057,BUF_22_020
	dl 0x000039,0x000057,BUF_22_020
	dl 0x000066,0x000057,BUF_22_020
	dl 0x000094,0x000057,BUF_22_020
	dl 0x0000C1,0x000057,BUF_22_020
	dl 0x0000EF,0x000057,BUF_22_020
	dl 0x00011C,0x000057,BUF_22_020
	dl 0x000010,0x00005A,BUF_22_032
	dl 0x00004F,0x00005A,BUF_22_032
	dl 0x000090,0x00005A,BUF_22_032
	dl 0x0000D0,0x00005A,BUF_22_032
	dl 0x000110,0x00005A,BUF_22_032
	dl 0x00001B,0x000060,BUF_22_040
	dl 0x000085,0x000060,BUF_22_040
	dl 0x0000F0,0x000060,BUF_22_040
	dl 0x000050,0x000082,BUF_22_044

; render_obj_id:23
sprite_obj_003:
	dl 0x00000C,0x00003E,BUF_23_004
	dl 0x00002F,0x00003E,BUF_23_004
	dl 0x000053,0x00003E,BUF_23_004
	dl 0x000076,0x00003E,BUF_23_004
	dl 0x00009A,0x00003E,BUF_23_004
	dl 0x0000BD,0x00003E,BUF_23_004
	dl 0x0000E1,0x00003E,BUF_23_004
	dl 0x000104,0x00003E,BUF_23_004
	dl 0x000128,0x00003E,BUF_23_004
	dl 0x00000F,0x000039,BUF_23_020
	dl 0x00003D,0x000039,BUF_23_020
	dl 0x00006A,0x000039,BUF_23_020
	dl 0x000098,0x000039,BUF_23_020
	dl 0x0000C5,0x000039,BUF_23_020
	dl 0x0000F3,0x000039,BUF_23_020
	dl 0x000120,0x000039,BUF_23_020
	dl 0x000016,0x000030,BUF_23_032
	dl 0x000055,0x000030,BUF_23_032
	dl 0x000096,0x000030,BUF_23_032
	dl 0x0000D6,0x000030,BUF_23_032
	dl 0x000116,0x000030,BUF_23_032
	dl 0x000024,0x00001A,BUF_23_040
	dl 0x00008E,0x00001A,BUF_23_040
	dl 0x0000F9,0x00001A,BUF_23_040
	dl 0x000109,0x000083,BUF_23_044

; render_obj_id:24
sprite_obj_004:
	dl 0x00000D,0x000055,BUF_24_004
	dl 0x000030,0x000055,BUF_24_004
	dl 0x000054,0x000055,BUF_24_004
	dl 0x000077,0x000055,BUF_24_004
	dl 0x00009B,0x000055,BUF_24_004
	dl 0x0000BE,0x000055,BUF_24_004
	dl 0x0000E2,0x000055,BUF_24_004
	dl 0x000105,0x000055,BUF_24_004
	dl 0x000129,0x000055,BUF_24_004
	dl 0x000010,0x000057,BUF_24_020
	dl 0x00003E,0x000057,BUF_24_020
	dl 0x00006B,0x000057,BUF_24_020
	dl 0x000099,0x000057,BUF_24_020
	dl 0x0000C6,0x000057,BUF_24_020
	dl 0x0000F4,0x000057,BUF_24_020
	dl 0x000121,0x000057,BUF_24_020
	dl 0x000016,0x00005A,BUF_24_032
	dl 0x000055,0x00005A,BUF_24_032
	dl 0x000096,0x00005A,BUF_24_032
	dl 0x0000D6,0x00005A,BUF_24_032
	dl 0x000116,0x00005A,BUF_24_032
	dl 0x000026,0x000060,BUF_24_040
	dl 0x000090,0x000060,BUF_24_040
	dl 0x0000FB,0x000060,BUF_24_040
	dl 0x00006E,0x000082,BUF_24_044

; render_obj_id:40
sprite_obj_005:
	dl 0x00000A,0x00005A,BUF_40_004
	dl 0x00002D,0x00005A,BUF_40_004
	dl 0x000051,0x00005A,BUF_40_004
	dl 0x000074,0x00005A,BUF_40_004
	dl 0x000098,0x00005A,BUF_40_004
	dl 0x0000BB,0x00005A,BUF_40_004
	dl 0x0000DF,0x00005A,BUF_40_004
	dl 0x000102,0x00005A,BUF_40_004
	dl 0x000126,0x00005A,BUF_40_004
	dl 0x00000D,0x00005C,BUF_40_020
	dl 0x00003B,0x00005C,BUF_40_020
	dl 0x000068,0x00005C,BUF_40_020
	dl 0x000096,0x00005C,BUF_40_020
	dl 0x0000C3,0x00005C,BUF_40_020
	dl 0x0000F1,0x00005C,BUF_40_020
	dl 0x00011E,0x00005C,BUF_40_020
	dl 0x000013,0x000062,BUF_40_032
	dl 0x000052,0x000062,BUF_40_032
	dl 0x000093,0x000062,BUF_40_032
	dl 0x0000D3,0x000062,BUF_40_032
	dl 0x000113,0x000062,BUF_40_032
	dl 0x000020,0x00006D,BUF_40_040
	dl 0x00008A,0x00006D,BUF_40_040
	dl 0x0000F5,0x00006D,BUF_40_040
	dl 0x0000E0,0x0000A0,BUF_40_044

; render_obj_id:41
sprite_obj_006:
	dl 0x00000C,0x000055,BUF_41_004
	dl 0x00002F,0x000055,BUF_41_004
	dl 0x000053,0x000055,BUF_41_004
	dl 0x000076,0x000055,BUF_41_004
	dl 0x00009A,0x000055,BUF_41_004
	dl 0x0000BD,0x000055,BUF_41_004
	dl 0x0000E1,0x000055,BUF_41_004
	dl 0x000104,0x000055,BUF_41_004
	dl 0x000128,0x000055,BUF_41_004
	dl 0x00000E,0x000057,BUF_41_020
	dl 0x00003C,0x000057,BUF_41_020
	dl 0x000069,0x000057,BUF_41_020
	dl 0x000097,0x000057,BUF_41_020
	dl 0x0000C4,0x000057,BUF_41_020
	dl 0x0000F2,0x000057,BUF_41_020
	dl 0x00011F,0x000057,BUF_41_020
	dl 0x000015,0x00005B,BUF_41_032
	dl 0x000054,0x00005B,BUF_41_032
	dl 0x000095,0x00005B,BUF_41_032
	dl 0x0000D5,0x00005B,BUF_41_032
	dl 0x000115,0x00005B,BUF_41_032
	dl 0x000023,0x000062,BUF_41_040
	dl 0x00008D,0x000062,BUF_41_040
	dl 0x0000F8,0x000062,BUF_41_040
	dl 0x000084,0x000087,BUF_41_044

; render_obj_id:42
sprite_obj_007:
	dl 0x00000D,0x000057,BUF_42_004
	dl 0x000030,0x000057,BUF_42_004
	dl 0x000054,0x000057,BUF_42_004
	dl 0x000077,0x000057,BUF_42_004
	dl 0x00009B,0x000057,BUF_42_004
	dl 0x0000BE,0x000057,BUF_42_004
	dl 0x0000E2,0x000057,BUF_42_004
	dl 0x000105,0x000057,BUF_42_004
	dl 0x000129,0x000057,BUF_42_004
	dl 0x000010,0x00005A,BUF_42_020
	dl 0x00003E,0x00005A,BUF_42_020
	dl 0x00006B,0x00005A,BUF_42_020
	dl 0x000099,0x00005A,BUF_42_020
	dl 0x0000C6,0x00005A,BUF_42_020
	dl 0x0000F4,0x00005A,BUF_42_020
	dl 0x000121,0x00005A,BUF_42_020
	dl 0x000018,0x00005F,BUF_42_032
	dl 0x000057,0x00005F,BUF_42_032
	dl 0x000098,0x00005F,BUF_42_032
	dl 0x0000D8,0x00005F,BUF_42_032
	dl 0x000118,0x00005F,BUF_42_032
	dl 0x000028,0x000069,BUF_42_040
	dl 0x000092,0x000069,BUF_42_040
	dl 0x0000FD,0x000069,BUF_42_040
	dl 0x00007D,0x00009C,BUF_42_044

; render_obj_id:43
sprite_obj_008:
	dl 0x00000C,0x00005C,BUF_43_004
	dl 0x00002F,0x00005C,BUF_43_004
	dl 0x000053,0x00005C,BUF_43_004
	dl 0x000076,0x00005C,BUF_43_004
	dl 0x00009A,0x00005C,BUF_43_004
	dl 0x0000BD,0x00005C,BUF_43_004
	dl 0x0000E1,0x00005C,BUF_43_004
	dl 0x000104,0x00005C,BUF_43_004
	dl 0x000128,0x00005C,BUF_43_004
	dl 0x00000F,0x000061,BUF_43_020
	dl 0x00003D,0x000061,BUF_43_020
	dl 0x00006A,0x000061,BUF_43_020
	dl 0x000098,0x000061,BUF_43_020
	dl 0x0000C5,0x000061,BUF_43_020
	dl 0x0000F3,0x000061,BUF_43_020
	dl 0x000120,0x000061,BUF_43_020
	dl 0x000015,0x000068,BUF_43_032
	dl 0x000054,0x000068,BUF_43_032
	dl 0x000095,0x000068,BUF_43_032
	dl 0x0000D5,0x000068,BUF_43_032
	dl 0x000115,0x000068,BUF_43_032
	dl 0x000024,0x000077,BUF_43_040
	dl 0x00008E,0x000077,BUF_43_040
	dl 0x0000F9,0x000077,BUF_43_040
	dl 0x0000D4,0x00009F,BUF_43_044

; render_obj_id:44
sprite_obj_009:
	dl 0x00000F,0x00005C,BUF_44_004
	dl 0x000032,0x00005C,BUF_44_004
	dl 0x000056,0x00005C,BUF_44_004
	dl 0x000079,0x00005C,BUF_44_004
	dl 0x00009D,0x00005C,BUF_44_004
	dl 0x0000C0,0x00005C,BUF_44_004
	dl 0x0000E4,0x00005C,BUF_44_004
	dl 0x000107,0x00005C,BUF_44_004
	dl 0x00012B,0x00005C,BUF_44_004
	dl 0x000014,0x00005F,BUF_44_020
	dl 0x000042,0x00005F,BUF_44_020
	dl 0x00006F,0x00005F,BUF_44_020
	dl 0x00009D,0x00005F,BUF_44_020
	dl 0x0000CA,0x00005F,BUF_44_020
	dl 0x0000F8,0x00005F,BUF_44_020
	dl 0x000125,0x00005F,BUF_44_020
	dl 0x00001B,0x000066,BUF_44_032
	dl 0x00005A,0x000066,BUF_44_032
	dl 0x00009B,0x000066,BUF_44_032
	dl 0x0000DB,0x000066,BUF_44_032
	dl 0x00011B,0x000066,BUF_44_032
	dl 0x00002E,0x000075,BUF_44_040
	dl 0x000098,0x000075,BUF_44_040
	dl 0x000103,0x000075,BUF_44_040
	dl 0x0000C8,0x0000A1,BUF_44_044

; render_obj_id:45
sprite_obj_010:
	dl 0x000009,0x000056,BUF_45_004
	dl 0x00002C,0x000056,BUF_45_004
	dl 0x000050,0x000056,BUF_45_004
	dl 0x000073,0x000056,BUF_45_004
	dl 0x000097,0x000056,BUF_45_004
	dl 0x0000BA,0x000056,BUF_45_004
	dl 0x0000DE,0x000056,BUF_45_004
	dl 0x000101,0x000056,BUF_45_004
	dl 0x000125,0x000056,BUF_45_004
	dl 0x00000C,0x000058,BUF_45_020
	dl 0x00003A,0x000058,BUF_45_020
	dl 0x000067,0x000058,BUF_45_020
	dl 0x000095,0x000058,BUF_45_020
	dl 0x0000C2,0x000058,BUF_45_020
	dl 0x0000F0,0x000058,BUF_45_020
	dl 0x00011D,0x000058,BUF_45_020
	dl 0x000011,0x00005D,BUF_45_032
	dl 0x000050,0x00005D,BUF_45_032
	dl 0x000091,0x00005D,BUF_45_032
	dl 0x0000D1,0x00005D,BUF_45_032
	dl 0x000111,0x00005D,BUF_45_032
	dl 0x00001D,0x000063,BUF_45_040
	dl 0x000087,0x000063,BUF_45_040
	dl 0x0000F2,0x000063,BUF_45_040
	dl 0x000058,0x00008D,BUF_45_044

; render_obj_id:46
sprite_obj_011:
	dl 0x000009,0x000058,BUF_46_004
	dl 0x00002C,0x000058,BUF_46_004
	dl 0x000050,0x000058,BUF_46_004
	dl 0x000073,0x000058,BUF_46_004
	dl 0x000097,0x000058,BUF_46_004
	dl 0x0000BA,0x000058,BUF_46_004
	dl 0x0000DE,0x000058,BUF_46_004
	dl 0x000101,0x000058,BUF_46_004
	dl 0x000125,0x000058,BUF_46_004
	dl 0x00000C,0x00005A,BUF_46_020
	dl 0x00003A,0x00005A,BUF_46_020
	dl 0x000067,0x00005A,BUF_46_020
	dl 0x000095,0x00005A,BUF_46_020
	dl 0x0000C2,0x00005A,BUF_46_020
	dl 0x0000F0,0x00005A,BUF_46_020
	dl 0x00011D,0x00005A,BUF_46_020
	dl 0x000011,0x000060,BUF_46_032
	dl 0x000050,0x000060,BUF_46_032
	dl 0x000091,0x000060,BUF_46_032
	dl 0x0000D1,0x000060,BUF_46_032
	dl 0x000111,0x000060,BUF_46_032
	dl 0x00001D,0x000069,BUF_46_040
	dl 0x000087,0x000069,BUF_46_040
	dl 0x0000F2,0x000069,BUF_46_040
	dl 0x00008E,0x00009F,BUF_46_044

; render_obj_id:47
sprite_obj_012:
	dl 0x000009,0x000057,BUF_47_004
	dl 0x00002C,0x000057,BUF_47_004
	dl 0x000050,0x000057,BUF_47_004
	dl 0x000073,0x000057,BUF_47_004
	dl 0x000097,0x000057,BUF_47_004
	dl 0x0000BA,0x000057,BUF_47_004
	dl 0x0000DE,0x000057,BUF_47_004
	dl 0x000101,0x000057,BUF_47_004
	dl 0x000125,0x000057,BUF_47_004
	dl 0x00000C,0x000059,BUF_47_020
	dl 0x00003A,0x000059,BUF_47_020
	dl 0x000067,0x000059,BUF_47_020
	dl 0x000095,0x000059,BUF_47_020
	dl 0x0000C2,0x000059,BUF_47_020
	dl 0x0000F0,0x000059,BUF_47_020
	dl 0x00011D,0x000059,BUF_47_020
	dl 0x000011,0x00005E,BUF_47_032
	dl 0x000050,0x00005E,BUF_47_032
	dl 0x000091,0x00005E,BUF_47_032
	dl 0x0000D1,0x00005E,BUF_47_032
	dl 0x000111,0x00005E,BUF_47_032
	dl 0x00001D,0x000066,BUF_47_040
	dl 0x000087,0x000066,BUF_47_040
	dl 0x0000F2,0x000066,BUF_47_040
	dl 0x0000B2,0x000096,BUF_47_044

; render_obj_id:48
sprite_obj_013:
	dl 0x00000A,0x00005A,BUF_48_004
	dl 0x00002D,0x00005A,BUF_48_004
	dl 0x000051,0x00005A,BUF_48_004
	dl 0x000074,0x00005A,BUF_48_004
	dl 0x000098,0x00005A,BUF_48_004
	dl 0x0000BB,0x00005A,BUF_48_004
	dl 0x0000DF,0x00005A,BUF_48_004
	dl 0x000102,0x00005A,BUF_48_004
	dl 0x000126,0x00005A,BUF_48_004
	dl 0x00000D,0x00005C,BUF_48_020
	dl 0x00003B,0x00005C,BUF_48_020
	dl 0x000068,0x00005C,BUF_48_020
	dl 0x000096,0x00005C,BUF_48_020
	dl 0x0000C3,0x00005C,BUF_48_020
	dl 0x0000F1,0x00005C,BUF_48_020
	dl 0x00011E,0x00005C,BUF_48_020
	dl 0x000012,0x000062,BUF_48_032
	dl 0x000051,0x000062,BUF_48_032
	dl 0x000092,0x000062,BUF_48_032
	dl 0x0000D2,0x000062,BUF_48_032
	dl 0x000112,0x000062,BUF_48_032
	dl 0x00001D,0x00006C,BUF_48_040
	dl 0x000087,0x00006C,BUF_48_040
	dl 0x0000F2,0x00006C,BUF_48_040
	dl 0x000100,0x0000A0,BUF_48_044

; render_obj_id:49
sprite_obj_014:
	dl 0x00000A,0x000059,BUF_49_004
	dl 0x00002D,0x000059,BUF_49_004
	dl 0x000051,0x000059,BUF_49_004
	dl 0x000074,0x000059,BUF_49_004
	dl 0x000098,0x000059,BUF_49_004
	dl 0x0000BB,0x000059,BUF_49_004
	dl 0x0000DF,0x000059,BUF_49_004
	dl 0x000102,0x000059,BUF_49_004
	dl 0x000126,0x000059,BUF_49_004
	dl 0x00000E,0x00005B,BUF_49_020
	dl 0x00003C,0x00005B,BUF_49_020
	dl 0x000069,0x00005B,BUF_49_020
	dl 0x000097,0x00005B,BUF_49_020
	dl 0x0000C4,0x00005B,BUF_49_020
	dl 0x0000F2,0x00005B,BUF_49_020
	dl 0x00011F,0x00005B,BUF_49_020
	dl 0x000013,0x000062,BUF_49_032
	dl 0x000052,0x000062,BUF_49_032
	dl 0x000093,0x000062,BUF_49_032
	dl 0x0000D3,0x000062,BUF_49_032
	dl 0x000113,0x000062,BUF_49_032
	dl 0x000020,0x00006C,BUF_49_040
	dl 0x00008A,0x00006C,BUF_49_040
	dl 0x0000F5,0x00006C,BUF_49_040
	dl 0x0000E8,0x0000A0,BUF_49_044

; render_obj_id:50
sprite_obj_015:
	dl 0x00000D,0x000053,BUF_50_004
	dl 0x000030,0x000053,BUF_50_004
	dl 0x000054,0x000053,BUF_50_004
	dl 0x000077,0x000053,BUF_50_004
	dl 0x00009B,0x000053,BUF_50_004
	dl 0x0000BE,0x000053,BUF_50_004
	dl 0x0000E2,0x000053,BUF_50_004
	dl 0x000105,0x000053,BUF_50_004
	dl 0x000129,0x000053,BUF_50_004
	dl 0x000010,0x000054,BUF_50_020
	dl 0x00003E,0x000054,BUF_50_020
	dl 0x00006B,0x000054,BUF_50_020
	dl 0x000099,0x000054,BUF_50_020
	dl 0x0000C6,0x000054,BUF_50_020
	dl 0x0000F4,0x000054,BUF_50_020
	dl 0x000121,0x000054,BUF_50_020
	dl 0x000016,0x000056,BUF_50_032
	dl 0x000055,0x000056,BUF_50_032
	dl 0x000096,0x000056,BUF_50_032
	dl 0x0000D6,0x000056,BUF_50_032
	dl 0x000116,0x000056,BUF_50_032
	dl 0x000026,0x00005A,BUF_50_040
	dl 0x000090,0x00005A,BUF_50_040
	dl 0x0000FB,0x00005A,BUF_50_040
	dl 0x000078,0x00006E,BUF_50_044

; render_obj_id:51
sprite_obj_016:
	dl 0x00000B,0x000049,BUF_51_004
	dl 0x00002E,0x000049,BUF_51_004
	dl 0x000052,0x000049,BUF_51_004
	dl 0x000075,0x000049,BUF_51_004
	dl 0x000099,0x000049,BUF_51_004
	dl 0x0000BC,0x000049,BUF_51_004
	dl 0x0000E0,0x000049,BUF_51_004
	dl 0x000103,0x000049,BUF_51_004
	dl 0x000127,0x000049,BUF_51_004
	dl 0x00000D,0x000048,BUF_51_020
	dl 0x00003B,0x000048,BUF_51_020
	dl 0x000068,0x000048,BUF_51_020
	dl 0x000096,0x000048,BUF_51_020
	dl 0x0000C3,0x000048,BUF_51_020
	dl 0x0000F1,0x000048,BUF_51_020
	dl 0x00011E,0x000048,BUF_51_020
	dl 0x000013,0x000045,BUF_51_032
	dl 0x000052,0x000045,BUF_51_032
	dl 0x000093,0x000045,BUF_51_032
	dl 0x0000D3,0x000045,BUF_51_032
	dl 0x000113,0x000045,BUF_51_032
	dl 0x000020,0x00003E,BUF_51_040
	dl 0x00008A,0x00003E,BUF_51_040
	dl 0x0000F5,0x00003E,BUF_51_040
	dl 0x00005E,0x00001C,BUF_51_044

; render_obj_id:52
sprite_obj_017:
	dl 0x00000C,0x000049,BUF_52_004
	dl 0x00002F,0x000049,BUF_52_004
	dl 0x000053,0x000049,BUF_52_004
	dl 0x000076,0x000049,BUF_52_004
	dl 0x00009A,0x000049,BUF_52_004
	dl 0x0000BD,0x000049,BUF_52_004
	dl 0x0000E1,0x000049,BUF_52_004
	dl 0x000104,0x000049,BUF_52_004
	dl 0x000128,0x000049,BUF_52_004
	dl 0x00000F,0x000048,BUF_52_020
	dl 0x00003D,0x000048,BUF_52_020
	dl 0x00006A,0x000048,BUF_52_020
	dl 0x000098,0x000048,BUF_52_020
	dl 0x0000C5,0x000048,BUF_52_020
	dl 0x0000F3,0x000048,BUF_52_020
	dl 0x000120,0x000048,BUF_52_020
	dl 0x000016,0x000045,BUF_52_032
	dl 0x000055,0x000045,BUF_52_032
	dl 0x000096,0x000045,BUF_52_032
	dl 0x0000D6,0x000045,BUF_52_032
	dl 0x000116,0x000045,BUF_52_032
	dl 0x000024,0x00003E,BUF_52_040
	dl 0x00008E,0x00003E,BUF_52_040
	dl 0x0000F9,0x00003E,BUF_52_040
	dl 0x00006B,0x00001C,BUF_52_044

; render_obj_id:56
sprite_obj_018:
	dl 0x000008,0x000056,BUF_56_004
	dl 0x00002B,0x000056,BUF_56_004
	dl 0x00004F,0x000056,BUF_56_004
	dl 0x000072,0x000056,BUF_56_004
	dl 0x000096,0x000056,BUF_56_004
	dl 0x0000B9,0x000056,BUF_56_004
	dl 0x0000DD,0x000056,BUF_56_004
	dl 0x000100,0x000056,BUF_56_004
	dl 0x000124,0x000056,BUF_56_004
	dl 0x00000B,0x000059,BUF_56_020
	dl 0x000039,0x000059,BUF_56_020
	dl 0x000066,0x000059,BUF_56_020
	dl 0x000094,0x000059,BUF_56_020
	dl 0x0000C1,0x000059,BUF_56_020
	dl 0x0000EF,0x000059,BUF_56_020
	dl 0x00011C,0x000059,BUF_56_020
	dl 0x00000E,0x00005D,BUF_56_032
	dl 0x00004D,0x00005D,BUF_56_032
	dl 0x00008E,0x00005D,BUF_56_032
	dl 0x0000CE,0x00005D,BUF_56_032
	dl 0x00010E,0x00005D,BUF_56_032
	dl 0x000017,0x000066,BUF_56_040
	dl 0x000081,0x000066,BUF_56_040
	dl 0x0000EC,0x000066,BUF_56_040
	dl 0x0000A0,0x000093,BUF_56_044

sprite_obj_255: ; placeholder to keep the assembler happy, CANNOT BE A VALID sprite_obj
