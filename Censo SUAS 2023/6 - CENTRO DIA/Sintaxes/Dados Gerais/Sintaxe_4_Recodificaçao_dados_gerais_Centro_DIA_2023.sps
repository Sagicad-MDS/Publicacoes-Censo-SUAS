
*****recodificar
*q4*********************************

compute q6_velha  =  q6.
compute q7_velha  =   q7 .
compute q8_1_velha  = q8_1.
compute q8_2_velha   = q8_2.
compute q8_3_velha  =  q8_3.
compute q8_0_velha  =  q8_0.
compute q9_0_velha  = q9_0.
compute q9_1_velha  =  q9_1.
compute q9_2_velha  =  q9_2.
compute q9_3_velha  = q9_3.
compute q9_4_velha  =  q9_4.
compute q9_5_velha  =  q9_5.
compute q9_6_velha  =  q9_6.
compute q9_7_velha  =  q9_7.
compute q9_8_velha  =  q9_8.
compute q9_9_velha  =  q9_9.
compute q9_10_velha  =  q9_10.
compute q9_99_velha  =  q9_99.


DO IF (q4=0).
RECODE q5 (ELSE=SYSMIS).
RECODE q6 (ELSE=SYSMIS).
RECODE q7 (ELSE=SYSMIS).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).
RECODE q8_3 (ELSE=SYSMIS).
RECODE q8_0 (ELSE=SYSMIS).
RECODE q9_0 (ELSE=SYSMIS).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
RECODE q9_5 (ELSE=SYSMIS).
RECODE  q9_6 (ELSE=SYSMIS).
RECODE q9_7  (ELSE=SYSMIS).
RECODE q9_8 (ELSE=SYSMIS).
RECODE  q9_9 (ELSE=SYSMIS).
RECODE q9_10  (ELSE=SYSMIS).
RECODE q9_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

***q6*********************************

DO IF (q6=0).
RECODE q7 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q8*********************************

DO IF (q8_0=1).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).
RECODE q8_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

****************q9

DO IF (q9_0=1).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
RECODE q9_5 (ELSE=SYSMIS).
RECODE  q9_6 (ELSE=SYSMIS).
RECODE q9_7  (ELSE=SYSMIS).
RECODE q9_8 (ELSE=SYSMIS).
RECODE  q9_9 (ELSE=SYSMIS).
RECODE q9_10  (ELSE=SYSMIS).
RECODE q9_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

******q10**********************************************************

compute q10_0_velha  = q10_0.
compute q10_1_velha  =  q10_1.
compute q10_2_velha  =  q10_2.
compute q10_3_velha  = q10_3.
compute q10_4_velha  =  q10_4.
compute q10_99_velha  =  q10_99.

DO IF (q10_0=1).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_99  (ELSE=SYSMIS).
END IF.
EXECUTE.



*************************************************************************************************************************
************************************************************************************************************************
**q12*****************

compute q12_0_velha  =  q12_0.
compute q12_1_velha  =  q12_1.
compute q12_2_velha  =  q12_2.
compute q12_3_velha  = q12_3.
compute q12_4_velha  =  q12_4.
compute q12_5_velha  =  q12_5.
compute q12_6_velha  =  q12_6.
compute q12_7_velha  =  q12_7.
compute q12_8_velha  =  q12_8.
compute q12_9_velha  =  q12_9.
compute q12_10_velha  =  q12_10.
compute q12_11_velha  =  q12_11.
compute q12_12_velha  =  q12_12.
compute q12_13_velha  =  q12_13.

DO IF (q11=0).
RECODE q12_0 (ELSE=SYSMIS).
RECODE q12_1 (ELSE=SYSMIS).
RECODE q12_2 (ELSE=SYSMIS).
RECODE q12_3 (ELSE=SYSMIS).
RECODE q12_4 (ELSE=SYSMIS).
RECODE q12_5  (ELSE=SYSMIS).
RECODE q12_6 (ELSE=SYSMIS).
RECODE q12_7 (ELSE=SYSMIS).
RECODE q12_8 (ELSE=SYSMIS).
RECODE q12_9 (ELSE=SYSMIS).
RECODE q12_10  (ELSE=SYSMIS).
RECODE q12_11 (ELSE=SYSMIS).
RECODE q12_12 (ELSE=SYSMIS).
RECODE q12_13  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q12_0=1).
RECODE q12_1 (ELSE=SYSMIS).
RECODE q12_2 (ELSE=SYSMIS).
RECODE q12_3 (ELSE=SYSMIS).
RECODE q12_4 (ELSE=SYSMIS).
RECODE q12_5  (ELSE=SYSMIS).
RECODE q12_6 (ELSE=SYSMIS).
RECODE q12_7 (ELSE=SYSMIS).
RECODE q12_8 (ELSE=SYSMIS).
RECODE q12_9 (ELSE=SYSMIS).
RECODE q12_10  (ELSE=SYSMIS).
RECODE q12_11 (ELSE=SYSMIS).
RECODE q12_12 (ELSE=SYSMIS).
RECODE q12_13  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q13**************

