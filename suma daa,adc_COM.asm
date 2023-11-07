;Suponga que DX,BX contiene cada uno 
;numeros de 4 digitos en forma bcd empacados
;escriba un pequeño programa que sume los numeros
;bcd en bx y dx y almacene el resultado en cx
;donde dx=1234 bx=3099

mov dx,1234h
mov bx,3099h

mov al,bl
add al,dl         ;34+99
daa                ;ajuste a bcd

mov cl,al
mov al,bh
adc al,dh       ;suma con acarreo

daa 
mov ch,al          ;resultado en cx