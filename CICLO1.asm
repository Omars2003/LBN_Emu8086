;PROGRAMA * Hacer un programa que saque 'Mi nombre es Omar' 3 veces
;           en pantalla y que suene la campana cada vez que este aparezca,
;           utilizar nemonicos dec,jcxz,jmp.

pila segment para stack 'stack'             ;inicio de segmento pila
    db 64 dub(0)                            ;reserva 64 bytes inicializados a cero
pila ends                                   ;fin de segmento pila

datos segment para 'data'                   ;inicio de segmento de datos
mensaje db 'Mi nombre es Omar',07,13,10,'$' ; se define la variable mensaje
datos ends                                  ; fin de segmento de datos

codigo segment para 'code'                  ;inicia segmento de codigo
    assume cs:codigo,ds:datos,ss:pila       ;indica al ensamblador como direccionar la informacion
inicio proc far                             ;inicio de procedimiento
    
      mov ax,datos                          ;Asigna la direccion de datos a AX y
      mov ds,ax                             ;a traves de AX se asigna a DS
                                            
      mov dx,offset mensaje                 ;Asigna el offset mensaje a DX(DS:DX)
      mov cx,3                              ;Asigna 3 a CX(contador)
      mov ah,9                              ;Asigna la funcion 9 de la int 21H a AH y con la
print:int 21h                               ;Int 21H aparece mensaje en pantalla
                                
      dec cx                                ;decrementa en 1 a cx en cada ciclo
      jcxz fin                              ;Salta a fin si cx es cero
      jmp print                             ;salta a print si cx no es cero
      
fin:  mov ax,4c00h                          ;Asigna la funcion 4c de la
      int 21h                               ;int 21h a AX,se devuelve el control a DOS
inicio endp                                 ;fin del procedimiento
codigo ends                                 ;fin del segmento de codigo
       end inicio                           ;fin del programa