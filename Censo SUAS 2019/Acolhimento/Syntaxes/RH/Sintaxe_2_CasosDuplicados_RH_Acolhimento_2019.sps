* Encoding: UTF-8.
***Identificando casos duplicados para todas as funções do RH e mantendo a função mais alta como principal***


** Função mais alta Coordenador>Técnico de Nível Superior>Cuidador/Cuidador Residente/Educador/Orientador Social> Auxiliar de Cuidador> Outros. 

recode q45_12 (21=4) (218=3) (349	=2) (350=2) (217=2) (368=1) (else=0) into FUNCAO.
execute. 



* Identify Duplicate Cases. 
SORT CASES BY NU_IDENTIFICADOR(A) q45_4 (A) FUNCAO (D). 
MATCH FILES 
  /FILE=* 
  /BY NU_IDENTIFICADOR q45_4 
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

***Casos totais anterior : 100494
***Casos duplicados : 1038

***Deletando casos duplicados***

EXECUTE. 
FILTER OFF. 
USE ALL. 
SELECT IF (PrimaryFirst=1). 
EXECUTE. 
FREQUENCIES VARIABLES=PrimaryFirst 
  /ORDER=ANALYSIS.


DELETE VARIABLES PrimaryFirst  .
DELETE VARIABLES FUNCAO.
execute.



***Casos totais sem duplicados municipal: 99456

