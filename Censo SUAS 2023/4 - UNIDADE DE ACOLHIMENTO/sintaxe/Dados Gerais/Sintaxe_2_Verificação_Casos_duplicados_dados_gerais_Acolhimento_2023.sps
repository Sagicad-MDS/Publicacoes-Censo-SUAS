* Encoding: UTF-8.


* Identificar casos duplicados - 

*******************************
*Por número identificador 
*******************************


* Identify Duplicate Cases.
SORT CASES BY NU_IDENTIFICADOR(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence1=MatchSequence1+1.
END IF.
LEAVE  MatchSequence1.
FORMATS  MatchSequence1 (f7).
COMPUTE  InDupGrp=MatchSequence1>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence1.
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

* ----Duplicação por Número Identificador (NU_IDENTIFICADOR): 0 casos





********************************************************************************
*********** Endereço Completo*********************************************
********************************************************************************

 q0_1 = Nome
 q0_3 = Endereço
 q0_4 = Número
 q0_5=Complemento
 q0_6= Bairro
 q0_7= Ponto de Referencia
 q0_8 = CEP
 q0_9 = Município
 q0_10 = UF



* Identify Duplicate Cases.
SORT CASES BY q0_1(A) q0_3(A) q0_4(A) q0_5(A) q0_6(A) q0_7(A) q0_8(A) q0_9(A) q0_10(A).
MATCH FILES
  /FILE=*
  /BY q0_1 q0_3 q0_4 q0_5 q0_6 q0_7 q0_8 q0_9 q0_10
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
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast1 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast1 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast1 (ORDINAL).
RENAME VARIABLES PrimaryLast1 = Completo.
FREQUENCIES VARIABLES=Completo.
EXECUTE.

* ----Duplicação por q0_1(A) q0_3(A) q0_4(A) q0_5(A) q0_6(A) q0_7(A) q0_8(A) q0_9(A) q0_10(A). = 0 caso




********************************************************************************
*********** Endereço Simplificado *********************************************
********************************************************************************

* Identify Duplicate Cases.
SORT CASES BY q0_3(A) q0_4(A) q0_6(A) q0_8(A) q0_9(A) q0_10(A).
MATCH FILES
  /FILE=*
  /BY q0_3 q0_4 q0_6 q0_8 q0_9 q0_10
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
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast1 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast1 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast1 (ORDINAL).
RENAME VARIABLES PrimaryLast1 = Simples.
FREQUENCIES VARIABLES=Simples.
EXECUTE.

* ----Duplicação por q0_3(A) q0_4(A) q0_6(A) q0_8(A) q0_9(A) q0_10(A) = 63 casos



********************************************************************************
*********** Endereço, Municipio e UF *********************************************
********************************************************************************

DATASET ACTIVATE DataSet1.
* Identify Duplicate Cases.
SORT CASES BY q0_3(A) q0_9(A) q0_10(A).
MATCH FILES
  /FILE=*
  /BY q0_3 q0_9 q0_10
  /FIRST=PrimaryFirst
  /LAST=END_MUN_UF.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-END_MUN_UF.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  END_MUN_UF 'Indicator of each last matching case as Primary'.
VALUE LABELS  END_MUN_UF 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  END_MUN_UF (ORDINAL).
FREQUENCIES VARIABLES=END_MUN_UF.
EXECUTE.

* ----Duplicação por q0_3(A) q0_9(A) q0_10(A) = 192 casos

********************************************************************************
*********** Endereço, Número e Bairro *********************************************
********************************************************************************

* Identify Duplicate Cases.
SORT CASES BY q0_3(A) q0_4(A) q0_6(A).
MATCH FILES
  /FILE=*
  /BY q0_3 q0_4 q0_6
  /FIRST=PrimaryFirst
  /LAST=END_NUM_BAI.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-END_NUM_BAI.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  END_NUM_BAI 'Indicator of each last matching case as Primary'.
VALUE LABELS  END_NUM_BAI 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  END_NUM_BAI (ORDINAL).
FREQUENCIES VARIABLES=END_NUM_BAI.
EXECUTE.


* ----Duplicação por q0_3(A) q0_4(A) q0_6(A) = 93 casos


*** Fazer a análise de casos duplicados e outras questões no Excel. 



DELETE VARIABLES PrimaryLast
Completo
Simples
END_MUN_UF
END_NUM_BAI.
















