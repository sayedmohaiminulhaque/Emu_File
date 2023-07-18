INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
    
     MOV CX, 5
     MOV BX, 0  
     
     
     
    START:
    CMP BX,CX
    JE EXIT
    PRINTN "HELLO"
    INC BX ;BX++
    JMP START
  
    
    
    
     EXIT:
     PRINTN "CODE END"
    
    
    MAIN ENDP
MOV AH, 4CH
INT 21H
END MAIN