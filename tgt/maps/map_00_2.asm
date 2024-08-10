; Map masks for floor 0, room 2
; Generated by build_91c_asm_map_masks.py
; Do not edit this file

	.org 0xB7E000 ; base of on-chip high speed SRAM

cell_status:
; high to low byte: obj_id, img_idx, map_type_status; sprite_id
; map_type_status bit mask = is_door,is_wall,is_trigger,is_blocking,is_start,is_to_room,render_type_masks
	dl 0x140043 ; cell 000 x,y (0,0) sprite normal LAMP 
	db 0x00 ; LAMP
	dl 0x1DFF01 ; cell 001 x,y (1,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 002 x,y (2,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 003 x,y (3,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 004 x,y (4,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0F0550 ; cell 005 x,y (5,0) cube normal HANGING FLAG 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 006 x,y (6,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 007 x,y (7,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 008 x,y (8,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 009 x,y (9,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 010 x,y (10,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 011 x,y (11,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 012 x,y (12,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 013 x,y (13,0) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 014 x,y (14,0) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 015 x,y (15,0) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x320F43 ; cell 016 x,y (0,1) sprite normal DOG 
	db 0x01 ; DOG
	dl 0x1DFF01 ; cell 017 x,y (1,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 018 x,y (2,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 019 x,y (3,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 020 x,y (4,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 021 x,y (5,1) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x331043 ; cell 022 x,y (6,1) sprite normal GERMAN TROOPER 
	db 0x02 ; GERMAN TROOPER
	dl 0x1DFF01 ; cell 023 x,y (7,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 024 x,y (8,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 025 x,y (9,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0D0350 ; cell 026 x,y (10,1) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 027 x,y (11,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 028 x,y (12,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 029 x,y (13,1) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1F0834 ; cell 030 x,y (14,1) cube to room DOOR TO ROOM 1 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 031 x,y (15,1) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x331043 ; cell 032 x,y (0,2) sprite normal GERMAN TROOPER 
	db 0x03 ; GERMAN TROOPER
	dl 0x1DFF01 ; cell 033 x,y (1,2) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 034 x,y (2,2) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 035 x,y (3,2) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 036 x,y (4,2) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 037 x,y (5,2) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x320F43 ; cell 038 x,y (6,2) sprite normal DOG 
	db 0x04 ; DOG
	dl 0x1DFF01 ; cell 039 x,y (7,2) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 040 x,y (8,2) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0903 ; cell 041 x,y (9,2) sprite normal KEYCARD 
	db 0x05 ; KEYCARD
	dl 0x110750 ; cell 042 x,y (10,2) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 043 x,y (11,2) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 044 x,y (12,2) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 045 x,y (13,2) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 046 x,y (14,2) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 047 x,y (15,2) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x150143 ; cell 048 x,y (0,3) sprite normal BARREL 
	db 0x06 ; BARREL
	dl 0x1DFF01 ; cell 049 x,y (1,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 050 x,y (2,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 051 x,y (3,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 052 x,y (4,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 053 x,y (5,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 054 x,y (6,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 055 x,y (7,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 056 x,y (8,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0803 ; cell 057 x,y (9,3) sprite normal PLATE OF FOOD 
	db 0x07 ; PLATE OF FOOD
	dl 0x0D0350 ; cell 058 x,y (10,3) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x1D0603 ; cell 059 x,y (11,3) sprite normal GOLD CHALISE 
	db 0x08 ; GOLD CHALISE
	dl 0x1DFF01 ; cell 060 x,y (12,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 061 x,y (13,3) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x341143 ; cell 062 x,y (14,3) sprite normal SS GUARD 
	db 0x09 ; SS GUARD
	dl 0x0A0050 ; cell 063 x,y (15,3) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 064 x,y (0,4) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 065 x,y (1,4) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x390890 ; cell 066 x,y (2,4) cube normal REGULAR DOOR 
	db 0xFF ; no sprite
	dl 0x0D0350 ; cell 067 x,y (3,4) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 068 x,y (4,4) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 069 x,y (5,4) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 070 x,y (6,4) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0D0350 ; cell 071 x,y (7,4) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 072 x,y (8,4) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 073 x,y (9,4) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 074 x,y (10,4) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 075 x,y (11,4) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 076 x,y (12,4) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 077 x,y (13,4) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 078 x,y (14,4) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 079 x,y (15,4) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1D0903 ; cell 080 x,y (0,5) sprite normal KEYCARD 
	db 0x0A ; KEYCARD
	dl 0x1DFF01 ; cell 081 x,y (1,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 082 x,y (2,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 083 x,y (3,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 084 x,y (4,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 085 x,y (5,5) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1D0903 ; cell 086 x,y (6,5) sprite normal KEYCARD 
	db 0x0B ; KEYCARD
	dl 0x1DFF01 ; cell 087 x,y (7,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 088 x,y (8,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0703 ; cell 089 x,y (9,5) sprite normal GOLD CROSS 
	db 0x0C ; GOLD CROSS
	dl 0x0D0350 ; cell 090 x,y (10,5) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 091 x,y (11,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0303 ; cell 092 x,y (12,5) sprite normal OVERHEAD LIGHT 
	db 0x0D ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 093 x,y (13,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 094 x,y (14,5) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 095 x,y (15,5) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 096 x,y (0,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 097 x,y (1,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 098 x,y (2,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 099 x,y (3,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 100 x,y (4,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 101 x,y (5,6) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 102 x,y (6,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 103 x,y (7,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 104 x,y (8,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0503 ; cell 105 x,y (9,6) sprite normal HEALTH PACK 
	db 0x0E ; HEALTH PACK
	dl 0x110750 ; cell 106 x,y (10,6) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 107 x,y (11,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 108 x,y (12,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 109 x,y (13,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 110 x,y (14,6) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 111 x,y (15,6) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 112 x,y (0,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 113 x,y (1,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0303 ; cell 114 x,y (2,7) sprite normal OVERHEAD LIGHT 
	db 0x0F ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 115 x,y (3,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 116 x,y (4,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 117 x,y (5,7) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 118 x,y (6,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 119 x,y (7,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0303 ; cell 120 x,y (8,7) sprite normal OVERHEAD LIGHT 
	db 0x10 ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 121 x,y (9,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x390890 ; cell 122 x,y (10,7) cube normal REGULAR DOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 123 x,y (11,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 124 x,y (12,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 125 x,y (13,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 126 x,y (14,7) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 127 x,y (15,7) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 128 x,y (0,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 129 x,y (1,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 130 x,y (2,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 131 x,y (3,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 132 x,y (4,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0D0350 ; cell 133 x,y (5,8) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 134 x,y (6,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 135 x,y (7,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 136 x,y (8,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 137 x,y (9,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 138 x,y (10,8) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 139 x,y (11,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0303 ; cell 140 x,y (12,8) sprite normal OVERHEAD LIGHT 
	db 0x11 ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 141 x,y (13,8) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x341143 ; cell 142 x,y (14,8) sprite normal SS GUARD 
	db 0x12 ; SS GUARD
	dl 0x0A0050 ; cell 143 x,y (15,8) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 144 x,y (0,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 145 x,y (1,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 146 x,y (2,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 147 x,y (3,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 148 x,y (4,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 149 x,y (5,9) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 150 x,y (6,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 151 x,y (7,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 152 x,y (8,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 153 x,y (9,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0D0350 ; cell 154 x,y (10,9) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 155 x,y (11,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 156 x,y (12,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 157 x,y (13,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 158 x,y (14,9) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 159 x,y (15,9) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 160 x,y (0,10) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 161 x,y (1,10) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0303 ; cell 162 x,y (2,10) sprite normal OVERHEAD LIGHT 
	db 0x13 ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 163 x,y (3,10) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 164 x,y (4,10) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 165 x,y (5,10) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 166 x,y (6,10) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x331043 ; cell 167 x,y (7,10) sprite normal GERMAN TROOPER 
	db 0x14 ; GERMAN TROOPER
	dl 0x1D0303 ; cell 168 x,y (8,10) sprite normal OVERHEAD LIGHT 
	db 0x15 ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 169 x,y (9,10) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 170 x,y (10,10) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 171 x,y (11,10) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x3B0A90 ; cell 172 x,y (12,10) cube normal ELEVATOR DOOR 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 173 x,y (13,10) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 174 x,y (14,10) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 175 x,y (15,10) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 176 x,y (0,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 177 x,y (1,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 178 x,y (2,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 179 x,y (3,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 180 x,y (4,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 181 x,y (5,11) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 182 x,y (6,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 183 x,y (7,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x331043 ; cell 184 x,y (8,11) sprite normal GERMAN TROOPER 
	db 0x16 ; GERMAN TROOPER
	dl 0x1DFF01 ; cell 185 x,y (9,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 186 x,y (10,11) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 187 x,y (11,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 188 x,y (12,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 189 x,y (13,11) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 190 x,y (14,11) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 191 x,y (15,11) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 192 x,y (0,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 193 x,y (1,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 194 x,y (2,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 195 x,y (3,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 196 x,y (4,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0D0350 ; cell 197 x,y (5,12) cube normal DARK GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 198 x,y (6,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 199 x,y (7,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 200 x,y (8,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x331043 ; cell 201 x,y (9,12) sprite normal GERMAN TROOPER 
	db 0x17 ; GERMAN TROOPER
	dl 0x0E0450 ; cell 202 x,y (10,12) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 203 x,y (11,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 204 x,y (12,12) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0903 ; cell 205 x,y (13,12) sprite normal KEYCARD 
	db 0x18 ; KEYCARD
	dl 0x0E0450 ; cell 206 x,y (14,12) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 207 x,y (15,12) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 208 x,y (0,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 209 x,y (1,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0303 ; cell 210 x,y (2,13) sprite normal OVERHEAD LIGHT 
	db 0x19 ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 211 x,y (3,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 212 x,y (4,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x110750 ; cell 213 x,y (5,13) cube normal BLUE WALL 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 214 x,y (6,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 215 x,y (7,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0303 ; cell 216 x,y (8,13) sprite normal OVERHEAD LIGHT 
	db 0x1A ; OVERHEAD LIGHT
	dl 0x1DFF01 ; cell 217 x,y (9,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 218 x,y (10,13) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x1D0503 ; cell 219 x,y (11,13) sprite normal HEALTH PACK 
	db 0x1B ; HEALTH PACK
	dl 0x1DFF01 ; cell 220 x,y (12,13) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0903 ; cell 221 x,y (13,13) sprite normal KEYCARD 
	db 0x1C ; KEYCARD
	dl 0x0E0450 ; cell 222 x,y (14,13) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 223 x,y (15,13) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x1D0503 ; cell 224 x,y (0,14) sprite normal HEALTH PACK 
	db 0x1D ; HEALTH PACK
	dl 0x1DFF01 ; cell 225 x,y (1,14) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 226 x,y (2,14) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 227 x,y (3,14) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1D0903 ; cell 228 x,y (4,14) sprite normal KEYCARD 
	db 0x1E ; KEYCARD
	dl 0x390890 ; cell 229 x,y (5,14) cube normal REGULAR DOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 230 x,y (6,14) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 231 x,y (7,14) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 232 x,y (8,14) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x1DFF01 ; cell 233 x,y (9,14) floor normal GREY FLOOR 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 234 x,y (10,14) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 235 x,y (11,14) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x3A0970 ; cell 236 x,y (12,14) cube elevator ELEVATOR SWITCH 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 237 x,y (13,14) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0E0450 ; cell 238 x,y (14,14) cube normal WOOD WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 239 x,y (15,14) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 240 x,y (0,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 241 x,y (1,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 242 x,y (2,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 243 x,y (3,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 244 x,y (4,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 245 x,y (5,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 246 x,y (6,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 247 x,y (7,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 248 x,y (8,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 249 x,y (9,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 250 x,y (10,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 251 x,y (11,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 252 x,y (12,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 253 x,y (13,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 254 x,y (14,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite
	dl 0x0A0050 ; cell 255 x,y (15,15) cube outer LIGHT GREY WALL 
	db 0xFF ; no sprite

	.org 0xB7E400 ; cell_status + 256*4

; mind the little-endianess in the bit order here!
cell_views:

sprite_table_base: blkb 1024,255 ; so that sprite_id and sprite_obj default to no sprite
sprite_table_limit:
