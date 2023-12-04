INI MACRO
    mov ax,data
    mov ds,ax
endm


Inicia MACRO mensaje
       lea dx,mensaje
       mov ah,09
       int 21h
ENDM

          .model small
          .stack 64
          .data
          
   mensaje1 db  'Luis','$'
   mensaje2 db  'Valles','$'
   
           .code
           
    begin:
          INI
      Inicia mensaje1
      Inicia mensaje2
      
           mov ax,4c00h
           int 21h
           end begin
    