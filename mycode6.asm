INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

N DB ?


.CODE

MAIN PROC
    
    MOV AH, 1
    INT 21H
    MOV N, AL
    PRINTN
    
    
     MOV CH,N
     MOV BH,49
     ;ADD BH,48
     ;ADD CH,48 
     
     
     
    FOR:
    CMP BH, CH
    JG EXIT
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    PRINTN
    INC BH ;BX++
    
    JNE FOR
  
    
     EXIT:
     PRINTN "END CODE"
    
    
    MAIN ENDP
MOV AH, 4CH
INT 21H
END MAIN