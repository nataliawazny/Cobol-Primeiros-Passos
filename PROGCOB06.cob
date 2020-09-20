       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      ****************************************
      * AREA DE COMENTÁRIOS - REMARKS
      * AUTHOR = NATALIA WAZNY
      * OBJETIVO = USO DO SINAL (- +)
      * DATA = XX/XX/XXXX
      ****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1  PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2  PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL PIC S9(04) VALUE ZEROS.
       77 WRK-RESUL-ED PIC -ZZ9 VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '======================'.
           DISPLAY 'NUMERO1..' WRK-NUM1.
           DISPLAY 'NUMERO2..' WRK-NUM2.
      *************SUBTRAÇÃO
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'SUBTRACAO.. ' WRK-RESUL-ED.
           STOP RUN.
