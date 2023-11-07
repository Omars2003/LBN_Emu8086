;escriba un programa que divida el numero 
;72bcd(0702) desempacado entre el numero 9.
        .model small
        .stack
        .data
       B equ   9
       A equ 0702h 
       
        .code
     begin:
            mov bl,B     ;bl=9(divisor)
            mov ax,A
            AAD
            div bl
            int 20h
       end begin
