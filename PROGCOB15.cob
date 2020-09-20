       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      ****************************************
      * AREA DE COMENT�RIOS - REMARKS
      * AUTHOR = NATALIA WAZNY
      * OBJETIVO = RECEBER UM NUMERO E GERAR TABUADA DE 1 A 10
      * UTILIZAR PERFORM - UNTIL
      * DATA = XX/XX/XXXX
      ****************************************
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY 'BOOK.COB'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-VENDAS FROM CONSOLE.
       0200-PROCESSAR.
           ADD 1 TO WRK-QTD.
           ADD WRK-VENDAS TO WRK-ACUM.
           PERFORM 0100-INICIALIZAR.
       0300-FINALIZAR.
           DISPLAY 'ACUMULADO: ' WRK-ACUM.
           DISPLAY 'QTD DE VENDAS: ' WRK-QTD.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
