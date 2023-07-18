INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

N DB ?


.CODE

MAIN PROC 
    
    MOV CH,1
    
    
    
    CMP CH, 10
    JG EXIT
   ; MOV AH,2
   ; MOV DL,BH
   ; INT 21H
    
   ; PRINTN
    ;INC BH ;BX++
    
    JNE FOR
    
    FOR:
    PRINT "*"
    JMP OK
    
    
     EXIT:
     PRINTN "#"
    
    
    MAIN ENDP

OK:
MOV AH, 4CH
INT 21H
END MAIN