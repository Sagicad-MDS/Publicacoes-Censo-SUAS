
* Identify Duplicate Cases.

SORT CASES BY NU_identificador(A) q47_4(A).
MATCH FILES
  /FILE=*
  /BY NU_identificador q47_4
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

IF  (MatchSequence > 1 & q47_11= 2) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas do número de casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q47_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=10
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF
(q47_4	=	99502143	|
q47_4	=	2913602460	|
q47_4	=	75782430630|
q47_4	=	5782585609	|
q47_4	=	5011081907	|
q47_4	=	6255143945	|
q47_4	=	79242251100|
q47_4	=	87012774134|
q47_4	=	4364346527	|
q47_4	=	59449918520) AND (MatchSequence > 0) NOVAq47_11= 2.	


IF  (SYSMIS(NOVAq47_11)) NOVAq47_11=q47_11.
EXECUTE.

***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & NOVAq47_11 = 7) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

*** ATENÇÃO: Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com tec. superior duplicado ****


SUMMARIZE
  /TABLES=q47_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=70
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF	
(q47_4	=	4473366650	|
q47_4	=	4473366650	|
q47_4	=	847726207	|
q47_4	=	59620927400	|
q47_4	=	91411718453	|
q47_4	=	7423064459	|
q47_4	=	60806591404	|
q47_4	=	3941100483	|
q47_4	=	7554691430	|
q47_4	=	85400416420	|
q47_4	=	3704786497	|
q47_4	=	3977907409	|
q47_4	=	6020131432	|
q47_4	=	9459314414	|
q47_4	=	72950021468	|
q47_4	=	1406495573	|
q47_4	=	65243862215	|
q47_4	=	616886659	|
q47_4	=	5939421679	|
q47_4	=	99611465653	|
q47_4	=	9172798670	|
q47_4	=	10172369762	|
q47_4	=	1723770728	|
q47_4	=	7762540733	|
q47_4	=	10342080717	|
q47_4	=	78409110725	|
q47_4	=	98991230725	|
q47_4	=	5544007748	|
q47_4	=	8494065793	|
q47_4	=	77663764820	|
q47_4	=	96213000887	|
q47_4	=	26094570812	|
q47_4	=	30857044850	|
q47_4	=	8372995869	|
q47_4	=	61412805287	|
q47_4	=	77239237249	|
q47_4	=	1890659908	|
q47_4	=	3280731992	|
q47_4	=	1638267901	|
q47_4	=	7126145918	|
q47_4	=	45014914004	|
q47_4	=	94208336072	|
q47_4	=	744250056	|
q47_4	=	2093180073	|
q47_4	=	48066516053	|
q47_4	=	99070090		|
q47_4	=	96665793249	|
q47_4	=	67689930204	|
q47_4	=	1208343408	|
q47_4	=	1447821114	|
q47_4	=	54625939100	|
q47_4	=	48606510149	|
q47_4	=	60150904134	|
q47_4	=	95702660153	|
q47_4	=	70424055104	|
q47_4	=	3747781322	|
q47_4	=	9478658700	|
q47_4	=	65645790472	|
q47_4	=	1969108460	|
q47_4	=	7406301480	|
q47_4	=	4165094528	|
q47_4	=	684556588	|
q47_4	=	58297880559	|
q47_4	=	85203645		|
q47_4	=	73031976720	|
q47_4	=	75076977700	|
q47_4	=	30950676829	|
q47_4	=	78024714949	|
q47_4	=	54489172168	|
q47_4	=	554284600) AND (MatchSequence > 0) NOVAq47_11=7.


FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.

