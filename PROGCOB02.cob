       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      ****************************************
      * AREA DE COMENT�RIOS - REMARKS
      * AUTHOR = NATALIA WAZNY
      * OBJETIVO = RECEBER E IMPRIMIR UMA STRING
      * DATA = XX/XX/XXXX
      ****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'NOME..' WRK-NOME.
           STOP RUN.
