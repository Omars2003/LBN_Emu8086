;El programa muestra divisiones sin signo(DIV) y divisiones con signo (IDIV)
     .model small
     .stack
     .data
     
BYTE1 DB 80H
BYTE2 DB 16H
WORD1 DW 2000H
WORD2 DW 0010H
WORD3 DW 1000H
       .code
 begin:
 mov ax,@data
 mov ds,ax
 
 call DDIV
 CALL IIDIV
 MOV AX,4C00H
 INT 21H


;ejemplo de DIV

DDIV PROC
    mov ax,WORD1
    DIV BYTE1
    MOV AL,BYTE1
    
    SUB AH,AH
    DIV BYTE2
    
    MOV DX,WORD2
    MOV AX,WORD3
    
    DIV WORD1
    MOV AX,WORD1
    
    SUB DX,DX
    DIV WORD3
    RET
 DDIV ENDP


;EJEMPLO DE IDIV
IIDIV PROC
    
    MOV AX,WORD1
    IDIV BYTE1
    MOV AL,BYTE1
    CBW
    IDIV BYTE2
    MOV DX,WORD2
    MOV AX,WORD3
    IDIV WORD1
    MOV AX,WORD1
    
    CWD
    IDIV WORD3
    
  RET
IIDIV ENDP
END BEGIN
