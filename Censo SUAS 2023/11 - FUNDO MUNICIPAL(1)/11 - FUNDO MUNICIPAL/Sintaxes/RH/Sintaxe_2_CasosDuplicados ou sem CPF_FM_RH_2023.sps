***Identificando casos duplicados na mesma Unidade, mantendo a função mais alta como principal***



* Identificar casos duplicados.
SORT CASES BY IBGE(A) q13_4 (A) q13_11(D).
MATCH FILES
  /FILE=*
  /BY   IBGE  q13_4 
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



***Casos totais anterior: 10088
***Casos duplicados: 49
***Casos totais excluido  duplicados: 10039


***Deletando casos duplicados***

EXECUTE. 
FILTER OFF. 
USE ALL. 
SELECT IF (PrimaryLast=1). 
EXECUTE. 
FREQUENCIES VARIABLES=PrimaryLast
  /ORDER=ANALYSIS.



****deletando a variavel******************

DELETE VARIABLES PrimaryLast.

