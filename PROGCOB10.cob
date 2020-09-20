       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB09.
      ******************************************************
      * AREA DE COMENTARIOS - REMARKS
      * OBJETIVO DO PROGRAMA = RECEBER USUÁRIO E NÍVEL
      * UTILIZAR VARIÁVEL NÍVEL 88 - LOGICA
      * AUTHOR: NATALIA WAZNY
      * DATA : XX/XX/XXXX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO     PIC X(20)  VALUE SPACES.
       77 WRK-NIVEL       PIC 9(02)  VALUE ZEROS.
           88 ADM          VALUE 01.
           88 USER         VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO: '.
           ACCEPT WRK-USUARIO.
           DISPLAY 'NIVEL: '.
           ACCEPT WRK-NIVEL.

           IF ADM
               DISPLAY 'NIVEL ADMINISTRADOR'
           ELSE
               IF USER
                   DISPLAY 'NIVEL USUARIO'
               ELSE
                   DISPLAY 'NIVEL NAO EXISTENTE'
               END-IF
           END-IF.

           STOP RUN.
