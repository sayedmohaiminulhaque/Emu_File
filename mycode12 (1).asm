; IF ELSE
; CONDITION
; POSITIVE NEGATIVE

;NUMBER >= 80 >= 60  >=40 OR 20>=20 OR LESS THAN 20   

INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV BH, 78
    CMP BH,80
    JL IF
    JGE ELSE
               
        IF:
        
        CMP BH,60
           JL IF2
           
           JGE ELSE2
           
         IF2:
         CMP BH,40
           JL IF3
           
           JGE ELSE3
            
            
         IF3:
         CMP BH,20
           JL IF4
           
           JGE ELSE4
        
        JMP OK 
        
        IF4: PRINTN "NUMBER IS SMALLER THAN 20"
        JMP OK
        ELSE2:  PRINTN "NUMBER IS GREATER THAN OR EQUAL  60"
        JMP OK
        ELSE: PRINTN "NUMBER IS GREATER THAN OR EQUAL  80" 
         JMP OK
        ELSE3:  PRINTN "NUMBER IS GREATER THAN OR EQUAL  40"
        JMP OK
        ELSE4:  PRINTN "NUMBER IS GREATER THAN OR EQUAL  20"
        JMP OK   
    
    OK:
    MOV AH,4CH
    INT 21H 
    
    
    MAIN ENDP
    
    END MAIN