compute q13_1_1_velha = q13_1_1. 
compute q13_1_2_velha = q13_1_2. 
compute q13_1_3_velha = q13_1_3. 
compute q13_1_0_velha = q13_1_0. 
compute q13_2_1_velha = q13_2_1. 
compute q13_2_2_velha = q13_2_2. 
compute q13_2_3_velha = q13_2_3. 
compute q13_2_0_velha = q13_2_0. 
compute q13_99_1_velha = q13_99_1. 
compute q13_99_2_velha = q13_99_2. 
compute q13_99_3_velha = q13_99_3. 
compute q13_99_0_velha = q13_99_0. 
execute. 


DO IF (q13_1_0=1).
RECODE q13_1_1(ELSE=SYSMIS).
RECODE q13_1_2 (ELSE=SYSMIS).
RECODE q13_1_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q13_2_0=1).
RECODE q13_2_1(ELSE=SYSMIS).
RECODE q13_2_2 (ELSE=SYSMIS).
RECODE q13_2_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q13_99_0=1).
RECODE q13_99_1(ELSE=SYSMIS).
RECODE q13_99_2 (ELSE=SYSMIS).
RECODE q13_99_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q16***

compute q16_0_velha  =  q16_0.
compute q16_1_velha  =  q16_1.
compute q16_2_velha  =  q16_2.
compute q16_3_velha  = q16_3.
compute q16_4_velha  =  q16_4.
compute q16_5_velha  =  q16_5.
compute q16_6_velha  =  q16_6.
compute q16_7_velha  =  q16_7.
execute. 

DO IF (q16_0=1).
RECODE q16_1(ELSE=SYSMIS).
RECODE q16_2(ELSE=SYSMIS).
RECODE q16_3(ELSE=SYSMIS).
RECODE q16_4(ELSE=SYSMIS).
RECODE q16_5(ELSE=SYSMIS).
RECODE q16_6(ELSE=SYSMIS).
RECODE q16_7(ELSE=SYSMIS).
END IF.
EXECUTE.

*****q21************************************************************************************

compute q21_1_velha  =  q21_1.
compute q21_2_velha  =  q21_2.
compute q21_3_velha  = q21_3.
compute q21_4_velha  =  q21_4.
compute q21_5_velha  =  q21_5.
compute q21_6_velha  =  q21_6.
compute q21_7_velha  =  q21_7.
compute q21_8_velha  =  q21_8.
compute q21_9_velha  =  q21_9.
compute q21_10_velha  =  q21_10.
compute q21_99_velha  =  q21_99.
compute q21_0_velha  =  q21_0.
execute. 


DO IF (q21_0=1).
RECODE q21_1(ELSE=SYSMIS).
RECODE q21_2(ELSE=SYSMIS).
RECODE q21_3(ELSE=SYSMIS).
RECODE q21_4(ELSE=SYSMIS).
RECODE q21_5(ELSE=SYSMIS).
RECODE q21_6(ELSE=SYSMIS).
RECODE q21_7(ELSE=SYSMIS).
RECODE q21_8(ELSE=SYSMIS).
RECODE q21_9(ELSE=SYSMIS).
RECODE q21_10(ELSE=SYSMIS).
RECODE q21_99(ELSE=SYSMIS).
END IF.
EXECUTE.

*****q26************************************************************************************

compute q26_1_velha  =  q26_1.
compute q26_2_velha  =  q26_2.
compute q26_3_velha  = q26_3.
compute q26_4_velha  =  q26_4.
compute q26_5_velha  =  q26_5.
compute q26_0_velha  =  q26_0.
execute. 

DO IF (q26_0=1).
RECODE q26_1(ELSE=SYSMIS).
RECODE q26_2(ELSE=SYSMIS).
RECODE q26_3(ELSE=SYSMIS).
RECODE q26_4(ELSE=SYSMIS).
RECODE q26_5(ELSE=SYSMIS).
END IF.
EXECUTE.

****q29************************************************************************

compute q30_velha  =  q30.

DO IF (q29=0).
RECODE q30 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q31*****

compute q31_1_velha  =  q31_1.
compute q31_2_velha  =  q31_2.
compute q31_3_velha  = q31_3.
compute q31_4_velha  =  q31_4.
compute q31_5_velha  =  q31_5.
compute q31_6_velha  =  q31_6.
compute q31_7_velha  =  q31_7.
compute q31_8_velha  =  q31_8.
compute q31_9_velha  =  q31_9.
execute. 


