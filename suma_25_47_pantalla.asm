;hacer un programa que sume 25 y 47 y se muestre texto
;y resultado en pantalla

.model small
.stack
.data
     mensaje db 'la suma de 25 y 47 es:$'
     va equ 25
     vb equ 47
.code
begin proc far
    mov ax,@data
    mov ds,ax
    mov dx,offset mensaje
    
    mov ah,9
    int 21h
    
    mov al,va     ;mueve 25 a al
    add al,vb     ;suma 47 a al
    mov ah,0      ;limpia ah
    aam           ;convierte ax a bcd
    add ax,3030h  ;suma 3030h para ascii
    
    mov dl,ah     ;por sintaxis asigna 37 en dl para sacarlo a pantalla
    mov ah,2      ;asigna la funcion 2 a ah
    push ax       ;guardamos ax para no perder
    int 21h       ;imprimos 7 en pantalla
    
    pop ax             ;sacamos lo guardado en la pila [02|32]
    
    mov dl,al         ;por sintaxis asigna 37 a dl para sacarlo a pantalla
    int 21h           ;imprimimos 2 en pantalla
    
    mov ah,4ch           ;regresamos control a dos
    int 21h
    end begin            ;fin del progrma