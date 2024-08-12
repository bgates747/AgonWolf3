; Bitmap indices:
BUF_UI_BJ_025: equ 0x0300
BUF_UI_BJ_050: equ 0x0301
BUF_UI_BJ_075: equ 0x0302
BUF_UI_BJ_100: equ 0x0303
BUF_UI_BJ_120_120: equ 0x0304
BUF_UI_LOWER_PANEL: equ 0x0305
BUF_UI_LOWER_PANEL_GATLING: equ 0x0306
BUF_UI_LOWER_PANEL_KNIFE: equ 0x0307
BUF_UI_LOWER_PANEL_MACHINE_GUN: equ 0x0308
BUF_UI_LOWER_PANEL_PISTOL: equ 0x0309
BUF_UI_SPLASH: equ 0x030A

; Import .rgba2 bitmap files and load them into VDP buffers
load_ui_images:

	ld hl,BUF_UI_BJ_025
	ld bc,32
	ld de,32
	ld ix,1024
	ld iy,F_UI_bj_025
	call vdu_load_img_2

	ld hl,BUF_UI_BJ_050
	ld bc,32
	ld de,32
	ld ix,1024
	ld iy,F_UI_bj_050
	call vdu_load_img_2

	ld hl,BUF_UI_BJ_075
	ld bc,32
	ld de,32
	ld ix,1024
	ld iy,F_UI_bj_075
	call vdu_load_img_2

	ld hl,BUF_UI_BJ_100
	ld bc,32
	ld de,32
	ld ix,1024
	ld iy,F_UI_bj_100
	call vdu_load_img_2

	ld hl,BUF_UI_BJ_120_120
	ld bc,120
	ld de,120
	ld ix,14400
	ld iy,F_UI_bj_120_120
	call vdu_load_img_2

	ld hl,BUF_UI_LOWER_PANEL
	ld bc,320
	ld de,80
	ld ix,25600
	ld iy,F_UI_lower_panel
	call vdu_load_img_2

	ld hl,BUF_UI_LOWER_PANEL_GATLING
	ld bc,40
	ld de,20
	ld ix,800
	ld iy,F_UI_lower_panel_gatling
	call vdu_load_img_2

	ld hl,BUF_UI_LOWER_PANEL_KNIFE
	ld bc,40
	ld de,20
	ld ix,800
	ld iy,F_UI_lower_panel_knife
	call vdu_load_img_2

	ld hl,BUF_UI_LOWER_PANEL_MACHINE_GUN
	ld bc,40
	ld de,20
	ld ix,800
	ld iy,F_UI_lower_panel_machine_gun
	call vdu_load_img_2

	ld hl,BUF_UI_LOWER_PANEL_PISTOL
	ld bc,40
	ld de,20
	ld ix,800
	ld iy,F_UI_lower_panel_pistol
	call vdu_load_img_2

	ld hl,BUF_UI_SPLASH
	ld bc,320
	ld de,160
	ld ix,51200
	ld iy,F_UI_splash
	call vdu_load_img_2

	ret

F_UI_bj_025: db "ui/bj_025.rgba2",0
F_UI_bj_050: db "ui/bj_050.rgba2",0
F_UI_bj_075: db "ui/bj_075.rgba2",0
F_UI_bj_100: db "ui/bj_100.rgba2",0
F_UI_bj_120_120: db "ui/bj_120_120.rgba2",0
F_UI_lower_panel: db "ui/lower_panel.rgba2",0
F_UI_lower_panel_gatling: db "ui/lower_panel_gatling.rgba2",0
F_UI_lower_panel_knife: db "ui/lower_panel_knife.rgba2",0
F_UI_lower_panel_machine_gun: db "ui/lower_panel_machine_gun.rgba2",0
F_UI_lower_panel_pistol: db "ui/lower_panel_pistol.rgba2",0
F_UI_splash: db "ui/splash.rgba2",0
