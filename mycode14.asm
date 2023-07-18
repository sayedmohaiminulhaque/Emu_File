 INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
    
    MOV CX,10
    
    START:
          PRINTN "HELLO"
    LOOP START
    
    
    
    MOV AH, 4CH
    INT 21H
    END MAIN
    
    
    MAIN ENDP


