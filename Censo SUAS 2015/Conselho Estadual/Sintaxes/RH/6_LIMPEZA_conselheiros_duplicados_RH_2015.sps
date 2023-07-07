
*****************************************************************************
**** Syntax Censo SUAS - RH ******Conselho Municipal 2015******
*****************************************************************************

**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR CPF'S DUPLICADOS EM UMA MESMA UNIDADE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************************************************************     ATENÇÃO    *********************************************************************************************************
AS VARIÁVEIS REFERENTES AO CPF E AO NÚMERO IDENTIFICADOR DA UNIDADE DEVEM OBRIGATORIAMENTE ESTAR NO FORMATO NÚMERICO
****************************************************************************************************************************************************************************************

SORT CASES BY codigo_ibge(A) q63_10(A).
MATCH FILES
  /FILE=*
  /BY codigo_ibge q63_10
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


*Em 2015, Conselho: Total de RH na base original = 78.564
Total de trabalhadores duplicados =149 duplicados output





**************Syntax de Duplicação de Presidente **********************************

IF  (MatchSequence > 1 & q63_6 = 1) Presid_Duplicado=1.
EXECUTE.

SORT CASES BY Presid_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q63_10
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=5
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF			
(q63_10	=	16678532287	|
q63_10	=	42717299149	|
q63_10	=	96836156515	|
q63_10	=	3105443606	                  |
q63_10	=	3655437994	                  |
q63_10	=	36939773134) AND (MatchSequence > 0) NOVAq63_6 = 1.
EXECUTE.			


IF  (SYSMIS(NOVAq63_6)) NOVAq63_6=q63_6.
EXECUTE.

******************************Fim da Syntax de Duplicação de Presidente ************************************




**************************************************************************************************************************************
*************************Duplicação Vice Presidente  -  RODAR APÓS A SYNTAX ACIMA**********************************
**************************************************************************************************************************************

IF  (MatchSequence > 1 & NOVAq63_6 = 2) Vice_Duplicado=1.
EXECUTE.

SORT CASES BY Vice_Duplicado(D).

SUMMARIZE
  /TABLES=q63_10
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=14
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.
	

*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****


IF			
(q63_10	=	50041436172	|
q63_10	=	7176730490	|
q63_10	=	6066245465	|
q63_10	=	6235154402	|
q63_10	=	27257878587	|
q63_10	=	3508827623	|
q63_10	=	2605225623	|
q63_10	=	60261935615	|
q63_10	=	32899297600	|
q63_10	=	504877879	|
q63_10	=	28107115856	|
q63_10	=	3801989917	|
q63_10	=	841037957	|
q63_10	=	5677867900	) AND (MatchSequence > 0) NOVAq63_6 = 2.
EXECUTE.			









FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.


***Foram eliminados 149 trabalhadores duplicados



****************************************************************************************************
*******************************Limpeza Idade Conselheiros ************************************
****************************************************************************************************

*Criando variável velha


RECODE q63_2 (ELSE=Copy) INTO q63_2_VELHA.
VARIABLE LABELS  q63_2_VELHA 'q63_2_Velha'.
EXECUTE.


RECODE D63_2 (ELSE=Copy) INTO D63_2_VELHA.
VARIABLE LABELS  D63_2_VELHA 'D63_2_Velha'.
EXECUTE.


**Limpando os conselheiros com idade menor que 18 e maior que 100 

DO IF (D63_2_VELHA >= 100).
RECODE q63_2 (ELSELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (D63_2_VELHA <= 17).
RECODE q63_2 (ELSELSE=SYSMIS).
END IF.
EXECUTE.




