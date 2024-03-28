* Encoding: UTF-8.
***Identificando casos duplicados para todas as funções do RH e mantendo a função mais alta como principal***



DATASET ACTIVATE DataSet1.

RECODE q65_12 (76=1) INTO cargo_ordem.
RECODE q65_12 (79=2) INTO cargo_ordem.
RECODE q65_12 (21=3) INTO cargo_ordem.
RECODE q65_12 (218=4) INTO cargo_ordem.
RECODE q65_12 (249=4) INTO cargo_ordem.
RECODE q65_12 (77=5) INTO cargo_ordem.
RECODE q65_12 (219=6) INTO cargo_ordem.
RECODE q65_12 (216=7) INTO cargo_ordem.
RECODE q65_12 (251=7) INTO cargo_ordem.
RECODE q65_12 (217=8) INTO cargo_ordem.
RECODE q65_12 (222=9) INTO cargo_ordem.
RECODE q65_12 (220=10) INTO cargo_ordem.
RECODE q65_12 (221=11) INTO cargo_ordem.
EXECUTE.

/cargo_ordem
7' Apoio Administrativo'
3' Coordenador(a)/Dirigente'
8' Educador(a)/Orientador(a) Social'
11' Estagiária(o)'
9' Outros'
5' Secretária(o)'
1' Secretária(os) de Assistência Social'
2' Secretária(o) Executiva(o)'
10' Serviços Gerais'
6' Técnica(o) de Nível Médio'
4' Técnica(o) de Nível Superior'
4 'Técnica(o) de Nível Superior'
7 'Apoio Administrativo'


* Identify Duplicate Cases.
SORT CASES BY IBGE(A) q65_4(A) cargo_ordem(A).
MATCH FILES
  /FILE=*
  /BY IBGE q65_4
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast1.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast1.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryLast1 InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryFirst 'Indicator of each first matching case as Primary'.
VALUE LABELS  PrimaryFirst 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryFirst (ORDINAL).
FREQUENCIES VARIABLES=PrimaryFirst.



***Casos totais anterior: 
***Casos duplicados: 
***Casos totais sem duplicados: 


***Deletando casos duplicados***

EXECUTE. 
FILTER OFF. 
USE ALL. 
SELECT IF (PrimaryFirst=1). 
EXECUTE. 


FREQUENCIES VARIABLES=PrimaryFirst
  /ORDER=ANALYSIS.


*******************deletar variavel do banco

DELETE VARIABLES PrimaryFirst.







