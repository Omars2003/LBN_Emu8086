pila segment para stack 'stack'
    db dub 32(0)
pila ends

datos segment para 'data'
    va equ 25
    vb equ 47
datos ends

codigo segment para 'code'
    begin proc far
    assume cs:codigo,ds:datos,ss:pila
    
    
    mov ax,datos
    mov ds,ax
    
    mov al,va
    add al,vb
    mov ah,0
    aam 
    add ax,3030h
    
    
    mov dl,ah
    mov ah,2
    push ax
    int 21h
    
    pop ax
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
  begin endp
    end begin