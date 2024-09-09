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

* ----Duplicação por Número Identificador (id_CRAS): 0 casos




*******************************************
* Todas as variáveis de Identificação
********************************************

* Identify Duplicate Cases.
SORT CASES BY q01(A) q02(A) q03(A) q04(A) q05(A) q06(A) q07(A)  q08(A) q09(A) q010(A) q011(A) q012(A) q013(A) .
MATCH FILES
  /FILE=*
  /BY q01 q02   q03  q04  q05  q06  q07   q08  q09   q010   q011  q012  q013 
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_2.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_2.
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
VARIABLE LABELS  PrimaryLast_2 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_2 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_2 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_2.
EXECUTE.

*------> Todas as variáveis de identificação: 4 casos


*************************
* Endereço completo
*************************

* Identify Duplicate Cases.
SORT CASES BY q02(A) q03(A) q04(A) q05(A) q06(A) q07(A) 
   q08(A) q09(A) q010(A).
MATCH FILES
  /FILE=*
  /BY q02   q03  q04  q05  q06  q07   q08  q09   q010
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_3.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_3.
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
VARIABLE LABELS  PrimaryLast_3 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_3 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_3 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_3.
EXECUTE.

*------> Endereço Completo: 35 casos




*******************************************************
* Endereço completo e Natureza da unidade
*******************************************************

* Identify Duplicate Cases.
SORT CASES BY q02(A) q03(A) q04(A) q05(A) q06(A) q07(A) 
   q08(A) q09(A) q010(A)  q3(A).
MATCH FILES
  /FILE=*
  /BY q02   q03  q04  q05  q06  q07   q08  q09   q010 q3
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_4.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_4.
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
VARIABLE LABELS  PrimaryLast_4 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_4 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_4 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_4.
EXECUTE.

*------> Endereço Completo e Natureza da unidade: 34 casos





***Deletando casos duplicados***

*EXECUTE. 
*FILTER OFF. 
*USE ALL. 
*SELECT IF (PrimaryLast=1). 
*EXECUTE. 
*FREQUENCIES VARIABLES=PrimaryLast
  /ORDER=ANALYSIS.




DELETE VARIABLES PrimaryLast
PrimaryLast_2
PrimaryLast_3
PrimaryLast_4
.


******foi solicitado a inativação das unidades duplicadas. Porem mantido os dados no banco.