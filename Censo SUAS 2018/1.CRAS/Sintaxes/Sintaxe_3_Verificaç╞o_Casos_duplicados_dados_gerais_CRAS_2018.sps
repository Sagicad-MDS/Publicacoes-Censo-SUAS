
* Identificar casos duplicados - 

*******************************
*Por número identificador 
*******************************


* Identify Duplicate Cases.
SORT CASES BY id_cras(A).
MATCH FILES
  /FILE=*
  /BY id_cras
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
SORT CASES BY Ident_1(A) Ident_2(A) Ident_3(A) Ident_4(A) Ident_5(A) Ident_6(A) Ident_7(A) 
    Ident_8(A) Ident_9(A) Ident_10(A) Ident_11(A) Ident_12(A) Ident_13(A) Ident_14(A) Ident_15(A).
MATCH FILES
  /FILE=*
  /BY Ident_1 Ident_2 Ident_3 Ident_4 Ident_5 Ident_6 Ident_7 Ident_8 Ident_9 Ident_10 Ident_11 
    Ident_12 Ident_13 Ident_14 Ident_15
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
SORT CASES BY Ident_2(A) Ident_3(A) Ident_4(A) Ident_5(A) Ident_6(A) Ident_7(A) Ident_8(A) 
    Ident_9(A) Ident_10(A).
MATCH FILES
  /FILE=*
  /BY Ident_2 Ident_3 Ident_4 Ident_5 Ident_6 Ident_7 Ident_8 Ident_9 Ident_10
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
SORT CASES BY Ident_3(A) Ident_6(A) IBGE(A).
MATCH FILES
  /FILE=*
  /BY Ident_3 Ident_6 IBGE
 /DROP = PrimaryLast_4  /FIRST=PrimaryFirst
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

*---> Rua e Bairro e IBGE: 0 casos

****************************
* Rua e Número e IBGE
****************************

* Identify Duplicate Cases.
SORT CASES BY Ident_3(A) Ident_4(A) IBGE(A).
MATCH FILES
  /FILE=*
  /BY Ident_3 Ident_4 IBGE
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

*----> Rua e Número e IBGE: 1 caso. Salvador (29274003202 e 29274003729) - Ligar para o município

*********************
* Email e Contato
*********************


* Identify Duplicate Cases.
SORT CASES BY Ident_11(A) Ident_12(A) Ident_13(A).
MATCH FILES
  /FILE=*
  /BY Ident_11 Ident_12 Ident_13
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

* ---> Email e Contato: 71 casos conferidos. Nenhuma duplicação.

**********************
* Endereço e IBGE
***********************

* Identify Duplicate Cases.
SORT CASES BY Ident_3(A) IBGE(A).
MATCH FILES
  /FILE=*
  /BY Ident_3 IBGE
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

* ----> Endereço e IBGE: 5 casos - Colocados na planilha para verificação

******************
* CEP e Bairro
******************

* Identify Duplicate Cases.
SORT CASES BY Ident_8(A) Ident_6(A).
MATCH FILES
  /FILE=*
  /BY Ident_8 Ident_6
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

*---> CEP e Bairro: 45 casos: conferidos, 2 casos foram para planilha. 

**********************************
* Endereço e CEP
***********************************

* Identify Duplicate Cases.
SORT CASES BY Ident_3(A) Ident_8(A).
MATCH FILES
  /FILE=*
  /BY Ident_3 Ident_8
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

*---> Endereço e CEP: 1 caso, já identificado


**************************
* NOME e IBGE 
**********************

* Identify Duplicate Cases.
SORT CASES BY Ident_1(A) IBGE7(A).
MATCH FILES
  /FILE=*
  /BY Ident_1 IBGE7
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

*----> NOME e IBGE: 17 casos, nenhum duplicação. 






***Deletando casos duplicados***

*EXECUTE. 
*FILTER OFF. 
*USE ALL. 
*SELECT IF (PrimaryLast=1). 
*EXECUTE. 
*FREQUENCIES VARIABLES=PrimaryLast
  /ORDER=ANALYSIS.




