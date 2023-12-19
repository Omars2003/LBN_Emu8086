          .MODEL SMALL
          .STACK
          .DATA
          
    BYTE1 DB 80H
    BYTE2 DB 40H
    WORD1 DW 8000H
    WORD2 DW 2000H
    
            .CODE
       INICIA:
       
       MOV AX,@DATA
       MOV DS,AX
       CALL MMUL
       CALL IIMUL
       MOV AH,4CH
       INT 21H
       
       
       ;EJEMPLO DE MUL
       
     MMUL PROC
        MOV AL,BYTE1
        MUL BYTE2
        
        
        MOV AX,WORD1
        MUL WORD2
        
        MOV AL,BYTE1
        SUB AH,AH
        MUL WORD1 
        RET
    MMUL ENDP
     
     ;EJEMPLO DE IMUL
     
  IIMUL PROC
    MOV AL,BYTE1
    
    IMUL BYTE2
    
    
    MOV AX,WORD1
    IMUL WORD2
    
    MOV AL,BYTE1
    CWD
    IMUL WORD1
    
    RET
 IIMUL ENDP
 
 END INICIA