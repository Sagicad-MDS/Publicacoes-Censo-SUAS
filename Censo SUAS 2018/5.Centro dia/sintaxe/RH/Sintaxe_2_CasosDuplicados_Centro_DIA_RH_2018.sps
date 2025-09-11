***Identificando casos duplicados para todas as funções do RHe mantendo a função mais alta como principal***


* Identify Duplicate Cases. 
SORT CASES BY NU_IDENTIFICADOR(A) q_40_4(A) q_40_12(D). 
MATCH FILES 
  /FILE=* 
  /BY NU_IDENTIFICADOR q_40_4 
  /FIRST=PrimaryFirst 
  /LAST=PrimaryLast. 
DO IF (PrimaryFirst). 
COMPUTE  MatchSequence=1-PrimaryLast. 
ELSE. 
COMPUTE  MatchSequence=MatchSequence+1. 
END IF. 
LEAVE  MatchSequence. 
FORMATS  MatchSequence (f7). 
COMPUTE  InDupGrp=MatchSequence>0. 
SORT CASES InDupGrp(D). 
MATCH FILES 
  /FILE=* 
  /DROP=PrimaryLast InDupGrp MatchSequence. 
VARIABLE LABELS  PrimaryFirst 'Indicator of each first matching case as Primary'. 
VALUE LABELS  PrimaryFirst 0 'Duplicate Case' 1 'Primary Case'. 
VARIABLE LEVEL  PrimaryFirst (ORDINAL). 
FREQUENCIES VARIABLES=PrimaryFirst.

***Casos totais anterior: 29502 - 29491 municipal e 11 estadual
***Casos duplicados: 172 municipal
***Casos totais sem duplicados: 29330  - 29319 municipal e 11 estadual


***Deletando casos duplicados***

EXECUTE. 
FILTER OFF. 
USE ALL. 
SELECT IF (PrimaryFirst=1). 
EXECUTE. 
FREQUENCIES VARIABLES=PrimaryFirst 
  /ORDER=ANALYSIS.


DELETE VARIABLES PrimaryFirst .
execute.
