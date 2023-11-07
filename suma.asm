pila segment para stack 'stack'
    db 32 dup (0)
pila ends
datos segment para 'data'
    va db '25'
    vb db '12'
    vc db '0'
datos ends
codigo segment para 'code'
    assume cs:codigo,ds:datos,ss:pila  
begin proc far
    
    mov ax,datos
    mov ds,ax
    
    mov al,va   
    add al,vb
    mov vc,al 
    mov cl,vc
    
    mov ax,4c00h
    int 21h
    
    begin endp
codigo ends
ends begin
             
            