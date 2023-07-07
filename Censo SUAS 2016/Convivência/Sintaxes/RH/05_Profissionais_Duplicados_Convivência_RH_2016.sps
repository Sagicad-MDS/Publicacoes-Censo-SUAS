* Encoding: UTF-8.
******************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR CPF'S DUPLICADOS EM UMA MESMA UNIDADE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************************************************************     ATENÇÃO    *********************************************************************************************************
SE A VARIÁVEL CPF FOR STRING, NÃO ESQUECER DE UTILIZAR "".
****************************************************************************************************************************************************************************************

SORT CASES BY id_convivencia(A) v10720(A).
MATCH FILES
  /FILE=*
  /BY id_convivencia v10720
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


*Total de trabalhadores na base original = 65407
Duplicações Identificadas = 347
Pessoas com duplicação = 173
Total de trabalhadores duplicados removidos da base = 174
Total de trabalhadores final = 65233


*** BACKUP Var q23_11 Original (Função)

COMPUTE q23_11_original = q23_11.
VARIABLE LABELS q23_11_original 'Original - q23_11_Função'.
VALUE LABELS 
/q23_11_original
21    "Coordenador(a)"
217    "Educador(a) Social"
216    "Apoio Administrativo"
253    "Estagiário(a)"
220    "Serviços Gerais"
218    "Técnico(a) de nível superior"
254    "Outros".
EXECUTE.


***Duplicação Coordenador **********************************

IF  (MatchSequence > 1 & q23_11 = 21) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q23_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=8
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


IF	(q23_4 = " "  |) AND (MatchSequence > 0) q23_11 = 2.
EXECUTE.			


***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & q23_11 = 218) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

SUMMARIZE
  /TABLES=q23_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=29
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com Tec_NS_Duplicado****

IF			
(q23_4 = " " ) AND (MatchSequence > 0) q23_11 = 218.
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



