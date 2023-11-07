  ;Multiplica ax por 5
    .model small
    .stack
    .data
  V equ 1
    .code
 begin:
      
     mov ax,V
     mov bx,ax      ;bx=1
     shl ax,2       ;ax=2;con este shl se vuelve 4 por que se desplaza 1 
   
     add ax,bx      ;se suma 1 al 4  
 end begin






