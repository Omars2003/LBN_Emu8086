       .model small
       .stack
       .data
      A equ 38h 
      B equ 34h
      .code
      
  begin:
        mov ax,A
        add al,B
        AAA
        
        add ax,3030h
        int 20h
    end begin
       
       