 INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
    
    MOV AX,10
    MOV BX,2
    
   ; MUL  BX  
    ;MOV AH,2
    ;MOV DL,AL
    ;INT 21H
    
    ;MOV AX,10
   ; MOV BX,5
    
    DIV BX 
    MOV AH,2
    MOV DX,AX
   INT 21H
    
    
    
    
    MOV AH, 4CH
    INT 21H
    END MAIN
    
        
        
        
        
        
    MAIN ENDP


