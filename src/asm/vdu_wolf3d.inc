; create wolf3d control structure
    MACRO CCS SID, SCENE_WIDTH, SCENE_HEIGHT
    ld hl,@beg
    ld bc,@end-@beg
    rst.lil $18
    jp @end
@beg:
;   VDU 23,0, &A0, sid%; &49, 0, cstw%; csth%; Create Control Structure
    db 23,0,$A0
    dw SID 
    db $50,0
    dw SCENE_WIDTH
    dw SCENE_HEIGHT
@end:
    ENDMACRO