         .model small
         .stack
         .data
   NOMBRE db 'mi nombre en minusculas',10,13
          db 'y en minusculas es $'
    MAYUS db 'omar'
    
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
          ; sub ah,32d
           
           mov dl,ah
           mov ah,02
           int 21h
           
           inc bx
           loop repite
           mov ah,4ch
           int 21h
         end begin