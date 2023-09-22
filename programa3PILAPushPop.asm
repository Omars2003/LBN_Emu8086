COMMENT * Hacer un programa que almacene los valores de ax(1000h),bx(2000h),
          y cx (3000h) en la pila.Con el primer POP recuperar el valor original 
          de cx almacenado en la pila y colocarlo en ax.Con el segundo POP 
          recuperar el valor original de bx y colocarlo en cx.Con el ultimo 
          POP recuperar el valor original de ax y colocarlo en bx. * 



        .MODEL SMALL      ;se define el modelo de la memoria

        .STACK             ;define el area de la pila
       
        .DATA             ;define el area del codigo
                           
        A equ 1000h       ;A es igual a 1000h     
        B equ 2000h       ;B es igual a 2000h
        C equ 3000h       ;C es igual a 3000h
        
        .CODE             ;definimos area del codigo
begin:                    ;inicio del programa con una etiqueta
           
                   
        mov ax,A          ; asigna el contenido de A a ax                          
        mov bx,B          ; asigna el contenido de B a bx
        mov cx,C          ; asigna el contenido de C a cx
        
                                       
        push ax           ;guarda el contenido de A a ax
        push bx           ;guarda el contenido de B a bx
        push cx           ;guarda el contenido de C a cx
        
        
        pop ax            ; asigna el contenido de cx a ax
        pop cx            ; asigna el contenido de bx a cx
        pop bx 
        
                
        mov ah,4ch        ; asigna la funcion 4c de la
        int 21h           ; int 21h a ah[se devuelve el control a DOS ]
end begin                 ;  fin del programa
        
        
        
        

