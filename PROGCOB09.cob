       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB010.
      ****************************************
      * AREA DE COMENT�RIOS - REMARKS
      * AUTHOR = NATALIA WAZNY
      * OBJETIVO = COMANDO EVALUATE
      * DATA = XX/XX/XXXX
      ****************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO     PIC X(20)     VALUE SPACES.
       77 WRK-VALOR       PIC 9(06)V99  VALUE ZEROS.
       77 WRK-UF          PIC X(02)     VALUE 'SP'.
       77 WRK-FRETE       PIC 9(04)V99  VALUE ZEROS.
        PROCEDURE DIVISION.
            DISPLAY 'PRODUTO COMPRADO..... : '.
              ACCEPT WRK-PRODUTO.
            DISPLAY 'VALOR DO PRODUTO...... : '.
             ACCEPT WRK-VALOR.
            DISPLAY 'ESTADO DE ENTREGA (SP/RJ/MG).. : '.
             ACCEPT WRK-UF.

             DISPLAY  '--------- SAIDA DE DADOS --------------------'.
             DISPLAY 'PRODUTO... : ' WRK-PRODUTO.
             DISPLAY 'VALOR..... : ' WRK-VALOR.
             DISPLAY 'ESTADO.... : ' WRK-UF.

      *********** OPERACAO CALCULO FRETE - COMANDO EVALUATE ***********
              EVALUATE WRK-UF
                 WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,10
                 WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,15
                 WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,20
                 WHEN OTHER
                       DISPLAY 'NAO PODEMOS ENTREGAR NESSE ESTADO'
                END-EVALUATE.

               DISPLAY '==========================='.
                   IF WRK-FRETE NOT EQUAL 0
                       DISPLAY 'VALOR DO PRODUTO COM FRETE   ' WRK-FRETE
                   END-IF.

                   DISPLAY '==========================='.
           STOP RUN.
