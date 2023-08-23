;* * *
;* *
;*

INCLUDE "EMU8086.INC"
.MODEL SAMLL
.STACK 100H
.DATA

.CODE   
MAIN PROC     
    MOV AL, 60   ; AL = 0C8h
    MOV BL, 4
    MUL BL        ; AX = 0320h (800)   
    
    MOV AH, 2
    MOV DX, AX
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN