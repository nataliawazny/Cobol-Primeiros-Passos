       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      ****************************************
      * AREA DE COMENTÁRIOS - REMARKS
      * AUTHOR = NATALIA WAZNY
      * OBJETIVO = RECEBER 02 NOTAS, FAZER A MÉDIA E IMPRIMIR STATUS
      * UTILIZAR COMANDOS IF/ELSE/ENDIF
      * DATA = XX/XX/XXXX
      ****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.
       0200-PROCESSAR.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           DISPLAY 'MEDIA ' WRK-MEDIA.
               IF WRK-MEDIA >= 6
                   DISPLAY 'APROVADO'
               ELSE
                   IF WRK-MEDIA >=2
                       DISPLAY 'RECUPERACAO'
                   ELSE
                       DISPLAY 'REPROVADO'
                   END-IF
               END-IF.
       0300-FINALIZAR.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
