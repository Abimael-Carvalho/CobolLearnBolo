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
           77 WS-MENSAGEM          PIC   X(50) VALUE SPACES.
           77 WS-TEMPORIZADOR      PIC   9(05) VALUE ZEROS. 
       SCREEN SECTION.

       PROCEDURE DIVISION.
       
       P-ABERTURA.
           OPEN I-O ARQUIVO
           IF WS-STATUS-ARQUIVO NOT = "00"
               IF WS-STATUS-ARQUIVO = "30"
                   OPEN OUTPUT ARQUIVO
                   MOVE "ARQUIVO SENDO CRIADO..." TO WS-MENSAGEM
                   PERFORM P-MENSAGEM-ZERA THRU P-MENSAGEM-FIM
                   CLOSE ARQUIVO
                   GO TO P-ABERTURA
               ELSE
                   GO TO P-FIM-EXIT.

       P-MENSAGEM-ZERA.
           MOVE ZEROS TO WS-TEMPORIZADOR.
       P-MENSAGEM-DISPLAY
           DISPLAY WS-MENSAGEM
       P-MENSAGEM-TEMPO
           ADD 1 TO WS-TEMPORIZADOR
           IF WS-TEMPORIZADOR < 2500
               GO TO P-MENSAGEM-TEMPO.
       P-MENSAGEM-FIM.
           MOVE SPACES TO WS-MENSAGEM
           EXIT.
       P-FIM-EXIT.
           EXIT PROGRAM-ID.
       
       P-FIM-STOP-RUM.
           STOP RUN.

       

           





       
           
       
