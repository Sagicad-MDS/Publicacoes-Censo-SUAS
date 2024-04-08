* Encoding: UTF-8.
**Utilizar base completa RH  Conselhos Municipais**



FREQUENCIES VARIABLES= Faixas_etarias  q85_3 q85_5  q85_6 q85_7  TempoMandato
  /ORDER=ANALYSIS.




FREQUENCIES VARIABLES=d85_5bin1  d85_5bin2 d85_5bin3
  /ORDER=ANALYSIS.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao d85_5bin1 d85_5bin2 d85_5bin3 DISPLAY=LABEL
  /TABLE Regiao [C] BY d85_5bin1 [SUM] + d85_5bin2 [SUM] + d85_5bin3 [SUM]
  /CATEGORIES VARIABLES=Regiao [1.00, 2.00, 3.00, 4.00, 5.00, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao UF nu_conselheiros DISPLAY=LABEL
  /TABLE Regiao [C] + UF [C] BY nu_conselheiros [COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.
