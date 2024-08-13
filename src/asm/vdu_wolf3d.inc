; global constants and variables
sid: equ 0x1000 ; scene id is a 16-bit bufferID holding the wolf3d control structure
mid: equ 1 ; model id is an 8-bit unsigned integer used by wolf3d internally
oid: equ 1 ; object id is an 8-bit unsigned integer used by wolf3d internally
obj_scale: equ 256 * 10
objbmid: equ 0x1001
tgtbmid: equ 0x1002

cstw: equ 240 ; 256
csth: equ 160 ; 128
cstx: equ 40  ; 32
csty: equ 32  ; 20

camd: equ 32*1 ; 32767/256 * bar
camx: dl  0*camd
camy: dl  0*camd
camz: dl  0*camd

camdx: dl 0x000000
camdy: dl 0x000000
camdz: dl 0x000000

camdr: equ 91*5 ; 32767/360*foo
camrx: dl 0x000000
camry: dl 0x000000
camrz: dl 0x000000

camdrx: dl 0x000000
camdry: dl 0x000000
camdrz: dl 0x000000

objdr: equ 91*5 ; 32767/360*foo
objdrx: dl 0
objdry: dl 0
objdrz: dl 0

objrx: dl 0
objry: dl 0
objrz: dl 0

objd: equ 32*1 ; 32767/256 * bar
objx: dl 0*objd
objy: dl 0 ; -42 ; -1/3*objd
objz: dl -30*objd

objdx: dl 0x000000
objdy: dl 0x000000
objdz: dl 0x000000

filetype: equ 0 ; rgba8

dithering_type: db 0x00 ; 0=none, 1=bayer ordered matrix, 2=floyd-steinberg

; create wolf control structure
    MACRO CCS SID, SCENE_WIDTH, SCENE_HEIGHT
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23,0, &A0, sid%; &49, 0, cstw%; csth%; Create Control Structure
    db 23,0,$A0
    dw SID 
    db $49,0
    dw SCENE_WIDTH
    dw SCENE_HEIGHT
@end:
    ENDMACRO

; DEFINE MESH VERTICES
    MACRO SV SID, MID, VERTICES, VERTICES_N
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23,0, &A0, sid%; &49, 1, mid%; VERTICES%; Define Mesh Vertices
    db 23,0,$A0
    dw SID
    db $49,1
    dw MID, VERTICES_N
@end:
    ld hl,VERTICES
    ld bc,VERTICES_N*6 ; 3 coordinates per vertex, 2 bytes per coordinate
    rst.lil $18
    ENDMACRO

; DEFINE MESH VERTEX INDICES
    MACRO SMVI SID, MID, VERTEX_INDICES, INDICES_N
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23,0, &A0, sid%; &49, 2, mid%; model_indices%; Set Mesh Vertex indices
    db 23,0,$A0
    dw SID
    db $49,2
    dw MID, INDICES_N
@end:
    ld hl,VERTEX_INDICES
    ld bc,INDICES_N*2 ; 2 bytes per index
    rst.lil $18
    ENDMACRO

; DEFINE MESH TEXTURE COORDINATES
    MACRO STC SID, MID, UVS, UVS_N
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 0, &A0, sid; &49, 3, mid; n; u0; v0; ... :  Define Mesh Texture Coordinates
    db 23,0,$A0
    dw SID
    db $49,3
    dw MID, UVS_N
@end:
    ld hl,UVS
    ld bc,UVS_N*4 ; 2 coordinates per uv, 2 bytes per coordinate
    rst.lil $18
    ENDMACRO

; SET MESH TEXTURE COORDINATE INDEXES
    MACRO STCI SID, MID, UV_INDICES, INDICES_N
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 0, &A0, sid; &49, 4, mid; n; i0; ... :  Set Texture Coordinate Indexes
    db 23,0,$A0
    dw SID
    db $49,4
    dw MID, INDICES_N
@end:
    ld hl,UV_INDICES
    ld bc,INDICES_N*2 ; 2 bytes per index
    rst.lil $18
    ENDMACRO

