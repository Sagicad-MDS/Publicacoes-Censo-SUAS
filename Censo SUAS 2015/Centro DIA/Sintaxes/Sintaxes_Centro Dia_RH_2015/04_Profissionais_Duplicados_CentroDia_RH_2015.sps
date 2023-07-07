******************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR CPF'S DUPLICADOS EM UMA MESMA UNIDADE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************************************************************     ATENÇÃO    *********************************************************************************************************
SE A VARIÁVEL CPF FOR STRING, NÃO ESQUECER DE UTILIZAR "".
****************************************************************************************************************************************************************************************

SORT CASES BY NU_IDENTIFICADOR(A) q40_4(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR q40_4
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


Total de trabalhadores na base original = 22.644
Duplicações Identificadas = 206
Total de trabalhadores duplicados removidos da base = 104
Total de trabalhadores final = 22.540


*** BACKUP Var q40_11 Original (Função)

COMPUTE q40_11_original = q40_11.
VARIABLE LABELS q40_11_original 'Original - q40_11_Função'.
VALUE LABELS 
/q40_11_original
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

IF  (MatchSequence > 1 & q40_11 = 21) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q40_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=1
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


IF	(q40_4 = "740.846.747-53") AND (MatchSequence > 0) q40_11 = 21.
EXECUTE.			


***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & q40_11 = 218) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

SUMMARIZE
  /TABLES=q40_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=33
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com Tec_NS_Duplicado****

IF			
(q40_4 = "219.518.022-68" |
q40_4 = "009.705.912-92" |
q40_4 = "009.705.912-92" |
q40_4 = "120.723.972-00" |
q40_4 = "275.072.113-04" |
q40_4 = "287.418.543-49" |
q40_4 = "534.997.433-53" |
q40_4 = "230.846.503-49" |
q40_4 = "513.284.613-00" |
q40_4 = "448.220.303-34" |
q40_4 = "031.800.554-99" |
q40_4 = "603.952.226-72" |
q40_4 = "014.074.426-60" |
q40_4 = "004.139.577-80" |
q40_4 = "013.590.786-14" |
q40_4 = "055.833.806-24" |
q40_4 = "447.876.776-91" |
q40_4 = "863.104.296-04" |
q40_4 = "761.198.666-04" |
q40_4 = "070.731.177-29" |
q40_4 = "142.148.518-46" |
q40_4 = "317.834.918-92" |
q40_4 = "011.099.628-35" |
q40_4 = "223.985.938-51" |
q40_4 = "123.878.508-58" |
q40_4 = "062.593.298-65" |
q40_4 = "541.871.509-78" |
q40_4 = "071.597.899-38" |
q40_4 = "054.747.119-05" |
q40_4 = "007.674.989-41" |
q40_4 = "967.933.501-10" |
q40_4 = "501.568.611-00" |
q40_4 = "576.387.211-87" 
	) AND (MatchSequence > 0) q40_11 = 218.
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


***Foram eliminados 192 trabalhadores duplicados



