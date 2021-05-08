      **************************
      * AUTHOR: ABIMAEL CARVALHO
      * PORPOSE: TIME TRAVEL
      **************************
       IDENTIFICATION DIVISION.
           PROGRAM-ID. BOLO.
           AUTHOR. ABIMAEL CARVALHO.
       ENVIRONMENT DIVISION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQUIVO ASSIGN TO DISK
           ORGANIZATION        IS INDEXED
           ACCESS MODE         IS DYNAMIC
           RECORD KEY          IS SKU
           ALTERNATE RECORD KEY    IS NOME WITH DUPLICATES
           FILE STATUS             IS WS-STATUS-ARQUIVO.
       DATA DIVISION.
       FILE SECTION.
       FD ARQUIVO
           LABEL RECORDS ARE STANDARD
           VALUE OF FILE-ID IS "BOLO.DAT".

           01 PRODUTO.
               05 SKU      PIC     9(04).
               05 NOME     PIC     X(30).
               05 VALIDADE.
                   10 DIA      PIC 99.        
                   10 MES      PIC 99.       
                   10 ANO      PIC 9(04).
               05 VALOR-CUSTO  PIC 9(04)V99.         
               05 VALOR-VENDA  PIC 9(04)V99.         
               05 QTD-ESTOQUE  PIC 9(04).     

       WORKING-STORAGE SECTION.
           77 WS-STATUS-ARQUIVO    PIC   X(02)  

       SCREEN SECTION.

       PROCEDURE DIVISION.
       
       P-INTRO.
           DISPLAY "HELLO WORLD!".
       
       P-FIM-EXIT.
           EXIT PROGRAM-ID.
       
       P-FIM-STOP-RUM.
           STOP RUN.

       

           





       
           
       
