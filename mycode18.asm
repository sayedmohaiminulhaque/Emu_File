INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
    
    MOV AL,10000001B
    FOR:
    ;CMP AL,101B
    ;JE OK  
    ;ROR AL, 1B
    ;ROR AL,1B
    
    ;ROL AL,1B
    RCL AL,1B
    
    
    
    ;JMP FOR
    
    
    
    OK:
    MOV AH, 4CH
    INT 21H
    END MAIN
    
        
        
        
        
        
    MAIN ENDP


