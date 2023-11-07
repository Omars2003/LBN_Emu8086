.model small
.stack
.data 
inicio db "este programa multlicara por 10 AX",13,10,'$'
.code  


begin:
mov ax,@data
mov ds,ax
mov dx,offset inicio
mov ah,09
int 21h

mov ax,1
shl ax,1
mov bx,ax
mov cl,02
shl ax,cl
add ax,bx
int 21h
end begin