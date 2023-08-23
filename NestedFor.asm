; * * *
; * * *
; * * *

INCLUDE "EMU8086.INC"
.MODEL SAMLL
.STACK 100H
.DATA

.CODE   

MAIN PROC    
    
    ;INITIALIZE
    MOV BH, 3
    MOV CH, 1
    
    ; INITIALIZE          
    ; WHILE(COND)
    ; INC/DEC
    FOR1:
        CMP CH, BH  ; COMPARE
        JG END_FOR1 ; COND CHECK
        
        ;INITIALZATION WHILE
        MOV BL, 3
        MOV CL, 1
        
        FOR2:
            CMP CL, BL
            JG END_FOR2
            PRINT "*    "
            INC CL    ; INC
            JMP FOR2
    
        
        END_FOR2:
            PRINTN 
            INC CH ;INC
            JMP FOR1
    
    END_FOR1:
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP


END MAIN