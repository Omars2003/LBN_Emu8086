;multiplicar Ax por 18
      .model small
      .stack
      .data
     V equ 1
      .code 

begin:  

mov ax,V
shl ax,1  ;ax=2
mov bx,ax
mov cl,3
shl ax,cl ;2^3=8, pero como ax ya vale dos,ax termina valiendo 16
add ax,bx ;sumandole el bx= 2 es 18
int 21h

end begin