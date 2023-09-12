
pila segment para stack 'stack'; Definicion del segmento de la pila
    db 32 dup(0) ; Reserva 32 bytes para la pila
pila ends
datos segment para 'data'   ; Definicion del segmento de datos
    mensaje db 'Hola Alumnos$' ; Declaracion de la cadena de caracteres
datos ends
codigo segment para 'code'   ; Definicion del segmento de codigo
    assume cs:codigo,ds:datos,ss:pila ; Asigna los segmentos de codigo, datos y pila
inicio proc far ; Inicio del procedimiento far (far indica que es un procedimiento lejano)
    mov ax,datos ; Carga el segmento de datos en el registro AX
    mov ds,ax    ; Asigna el valor de AX al registro de segmento DS
    mov dx,offset mensaje ; Carga la direccion del mensaje en DX
    mov ah,9      ; Carga la funcion 9 en AH (imprimir cadena)
    int 21h       ; Llama a la interrupcion 21h (servicio de DOS)
    mov ah,4ch    ; Carga la funcion 4Ch en AH (terminar programa)
    int 21h       ; Llama a la interrupcion 21h (servicio de DOS) para finalizar el programa
inicio endp ; Fin del procedimiento
codigo ends ; Fin del segmento de codigo
end inicio ; Indica el punto de entrada del programa (etiqueta "inicio" como punto de entrada)
