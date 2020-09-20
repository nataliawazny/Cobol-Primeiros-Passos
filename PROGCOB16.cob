       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB16.
      ****************************************
      * AREA DE COMENTÁRIOS - REMARKS
      * AUTHOR = NATALIA WAZNY
      * OBJETIVO = RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEL TIPO TABELA - OCCURS
      * DATA = XX/XX/XXXX
      ****************************************
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
           02 WRK-MES PIC X(09) OCCURS 12 TIMES.
       01 WRK-DATA.
           02 ANO PIC 9(04) VALUE ZEROS.
           02 MES PIC 9(02) VALUE ZEROS.
           02 DIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
               ACCEPT WRK-DATA FROM DATE YYYYMMDD.
               PERFORM 0400-MONTAMES.
           PERFORM 0200-PROCESSAR
               DISPLAY 'DATA ' DIA ' DE ' WRK-MES(MES) ' DE ' ANO.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
       0200-PROCESSAR.
       0300-FINALIZAR.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
           STOP RUN.
       0400-MONTAMES.
           MOVE 'JANEIRO'   TO WRK-MES(01).
           MOVE 'FEVEREIRO' TO WRK-MES(02).
           MOVE 'MARCO'     TO WRK-MES(03).
           MOVE 'ABRIL'     TO WRK-MES(04).
           MOVE 'MAIO'      TO WRK-MES(05).
           MOVE 'JUNHO'     TO WRK-MES(06).
           MOVE 'JULHO'     TO WRK-MES(07).
           MOVE 'AGOSTO'    TO WRK-MES(08).
           MOVE 'SETEMBRO'  TO WRK-MES(09).
           MOVE 'OUTUBRO'   TO WRK-MES(10).
           MOVE 'NOVEMBRO'  TO WRK-MES(11).
           MOVE 'DEZEMBRO'  TO WRK-MES(12).
