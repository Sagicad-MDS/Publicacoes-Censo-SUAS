
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
SORT CASES BY q01(A) q02(A) q03(A) q04(A) q05(A) q06(A) q07(A)  q08(A) q09(A) q010(A) q011(A) q012(A) q013(A) q014(A) q015(A).
MATCH FILES
  /FILE=*
  /BY q01 q02   q03  q04  q05  q06  q07   q08  q09   q010   q011  q012  q013  q014  q015
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

*------> Todas as variáveis de identificação: 0 casos


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

*------> Endereço Completo: 0 casos

*****************
* Rua e Bairro e IBGE
*****************


* Identify Duplicate Cases.
SORT CASES BY q03  q06   IBGE.
MATCH FILES
  /FILE=*
  /BY q03  q06   IBGE
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

*---> Rua e Bairro e IBGE: 3 casos

****************************
* Rua e Número e IBGE
****************************

* Identify Duplicate Cases.
SORT CASES BY  q03(A) q04(A) IBGE(A).
MATCH FILES
  /FILE=*
  /BY  q03  q04  IBGE
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_5.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_5.
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
VARIABLE LABELS  PrimaryLast_5 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_5 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_5 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_5.
EXECUTE.

*----> Rua e Número e IBGE: 2 casos.

*********************
* Email e Contato
*********************

* Identify Duplicate Cases.
SORT CASES BY  q011(A)  q012(A) q013(A).
MATCH FILES
  /FILE=*
  /BY  q011  q012   q013
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_6.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_6.
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
VARIABLE LABELS  PrimaryLast_6 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_6 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_6 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_6.
EXECUTE.

* ---> Email e Contato: 50 casos

**********************
* Endereço e IBGE
***********************
* Identify Duplicate Cases.
SORT CASES BY q03(A) IBGE(A).
MATCH FILES
  /FILE=*
  /BY q03  IBGE
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_7.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_7.
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
VARIABLE LABELS  PrimaryLast_7 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_7 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_7 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_7.
EXECUTE.

* ----> Endereço e IBGE: 6 casos - 

******************
* CEP e Bairro
******************

* Identify Duplicate Cases.
SORT CASES BY q08 (A) q06(A).
MATCH FILES
  /FILE=*
  /BY q08   q06
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_8.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_8.
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
VARIABLE LABELS  PrimaryLast_8 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_8 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_8 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_8.
EXECUTE.

*---> CEP e Bairro: 36 casos: 

**********************************
* Endereço e CEP
***********************************

* Identify Duplicate Cases.
SORT CASES BY q03(A) q08(A).
MATCH FILES
  /FILE=*
  /BY  q03  q08
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_9.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_9.
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
VARIABLE LABELS  PrimaryLast_9 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_9 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_9 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_9.
EXECUTE.

*---> Endereço e CEP: 1 caso


**************************
* NOME e IBGE 
**********************

* Identify Duplicate Cases.
SORT CASES BY q01 (A) IBGE7(A).
MATCH FILES
  /FILE=*
  /BY q01   IBGE7
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast_10.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast_10.
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
VARIABLE LABELS  PrimaryLast_10 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast_10 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast_10 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast_10.
EXECUTE.

*----> NOME e IBGE: 17 casos






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
PrimaryLast_5
PrimaryLast_6
PrimaryLast_7
PrimaryLast_8
PrimaryLast_9
PrimaryLast_10.


