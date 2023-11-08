; sumar 15 a los numeros 
;  20 , 28 , 15 ,26 ,29,37,16,29
;
.model small
.stack
.data 
  Num15 db 15                 ;se definen las variables
  Num db 20,28,15,26,29,37,16,29      ;se definen la variables
.code

inicio:
      mov ax,@data    ;asignamos direccion de datoas a ax
      mov ds,ax
      mov cx,8         ;asigna 8 a cx que servira como nuestro contador
      mov bx,offset Num  ;asigna el offset Num
repite:
      mov al,Num15   ;mueve el valor 15 a al
      add al,[bx]    ;asigna el contenido de direccion de memoria representado por el des bx
      inc bx         ;incrementara el contador
      mov ax,0       ;x se buelve cero para que no se acumulen las sumas
      loop repite    ;vuelve a empezar el proceso pero incrementando en 1
      
     
      
      mov ah,4ch      ;se le regresa el control a DOS
      int 21h         ;ASIGNA LA FUNCION 4C DE LA INT21H
  end inicio          ;fin del programa