﻿* Encoding: UTF-8.
***Identificando casos duplicados para todas as funções do RH e mantendo a função mais alta como principal***


* Identify Duplicate Cases. 
SORT CASES BY IBGE(A) q66_4(A) q66_10(A).
MATCH FILES
  /FILE=*
  /BY IBGE q66_4
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
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.



***Casos totais anterior: 55326
***Casos duplicados: 198
***Casos totais sem duplicados: 55128


***Deletando casos duplicados***

EXECUTE. 
FILTER OFF. 
USE ALL. 
SELECT IF (PrimaryLast=1). 
EXECUTE. 
FREQUENCIES VARIABLES=PrimaryLast
  /ORDER=ANALYSIS.


*******************deletar variavel do banco

DELETE VARIABLES PrimaryLast.


