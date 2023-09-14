.model small                           ; Define el modelo de memoria como "small" (modelo de memoria pequeña).
.stack                                 ; Asigna una pila al programa.

.data                                  ; Segmento de datos donde se definen las variables y datos.
mensaje db 'Hola amigos',07,13,10,'$'  ; Define una cadena de caracteres "Hola amigos" seguida de caracteres de control.

.code                                  ; Segmento de codigo donde se escribe el programa.

begin:                                 ; Etiqueta de inicio del programa.
    mov ax,@data                       ; Carga la direccion del segmento de datos en el registro AX.
    mov ds,ax                          ; Establece el segmento de datos (DS) con la dirección cargada en AX.
    mov dx,offset mensaje              ; Carga la direccion de la cadena de mensaje en el registro DX.
    mov cx,3                           ; Carga el valor 3 en el registro CX, que representa el número de veces que se repetirá el mensaje.
    mov ah,09                          ; Carga la funcion 09h (imprimir cadena) en el registro AH.
                  
repite:                                ; Etiqueta para la repeticion del mensaje.
    int 21h                            ; Llama a la interrupcion 21h, que realiza la funcion de impresion de la cadena.
    loop repite                        ; Decrementa el registro CX y repite el bucle hasta que CX sea igual a 0.

    mov ah,4ch                         ; Carga la funcion 4Ch (terminar programa) en el registro AH.
    int 21h                            ; Llama a la interrupcion 21h para terminar el programa.

end begin                              ; Etiqueta de finalizacion del programa.
