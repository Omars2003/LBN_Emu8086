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
    end begin