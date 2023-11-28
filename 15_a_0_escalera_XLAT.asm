         .model small
         .stack 64
         .data
mensaje db 'Desplegados los numeros hexadecimales',13,10
        db 'del 15 al 0'
        db 13,10,'$'                          ;cadena a desplegar
      Tabla db '0123456789ABCDEF'             ;tabla de traduccion
.code
begin:
    mov ax,@data
    mov ds,ax
    
    mov dx,offset mensaje                     ;asigna la direccion inicial de mensaje a dx
    mov ah,9                                  ;y con la funcion 9 de la int 21h
    int 21h                                   ; muestra en pantalla
    
    mov bx,offset Tabla-1                     ;Acesso a tabla de equivalencias
                                              ;y por sintaxis tabla a bx
    mov cx,16                                 ;asigna 16 a cx
    
    
itera:
    mov al,cl                                 ;Asigna contenido de cl a al
    XLAT                        
                                              ;asigna el contenido de al a dl
    mov dl,al                                 ;usa la funcion 2
    mov ah,02                                 ;de la int 21h para mostrar caracter en pantalla
    int 21h
    
    mov dl,10                                 ;salta una linea dando el efecto de escalera
    int 21h                                   ;con la int 21h
    
loop itera                                    ;cx debe quedar fuera del loop,si queda adentro se hace un cilo infinito
    mov ax,4c00h                              ;se regresa el control a DOS,usando funcion 4c de la
    int 21h                                   ;int 21h
    
end begin                                     ;fin del programa