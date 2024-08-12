
; WARNING: this routine must be the last one loaded in the main program so that filedata doesn't stomp on any program code
; inputs: hl = bufferId, ix = file size
vdu_load_buffer_from_file:
    ; back up buffer id
        push hl
    ; load the file from disk into ram
        push iy
        pop hl ; pointer to filename
        ld de,filedata
        ld a,mos_load
        RST.LIL 08h
	; load buffer ids
        pop hl
		ld (@id0),hl
		ld (@id1),hl
		ld (@id2),hl
	; clean up bytes that got stomped on by the ID loads
		ld a,2
		ld (@id0+2),a
		ld a,23
		ld (@id1+2),a
		xor a
		ld (@id2+2),a
	; read size from ix
		ld a,ixl
		ld (@size),a
		ld a,ixh
		ld (@size+1),a
	; get all the ducks in a row for the vdu call
		ld bc,filedata-@start
		add ix,bc
		ld b,ixh
		ld c,ixl
		ld hl,@start
	; push the button
		rst.lil $18
    ; print a progress breadcrumb
        ld a,'.' 
        rst.lil 10h
	; back to caller
		ret
; vdp command string:
@start: db 23,0,0xA0 ; Clear buffer
@id0:	dw 0x0000 ; bufferId
		db 2
	; select buffer VDU 23, 27, &20, bufferId;
		db 23,27,0x20 
@id1:	dw 0x0000 ; bufferId
	; Upload data :: VDU 23, 0 &A0, bufferId; 0, length; <buffer-data>
		db 23,0,0xA0
@id2:	dw 0x0000 ; bufferId
		db 0 
		; CAUTION: the size argument is a 16-bit value, so the max number of bytes we can load in one chunk is 64KiB!! This corresponds to an rgba2 image size of 320x204.
@size:	dw 0x0000 ; length of data in bytes
filedata: ; no need to allocate space here if this is the final include of the application
	; ds 65536 ; placeholder for file data	DEBUG

; ; TODO: MAKE PROGRESSIVE LOADING WORK
; ; WARNING: this routine must be the last one loaded in the main program so that filedata doesn't stomp on any program code
; ; inputs: hl = bufferId, ix = file size ; iy = pointer to filename
; vdu_load_buffer_from_file:
; ; load buffer ids
;     ld (@id0),hl
;     ld (@id1),hl
; ; clean up bytes that got stomped on by the ID loads
;     ld a,2
;     ld (@id0+2),a
;     xor a
;     ld (@id1+2),a
; ; load the file from disk into ram
;     ld (@filesize),ix
;     ld bc,(@filesize) ; for the mos_load call
;     push iy
; 	pop hl ; pointer to filename
; 	ld de,filedata
; 	ld a,mos_load
; 	RST.LIL 08h
; ; clear target buffer
;     ld hl,@clear0
;     ld bc,@clear1-@clear0
;     rst.lil $18
;     jp @clear1
; @clear0: db 23,0,0xA0
; @id0:	dw 0x0000 ; bufferId
; 		db 2 ; clear buffer
; @clear1:
; ; load default chunk size of 256 bytes
;     xor a
;     ld (@chunksize),a
;     ld a,1
;     ld (@chunksize+1),a
; ; point hl at the start of the file data
;     ld hl,filedata
;     ld (@chunkpointer),hl
; @loop:
;     ld hl,(@filesize) ; get the remaining bytes
;     ld de,256
;     xor a ; clear carry
;     sbc hl,de
;     ld (@filesize),hl ; store remaining bytes
;     jp z,@loadchunk ; jp means will return to caller from there
;     jp m,@lastchunk ; ditto
;     call @loadchunk ; load the next chunk and return here to loop again
;     jp @loop ; loop back to load the next chunk
; @lastchunk:
;     ld de,256
;     add hl,de
;     ld a,l
;     ld (@chunksize),a ; store the remaining bytes
;     ld a,h
;     ld (@chunksize+1),a
;     ; fall through to loadchunk
; @loadchunk:
;     ld hl,@chunk0
;     ld bc,@chunk1-@chunk0
;     rst.lil $18
;     jp @chunk1
; @chunk0:
; ; Upload data :: VDU 23, 0 &A0, bufferId; 0, length; <buffer-data>
; 		db 23,0,0xA0
; @id1:	dw 0x0000 ; bufferId
; 		db 0 ; load buffer
; @chunksize:	dw 0x0000 ; length of data in bytes
; @chunk1:
;     ld hl,(@chunkpointer) ; get the file data pointer
;     ld bc,0 ; make sure bcu is zero
;     ld a,(@chunksize)
;     ld c,a
;     ld a,(@chunksize+1)
;     ld b,a
;     rst.lil $18
;     ld hl,(@chunkpointer) ; get the file data pointer
;     ld bc,256
;     add hl,bc ; advance the file data pointer
;     ld (@chunkpointer),hl ; store pointer to file data
;     ld a,'.' ; print a progress breadcrumb
;     rst.lil 10h
;     ret
; @filesize: dl 0 ; file size in bytes
; @chunkpointer: dl 0 ; pointer to current chunk
; filedata: ; no need to allocate space here if this is the final include of the application
; 	; ds 65536 ; placeholder for file data	DEBUG
