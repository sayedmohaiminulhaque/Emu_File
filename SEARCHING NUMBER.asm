INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H 
.DATA

STR DB 9,3,2,5,7

.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

LEA SI,STR
MOV AH,1
INT 21H

MOV BL,AL
SUB BL,48
PRINTN


MOV CL,0
FOR: 
ADD CL,1
 CMP CL,6
 JE END
CMP BL,[SI]
JE FOR2
INC SI
JMP FOR 
 
FOR2:
 PRINT "THE NUMBERS POSSITION IS: "
 MOV AH,2
 MOV DL,CL
 ADD DL,48
 INT 21H
 JMP END2
 
END:
PRINTN "NUMBER IS NOT IN THE ARRAY"

END2:
MOV AH,4CH
INT 21H


    MAIN ENDP
END MAIN