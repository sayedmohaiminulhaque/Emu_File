; IF ELSE
; CONDITION
; POSITIVE NEGATIVE

;NUMBER >= 40 OR 20>=20 OR LESS THAN 20   

INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV BH, 40
    CMP BH,40
    JL IF
    JGE ELSE
               
        IF:
        
        CMP BH,20
           JL IF2
           
           JGE ELSE2
        
        JMP OK 
        
        IF2: PRINTN "NUMBER IS SMALLER THAN 20"
        JMP OK
        
        ELSE2:  PRINTN "NUMBER IS GREATER THAN OR EQUAL  20"
        JMP OK
        
        ELSE: PRINTN "NUMBER IS GREATER THAN OR EQUAL  40" 
         
         JMP OK
        
        
        
    
    OK:
    MOV AH,4CH
    INT 21H 
    
    
    MAIN ENDP
    
    END MAIN