DO IF (q31_9_98=1).
RECODE q31_1(ELSE=SYSMIS).
RECODE q31_2(ELSE=SYSMIS).
RECODE q31_3(ELSE=SYSMIS).
RECODE q31_4(ELSE=SYSMIS).
RECODE q31_5(ELSE=SYSMIS).
RECODE q31_6(ELSE=SYSMIS).
RECODE q31_7(ELSE=SYSMIS).
RECODE q31_8(ELSE=SYSMIS).
RECODE q31_9(ELSE=SYSMIS).
END IF.
EXECUTE.


***q32*****

compute q32_1_velha  =  q32_1.
compute q32_2_velha  =  q32_2.
compute q32_3_velha  = q32_3.
compute q32_4_velha  =  q32_4.
compute q32_5_velha  =  q32_5.
compute q32_6_velha  =  q32_6.
compute q32_7_velha  =  q32_7.
execute. 

DO IF (q32_1_98=1).
RECODE q32_1(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q32_2_98=1).
RECODE q32_2(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q32_3_98=1).
RECODE q32_3(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q32_4_98=1).
RECODE q32_4(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q32_5_98=1).
RECODE q32_5(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q32_6_98=1).
RECODE q32_6(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q32_7_98=1).
RECODE q32_7(ELSE=SYSMIS).
END IF.
EXECUTE.


****q33**********************************************************************************

compute q33_1_velha  =  q33_1.
compute q33_2_velha  =  q33_2.
compute q33_3_velha  = q33_3.
compute q33_4_velha  =  q33_4.
execute. 

DO IF (q33_1_98=1).
RECODE q33_1(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_2_98=1).
RECODE q33_2(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_3_98=1).
RECODE q33_3(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_4_98=1).
RECODE q33_4(ELSE=SYSMIS).
END IF.
EXECUTE.



****q34**********************************************************************************

compute q34_1_velha  =  q34_1.
compute q34_2_velha  =  q34_2.
compute q34_3_velha  = q34_3.
execute. 

DO IF (q34_1_98=1).
RECODE q34_1(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q34_2_98=1).
RECODE q34_2(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q34_3_98=1).
RECODE q34_3(ELSE=SYSMIS).
END IF.
EXECUTE.


****q35******************************************************************************************


compute q35_1_1_velha = q35_1_1.
compute q35_1_2_velha = q35_1_2.
compute q35_1_3_velha = q35_1_3.
compute q35_1_4_velha = q35_1_4.
compute q35_1_5_velha = q35_1_5.
compute q35_1_6_velha = q35_1_6.
compute q35_1_7_velha = q35_1_7.
compute q35_1_8_velha = q35_1_8.
compute q35_1_0_velha = q35_1_0.
compute q35_1_9_velha = q35_1_9.
compute q35_2_1_velha = q35_2_1.
compute q35_2_2_velha = q35_2_2.
compute q35_2_3_velha = q35_2_3.
compute q35_2_4_velha = q35_2_4.
compute q35_2_5_velha = q35_2_5.
compute q35_2_6_velha = q35_2_6.
compute q35_2_7_velha = q35_2_7.
compute q35_2_8_velha = q35_2_8.
compute q35_2_0_velha = q35_2_0.
compute q35_2_9_velha = q35_2_9.
compute q35_3_1_velha = q35_3_1.
compute q35_3_2_velha = q35_3_2.
compute q35_3_3_velha = q35_3_3.
compute q35_3_4_velha = q35_3_4.
compute q35_3_5_velha = q35_3_5.
compute q35_3_6_velha = q35_3_6.
compute q35_3_7_velha = q35_3_7.
compute q35_3_8_velha = q35_3_8.
compute q35_3_0_velha = q35_3_0.
compute q35_3_9_velha = q35_3_9.
compute q35_4_1_velha = q35_4_1.
compute q35_4_2_velha = q35_4_2.
compute q35_4_3_velha = q35_4_3.
compute q35_4_4_velha = q35_4_4.
compute q35_4_5_velha = q35_4_5.
compute q35_4_6_velha = q35_4_6.
compute q35_4_7_velha = q35_4_7.
compute q35_4_8_velha = q35_4_8.
compute q35_4_0_velha = q35_4_0.
compute q35_4_9_velha = q35_4_9.
compute q35_5_1_velha = q35_5_1.
compute q35_5_2_velha = q35_5_2.
compute q35_5_3_velha = q35_5_3.
compute q35_5_4_velha = q35_5_4.
compute q35_5_5_velha = q35_5_5.
compute q35_5_6_velha = q35_5_6.
compute q35_5_7_velha = q35_5_7.
compute q35_5_8_velha = q35_5_8.
compute q35_5_0_velha = q35_5_0.
compute q35_5_9_velha = q35_5_9.
compute q35_6_1_velha = q35_6_1.
compute q35_6_2_velha = q35_6_2.
compute q35_6_3_velha = q35_6_3.
compute q35_6_4_velha = q35_6_4.
compute q35_6_5_velha = q35_6_5.
compute q35_6_6_velha = q35_6_6.
compute q35_6_7_velha = q35_6_7.
compute q35_6_8_velha = q35_6_8.
compute q35_6_0_velha = q35_6_0.
compute q35_6_9_velha = q35_6_9.
compute q35_7_1_velha = q35_7_1.
compute q35_7_2_velha = q35_7_2.
compute q35_7_3_velha = q35_7_3.
compute q35_7_4_velha = q35_7_4.
compute q35_7_5_velha = q35_7_5.
compute q35_7_6_velha = q35_7_6.
compute q35_7_7_velha = q35_7_7.
compute q35_7_8_velha = q35_7_8.
compute q35_7_0_velha = q35_7_0.
compute q35_7_9_velha = q35_7_9.
compute q35_8_1_velha = q35_8_1.
compute q35_8_2_velha = q35_8_2.
compute q35_8_3_velha = q35_8_3.
compute q35_8_4_velha = q35_8_4.
compute q35_8_5_velha = q35_8_5.
compute q35_8_6_velha = q35_8_6.
compute q35_8_7_velha = q35_8_7.
compute q35_8_8_velha = q35_8_8.
compute q35_8_0_velha = q35_8_0.
compute q35_8_9_velha = q35_8_9.
execute. 



