pila segment para stack 'stack'
    db dub 32(0)
pila ends

datos segment para 'data'
    Num15 db 15
    Num db 20,28,15,26,29,37,16,29
datos ends

codigo segment para 'code'
    begin proc far
    assume cs:codigo,ds:datos,ss:pila 
    
    
      mov ax,datos
      mov ds,ax
      mov cx,8            ;asigna 8 a cx(contador)
      mov bx,offset Num   ;asigna el offset mensaje a dx
repite:
      mov al,Num15
      add al,[bx]
      
      inc bx 
      mov ax,0
      loop repite
      
     
      
      mov ah,4ch
      int 21h 
      
   begin endp
    end begin