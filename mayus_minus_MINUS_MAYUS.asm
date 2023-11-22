     .model small
         .stack
         .data
   NOMBRE db 'Mi nombre en minusculas es omar',10,13
          db 'y en mayusculas  es:   $'
    MAYUS db 'omar $' 
    
    MINUS db 'Mi nombre en mayusculas es OMAR',10,13 
          db 'y en minusculas es:    $'
    MIN   db  'OMAR'
    
    
    
         .code
     begin:
           mov ax,@data
           mov ds,ax
           
           mov dx,offset NOMBRE
           mov ah,09
           int 21h
           
           lea bx,MAYUS
                                   ;de minusculas a mayusculas       
           mov cx,4
    repite:mov ah,[bx]
           and ah,11011111b  
           ;sub ah,32d
           
           mov dl,ah
           mov ah,02
           int 21h
           
           inc bx
           loop repite  
           
           mov ah,2h
           mov dh,2
           mov dl,1
           mov bh,0
           int 10h
            
           
          
           
                                   ;de mayusculas a minusculas         
           
      
           mov dx,offset MINUS  
           
           mov ah,09  
           
           int 21h
           
           lea bx,MIN 
           mov cx,4
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
