* Encoding: UTF-8.


* Identificar casos duplicados - 

*******************************
*Por número identificador 
*******************************

* Identificar casos duplicados.
SORT CASES BY NU_IDENTIFICADOR(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR
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
  /DROP=PrimaryLast InDupGrp.
VARIABLE LABELS  PrimaryFirst 'Indicador de cada primeiro caso correspondente como Principal' 
    MatchSequence 'Contagem sequencial de casos correspondentes'.
VALUE LABELS  PrimaryFirst 0 'Caso duplicado' 1 'Caso principal'.
VARIABLE LEVEL  PrimaryFirst (ORDINAL) /MatchSequence (SCALE).
FREQUENCIES VARIABLES=PrimaryFirst MatchSequence.
EXECUTE.


* ----Duplicação por Número Identificador (NU_IDENTIFICADOR): 0 casos





********************************************************************************
*********** Nome e  Endereço Completo*********************************************
********************************************************************************

* Identificar casos duplicados.
SORT CASES BY q0_1(A) q0_2(A) q0_3(A) q0_4(A) q0_5(A) q0_6(A) q0_8(A) q0_9(A) q0_10(A).
MATCH FILES
  /FILE=*
  /BY q0_1 q0_2 q0_3 q0_4 q0_5 q0_6 q0_8 q0_9 q0_10
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
  /DROP=PrimaryLast InDupGrp.
VARIABLE LABELS  PrimaryFirst 'Indicador de cada primeiro caso correspondente como Principal' 
    MatchSequence 'Contagem sequencial de casos correspondentes'.
VALUE LABELS  PrimaryFirst 0 'Caso duplicado' 1 'Caso principal'.
VARIABLE LEVEL  PrimaryFirst (ORDINAL) /MatchSequence (SCALE).
FREQUENCIES VARIABLES=PrimaryFirst MatchSequence.
EXECUTE.

*****  1 caso duplicado.  ID 3300103311254.  Unidade Desativada.  Eliminar do Banco

*** Excluir caso

FILTER OFF.
USE ALL.
SELECT IF (NU_IDENTIFICADOR ~= 3300103311254).
EXECUTE.
