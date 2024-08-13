; This file is created by build_92_asm_load_tiles.py, do not edit it!

; cube buffer ids:
BUF_10: equ 0x000A
BUF_11: equ 0x000B
BUF_12: equ 0x000C
BUF_13: equ 0x000D
BUF_14: equ 0x000E
BUF_15: equ 0x000F
BUF_16: equ 0x0010
BUF_17: equ 0x0011
BUF_57: equ 0x0039
BUF_58: equ 0x003A
BUF_59: equ 0x003B

cube_num_tiles: equ 11 

; cube buffer id reverse lookup:
cube_buffer_id_lut:
	dl BUF_10
	dl BUF_11
	dl BUF_12
	dl BUF_13
	dl BUF_14
	dl BUF_15
	dl BUF_16
	dl BUF_17
	dl BUF_57
	dl BUF_58
	dl BUF_59

; cube load routines jump table:
cube_load_tiles_table:
	dl ld_10
	dl ld_11
	dl ld_12
	dl ld_13
	dl ld_14
	dl ld_15
	dl ld_16
	dl ld_17
	dl ld_57
	dl ld_58
	dl ld_59

; TexPanelLut for cube tiles:
; typedef struct TexPanel {
;     uint8_t img_idx;           // Image Index (handled on the vdp side so no need to load it here.
;     uint16_t texture_id;       // Texture ID for the panel
;     uint16_t width;            // Texture width
;     uint16_t height;           // Texture height
; } TexPanel;
cube_tex_panel_lut:
	dw 0x000A,16,16
	dw 0x000B,16,16
	dw 0x000C,16,16
	dw 0x000D,16,16
	dw 0x000E,16,16
	dw 0x000F,16,16
	dw 0x0010,16,16
	dw 0x0011,16,16
	dw 0x0039,16,16
	dw 0x003A,16,16
	dw 0x003B,16,16

; Import cube .rgba8 bitmap files and load them into VDP buffers

ld_10:
	ld hl,BUF_10
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F10
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_11:
	ld hl,BUF_11
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F11
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_12:
	ld hl,BUF_12
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F12
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_13:
	ld hl,BUF_13
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F13
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_14:
	ld hl,BUF_14
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F14
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_15:
	ld hl,BUF_15
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F15
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_16:
	ld hl,BUF_16
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F16
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_17:
	ld hl,BUF_17
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F17
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_57:
	ld hl,BUF_57
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F57
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_58:
	ld hl,BUF_58
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F58
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_59:
	ld hl,BUF_59
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F59
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

; File name lookups:
F10: db "tiles/10.rgba8",0
F11: db "tiles/11.rgba8",0
F12: db "tiles/12.rgba8",0
F13: db "tiles/13.rgba8",0
F14: db "tiles/14.rgba8",0
F15: db "tiles/15.rgba8",0
F16: db "tiles/16.rgba8",0
F17: db "tiles/17.rgba8",0
F57: db "tiles/57.rgba8",0
F58: db "tiles/58.rgba8",0
F59: db "tiles/59.rgba8",0

; sprite buffer ids:
BUF_20: equ 0x0014
BUF_21: equ 0x0015
BUF_22: equ 0x0016
BUF_23: equ 0x0017
BUF_24: equ 0x0018
BUF_40: equ 0x0028
BUF_41: equ 0x0029
BUF_42: equ 0x002A
BUF_43: equ 0x002B
BUF_44: equ 0x002C
BUF_45: equ 0x002D
BUF_46: equ 0x002E
BUF_47: equ 0x002F
BUF_48: equ 0x0030
BUF_49: equ 0x0031
BUF_50: equ 0x0032
BUF_51: equ 0x0033
BUF_52: equ 0x0034
BUF_56: equ 0x0038
BUF_60: equ 0x003C

sprite_num_tiles: equ 20 

; sprite buffer id reverse lookup:
sprite_buffer_id_lut:
	dl BUF_20
	dl BUF_21
	dl BUF_22
	dl BUF_23
	dl BUF_24
	dl BUF_40
	dl BUF_41
	dl BUF_42
	dl BUF_43
	dl BUF_44
	dl BUF_45
	dl BUF_46
	dl BUF_47
	dl BUF_48
	dl BUF_49
	dl BUF_50
	dl BUF_51
	dl BUF_52
	dl BUF_56
	dl BUF_60

; sprite load routines jump table:
sprite_load_tiles_table:
	dl ld_20
	dl ld_21
	dl ld_22
	dl ld_23
	dl ld_24
	dl ld_40
	dl ld_41
	dl ld_42
	dl ld_43
	dl ld_44
	dl ld_45
	dl ld_46
	dl ld_47
	dl ld_48
	dl ld_49
	dl ld_50
	dl ld_51
	dl ld_52
	dl ld_56
	dl ld_60


; Import sprite .rgba8 bitmap files and load them into VDP buffers

ld_20:
	ld hl,BUF_20
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F20
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_21:
	ld hl,BUF_21
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F21
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_22:
	ld hl,BUF_22
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F22
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_23:
	ld hl,BUF_23
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F23
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_24:
	ld hl,BUF_24
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F24
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_40:
	ld hl,BUF_40
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F40
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_41:
	ld hl,BUF_41
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F41
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_42:
	ld hl,BUF_42
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F42
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_43:
	ld hl,BUF_43
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F43
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_44:
	ld hl,BUF_44
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F44
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_45:
	ld hl,BUF_45
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F45
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_46:
	ld hl,BUF_46
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F46
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_47:
	ld hl,BUF_47
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F47
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_48:
	ld hl,BUF_48
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F48
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_49:
	ld hl,BUF_49
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F49
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_50:
	ld hl,BUF_50
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F50
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_51:
	ld hl,BUF_51
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F51
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_52:
	ld hl,BUF_52
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F52
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_56:
	ld hl,BUF_56
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F56
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

ld_60:
	ld hl,BUF_60
	ld bc,16
	ld de,16
	ld ix,1024
	ld iy,F60
	ld (cur_filename),iy
	call vdu_load_img_8
	ret

; File name lookups:
F20: db "tiles/20.rgba8",0
F21: db "tiles/21.rgba8",0
F22: db "tiles/22.rgba8",0
F23: db "tiles/23.rgba8",0
F24: db "tiles/24.rgba8",0
F40: db "tiles/40.rgba8",0
F41: db "tiles/41.rgba8",0
F42: db "tiles/42.rgba8",0
F43: db "tiles/43.rgba8",0
F44: db "tiles/44.rgba8",0
F45: db "tiles/45.rgba8",0
F46: db "tiles/46.rgba8",0
F47: db "tiles/47.rgba8",0
F48: db "tiles/48.rgba8",0
F49: db "tiles/49.rgba8",0
F50: db "tiles/50.rgba8",0
F51: db "tiles/51.rgba8",0
F52: db "tiles/52.rgba8",0
F56: db "tiles/56.rgba8",0
F60: db "tiles/60.rgba8",0
