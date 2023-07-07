* Encoding: windows-1252.

* Identify Duplicate Cases.
Identificação de profissionais contabilizados duas vezes na mesma unidade

SORT CASES BY id_creas(A) q49.4(A).
MATCH FILES
  /FILE=*
  /BY id_creas q49.4
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

IF  (MatchSequence > 1 & q49.10= 21) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas do número de casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q49.4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=15
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF 
( q49.4 = 60814799272 |
q49.4 = 60806591404 |
q49.4 = 85400416420 |
q49.4 = 75782430630 |
q49.4 = 7431370601 |
q49.4 = 5782585609 |
q49.4 = 5011081907 |
q49.4 = 41040090087 |
q49.4 = 6255143945 |
q49.4 = 67689930204 |
q49.4 = 79242251100 |
q49.4 = 1264750404 |
q49.4 = 8866315486 |
q49.4 = 60956011934 |
q49.4 = 21594279187 ) AND (MatchSequence > 0) NOVAq49_10= 21.


IF  (SYSMIS(NOVAq49_10)) NOVAq49_10=q49.10.
EXECUTE.

***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & NOVAq49_10 = 249) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

*** ATENÇÃO: Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com tec. superior duplicado ****


SUMMARIZE
  /TABLES=q49.4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=40
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF	
(q49.4	=	4473366650	 |
q49.4	=	4473366650	 |
q49.4	=	66373794253	 |
q49.4	=	70654760306	 |
q49.4	=	3246151407	 |
q49.4	=	77041038491	 |
q49.4	=	7413435411	 |
q49.4	=	81630727504	 |
q49.4	=	34005625487	 |
q49.4	=	616886659	 |
q49.4	=	7762540733	 |
q49.4	=	11129380793	 |
q49.4	=	7115727716	 |
q49.4	=	92888275791	 |
q49.4	=	78409110725	 |
q49.4	=	5138926802	 |
q49.4	=	77663764820	 |
q49.4	=	8001604950	 |
q49.4	=	1890659908	 |
q49.4	=	1638267901	 |
q49.4	=	7126145918	 |
q49.4	=	94208336072	 |
q49.4	=	83302689004	 |
q49.4	=	99070090	 |
q49.4	=	96665793249	 |
q49.4	=	26688344220	 |
q49.4	=	29224373291	 |
q49.4	=	48606510149	 |
q49.4	=	70424055104	 |
q49.4	=	5797538679	 |
q49.4	=	46232516168	 |
q49.4	=	59449918520	 |
q49.4	=	66279356515	 |
q49.4	=	71790535549	 |
q49.4	=	96559810704	 |
q49.4	=	30570622883	 |
q49.4	=	32551496810	 |
q49.4	=	30950676829	 |
q49.4	=	457524197	 |
q49.4	=	54489172168	
)	AND (MatchSequence > 0) NOVAq49_10=249.


FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.

