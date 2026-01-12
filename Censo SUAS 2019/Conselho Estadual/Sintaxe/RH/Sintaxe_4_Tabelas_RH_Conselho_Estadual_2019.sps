* Encoding: UTF-8.
**Utilizar base completa RH  Conselhos Estaduais**




FREQUENCIES VARIABLES= Faixas_etarias  q71_3 q71_5  q71_6 q71_7  TempoMandato
  /ORDER=ANALYSIS.




FREQUENCIES VARIABLES=d71_5bin1  d71_5bin2 d71_5bin3
  /ORDER=ANALYSIS.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao d71_5bin1 d71_5bin2 d71_5bin3 DISPLAY=LABEL
  /TABLE Regiao [C] BY d71_5bin1 [SUM] + d71_5bin2 [SUM] + d71_5bin3 [SUM]
  /CATEGORIES VARIABLES=Regiao [1.00, 2.00, 3.00, 4.00, 5.00, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao UF nu_conselheiros DISPLAY=LABEL
  /TABLE Regiao [C] + UF [C] BY nu_conselheiros [COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.
