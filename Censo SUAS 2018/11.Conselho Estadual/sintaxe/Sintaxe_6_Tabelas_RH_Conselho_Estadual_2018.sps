* Encoding: UTF-8.
**Utilizar base completa RH  Conselhos Estaduais**



FREQUENCIES VARIABLES= Faixas_etarias  q_75_3 q_75_5  q_75_6 q_75_7  TempoMandato
  /ORDER=ANALYSIS.





* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao d75_5bin1 d75_5bin2 d75_5bin3 DISPLAY=LABEL
  /TABLE Regiao [C] BY d75_5bin1 [SUM] + d75_5bin2 [SUM] + d75_5bin3 [SUM]
  /CATEGORIES VARIABLES=Regiao [1.00, 2.00, 3.00, 4.00, 5.00, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao nu_conselheiros DISPLAY=LABEL
  /TABLE Regiao [C] BY nu_conselheiros [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao [1.00, 2.00, 3.00, 4.00, 5.00, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER.
