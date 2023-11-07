.model small
.stack
.data 
  A equ 20 
  R equ 15  
.code

inicio:
      mov ax,@data
      mov ds,ax
      mov cx,3
print:
      mov al,A
      add al,R
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
      loop print
      
      mov ah,4ch
      int 21h
  end inicio
