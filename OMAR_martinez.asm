         .model small
         .stack
         .data
   NOMBRE db 'mi nombre en minusculas',10,13
          db 'y en minusculas es $'
    MAYUS db 'omar'
    MINUS db ' MARTINEZ' 
    
    
         .code
     begin:
           mov ax,@data
           mov ds,ax
           
           mov dx,offset NOMBRE
           mov ah,09
           int 21h
           
           lea bx,MAYUS
           
           mov cx,4
    repite:mov ah,[bx]
           and ah,11011111b  
           ;sub ah,32d
           
           mov dl,ah
           mov ah,02
           int 21h
           
           inc bx
           loop repite
            
           
           lea bx,MINUS 
           mov cx,9  
          
   repite2: 
           mov ah,[bx]
           or ah,00100000b
           mov dl,ah
           mov ah,02
           int 21h
           inc bx 
           loop repite2
           
           mov ah,4ch
           int 21h
           end begin