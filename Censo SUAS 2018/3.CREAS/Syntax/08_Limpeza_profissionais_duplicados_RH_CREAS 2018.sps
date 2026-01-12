* Encoding: UTF-8.

* Identify Duplicate Cases.
Identificação de profissionais contabilizados duas vezes na mesma unidade

SORT CASES BY NU_identificador(A) q56_4(A).
MATCH FILES
  /FILE=*
  /BY NU_identificador q56_4
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
  /DROP=PrimaryFirst PrimaryLast InDupGrp.
VARIABLE LABELS  MatchSequence 'Sequential count of matching cases'.
VARIABLE LEVEL  MatchSequence (SCALE).
FREQUENCIES VARIABLES=MatchSequence.
EXECUTE.


***Duplicação Coordenador **********************************

IF  (MatchSequence > 1 & q56_9= 21) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas do número de casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

*SUMMARIZE
  /TABLES=q56_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=8
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF 
q56_4	=	21230803653	|
q56_4	=	4113739862	|
q56_4	=	5121266901	|
q56_4	=	7219670940	|
q56_4	=	94208336072	|
q56_4	=	6426897418	|
q56_4	=	35965640854	|
q56_4	=	4361522901	AND (MatchSequence > 0) NOVAq56_9= 21.


IF  (SYSMIS(NOVAq56_9)) NOVAq56_9=q56_9.
EXECUTE.

***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & q56_9 = 249) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

*** ATENÇÃO: Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com tec. superior duplicado ****


SUMMARIZE
  /TABLES=q56_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=40
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF	
(q56_4	=	214452301	|
q56_4	=	1188126377	|
q56_4	=	1306450365	|
q56_4	=	2301424359	|
q56_4	=	2178392318	|
q56_4	=	1419239546	|
q56_4	=	9004672664	|
q56_4	=	77663764820	|
q56_4	=	1890659908	|
q56_4	=	86481703972	|
q56_4	=	94208336072	|
q56_4	=	83302689004	|
q56_4	=	99070090	|
q56_4	=	95391495091	|
q56_4	=	85227706115	|
q56_4	=	93985991120	|
q56_4	=	33944393104	|
q56_4	=	9509785660	|
q56_4	=	5947037602	|
q56_4	=	4361522901	|
q56_4	=	5011081907	|
q56_4	=	3989709984	|
q56_4	=	8555000939	|
q56_4	=	5557795480	|
q56_4	=	7672112945	|
q56_4	=	90683870220	|
q56_4	=	90683870220	|
q56_4	=	307367223	|
q56_4	=	307367223	|
q56_4	=	60071826220	|
q56_4	=	60071826220	|
q56_4	=	70851158234	|
q56_4	=	70851158234	|
q56_4	=	61379271215	|
q56_4	=	61379271215	|
q56_4	=	76344487291	|
q56_4	=	76344487291	|
q56_4	=	68584733272	|
q56_4	=	68584733272	|
q56_4	=	1808245385	
)	AND (MatchSequence > 0) NOVAq56_9=249.



FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.


*24009 Trabalhadores na base original; Após a limpeza, restaram: 23964.





