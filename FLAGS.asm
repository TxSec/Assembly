ORG 100H
;https://courses.engr.illinois.edu/ece390/books/labmanual/assembly.html
.DATA 
SAME DB "NEGATIVO$"
BYE DB "BYE BYE$"

.CODE    


         
         MOV AX,-2
         JS EQUAL 
         JMP BYEBYE

         
         BYEBYE:
         MOV AX,@DATA
         MOV DS,AX
         MOV DX,OFFSET BYE
         MOV AH,9H
         INT 21H  
         
                  
         EQUAL:
         MOV AX,@DATA
         MOV DS,AX
         MOV DX,OFFSET SAME 
         MOV AH,9H
         INT 21H      