; DEFINE MESH NORMALS
    MACRO SN SID, MID, NORMALS, NORMALS_N
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 0, &A0, sid; &49, 129, mid; n; x0; y0; z0; ... :  Define Mesh Normals
    db 23,0,$A0
    dw SID
    db $49,129
    dw MID, NORMALS_N
@end:
    ld hl,NORMALS
    ld bc,NORMALS_N*6 ; 3 coordinates per normal, 2 bytes per coordinate
    rst.lil $18
    ENDMACRO

; SET MESH NORMAL INDEXES
    MACRO SMNI SID, MID, NORMAL_INDICES, INDICES_N
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 0, &A0, sid; &49, 130, mid; n; i0; ... :  Set Mesh Normal Indexes
    db 23,0,$A0
    dw SID
    db $49,130
    dw MID, INDICES_N
@end:
    ld hl,NORMAL_INDICES
    ld bc,INDICES_N*2 ; 2 bytes per index
    rst.lil $18
    ENDMACRO

; CREATE OBJECT
    MACRO CO SID, OID, MID, BMID
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 0, &A0, sid; &49, 5, oid; mid; bmid; :  Create Object
    db 23,0,$A0
    dw SID
    db $49,5
    dw OID
    dw MID
    dw BMID 
@end:
    ENDMACRO

; SET OBJECT XYZ SCALE FACTORS
    MACRO SO SID, OID, SCALEX, SCALEY, SCALEZ
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 0, &A0, sid%; &49, 9, oid%; scale; scale; scale; Set Object XYZ Scale Factors
    db 23,0,$A0
    dw SID
    db $49,9
    dw OID
    dw SCALEX
    dw SCALEY
    dw SCALEZ
@end:
    ENDMACRO

; CREATE RENDER TARGET BITMAP
    MACRO CTB BMID, SCENE_WIDTH, SCENE_HEIGHT
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 27, &20, bmid2% Select output bitmap
    db 23,27,$20
    dw BMID
;   VDU 23, 27, 2, cstw%; csth%; &0000; &00C0; Create solid color bitmap
    db 23,27,2
    dw SCENE_WIDTH
    dw SCENE_HEIGHT
    dw $0000
    dw $00C0
@end:
    ENDMACRO

; RENDER TO TARGET BITMAP
    MACRO RENDBMP SID, BMID
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;  1040 VDU 23, 0, &A0, sid%; &49, 38, bmid%; Render To Bitmap
    db 23, 0, $A0
    dw SID
    db $49, 38
    dw BMID
@end:
    ENDMACRO

; DISPLAY RENDER TARGET BITMAP
    MACRO DISPBMP BMID, X, Y
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23, 27, &20, bmid% Select output bitmap
    db 23,27,$20
    dw BMID
;   VDU 23, 27, 3, 0; 0; Display output bitmap
    db 23,27,3 
    dw X,Y
@end:
    ENDMACRO

; set wolf camera distance
; inputs: bc distx, de disty, iy distz
scdabs:
    ld (@x),bc
    ld (@y),de
    ld (@z),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
;   360 VDU 23,0, &A0, sid%; &49, 25, distx; disty; distz; Set Camera XYZ Translation Distances
    db 23,0,$A0
    dw sid
    db $49,25
@x: dw 0x0000
@y: dw 0x0000
@z: dw 0x0000
@end: db 0x00 ; padding

; set wolf camera rotation angkes
; inputs: bc anglex, de angley, iy anglez
scrabs:
    ld (@rx),bc
    ld (@ry),de
    ld (@rz),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 21, anglex; angley; anglez; : Set Camera XYZ Rotation Angles
        db 23,0,$A0
        dw sid
        db $49,18
@rx:    dw 0x0000
@ry:    dw 0x0000
@rz:    dw 0x0000
@end:   db 0x00 ; padding

