        .model small
        .stack
        .data
      D equ  1234h
      B equ  3099h
        .code 
  begin:
        
        
       mov dx,D       ;asigna contenido de D a dx
       mov bx,B       ;asigna contenido de B d bx
        
      mov al,bl       ;99 a al
      sub al,dl       ;restar 34 a 99
      
      das             ;ajustar a bcd
      
      mov cl,al       ;mover el resultado a cl
      mov al,bh       ;mover 30 a al
      sbb al,dh       ;restar con acarreo 12 a 30
      
      das              ;ajustar a bcd
      
      mov ch,al
      
 end begin
      
     