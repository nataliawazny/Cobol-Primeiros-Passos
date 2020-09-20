       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB09.
      ******************************************************
      * AREA DE COMENTARIOS - REMARKS
      * OBJETIVO DO PROGRAMA = RECEBER LARGURA E COMPRIMENTO
      * CALCULAR AREA
      * AUTHOR: NATALIA WAZNY
      * DATA : XX/XX/XXXX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA           PIC 9(03)V99  VALUE ZEROS.
       77 WRK-COMPRIMENTO       PIC 9(03)V99  VALUE ZEROS.
       77 WRK-AREA              PIC 9(03)V99  VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'LARGURA: '.
           ACCEPT WRK-LARGURA.
           DISPLAY 'COMPRIMENTO: '.
           ACCEPT WRK-COMPRIMENTO.
           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
               DISPLAY 'AREA ' WRK-AREA
           ELSE
               DISPLAY 'FALTA ALGUMA INFORMACAO'
           END-IF.
           STOP RUN.
