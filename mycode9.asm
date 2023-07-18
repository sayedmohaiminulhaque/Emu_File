INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

N DB ?


.CODE

MAIN PROC
    
    
     MOV CH,5
     
     MOV BH,1
 
     ;ADD BH,48
     ;ADD CH,48 
     
     
     
    FOR:
    
    
    MOV AH, 1
    INT 21H
    MOV N, AL
    PRINTN
    
    
    CMP BH,CH
    JG EXIT
    ADD BL,N
   
    
    ; ADD BL,BH
    
    
    INC BH ;BX++
    
    JNE FOR
  
    
     EXIT:
     MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    MAIN ENDP
MOV AH, 4CH
INT 21H
END MAIN