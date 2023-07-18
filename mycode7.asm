INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

;N DB ?


.CODE

MAIN PROC
    
    ;MOV AH, 1
    ;INT 21H
    ;MOV N, AL
    ;PRINTN
    
    
     MOV CH,58
     SUB CH,48
     MOV BH,49
     SUB BH,48
     ;ADD BH,48
     ;ADD CH,48 
     
     
     
    FOR:
    CMP BH, CH
    JG EXIT
    ;MOV AH,2
    ;MOV DL,BH
    ;INT 21H
    
    ;PRINTN
    
     ADD BL,BH
    
    
    INC BH ;BX++
    
    JNE FOR
  
    
     EXIT:
     MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    MAIN ENDP
MOV AH, 4CH
INT 21H
END MAIN