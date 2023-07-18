INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
    
     MOV CH, 53
     MOV BH, 48 
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
     PRINTN "CODE END"
    
    
    MAIN ENDP
MOV AH, 4CH
INT 21H
END MAIN