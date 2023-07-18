INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA


.CODE

MAIN PROC 
    
    MOV CH,0
    MOV CL,0
    MOV BH,1
    
    
   FOR:
    
    CMP CH, 3 
     JE OK
    MOV CL,0
    
     FOR2:
     CMP CL,BH
    JE FOR3
    
    PRINT "* "
    ADD CL,1
    JMP FOR2
    
    
    
    MAIN ENDP

OK:
MOV AH, 4CH
INT 21H 

FOR3:
PRINTN
ADD CH,1
ADD BH,1
JMP FOR

END MAIN  

