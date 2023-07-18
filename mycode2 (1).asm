.MODEL SMALL
.STACK 100H
.DATA

    ;VARIABLE DECLARE
    ;DB, DW
    NUM DB 48
    NUM1 DB 49
    ; VARIABLE_NAME DATA_TYPE DATA
    CHAR DB 'A'
    STR DB "FIRST BATCH $"
    CHAR1 DB 'C'
    CHAR2 DB 'D'
   
.CODE
    
    MAIN PROC
     
      MOV AX,@DATA
      MOV DS, AX
      
      MOV AH, CHAR1
      MOV AL, CHAR2
      
      ADD AH,AL
      
      
      MAIN ENDP
   
     MOV AH, 4ch
      INT 21H   
        
        
  END MAIN