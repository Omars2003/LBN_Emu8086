;Escribe un programa que cambie su nombre al reves
            .model small
            .stack 128
            .data
  Mensaje db 'Mi nombre es Omar',13,10
          db 'Al reves es : $'
    Tabla db  'Omar'                    ;tabla de traduccion
    
             .code
             
             
             mov ax,data
             mov ds,ax
             
             mov dx,offset mensaje       ;carga la direccion mensaje a dx
             mov ah,9                     ;funcion 9 de la
             int 21h                      ;int 21h
             
             mov bx,offset Tabla-1         ;Tabla va del 0 al 3,pero cx=4,se pasa por lo tanto
                                           ;se debe restar 4-1=3,esto se hace con tabla-1,contador(cx=4)
                                           
             mov cx,4
        Eta:   mov al,cl                   ;pone el al el numero a traducir
               XLAT                        ;empezando desde 4h-1h=3h y lo traduce
               mov DL,AL                   ;prepara para mostra el caracter usando 
               mov ah,02                   ;la funcion 2 de la
               int 21h                     ;int 21h,Dl debe tener el caracter a ser desplegado
               loop Eta
               
               mov ax,4c00h
               int 21h
                    