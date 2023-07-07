******************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR CPF'S DUPLICADOS EM UMA MESMA UNIDADE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************************************************************     ATENÇÃO    *********************************************************************************************************
SE A VARIÁVEL CPF FOR STRING, NÃO ESQUECER DE UTILIZAR "".
****************************************************************************************************************************************************************************************

SORT CASES BY NU_IDENTIFICADOR(A) q28.4(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR q28.4
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

***
Total de trabalhadores na base original = 25.300
Duplicações Identificadas = 293
Total de trabalhadores duplicados removidos da base = 148
Total de trabalhadores final = 25152


*** BACKUP Var q28.12 Original (Função)

COMPUTE q28.12.original = q28.12.
VARIABLE LABELS q28.12.original 'Original - q28.12.Função'.
VALUE LABELS 
/q28.12.original
21    "Coordenador(a)"
218    "Técnico(a) de nível superior"
349    "Cuidador(a)"
368    "Auxiliar de Cuidador(a)"
217    "Orientador/Educador(a) Social"
216    "Apoio Administrativo"
221    "Estagiário(a)"
220    "Serviços Gerais"
254    "Outros".
EXECUTE.


***Duplicação Coordenador **********************************

IF  (MatchSequence > 1 & q28.12 = 21) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q28.4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=3
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


IF	(q28.4 = 87577909653 | q28.4 = 69257175987 | q28.4 = 548695873) AND (MatchSequence > 0) q28.12 = 21.
EXECUTE.			


***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & q28.12 = 218) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

SUMMARIZE
  /TABLES=q28.4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=44
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com Tec_NS_Duplicado****

IF			
(q28.4	=	21951802268	|
q28.4	=	970591292	|
q28.4	=	970591292	|
q28.4	=	12072397200	|
q28.4	=	27507211304	|
q28.4	=	28741854349	|
q28.4	=	94971684387	|
q28.4	=	53499743353	|
q28.4	=	51328461300	|
q28.4	=	44822030334	|
q28.4	=	9718020683	|
q28.4	=	6333068608	|
q28.4	=	6920899698	|
q28.4	=	84578971600	|
q28.4	=	51187388653	|
q28.4	=	1407442660	|
q28.4	=	48122050697	|
q28.4	=	2743444673	|
q28.4	=	53187814620	|
q28.4	=	413957780	|
q28.4	=	1359078614	|
q28.4	=	5583380624	|
q28.4	=	44787677691	|
q28.4	=	86310429604	|
q28.4	=	10367310651	|
q28.4	=	25858730809	|
q28.4	=	7612331640	|
q28.4	=	74084674753	|
q28.4	=	5617322729	|
q28.4	=	14214851846	|
q28.4	=	31783491892	|
q28.4	=	1109962835	|
q28.4	=	20508761816	|
q28.4	=	32615952803	|
q28.4	=	12387850858	|
q28.4	=	43323707672	|
q28.4	=	29075756860	|
q28.4	=	3081408938	|
q28.4	=	7294390622	|
q28.4	=	71240136072	|
q28.4	=	96793350110	|
q28.4	=	50156861100	|
q28.4	=	37029401972	|
q28.4	=	950438103) AND (MatchSequence > 0) q28.12 = 218.
execute.


FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.

RENAME VARIABLES
MatchSequence = Duplicado.
VARIABLE LABELS
Duplicado'Trabalhadores com duplicações'.
VALUE LABELS
/Duplicado
0'Não havia duplicações para este trabalhador'
1'Duplicações deste trabalhador foram removidas da base'
.
DELETE VARIABLES
Coord_Duplicado
Tec_NS_Duplicado.
EXECUTE.


***Foram eliminados 148 trabalhadores duplicados



