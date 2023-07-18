 INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
    
    MOV AX,10
    MOV BX,2
    
    ADD BX,AX  
    MOV AH,2
    MOV DX,BX
    INT 21H
    PRINTN
    
    MOV AX,10
    MOV BX,2
    
    SUB BX,AX  
    MOV AH,2
    MOV DX,BX
    INT 21H
    PRINTN
    
    MOV AX,10
    MOV BX,2
    
    MUL  BX  
    MOV AH,2
    
    MOV DX,BX
    INT 21H
    PRINTN
    
    MOV AX,10
    MOV CX,2
    
    DIV CX
    MOV AH,2
    MOV DX,CX
    INT 21H
   
    MOV AH, 4CH
    INT 21H
    END MAIN  
        
    MAIN ENDP


