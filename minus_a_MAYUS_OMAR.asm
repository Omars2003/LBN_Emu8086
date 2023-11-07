.model small
.stack
.data
    nombre db "omar$"
    mensaje db "Nombre en mayusculas: $"

.code   

begin:
    mov ax, @data
    mov ds, ax  
    mov dx,offset nombre
    mov ah,9
    int 21h 
    
    lea si, nombre              ; Cargar la direccion del nombre en SI(indice destino)

convertir_a_mayusculas:
    mov al, [si]                ; Cargar la letra actual en AL,mediante un registro indirecto por registro(si)
    cmp al, 0                   ; Comprobar si es el caracter nulo (fin de cadena)
    je imprimir_mayusculas      ;jump if equal   ,salta a imprimir mayus si ambas son iguales

    cmp al, 'a'                 ; Comprobar si la letra'a',
    jb no_convertir             ;jump if below,no convierte
    cmp al, 'z'                 ; Comprobar si es una letra minúscula 'z'
    ja no_convertir             ;salta a la etiqueta especificada si el resultado es mayor que el valor esperado.

    sub al, 32                  ; Convertir a mayuscula restando 32 en ASCII
    mov [si], al                ; Guardar el caracter convertido

no_convertir:
    inc si        ; Mover al siguiente carácter
    jmp convertir_a_mayusculas    ;regresa a convertir a mayus para buscar una letra min

imprimir_mayusculas:
    mov ah, 09h         ; Funcion 09h: Imprimir una cadena en pantalla
    lea dx, mensaje    ; Cargar el desplazamiento de la cadena de mensaje
    int 21h

    lea dx, nombre     ; Cargar la direccion del nombre convertido a mayúsculas
    int 21h

    mov ah, 4Ch         ; Funcion 4Ch de la interrupcion 21h en ah,Terminar el programa
    int 21h
end begin 
    
    
     
          
 