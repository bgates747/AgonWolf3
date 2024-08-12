; labels and subroutines from various include files
; which have been temporarily excluded until they can be refactored

cur_floor: db 0x00 ; 0-255, corresponds to floor_num in build scripts
cur_room: db 0x00 ; 0-9, corresponds to room_id in build scripts
cur_cell: db 0x00 ; 0-255, corresponds to cell_id in build scripts
from_floor: db 0x00 ; 0-255, corresponds to floor_num in build scripts
from_room: db 0x00 ; 0-9, corresponds to room_id in build scripts
orientation: db 0x00 ; 0-3 north,east,south,west
cur_x: db 0x00
cur_y: db 0x00
       db 0x00 ; padding so we can read/write 24-bit registers