DO IF (q35_1_9=1 | q35_1_0=1).
RECODE q35_1_1 (ELSE=SYSMIS).
RECODE q35_1_2 (ELSE=SYSMIS).
RECODE q35_1_3 (ELSE=SYSMIS).
RECODE q35_1_4 (ELSE=SYSMIS).
RECODE q35_1_5 (ELSE=SYSMIS).
RECODE q35_1_6 (ELSE=SYSMIS).
RECODE q35_1_7 (ELSE=SYSMIS).
RECODE q35_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q35_2_9=1 | q35_2_0=1).
RECODE q35_2_1 (ELSE=SYSMIS).
RECODE q35_2_2 (ELSE=SYSMIS).
RECODE q35_2_3 (ELSE=SYSMIS).
RECODE q35_2_4 (ELSE=SYSMIS).
RECODE q35_2_5 (ELSE=SYSMIS).
RECODE q35_2_6 (ELSE=SYSMIS).
RECODE q35_2_7 (ELSE=SYSMIS).
RECODE q35_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q35_3_9=1 | q35_3_0=1).
RECODE q35_3_1 (ELSE=SYSMIS).
RECODE q35_3_2 (ELSE=SYSMIS).
RECODE q35_3_3 (ELSE=SYSMIS).
RECODE q35_3_4 (ELSE=SYSMIS).
RECODE q35_3_5 (ELSE=SYSMIS).
RECODE q35_3_6 (ELSE=SYSMIS).
RECODE q35_3_7 (ELSE=SYSMIS).
RECODE q35_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q35_4_9=1 | q35_4_0=1).
RECODE q35_4_1 (ELSE=SYSMIS).
RECODE q35_4_2 (ELSE=SYSMIS).
RECODE q35_4_3 (ELSE=SYSMIS).
RECODE q35_4_4 (ELSE=SYSMIS).
RECODE q35_4_5 (ELSE=SYSMIS).
RECODE q35_4_6 (ELSE=SYSMIS).
RECODE q35_4_7 (ELSE=SYSMIS).
RECODE q35_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q35_5_9=1 | q35_5_0=1).
RECODE q35_5_1 (ELSE=SYSMIS).
RECODE q35_5_2 (ELSE=SYSMIS).
RECODE q35_5_3 (ELSE=SYSMIS).
RECODE q35_5_4 (ELSE=SYSMIS).
RECODE q35_5_5 (ELSE=SYSMIS).
RECODE q35_5_6 (ELSE=SYSMIS).
RECODE q35_5_7 (ELSE=SYSMIS).
RECODE q35_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q35_6_9=1 | q35_6_0=1).
RECODE q35_6_1 (ELSE=SYSMIS).
RECODE q35_6_2 (ELSE=SYSMIS).
RECODE q35_6_3 (ELSE=SYSMIS).
RECODE q35_6_4 (ELSE=SYSMIS).
RECODE q35_6_5 (ELSE=SYSMIS).
RECODE q35_6_6 (ELSE=SYSMIS).
RECODE q35_6_7 (ELSE=SYSMIS).
RECODE q35_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.