; set wolf object distance
; inputs: hl oid, bc distx, de disty, iy distz
sodabs:
    ld (@oid),hl
    ld (@x),bc
    ld (@y),de
    ld (@z),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 17, oid; distx; disty; distz; : Set Object XYZ Translation Distances
        db 23, 0, $A0
        dw sid
        db $49, 17
@oid:   dw 0
@x:     dw 0
@y:     dw 0
@z:     dw 0
@end:   db 0 ; padding

; set wolf object rotation angkes
; inputs: hl oid, bc anglex, de angley, iy anglez
sorabs:
    ld (@oid),hl
    ld (@rx),bc
    ld (@ry),de
    ld (@rz),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
;  1120 VDU 23, 0, &A0, sid%; &49, 13, oid%; rx; ry; rz; Set Object XYZ Rotation Angles
        db 23, 0, $A0
        dw sid
        db $49, 13
@oid:   dw 0
@rx:    dw 0
@ry:    dw 0
@rz:    dw 0
@end:   db 0 ; padding

; set wolf camera distance relative
; inputs: bc distx, de disty, iy distz
scdrel:
    ld (@x),bc
    ld (@y),de
    ld (@z),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
;   360 VDU 23,0, &A0, sid%; &49, 153, distx; disty; distz; Set Camera XYZ Translation Distances Relative
    db 23,0,$A0
    dw sid
    db $49,153
@x: dw 0x0000
@y: dw 0x0000
@z: dw 0x0000
@end: db 0x00 ; padding

; set wolf camera rotation angkes relative
; inputs: bc anglex, de angley, iy anglez
scrrel:
    ld (@rx),bc
    ld (@ry),de
    ld (@rz),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 149, anglex; angley; anglez; : Set Camera XYZ Rotation Angles Relative
        db 23,0,$A0
        dw sid
        db $49,149
@rx:    dw 0x0000
@ry:    dw 0x0000
@rz:    dw 0x0000
@end:   db 0x00 ; padding

; VDU 23, 0, &A0, sid; &49, 42, oid; : Rotate Camera Locally to track a specified object
; inputs: hl oid
cto:
    ld (@oid),hl
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
    db 23, 0, $A0
    dw sid
    db $49, 42
@oid:   dw 0
@end:   db 0 ; padding

; set wolf object distance
; inputs: hl oid, bc distx, de disty, iy distz
sodrel:
    ld (@oid),hl
    ld (@x),bc
    ld (@y),de
    ld (@z),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 145, oid; distx; disty; distz; : Set Object XYZ Translation Distances Relative
        db 23, 0, $A0
        dw sid
        db $49, 145
@oid:   dw 0
@x:     dw 0
@y:     dw 0
@z:     dw 0
@end:   db 0 ; padding

; set wolf object rotation angkes
; inputs: hl oid, bc anglex, de angley, iy anglez
sorrel:
    ld (@oid),hl
    ld (@rx),bc
    ld (@ry),de
    ld (@rz),iy
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
;  1120 VDU 23, 0, &A0, sid%; &49, 141, oid%; rx; ry; rz; Set Object XYZ Rotation Angles Relative
        db 23, 0, $A0
        dw sid
        db $49, 141
@oid:   dw 0
@rx:    dw 0
@ry:    dw 0
@rz:    dw 0
@end:   db 0 ; padding

cycle_dithering:
    ld a,(dithering_type)
    inc a
    cp 3
    jr nz,@set
    xor a
@set:
    ld (dithering_type),a
; fall through to vdu_set_dither

; set dithering type
; inputs: a = dithering type/optons
; dithering types bits 0-1: 00 none (default), 01 bayer ordered matrix, 10 floyd-steinberg
vdu_set_dither:
; VDU 23, 0, &A0, sid; &49, 41, type
    ld (@dt),a
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
        db 23,0,$A0
        dw sid
        db $49,41
@dt:    db 0x00
@end:

move_object_abs:
    call printNewLine

    ld hl,(objx)
    ld de,(objdx)
    add hl,de
    ld (@x),hl
    ld (objx),hl
    call printDec

    ld hl,(objy)
    ld de,(objdy)
    add hl,de
    ld (@y),hl
    ld (objy),hl
    call printDec

    ld hl,(objz)
    ld de,(objdz)
    add hl,de
    ld (@z),hl
    ld (objz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 17, oid; distx; disty; distz; : Set Object XYZ Translation Distances
        db 23, 0, $A0
        dw sid
        db $49, 17
        dw oid
@x:     dw 0
@y:     dw 0
@z:     dw 0
@end:   db 0 ; padding

rotate_object_abs:
;  1080 objrx=objrx+objdrx: IF objrx>=pi2 THEN objrx=objrx-pi2
    ld hl,(objrx)
    ld de,(objdrx)
    add hl,de
    ld (@rx),hl
    ld (objrx),hl
    call printDec
;  1090 objry=objry+objdry: IF objry>=pi2 THEN objry=objry-pi2
    ld hl,(objry)
    ld de,(objdry)
    add hl,de
    ld (@ry),hl
    ld (objry),hl
    call printDec
;  1100 objrz=objrz+objdrz: IF objrz>=pi2 THEN objrz=objrz-pi2
    ld hl,(objrz)
    ld de,(objdrz)
    add hl,de
    ld (@rz),hl
    ld (objrz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
;  1120 VDU 23, 0, &A0, sid%; &49, 13, oid%; rx; ry; rz; Set Object XYZ Rotation Angles
        db 23, 0, $A0
        dw sid
        db $49, 13
        dw oid
@rx:    dw 0
@ry:    dw 0
@rz:    dw 0
@end:   db 0 ; padding

rotate_camera_abs:
    call printNewLine

;  1080 camrx=camrx+camdrx: IF camrx>=pi2 THEN camrx=camrx-pi2
    ld hl,(camrx)
    ld de,(camdrx)
    add hl,de
    ld (@rx),hl
    ld (camrx),hl
    call printDec
;  1090 camry=camry+camdry: IF camry>=pi2 THEN camry=camry-pi2
    ld hl,(camry)
    ld de,(camdry)
    add hl,de
    ld (@ry),hl
    ld (camry),hl
    call printDec
;  1100 camrz=camrz+camdrz: IF camrz>=pi2 THEN camrz=camrz-pi2
    ld hl,(camrz)
    ld de,(camdrz)
    add hl,de
    ld (@rz),hl
    ld (camrz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 21, anglex; angley; anglez; : Set Camera XYZ Rotation Angles
        db 23, 0, $A0
        dw sid
        db $49, 21
@rx:    dw 0
@ry:    dw 0
@rz:    dw 0
@end:   db 0 ; padding

move_camera_abs:
    call printNewLine

    ld hl,(camx)
    ld de,(camdx)
    add hl,de
    ld (@x),hl
    ld (camx),hl
    call printDec

    ld hl,(camy)
    ld de,(camdy)
    add hl,de
    ld (@y),hl
    ld (camy),hl
    call printDec

    ld hl,(camz)
    ld de,(camdz)
    add hl,de
    ld (@z),hl
    ld (camz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
;   VDU 23, 0, &A0, sid; &48, 25; distx; disty; distz :  Set Camera XYZ Translation Distances
        db 23, 0, $A0
        dw sid
        db $49, 25
@x:     dw 0
@y:     dw 0
@z:     dw 0
@end:   db 0 ; padding


move_object_loc:
    call printNewLine

    ld hl,(objx)
    ld de,(objdx)
    add hl,de
    ld (@x),de
    ld (objx),hl
    call printDec

    ld hl,(objy)
    ld de,(objdy)
    add hl,de
    ld (@y),de
    ld (objy),hl
    call printDec

    ld hl,(objz)
    ld de,(objdz)
    add hl,de
    ld (@z),de
    ld (objz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 145, oid; distx; disty; distz :  Set Object XYZ Translation Distances
        db 23, 0, $A0
        dw sid
        db $49, 145
        dw oid
@x:     dw 0
@y:     dw 0
@z:     dw 0
@end:   db 0 ; padding

rotate_object_loc:
;  1080 objrx=objrx+objdrx: IF objrx>=pi2 THEN objrx=objrx-pi2
    ld hl,(objrx)
    ld de,(objdrx)
    add hl,de
    ld (@rx),de
    ld (objrx),hl
    call printDec
;  1090 objry=objry+objdry: IF objry>=pi2 THEN objry=objry-pi2
    ld hl,(objry)
    ld de,(objdry)
    add hl,de
    ld (@ry),de
    ld (objry),hl
    call printDec
;  1100 objrz=objrz+objdrz: IF objrz>=pi2 THEN objrz=objrz-pi2
    ld hl,(objrz)
    ld de,(objdrz)
    add hl,de
    ld (@rz),de
    ld (objrz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 141, oid; anglex; angley; anglez; :  Set Object XYZ Rotation Angles Local
        db 23, 0, $A0
        dw sid
        db $49, 141
        dw oid
@rx:    dw 0
@ry:    dw 0
@rz:    dw 0
@end:   db 0 ; padding

rotate_camera_loc:
    call printNewLine

    ld hl,(camrx)
    ld de,(camdrx)
    add hl,de
    ld (@rx),de
    ld (camrx),hl
    call printDec

    ld hl,(camry)
    ld de,(camdry)
    add hl,de
    ld (@ry),de
    ld (camry),hl
    call printDec

    ld hl,(camrz)
    ld de,(camdrz)
    add hl,de
    ld (@rz),de
    ld (camrz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
; VDU 23, 0, &A0, sid; &49, 149; anglex; angley; anglez; :  Set Camera XYZ Rotation Angles (Local)
        db 23, 0, $A0
        dw sid
        db $49, 149
@rx:    dw 0
@ry:    dw 0
@rz:    dw 0
@end:   db 0 ; padding

move_camera_loc:
    call printNewLine

    ld hl,(camx)
    ld de,(camdx)
    add hl,de
    ld (@x),de
    ld (camx),hl
    call printDec

    ld hl,(camy)
    ld de,(camdy)
    add hl,de
    ld (@y),de
    ld (camy),hl
    call printDec

    ld hl,(camz)
    ld de,(camdz)
    add hl,de
    ld (@z),de
    ld (camz),hl
    call printDec

    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    ret
@beg:
;   VDU 23, 0, &A0, sid; &49, 153, distx; disty; distz :  Set Camera XYZ Translation Distances (Local)
        db 23, 0, $A0
        dw sid
        db $49, 153
@x:     dw 0
@y:     dw 0
@z:     dw 0
@end:   db 0 ; padding

; VDU 23, 0, &A0, sid; &49, 128, 0, map_id; width; height; <cells> :  Load Wolf3D Map Cells
; inputs: a map_id, hl pointer to cells data
vdu_map_init:
    push hl ; back up pointer to map data
    ld (@map_id),a ; high byte will always be zero because we'll never need more than 255 maps
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
    db 23,0,$A0
    dw sid
    db $49,128,0
@map_id:    
    dw 0 
    dw 16 ; map_width
    dw 16 ; map_height
@end:
    pop hl ; restore pointer to map data
    ld bc,16*16*map_record_size ; 16x16 map
    rst.lil $18
    ret

; VDU 23, 0, &A0, sid; &49, 128, 1, map_id; num_panels; <texture_id; width; height;> :  Load Wolf3D Map Texture Panel Lookup Table
; inputs: a map_id
vdu_panel_init:
    ld (@map_id),a ; high byte will always be zero because we'll never need more than 255 maps
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
    db 23,0,$A0
    dw sid
    db $49,128,1
@map_id:
    dw 0
    dw cube_num_tiles ; num_panels
@end:
    ld hl,cube_tex_panel_lut
    ld bc,cube_num_tiles*6 ; 6 bytes per panel
    rst.lil $18
    ret