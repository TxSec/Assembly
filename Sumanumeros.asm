.model small

.data
mensaje db "Escribe un numero porfavor $",0Dh,0Ah    
mensaje2 db "Escribe un segundo numero porfavor $",0Dh,0Ah
mensaje3 db "Selecciona una operacion, + - / * $"
operador db '?'


.code                   
    
    ;Imprime la cadena de texto.
    mov ax,seg mensaje
    mov ds,ax
    mov dx,offset mensaje      
    mov ah,9h
    int 21h    
    

              
    ;Llama a escribir con el teclado...
    mov ah,1h
    int 21h    
     
    ;Primer resultado en registro dl.
    mov dl,al
              
              
    ;Salto de linea
    mov ah, 0Eh    
    mov al, 0Dh
    int 10h
    mov al, 0Ah
    int 10h

    
    ;Imprime la cadena de texto.
    mov ax,seg mensaje2
    mov ds,ax
    mov dx,offset mensaje2      
    mov ah,9h
    int 21h  
    
    
    
    ;Llama a escribir con el teclado...
    mov ah,1h
    int 21h   
             
    ;Segundo resultado en cl
    mov cl,al
               
               
    ;Salto de linea.
    mov ah, 0Eh
    mov al, 0Dh
    int 10h
    mov al, 0Ah
    int 10h 
    
    ;Imprime la cadena de texto.
    mov ax,seg mensaje3
    mov ds,ax
    mov dx,offset mensaje3      
    mov ah,9h
    int 21h 
    
       
    ;Llama a escribir con el teclado...
    mov ah,1h
    int 21h 
    
    
    mov operador,al 
    
    cmp operador,'+'
    je sum
    
    sum:
    ;Sumamos
    mov al, dl
    add al,cl
              
    ;Llama a escribir con el teclado...
    mov dl,al
    mov ah,2h
    int 21h 
     
            

             
             

    
    