; https://github.com/richardturnnidge/lessons/blob/main/sound.asm
; play a sound on a given channel, duration and volume
; VDU 23, 0, &85, channel, 0, volume, frequency; duration;
    MACRO PLAY_SAMPLE channel, volume, duration
    ld hl, @startSample
    ld bc, @endSample - @startSample
    rst.lil $18
    ret 
@startSample: 
; ; mute channel
;     db 23, 0, $85             ; Command header
;     db channel                ; Channel, 0 (commented out)
;     db 2                      ; Magic number
;     db 0                      ; Volume (mute)
; play sammple
    .db 23,0,$85                        ; do sound
    .db channel,0,volume                ; channel, volume
    .dw 0                               ; freq (tuneable samples only)
    .dw 0 ;duration                        ; duration
@endSample:
    ENDMACRO

; Command 4: Set waveform
; VDU 23, 0, &85, channel, 4, 8, bufferId;
    MACRO WAVEFORM_SAMPLE channel, buffer_id
    ld hl, @startChannel
    ld bc, @endChannel - @startChannel
    rst.lil $18
    ret 
@startChannel: 
    .db 23,0,$85    ; do sound
    .db channel,4,8 ; channel, command, waveform
    .dw buffer_id
@endChannel:
    ENDMACRO


; ############################################################
; VDU SOUND API
; ############################################################
; Command 0: Play note
; VDU 23, 0, &85, channel, 0, volume, frequency; duration;
    MACRO PLAY_NOTE channel, volume, frequency, duration
    ld hl, @PLAY_NOTE_CMD        ; Start of command block
    ld bc, @PLAY_NOTE_END - @PLAY_NOTE_CMD  ; Command block size
    rst.lil $18
    jr @PLAY_NOTE_END  
@PLAY_NOTE_CMD:  db 23, 0, 0x85               ; Command header
                 db channel                  ; Channel, 0 (commented out)
                 db 0                        ; Play note command
                 db volume                   ; Volume
                 dw frequency                ; Frequency
                 dw duration                 ; Duration
@PLAY_NOTE_END: 
    ENDMACRO

    MACRO MUTE_CHANNEL channel
    ld hl, @MUTE_CHANNEL_CMD     ; Start of command block
    ld bc, @MUTE_CHANNEL_END - @MUTE_CHANNEL_CMD  ; Command block size
    rst.lil $18
    jr @MUTE_CHANNEL_END
@MUTE_CHANNEL_CMD: db 23, 0, 0x85             ; Command header
                   db channel                ; Channel, 0 (commented out)
                   db 2                      ; Set volume command
                   db 0                      ; Volume (mute)
@MUTE_CHANNEL_END: 
    ENDMACRO

; inputs: c = channel, b = volume, hl = frequency; de = duration;
vdu_play_note:
    ld a,c
    ld (@channel),a
    ld a,b
    ld (@volume),a
    ld (@frequency),hl
    ld (@duration),de
    ld hl,@cmd         
    ld bc,@end-@cmd    
    rst.lil $18         
    ret
@cmd:       db 23, 0, 0x85
@channel:   db 0x00
            db 0x00 ; play note command
@volume:    db 0x00
@frequency: dw 0x0000
@duration:  dw 0x0000
@end:       db 0x00 ; padding

; Command 1: Status
; VDU 23, 0, &85, channel, 1
; inputs: a = channel
; Returns a bit mask indicating the status of the specified channel, or 255 if the channel is not valid, or has been disabled. The bit mask is as follows:
; Bit 	Name 	Meaning
; 0 	Active 	When set this indicates the channel is in use (has an active waveform)
; 1 	Playing 	Indicates the channel is actively playing a note, and thus will reject calls to play a new note
; 2 	Indefinite 	Set if the channel is playing an indefinite duration note
; 3 	Has Volume Envelope 	Set if the channel has a volume envelope
; 4 	Has Frequency Envelope 	Set if the channel has a frequency envelope

; Bits 5-7 are reserved for future use and, for enabled channels, will currently always be zero.
vdu_channel_status:
    ld (@channel),a
    ld hl,@cmd         
    ld bc,@end-@cmd    
    rst.lil $18         
    ret
@cmd:       db 23, 0, 0x85
@channel:   db 0x00
            db 0x01 ; get channel status command
@end:

; VDU 23, 0, &85, channel, 2, volume
; inputs: c = channel, b = volume
; Sets the volume of the specified channel. The volume is a value from 0 to 127, where 0 is silent and 127 is full volume. Values over 127 will be treated as 127 (with one exception described later).

; Specifying a channel of -1 (or 255) will set the global sound system volume level. (Requires Console8 VDP 2.5.0 or later.)

; Using this command provides more direct control over a channel than the play note command. It can be used to adjust the volume of a channel that is already playing a note.
vdu_channel_volume:
    ld a,c
    ld (@channel),a
    ld a,b
    ld (@volume),a
    ld hl,@cmd         
    ld bc,@end-@cmd    
    rst.lil $18         
    ret
@cmd:       db 23, 0, 0x85
@channel:   db 0x00
            db 0x02 ; set volume command
@volume:    db 0x00
@end:

; VDU 23, 0, &85, channel, 3, frequency;

; Sets the frequency of the specified channel. The frequency is a 16-bit value specifying in Hz the frequency of the note to be played.

