; Bitmap indices:
BUF_0544: equ 0x0220 ; 32  
; Missing character 33 !
; Missing character 34 "
; Missing character 35 #
; Missing character 36 $
; Missing character 37 %
; Missing character 38 &
; Missing character 39 '
; Missing character 40 (
; Missing character 41 )
; Missing character 42 *
; Missing character 43 +
; Missing character 44 ,
; Missing character 45 -
BUF_0558: equ 0x022E ; 46 .
; Missing character 47 /
BUF_0560: equ 0x0230 ; 48 0
BUF_0561: equ 0x0231 ; 49 1
BUF_0562: equ 0x0232 ; 50 2
BUF_0563: equ 0x0233 ; 51 3
BUF_0564: equ 0x0234 ; 52 4
BUF_0565: equ 0x0235 ; 53 5
BUF_0566: equ 0x0236 ; 54 6
BUF_0567: equ 0x0237 ; 55 7
BUF_0568: equ 0x0238 ; 56 8
BUF_0569: equ 0x0239 ; 57 9
; Missing character 58 :
; Missing character 59 ;
; Missing character 60 <
; Missing character 61 =
; Missing character 62 >
; Missing character 63 ?
; Missing character 64 @
BUF_0577: equ 0x0241 ; 65 A
BUF_0578: equ 0x0242 ; 66 B
BUF_0579: equ 0x0243 ; 67 C
BUF_0580: equ 0x0244 ; 68 D
BUF_0581: equ 0x0245 ; 69 E
BUF_0582: equ 0x0246 ; 70 F
BUF_0583: equ 0x0247 ; 71 G
BUF_0584: equ 0x0248 ; 72 H
BUF_0585: equ 0x0249 ; 73 I
BUF_0586: equ 0x024A ; 74 J
BUF_0587: equ 0x024B ; 75 K
BUF_0588: equ 0x024C ; 76 L
BUF_0589: equ 0x024D ; 77 M
BUF_0590: equ 0x024E ; 78 N
BUF_0591: equ 0x024F ; 79 O
BUF_0592: equ 0x0250 ; 80 P
BUF_0593: equ 0x0251 ; 81 Q
BUF_0594: equ 0x0252 ; 82 R
BUF_0595: equ 0x0253 ; 83 S
BUF_0596: equ 0x0254 ; 84 T
BUF_0597: equ 0x0255 ; 85 U
BUF_0598: equ 0x0256 ; 86 V
BUF_0599: equ 0x0257 ; 87 W
BUF_0600: equ 0x0258 ; 88 X
BUF_0601: equ 0x0259 ; 89 Y
BUF_0602: equ 0x025A ; 90 Z
; Missing character 91 [
; Missing character 92 \
; Missing character 93 ]
; Missing character 94 ^
; Missing character 95 _
; Missing character 96 `
BUF_0609: equ 0x0261 ; 97 a
BUF_0610: equ 0x0262 ; 98 b
BUF_0611: equ 0x0263 ; 99 c
BUF_0612: equ 0x0264 ; 100 d
BUF_0613: equ 0x0265 ; 101 e
BUF_0614: equ 0x0266 ; 102 f
BUF_0615: equ 0x0267 ; 103 g
BUF_0616: equ 0x0268 ; 104 h
BUF_0617: equ 0x0269 ; 105 i
BUF_0618: equ 0x026A ; 106 j
BUF_0619: equ 0x026B ; 107 k
BUF_0620: equ 0x026C ; 108 l
BUF_0621: equ 0x026D ; 109 m
BUF_0622: equ 0x026E ; 110 n
BUF_0623: equ 0x026F ; 111 o
BUF_0624: equ 0x0270 ; 112 p
BUF_0625: equ 0x0271 ; 113 q
BUF_0626: equ 0x0272 ; 114 r
BUF_0627: equ 0x0273 ; 115 s
BUF_0628: equ 0x0274 ; 116 t
BUF_0629: equ 0x0275 ; 117 u
BUF_0630: equ 0x0276 ; 118 v
BUF_0631: equ 0x0277 ; 119 w
BUF_0632: equ 0x0278 ; 120 x
BUF_0633: equ 0x0279 ; 121 y
BUF_0634: equ 0x027A ; 122 z
; [y_offset, dim_y, dim_x], buffer_id label: ; mind the little-endian order when fetching these!!!
font_itc_honda:
	dl 0x000106,BUF_0544
	dl 0x000106,BUF_0544 ; Missing character 33
	dl 0x000106,BUF_0544 ; Missing character 34
	dl 0x000106,BUF_0544 ; Missing character 35
	dl 0x000106,BUF_0544 ; Missing character 36
	dl 0x000106,BUF_0544 ; Missing character 37
	dl 0x000106,BUF_0544 ; Missing character 38
	dl 0x000106,BUF_0544 ; Missing character 39
	dl 0x000106,BUF_0544 ; Missing character 40
	dl 0x000106,BUF_0544 ; Missing character 41
	dl 0x000106,BUF_0544 ; Missing character 42
	dl 0x000106,BUF_0544 ; Missing character 43
	dl 0x000106,BUF_0544 ; Missing character 44
	dl 0x000106,BUF_0544 ; Missing character 45
	dl 0x0E0505,BUF_0558
	dl 0x000106,BUF_0544 ; Missing character 47
	dl 0x00120A,BUF_0560
	dl 0x001204,BUF_0561
	dl 0x001209,BUF_0562
	dl 0x00120A,BUF_0563
	dl 0x00120C,BUF_0564
	dl 0x00120A,BUF_0565
	dl 0x00120A,BUF_0566
	dl 0x001208,BUF_0567
	dl 0x00120A,BUF_0568
	dl 0x00120A,BUF_0569
	dl 0x000106,BUF_0544 ; Missing character 58
	dl 0x000106,BUF_0544 ; Missing character 59
	dl 0x000106,BUF_0544 ; Missing character 60
	dl 0x000106,BUF_0544 ; Missing character 61
	dl 0x000106,BUF_0544 ; Missing character 62
	dl 0x000106,BUF_0544 ; Missing character 63
	dl 0x000106,BUF_0544 ; Missing character 64
	dl 0x01120A,BUF_0577
	dl 0x00120A,BUF_0578
	dl 0x001308,BUF_0579
	dl 0x00120A,BUF_0580
	dl 0x001208,BUF_0581
	dl 0x001208,BUF_0582
	dl 0x00120A,BUF_0583
	dl 0x00120A,BUF_0584
	dl 0x001203,BUF_0585
	dl 0x001206,BUF_0586
	dl 0x00120A,BUF_0587
	dl 0x011208,BUF_0588
	dl 0x00120E,BUF_0589
	dl 0x00120A,BUF_0590
	dl 0x00120A,BUF_0591
	dl 0x00120A,BUF_0592
	dl 0x00150A,BUF_0593
	dl 0x00120A,BUF_0594
	dl 0x001309,BUF_0595
	dl 0x00120A,BUF_0596
	dl 0x00120A,BUF_0597
	dl 0x00120A,BUF_0598
	dl 0x001210,BUF_0599
	dl 0x00120A,BUF_0600
	dl 0x01120A,BUF_0601
	dl 0x011209,BUF_0602
	dl 0x000106,BUF_0544 ; Missing character 91
	dl 0x000106,BUF_0544 ; Missing character 92
	dl 0x000106,BUF_0544 ; Missing character 93
	dl 0x000106,BUF_0544 ; Missing character 94
	dl 0x000106,BUF_0544 ; Missing character 95
	dl 0x000106,BUF_0544 ; Missing character 96
	dl 0x060C08,BUF_0609
	dl 0x011209,BUF_0610
	dl 0x060C07,BUF_0611
	dl 0x001209,BUF_0612
	dl 0x060C08,BUF_0613
	dl 0x001209,BUF_0614
	dl 0x061209,BUF_0615
	dl 0x011209,BUF_0616
	dl 0x001204,BUF_0617
	dl 0x001808,BUF_0618
	dl 0x011209,BUF_0619
	dl 0x001203,BUF_0620
	dl 0x060D0E,BUF_0621
	dl 0x060C09,BUF_0622
	dl 0x060C09,BUF_0623
	dl 0x061209,BUF_0624
	dl 0x061209,BUF_0625
	dl 0x060D06,BUF_0626
	dl 0x060D08,BUF_0627
	dl 0x030F07,BUF_0628
	dl 0x060C09,BUF_0629
	dl 0x060C09,BUF_0630
	dl 0x060C0E,BUF_0631
	dl 0x060C09,BUF_0632
	dl 0x061109,BUF_0633
	dl 0x060C09,BUF_0634

; Import .rgba2 bitmap files and load them into VDP buffers
load_font_itc_honda:

	ld hl,Fhonda032
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0544
	ld bc,6
	ld de,1
	ld ix,6
	call vdu_load_img
; Missing character 33
; Missing character 34
; Missing character 35
; Missing character 36
; Missing character 37
; Missing character 38
; Missing character 39
; Missing character 40
; Missing character 41
; Missing character 42
; Missing character 43
; Missing character 44
; Missing character 45

	ld hl,Fhonda046
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0558
	ld bc,5
	ld de,5
	ld ix,25
	call vdu_load_img
; Missing character 47

	ld hl,Fhonda048
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0560
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda049
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0561
	ld bc,4
	ld de,18
	ld ix,72
	call vdu_load_img

	ld hl,Fhonda050
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0562
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda051
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0563
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda052
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0564
	ld bc,12
	ld de,18
	ld ix,216
	call vdu_load_img

	ld hl,Fhonda053
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0565
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda054
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0566
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda055
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0567
	ld bc,8
	ld de,18
	ld ix,144
	call vdu_load_img

	ld hl,Fhonda056
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0568
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda057
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0569
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img
; Missing character 58
; Missing character 59
; Missing character 60
; Missing character 61
; Missing character 62
; Missing character 63
; Missing character 64

	ld hl,Fhonda065
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0577
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda066
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0578
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda067
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0579
	ld bc,8
	ld de,19
	ld ix,152
	call vdu_load_img

	ld hl,Fhonda068
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0580
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda069
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0581
	ld bc,8
	ld de,18
	ld ix,144
	call vdu_load_img

	ld hl,Fhonda070
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0582
	ld bc,8
	ld de,18
	ld ix,144
	call vdu_load_img

	ld hl,Fhonda071
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0583
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda072
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0584
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda073
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0585
	ld bc,3
	ld de,18
	ld ix,54
	call vdu_load_img

	ld hl,Fhonda074
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0586
	ld bc,6
	ld de,18
	ld ix,108
	call vdu_load_img

	ld hl,Fhonda075
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0587
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda076
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0588
	ld bc,8
	ld de,18
	ld ix,144
	call vdu_load_img

	ld hl,Fhonda077
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0589
	ld bc,14
	ld de,18
	ld ix,252
	call vdu_load_img

	ld hl,Fhonda078
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0590
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda079
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0591
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda080
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0592
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda081
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0593
	ld bc,10
	ld de,21
	ld ix,210
	call vdu_load_img

	ld hl,Fhonda082
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0594
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda083
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0595
	ld bc,9
	ld de,19
	ld ix,171
	call vdu_load_img

	ld hl,Fhonda084
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0596
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda085
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0597
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda086
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0598
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda087
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0599
	ld bc,16
	ld de,18
	ld ix,288
	call vdu_load_img

	ld hl,Fhonda088
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0600
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda089
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0601
	ld bc,10
	ld de,18
	ld ix,180
	call vdu_load_img

	ld hl,Fhonda090
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0602
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img
; Missing character 91
; Missing character 92
; Missing character 93
; Missing character 94
; Missing character 95
; Missing character 96

	ld hl,Fhonda097
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0609
	ld bc,8
	ld de,12
	ld ix,96
	call vdu_load_img

	ld hl,Fhonda098
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0610
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda099
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0611
	ld bc,7
	ld de,12
	ld ix,84
	call vdu_load_img

	ld hl,Fhonda100
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0612
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda101
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0613
	ld bc,8
	ld de,12
	ld ix,96
	call vdu_load_img

	ld hl,Fhonda102
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0614
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda103
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0615
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda104
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0616
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda105
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0617
	ld bc,4
	ld de,18
	ld ix,72
	call vdu_load_img

	ld hl,Fhonda106
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0618
	ld bc,8
	ld de,24
	ld ix,192
	call vdu_load_img

	ld hl,Fhonda107
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0619
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda108
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0620
	ld bc,3
	ld de,18
	ld ix,54
	call vdu_load_img

	ld hl,Fhonda109
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0621
	ld bc,14
	ld de,13
	ld ix,182
	call vdu_load_img

	ld hl,Fhonda110
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0622
	ld bc,9
	ld de,12
	ld ix,108
	call vdu_load_img

	ld hl,Fhonda111
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0623
	ld bc,9
	ld de,12
	ld ix,108
	call vdu_load_img

	ld hl,Fhonda112
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0624
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda113
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0625
	ld bc,9
	ld de,18
	ld ix,162
	call vdu_load_img

	ld hl,Fhonda114
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0626
	ld bc,6
	ld de,13
	ld ix,78
	call vdu_load_img

	ld hl,Fhonda115
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0627
	ld bc,8
	ld de,13
	ld ix,104
	call vdu_load_img

	ld hl,Fhonda116
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0628
	ld bc,7
	ld de,15
	ld ix,105
	call vdu_load_img

	ld hl,Fhonda117
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0629
	ld bc,9
	ld de,12
	ld ix,108
	call vdu_load_img

	ld hl,Fhonda118
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0630
	ld bc,9
	ld de,12
	ld ix,108
	call vdu_load_img

	ld hl,Fhonda119
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0631
	ld bc,14
	ld de,12
	ld ix,168
	call vdu_load_img

	ld hl,Fhonda120
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0632
	ld bc,9
	ld de,12
	ld ix,108
	call vdu_load_img

	ld hl,Fhonda121
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0633
	ld bc,9
	ld de,17
	ld ix,153
	call vdu_load_img

	ld hl,Fhonda122
	ld de,filedata
	ld bc,65536
	ld a,mos_load
	RST.LIL 08h
	ld hl,BUF_0634
	ld bc,9
	ld de,12
	ld ix,108
	call vdu_load_img

	ret

Fhonda032: db "fonts/honda/032.rgba2",0
Fhonda046: db "fonts/honda/046.rgba2",0
Fhonda048: db "fonts/honda/048.rgba2",0
Fhonda049: db "fonts/honda/049.rgba2",0
Fhonda050: db "fonts/honda/050.rgba2",0
Fhonda051: db "fonts/honda/051.rgba2",0
Fhonda052: db "fonts/honda/052.rgba2",0
Fhonda053: db "fonts/honda/053.rgba2",0
Fhonda054: db "fonts/honda/054.rgba2",0
Fhonda055: db "fonts/honda/055.rgba2",0
Fhonda056: db "fonts/honda/056.rgba2",0
Fhonda057: db "fonts/honda/057.rgba2",0
Fhonda065: db "fonts/honda/065.rgba2",0
Fhonda066: db "fonts/honda/066.rgba2",0
Fhonda067: db "fonts/honda/067.rgba2",0
Fhonda068: db "fonts/honda/068.rgba2",0
Fhonda069: db "fonts/honda/069.rgba2",0
Fhonda070: db "fonts/honda/070.rgba2",0
Fhonda071: db "fonts/honda/071.rgba2",0
Fhonda072: db "fonts/honda/072.rgba2",0
Fhonda073: db "fonts/honda/073.rgba2",0
Fhonda074: db "fonts/honda/074.rgba2",0
Fhonda075: db "fonts/honda/075.rgba2",0
Fhonda076: db "fonts/honda/076.rgba2",0
Fhonda077: db "fonts/honda/077.rgba2",0
Fhonda078: db "fonts/honda/078.rgba2",0
Fhonda079: db "fonts/honda/079.rgba2",0
Fhonda080: db "fonts/honda/080.rgba2",0
Fhonda081: db "fonts/honda/081.rgba2",0
Fhonda082: db "fonts/honda/082.rgba2",0
Fhonda083: db "fonts/honda/083.rgba2",0
Fhonda084: db "fonts/honda/084.rgba2",0
Fhonda085: db "fonts/honda/085.rgba2",0
Fhonda086: db "fonts/honda/086.rgba2",0
Fhonda087: db "fonts/honda/087.rgba2",0
Fhonda088: db "fonts/honda/088.rgba2",0
Fhonda089: db "fonts/honda/089.rgba2",0
Fhonda090: db "fonts/honda/090.rgba2",0
Fhonda097: db "fonts/honda/097.rgba2",0
Fhonda098: db "fonts/honda/098.rgba2",0
Fhonda099: db "fonts/honda/099.rgba2",0
Fhonda100: db "fonts/honda/100.rgba2",0
Fhonda101: db "fonts/honda/101.rgba2",0
Fhonda102: db "fonts/honda/102.rgba2",0
Fhonda103: db "fonts/honda/103.rgba2",0
Fhonda104: db "fonts/honda/104.rgba2",0
Fhonda105: db "fonts/honda/105.rgba2",0
Fhonda106: db "fonts/honda/106.rgba2",0
Fhonda107: db "fonts/honda/107.rgba2",0
Fhonda108: db "fonts/honda/108.rgba2",0
Fhonda109: db "fonts/honda/109.rgba2",0
Fhonda110: db "fonts/honda/110.rgba2",0
Fhonda111: db "fonts/honda/111.rgba2",0
Fhonda112: db "fonts/honda/112.rgba2",0
Fhonda113: db "fonts/honda/113.rgba2",0
Fhonda114: db "fonts/honda/114.rgba2",0
Fhonda115: db "fonts/honda/115.rgba2",0
Fhonda116: db "fonts/honda/116.rgba2",0
Fhonda117: db "fonts/honda/117.rgba2",0
Fhonda118: db "fonts/honda/118.rgba2",0
Fhonda119: db "fonts/honda/119.rgba2",0
Fhonda120: db "fonts/honda/120.rgba2",0
Fhonda121: db "fonts/honda/121.rgba2",0
Fhonda122: db "fonts/honda/122.rgba2",0