DO IF (q35_7_9=1 | q35_7_0=1).
RECODE q35_7_1 (ELSE=SYSMIS).
RECODE q35_7_2 (ELSE=SYSMIS).
RECODE q35_7_3 (ELSE=SYSMIS).
RECODE q35_7_4 (ELSE=SYSMIS).
RECODE q35_7_5 (ELSE=SYSMIS).
RECODE q35_7_6 (ELSE=SYSMIS).
RECODE q35_7_7 (ELSE=SYSMIS).
RECODE q35_7_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q35_8_9=1 | q35_8_0=1).
RECODE q35_8_1 (ELSE=SYSMIS).
RECODE q35_8_2 (ELSE=SYSMIS).
RECODE q35_8_3 (ELSE=SYSMIS).
RECODE q35_8_4 (ELSE=SYSMIS).
RECODE q35_8_5 (ELSE=SYSMIS).
RECODE q35_8_6 (ELSE=SYSMIS).
RECODE q35_8_7 (ELSE=SYSMIS).
RECODE q35_8_8 (ELSE=SYSMIS).
END IF.
EXECUTE.








VARIABLE LABELS
q6_velha'6. Esta entidade faz parte de alguma rede/federa��o nacional, estadual ou regional de entidades de defesa e apoio �s pessoas com defici�ncia e suas fam�lias?'
q7_velha'7. Caso sim, informe a principal rede/federa��o de que faz parte:'
q8_1_velha'1: Sim, municipal ou do Distrito Federal8. A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o dessa unidade?'
q8_2_velha'2: Sim, estadual8. A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o dessa unidade?'
q8_3_velha'3: Sim, federal (subven��es/emendas parlamentares)8. A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o dessa unidade?'
q8_0_velha'0: N�o8. A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o dessa unidade?'
q9_0_velha'0: N�o9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_1_velha'1: Cess�o de recursos humanos9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_2_velha'2: Cess�o de im�vel9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_3_velha'3: Pagamento de aluguel9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_4_velha'4: Pagamento de contas de �gua9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_5_velha'5: Pagamento de contas de luz ou telefone9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_6_velha'6: Fornecimento de g�neros aliment�cios9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_7_velha'7: Fornecimento de materiais de higiene e limpeza9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_8_velha'8: Fornecimento de materiais pedag�gicos, culturais, esportivos e outros9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_9_velha'9: Isen��o de taxas ou tributos municipais9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_10_velha'10: Treinamento e capacita��o de trabalhadores da entidade9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q9_99_velha'99: Outros9. A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?'
q10_0_velha'0: Em nenhum dos citados acima10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:'
q10_1_velha'1: Conselho de Assist�ncia Social10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:'
q10_2_velha'2: Conselho de Direitos da Crian�a e Adolescente10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:'
q10_3_velha'3: Conselho de Direitos da Pessoa Idosa10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:'
q10_4_velha'4: Conselho de Direitos da Pessoa com Defici�ncia10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:'
q10_99_velha'99: Outros.10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:'
q12_0_velha'0: N�o realiza nenhuma das atividades acima12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_1_velha'1: Coleta/recebe periodicamente informa��es sobre dados de atendimento do Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_2_velha'2: Realiza reuni�es peri�dicas para avalia��o do Servi�o com o Centro Dia12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_3_velha'3: Participa do processo de planejamento das atividades do Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_4_velha'4: Acompanha cotidianamente as atividades do Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_5_velha'5: Participa da constru��o de estrat�gias metodol�gicas do Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_6_velha'6: Elabora relat�rios t�cnicos espec�ficos sobre casos atendidos/acompanhados pelo Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_7_velha'7: Realiza estudos de caso em parceria com o Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_8_velha'8: Define procedimentos comuns e/ou complementares ao Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_9_velha'9: Possui fluxos de encaminhamentos e trocas de informa��es com o Servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_10_velha'10: Articula com a rede de servi�os socioassistenciais12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_11_velha'11: Articula com a rede dos servi�os das pol�ticas p�blicas setoriais12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_12_velha'12: Articula com os demais �rg�os do Sistema de Garantia de Direitos12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_13_velha'13: Participa da defini��o dos crit�rios de acesso das(os) usu�rias(os) ao servi�o12. O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q13_1_1_velha'1:  recebe recursos financeiros, visando � sua manuten��o'
q13_1_2_velha'2: compartilha espa�os f�sicos, mas as ofertas s�o separadas'
q13_1_3_velha'3: realiza a oferta de forma integrada'
q13_1_0_velha'0: Nenhuma das anteriores'
q13_2_1_velha'1:  recebe recursos financeiros, visando � sua manuten��o'
q13_2_2_velha'2: compartilha espa�os f�sicos, mas as ofertas s�o separadas'
q13_2_3_velha'3: realiza a oferta de forma integrada'
q13_2_0_velha'0: Nenhuma das anteriores'
q13_99_1_velha'1:  recebe recursos financeiros, visando � sua manuten��o'
q13_99_2_velha'2: compartilha espa�os f�sicos, mas as ofertas s�o separadas'
q13_99_3_velha'3: realiza a oferta de forma integrada'
q13_99_0_velha'3: realiza a oferta de forma integrada'
q16_0_velha'0: N�o h� outras adapta��es.'
q16_1_velha'1: Sim, suporte de profissional com conhecimento em LIBRAS16. Al�m dos itens acima, h� outras adapta��es para assegurar a acessibilidade desta unidade?'
q16_2_velha'2: Sim, suporte de material em Braille'
q16_3_velha'3: Sim, suporte para leitores de telas de computador para pessoas com defici�ncia visual'
q16_4_velha'4: Sim, h� outras adapta��es ou estrat�gias para assegurar a acessibilidade �s pessoas com defici�ncia auditiva/surdas e pessoas com defici�ncia visual'
q16_5_velha'5: Sim, outras adapta��es e tecnologias assistivas para defici�ncia f�sica'
q16_6_velha'6: Sim, outras adapta��es e tecnologias assistivas para defici�ncia intelectual e autismo.'
q16_7_velha'7: Sim, pisos especiais com relevos para sinaliza��o voltados para pessoa com defici�ncia visual'
q21_1_velha'1: Atividades Esportivas'
q21_2_velha'2: Atividades Art�sticas e Culturais (musicaliza��o, dan�a, teatro, entre outras)'
q21_3_velha'3: Musicalidade (cantar, tocar instrumentos, etc)'
q21_4_velha'4: Artesanato (bijuterias, pintura em tecido, bordado, croch�, etc.)'
q21_5_velha'5: Atividades de inclus�o digital'
q21_6_velha'6: Atividades de linguagem (produ��o de texto, conta��o de hist�rias, roda de conversa, etc.)'
q21_7_velha'7: Atividades que envolvam alimentos (oficinas de culin�ria, hortas, etc.)'
q21_8_velha'8: Jogos e Brincadeiras (jogos de tabuleiro, etc.)'
q21_9_velha'9: Atividades de orienta��o para o mundo do trabalho'
q21_10_velha'10: Passeios e/ou atividades externas'
q21_99_velha'99: Outras atividades.'
q21_0_velha'0: Nenhuma das atividades acima'
q26_1_velha'1: Lanches/Caf� da manh�26. Esta Unidade oferece alimenta��o �s (aos) usu�rias (os)?'
q26_2_velha'2: Almo�o26. Esta Unidade oferece alimenta��o �s (aos) usu�rias (os)?'
q26_3_velha'3: Lanche/Caf� da Tarde26. Esta Unidade oferece alimenta��o �s (aos) usu�rias (os)?'
q26_4_velha'4: Jantar26. Esta Unidade oferece alimenta��o �s (aos) usu�rias (os)?'
q26_5_velha'5: Lanche/Caf� da Noite26. Esta Unidade oferece alimenta��o �s (aos) usu�rias (os)?'
q26_0_velha'0: N�o oferta alimenta��o26. Esta Unidade oferece alimenta��o �s (aos) usu�rias (os)?'
q30_velha'30. Se sim, quantas pessoas est�o neste momento em lista de espera?'
q31_1_velha'31.1. Crian�as de 0 a 6 anos, com defici�ncia'
q31_2_velha'31.2. Crian�as e adolescentes de 7 a 14 anos, com defici�ncia'
q31_3_velha'31.3. Crian�as e adolescentes de 15 a 17 anos, com defici�ncia'
q31_4_velha'31.4. Jovens e adultas (os) (18 a 59 anos) com defici�ncia'
q31_5_velha'31.5. Idosas (os) de 60 a 79 anos com defici�ncia'
q31_6_velha'31.6. Idosas(os) com 80 anos ou mais, com defici�ncia'
q31_7_velha'31.7. Idosas (os) com 60 a 79 anos, dependentes pela idade, sem defici�ncia'
q31_8_velha'31.8. Idosas(os) com 80 anos ou mais, dependentes pela idade, sem defici�ncia'
q31_9_velha'31.9. Total de pessoas atendidas no Servi�o no m�s de agosto de 2023'
q32_1_velha'32.1. Defici�ncia f�sica'
q32_2_velha'32.2. Defici�ncia visual'
q32_3_velha'32.3. Defici�ncia auditiva'
q32_4_velha'32.4. Defici�ncia intelectual'
q32_5_velha'32.5. Defici�ncia mental'
q32_6_velha'32.6. Autismo'
q32_7_velha'32.7. Microcefalia decorrente de Zika'
q33_1_velha'33.1. Quantidade de pessoas idosas benefici�rias do BPC'
q33_2_velha'33.1. Quantidade de pessoas idosas benefici�rias do BPC'
q33_3_velha'33.3. Quantidade de pessoas que recebem pens�o/aposentadoria'
q33_4_velha'33.4. Quantidade de pessoas que recebem a Pens�o Especial por Microcefalia'
q34_1_velha'34.1. Quantidade de usu�rios que ficam na unidade em tempo integral'
q34_2_velha'34.2. Quantidade de usu�rios que ficam na unidade em meio per�odo'
q34_3_velha'34.3. Quantidade de usu�rios que ficam na unidade em menos do que meio per�odo'
q35_1_1_velha 'q35_1_1_v14438_1_42.1. Unidades de acolhimento_1: Possui localiza��o (endere�o, telefone, etc)'
q35_1_2_velha 'q35_1_2_v14438_2_42.1. Unidades de acolhimento_2: Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q35_1_3_velha 'q35_1_3_v14438_3_42.1. Unidades de acolhimento_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_1_4_velha 'q35_1_4_v14438_4_42.1. Unidades de acolhimento_4: Acompanha os encaminhamentos'
q35_1_5_velha 'q35_1_5_v14438_5_42.1. Unidades de acolhimento_5: Realiza reuni�es peri�dicas'
q35_1_6_velha 'q35_1_6_v14438_6_42.1. Unidades de acolhimento_6: Troca Informa��es'
q35_1_7_velha 'q35_1_7_v14438_7_42.1. Unidades de acolhimento_7: Realiza estudos de caso em conjunto'
q35_1_8_velha 'q35_1_8_v14438_8_42.1. Unidades de acolhimento_8: Desenvolve atividades em parceria'
q35_1_0_velha 'q35_1_0_v14438_0_42.1. Unidades de acolhimento_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_1_9_velha 'q35_1_9_v14438_9_42.1. Unidades de acolhimento_9: N�o tem nenhuma articula��o'
q35_2_1_velha 'q35_2_1_v14439_1_42.2. CRAS_1: Possui localiza��o (endere�o, telefone, etc)'
q35_2_2_velha 'q35_2_2_v14439_2_42.2. CRAS_2: Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q35_2_3_velha 'q35_2_3_v14439_3_42.2. CRAS_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_2_4_velha 'q35_2_4_v14439_4_42.2. CRAS_4: Acompanha os encaminhamentos'
q35_2_5_velha 'q35_2_5_v14439_5_42.2. CRAS_5: Realiza reuni�es peri�dicas'
q35_2_6_velha 'q35_2_6_v14439_6_42.2. CRAS_6: Troca Informa��es'
q35_2_7_velha 'q35_2_7_v14439_7_42.2. CRAS_7: Realiza estudos de caso em conjunto'
q35_2_8_velha 'q35_2_8_v14439_8_42.2. CRAS_8: Desenvolve atividades em parceria'
q35_2_0_velha 'q35_2_0_v14439_0_42.2. CRAS_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_2_9_velha 'q35_2_9_v14439_9_42.2. CRAS_9: N�o tem nenhuma articula��o'
q35_3_1_velha 'q35_3_1_v14440_1_42.3. CREAS_1: Possui localiza��o (endere�o, telefone, etc)'
q35_3_2_velha 'q35_3_1_v14440_1_42.3. CREAS_1: Possui localiza��o (endere�o, telefone, etc)'
q35_3_3_velha  'q35_3_3_v14440_3_42.3. CREAS_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_3_4_velha 'q35_3_4_v14440_4_42.3. CREAS_4: Acompanha os encaminhamentos'
q35_3_5_velha 'q35_3_5_v14440_5_42.3. CREAS_5: Realiza reuni�es peri�dicas'
q35_3_6_velha 'q35_3_6_v14440_6_42.3. CREAS_6: Troca Informa��es'
q35_3_7_velha 'q35_3_7_v14440_7_42.3. CREAS_7: Realiza estudos de caso em conjunto'
q35_3_8_velha 'q35_3_7_v14440_7_42.3. CREAS_7: Realiza estudos de caso em conjunto'
q35_3_0_velha 'q35_3_0_v14440_0_42.3. CREAS_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_3_9_velha 'q35_3_9_v14440_9_42.3. CREAS_9: N�o tem nenhuma articula��o'
q35_4_1_velha 'q35_4_1_v14441_1_42.4. Servi�o de sa�de_1: Possui localiza��o (endere�o, telefone, etc)'
q35_4_2_velha 'q35_4_2_v14441_2_42.4. Servi�o de sa�de_2: Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q35_4_3_velha 'q35_4_3_v14441_3_42.4. Servi�o de sa�de_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_4_4_velha 'q35_4_4_v14441_4_42.4. Servi�o de sa�de_4: Acompanha os encaminhamentos'
q35_4_5_velha 'q35_4_5_v14441_5_42.4. Servi�o de sa�de_5: Realiza reuni�es peri�dicas'
q35_4_6_velha 'q35_4_6_v14441_6_42.4. Servi�o de sa�de_6: Troca Informa��es'
q35_4_7_velha 'q35_4_7_v14441_7_42.4. Servi�o de sa�de_7: Realiza estudos de caso em conjunto'
q35_4_8_velha 'q35_4_8_v14441_8_42.4. Servi�o de sa�de_8: Desenvolve atividades em parceria'
q35_4_0_velha 'q35_4_0_v14441_0_42.4. Servi�o de sa�de_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_4_9_velha 'q35_4_9_v14441_9_42.4. Servi�o de sa�de_9: N�o tem nenhuma articula��o'
q35_5_1_velha 'q35_5_1_v14442_1_42.5. Servi�os de educa��o_1: Possui localiza��o (endere�o, telefone, etc)'
q35_5_2_velha 'q35_5_2_v14442_2_42.5. Servi�os de educa��o_2: Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q35_5_3_velha 'q35_5_3_v14442_3_42.5. Servi�os de educa��o_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_5_4_velha 'q35_5_4_v14442_4_42.5. Servi�os de educa��o_4: Acompanha os encaminhamentos'
q35_5_5_velha 'q35_5_5_v14442_5_42.5. Servi�os de educa��o_5: Realiza reuni�es peri�dicas'
q35_5_6_velha 'q35_5_6_v14442_6_42.5. Servi�os de educa��o_6: Troca Informa��es'
q35_5_7_velha 'q35_5_7_v14442_7_42.5. Servi�os de educa��o_7: Realiza estudos de caso em conjunto'
q35_5_8_velha 'q35_5_8_v14442_8_42.5. Servi�os de educa��o_8: Desenvolve atividades em parceria'
q35_5_0_velha 'q35_5_0_v14442_0_42.5. Servi�os de educa��o_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_5_9_velha 'q35_5_9_v14442_9_42.5. Servi�os de educa��o_9: N�o tem nenhuma articula��o'
q35_6_1_velha 'q35_6_1_v14443_1_42.6. Sistema de justi�a/Judici�rio_1: Possui localiza��o (endere�o, telefone, etc)'
q35_6_2_velha 'q35_6_2_v14443_2_42.6. Sistema de justi�a/Judici�rio_2: Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q35_6_3_velha 'q35_6_3_v14443_3_42.6. Sistema de justi�a/Judici�rio_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_6_4_velha ' q35_6_4_v14443_4_42.6. Sistema de justi�a/Judici�rio_4: Acompanha os encaminhamentos'
q35_6_5_velha 'q35_6_5_v14443_5_42.6. Sistema de justi�a/Judici�rio_5: Realiza reuni�es peri�dicas'
q35_6_6_velha 'q35_6_6_v14443_6_42.6. Sistema de justi�a/Judici�rio_6: Troca Informa��es'
q35_6_7_velha 'q35_6_7_v14443_7_42.6. Sistema de justi�a/Judici�rio_7: Realiza estudos de caso em conjunto'
q35_6_8_velha 'q35_6_8_v14443_8_42.6. Sistema de justi�a/Judici�rio_8: Desenvolve atividades em parceria'
q35_6_0_velha 'q35_6_0_v14443_0_42.6. Sistema de justi�a/Judici�rio_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_6_9_velha 'q35_6_0_v14443_0_42.6. Sistema de justi�a/Judici�rio_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_7_1_velha 'q35_7_1_v15592_1_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_1: Possui localiza��o (endere�o, telefone, etc)'
q35_7_2_velha 'q35_7_2_v15592_2_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_2: Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q35_7_3_velha 'q35_7_3_v15592_3_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_7_4_velha 'q35_7_4_v15592_4_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_4: Acompanha os encaminhamentos'
q35_7_5_velha 'q35_7_5_v15592_5_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_5: Realiza reuni�es peri�dicas'
q35_7_6_velha 'q35_7_6_v15592_6_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_6: Troca Informa��es'
q35_7_7_velha 'q35_7_7_v15592_7_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_7: Realiza estudos de caso em conjunto'
q35_7_8_velha 'q35_7_8_v15592_8_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_8: Desenvolve atividades em parceria'
q35_7_0_velha 'q35_7_0_v15592_0_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_7_9_velha 'q35_7_9_v15592_9_42.7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas_9: N�o tem nenhuma articula��o'
q35_8_1_velha 'q35_8_1_v15593_1_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_1: Possui localiza��o (endere�o, telefone, etc)'
q35_8_2_velha 'q35_8_2_v15593_2_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_2: Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q35_8_3_velha 'q35_8_3_v15593_3_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_3: Encaminha usu�rias(os) para este Centro-Dia'
q35_8_4_velha 'q35_8_4_v15593_4_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_4: Acompanha os encaminhamentos'
q35_8_5_velha 'q35_8_5_v15593_5_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_5: Realiza reuni�es peri�dicas'
q35_8_6_velha 'q35_8_6_v15593_6_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_6: Troca Informa��es'
q35_8_7_velha 'q35_8_7_v15593_7_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_7: Realiza estudos de caso em conjunto'
q35_8_8_velha 'q35_8_8_v15593_8_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_8: Desenvolve atividades em parceria'
q35_8_0_velha 'q35_8_0_v15593_0_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_0: Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q35_8_9_velha 'q35_8_9_v15593_9_42.8. Unidades e Projetos de Qualifica��o para o mundo do trabalho_9: N�o tem nenhuma articula��o'
.