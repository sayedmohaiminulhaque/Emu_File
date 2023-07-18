.MODEL SMALL
.STACK 100H
.DATA
    ;VARIABLE DECRALATION PART
    ;DATA TYPE - 2(db, dw)
    ;db - DEFINE BYTE
    ;dW - DEFINE WORD 
    ;VARIABE STORE DATA IN MEMORY(ram)
.CODE
    ;CODE- SEGMENT
    ;ALL CODE
    MAIN PROC
      ;STATEMENT 1
      ;STATEMENT 2  
      
      ;INSTRUCTION DESTINATION,SOURCE 
      MOV AH, 05H
      MOV AL, AH
      ADD AH,AL ;AH+AL
      ;AH=AH+AL  
      MOV BH,10H
      
      ADD AH,06H
      
      SUB BH,06H
      
      
      
      MAIN ENDP
   
     MOV AH, 4ch
      INT 21H   
        
        
  END MAIN