; Using this command provides more direct control over a channel than the play note command. It can be used to adjust the frequency of a channel that is already playing a note.

; Returns 1 on success, 0 for failure.
vdu_channel_frequency:
    ld a,c
    ld (@channel),a
    ld (@frequency),de
    ld hl,@cmd         
    ld bc,@end-@cmd    
    rst.lil $18         
    ret
@cmd:       db 23, 0, 0x85
@channel:   db 0x00
            db 0x03 ; set frequency command
@frequency: dw 0x0000
@end:       db 0x00 ; padding


; VDU 23, 0, &85, channel, 4, waveformOrSample, [bufferId;]
; inputs: c = channel, b = waveformOrSample, [hl = bufferId]
; Sets the waveform type for a channel to use. The waveformOrSample value is a single byte treated as a signed value.

; Using a negative value for the waveform indicates that a sample should be used instead. For more information see the documentation for the sample command.

; By default a channel is set to use waveform 0 (square wave).

; Valid waveform values are as follows:
; Value 	Waveform
; 0 	Square wave
; 1 	Triangle wave
; 2 	Sawtooth wave
; 3 	Sine wave
; 4 	Noise (simple white noise with no frequency support)
; 5 	VIC Noise (emulates a VIC6561; supports frequency)
; 8 	Sample (specifying a 16-bit buffer ID for sample data)

vdu_channel_waveform:
    ld a,c
    ld (@channel),a
    ld a,b
    ld (@waveform),a
    cp 8 ; check if the waveform is a sample
    jr z, @sample       
    ld bc,@bufferId-@cmd   
    jr @sendToVdu
@sample:
    ld (@bufferId),hl
    ld bc,@end-@cmd
@sendToVdu: 
    ld hl,@cmd  
    rst.lil $18         
    ret
@cmd:       db 23, 0, 0x85
@channel:   db 0x00
            db 0x04 ; set waveform command
@waveform:  db 0x00
@bufferId:  dw 0x0000
@end:       db 0x00 ; padding



; VDU 23, 0, &85, 0, 5, 2, bufferId; format
; inputs: hl = bufferId; a = format
; The format parameter is an 8-bit value that indicates the format of the sample data. The following values are supported:
; Value 	Description
; 0 	8-bit signed, 16KHz
; 1 	8-bit unsigned, 16KHz
vdu_buffer_to_sound:
    ld (@bufferId),hl
    ld (@format),a
    ld hl,@cmd         
    ld bc,@end-@cmd    
    rst.lil $18         
    ret
@cmd:       db 23, 0, 0x85
            db 0x00 ; a magic number that is always 0
            db 0x05 ; buffer to sound command
            db 0x02 ; a magic number that is always 2
@bufferId:  dw 0x0000
@format:    db 0x00
@end:       


; inputs: c = channel, b = volume, de = duration; hl = bufferId
vdu_play_sample:
    ; populate input parameters
    ld a,c
    ld (@channel0),a
    ld (@channel1),a
    ld a,b
    ld (@volume),a
    ld (@frequency),de
    ld (@bufferId),hl
    ; clean up byte that got stomped on by bufferId load from hl
    ld a,23 
    ld (@cmd1),a 
    ; prep the vdu command string
    ld hl, @cmd0
    ld bc, @end - @cmd0
    rst.lil $18
    ret 
@cmd0:       db 23, 0, 0x85
@channel0:   db 0x00
             db 0x04 ; set waveform command
@waveform:   db 0x08 ; sample
@bufferId:   dw 0x0000
@cmd1:       db 23, 0, 0x85
@channel1:   db 0x00
             db 0x00 ; play note command
@volume:     db 0x00
@frequency:  dw 0x00 ; no effect unless buffer has been set to tuneable sample
@duration:   dw 0x0000 ; milliseconds
@end:        db 0x00 ; padding


vdu_enable_channels:
; enable all the channels
    ld hl, enable_channels_cmd
    ld bc, enable_channels_end - enable_channels_cmd
    rst.lil $18
    ret
enable_channels_cmd:
    db 23, 0, $85, 3, 8
    db 23, 0, $85, 4, 8
    db 23, 0, $85, 5, 8
    db 23, 0, $85, 6, 8
    db 23, 0, $85, 7, 8
    db 23, 0, $85, 8, 8
    db 23, 0, $85, 9, 8
    db 23, 0, $85, 10, 8
    db 23, 0, $85, 11, 8
    db 23, 0, $85, 12, 8
    db 23, 0, $85, 13, 8
    db 23, 0, $85, 14, 8
    db 23, 0, $85, 15, 8
    db 23, 0, $85, 16, 8
    ; db 23, 0, $85, 17, 8
    ; db 23, 0, $85, 18, 8
    ; db 23, 0, $85, 19, 8
    ; db 23, 0, $85, 20, 8
    ; db 23, 0, $85, 21, 8
    ; db 23, 0, $85, 22, 8
    ; db 23, 0, $85, 23, 8
    ; db 23, 0, $85, 24, 8
    ; db 23, 0, $85, 25, 8
    ; db 23, 0, $85, 26, 8
    ; db 23, 0, $85, 27, 8
    ; db 23, 0, $85, 28, 8
    ; db 23, 0, $85, 29, 8
    ; db 23, 0, $85, 30, 8
    ; db 23, 0, $85, 31, 8
enable_channels_end: