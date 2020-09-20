       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      ****************************************
      * AREA DE COMENTÁRIOS - REMARKS
      * AUTHOR = NATALIA WAZNY
      * OBJETIVO = RECEBER UM NUMERO E GERAR TABUADA DE 1 A 10
      * DATA = XX/XX/XXXX
      ****************************************
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO   PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE 1.
       77 WRK-RESUL    PIC 9(03) VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-NUMERO FROM CONSOLE.
       0200-PROCESSAR.
           PERFORM 10 TIMES
                   COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
                   DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL
                   ADD 1 TO WRK-CONTADOR
           END-PERFORM.
       0300-FINALIZAR.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
