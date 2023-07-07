******************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR CPF'S DUPLICADOS EM UMA MESMA UNIDADE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************************************************************     ATENÇÃO    *********************************************************************************************************
SE A VARIÁVEL CPF FOR STRING, NÃO ESQUECER DE UTILIZAR "".
****************************************************************************************************************************************************************************************

SORT CASES BY NU_IDENTIFICADOR(A) q31_4(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR q31_4
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


*Total de trabalhadores na base original = 60.381
Duplicações Identificadas = 312
Pessoas com duplicação = 155
Total de trabalhadores duplicados removidos da base = 157
Total de trabalhadores final = 60.224


*** BACKUP Var q31_11 Original (Função)

COMPUTE q31_11_original = q31_11.
VARIABLE LABELS q31_11_original 'Original - q31_11_Função'.
VALUE LABELS 
/q31_11_original
21    "Coordenador(a)"
217    "Educador(a) Social"
216    "Apoio Administrativo"
253    "Estagiário(a)"
220    "Serviços Gerais"
218    "Técnico(a) de nível superior"
254    "Outros".
EXECUTE.


***Duplicação Coordenador **********************************

IF  (MatchSequence > 1 & q31_11 = 21) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q31_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=8
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


IF	(q31_4 = "17106966304" |
q31_4 = "87263297434" |
q31_4 = "49892975472" |
q31_4 = "45848181691" |
q31_4 = "30465356869" |
q31_4 = "01705444865" |
q31_4 = "09796196883" |
q31_4 = "07974508906") AND (MatchSequence > 0) q31_11 = 21.
EXECUTE.			


***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & q31_11 = 218) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

SUMMARIZE
  /TABLES=q31_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=29
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com Tec_NS_Duplicado****

IF			
(q31_4 = "52584593220" |
q31_4 = "00825576245" |
q31_4 = "84847263200" |
q31_4 = "26819368372" |
q31_4 = "77198425372" |
q31_4 = "29440467568" |
q31_4 = "08827482628" |
q31_4 = "93268432620" |
q31_4 = "40258646810" |
q31_4 = "29148112844" |
q31_4 = "27505563840" |
q31_4 = "31935013874" |
q31_4 = "06061965877" |
q31_4 = "77314336849" |
q31_4 = "26461114874" |
q31_4 = "28781153848" |
q31_4 = "35070720848" |
q31_4 = "02493061829" |
q31_4 = "09844192846" |
q31_4 = "41784134813" |
q31_4 = "07128971866" |
q31_4 = "89537106853" |
q31_4 = "17484097861" |
q31_4 = "22036904882" |
q31_4 = "05320699948" |
q31_4 = "69435570097" |
q31_4 = "00357579062" |
q31_4 = "72768193020" |
q31_4 = "49129490197"
	) AND (MatchSequence > 0) q31_11 = 218.
EXECUTE.


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


***Foram eliminados 192 trabalhadores duplicados



