
*****recodificar

*q2*********************************

compute q2_velha = q2. 

DO IF (q1_2 = 1).
RECODE q2 (1=1) (ELSE=0).
END IF.
EXECUTE.



*q3*********************************


compute q5_1_velha = q5_1. 
compute q5_2_velha = q5_2. 
compute q5_3_velha = q5_3. 
compute q5_0_velha = q5_0. 
compute q5_98_velha = q5_98. 
compute q6_velha = q6. 
execute. 


DO IF (q3=1).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_0 (ELSE=SYSMIS).
RECODE q5_98 (ELSE=SYSMIS).
RECODE q6 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q5*****************

DO IF (q5_98=1 | q5_0=1 ).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q7*****************

compute q7_1_velha = q7_1. 
compute q7_2_velha = q7_2. 
compute q7_3_velha = q7_3. 
compute q7_99_velha = q7_99. 
compute q7_0_velha = q7_0. 
execute. 

DO IF (q7_0=1 ).
RECODE q7_1 (ELSE=SYSMIS).
RECODE q7_2 (ELSE=SYSMIS).
RECODE q7_3 (ELSE=SYSMIS).
RECODE q7_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q8*****************

compute q9_velha = q9. 
execute. 


DO IF (q8=2  | q8= 99 ).
RECODE q9 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q25*****************


compute q25_1_velha = q25_1.
compute q25_2_velha = q25_2.
compute q25_3_velha = q25_3.
compute q25_4_velha = q25_4.
compute q25_5_velha = q25_5.
compute q25_6_velha = q25_6.
compute q25_7_velha = q25_7.
compute q25_8_velha = q25_8.
compute q25_9_velha = q25_9.
compute q25_10_velha = q25_10.
compute q25_16_velha = q25_16.
compute q25_11_velha = q25_11.
compute q25_12_velha = q25_12.
compute q25_13_velha = q25_13.
compute q25_14_velha = q25_14.
compute q25_15_velha = q25_15.
compute q25_0_velha = q25_0.
execute. 


DO IF (q25_0= 1 ).
RECODE q25_1(ELSE=SYSMIS).
RECODE q25_2(ELSE=SYSMIS).
RECODE q25_3(ELSE=SYSMIS).
RECODE q25_4(ELSE=SYSMIS).
RECODE q25_5(ELSE=SYSMIS).
RECODE q25_6(ELSE=SYSMIS).
RECODE q25_7(ELSE=SYSMIS).
RECODE q25_8(ELSE=SYSMIS).
RECODE q25_9(ELSE=SYSMIS).
RECODE q25_10(ELSE=SYSMIS).
RECODE q25_16(ELSE=SYSMIS).
RECODE q25_11(ELSE=SYSMIS).
RECODE q25_12(ELSE=SYSMIS).
RECODE q25_13(ELSE=SYSMIS).
RECODE q25_14(ELSE=SYSMIS).
RECODE q25_15(ELSE=SYSMIS).
END IF.
EXECUTE.

**q26*****************

compute q26_1_velha = q26_1.
compute q26_2_velha = q26_2.
compute q26_3_velha = q26_3.
compute q26_4_velha = q26_4.
compute q26_5_velha = q26_5.
compute q26_6_velha = q26_6.
compute q26_7_velha = q26_7.
compute q26_0_velha = q26_0.
compute q26_98_velha = q26_98.
execute. 


DO IF (q26_98= 1 ).
RECODE q26_1(ELSE=SYSMIS).
RECODE q26_2(ELSE=SYSMIS).
RECODE q26_3(ELSE=SYSMIS).
RECODE q26_4(ELSE=SYSMIS).
RECODE q26_5(ELSE=SYSMIS).
RECODE q26_6(ELSE=SYSMIS).
RECODE q26_7(ELSE=SYSMIS).
RECODE q26_0(ELSE=SYSMIS).
END IF.
EXECUTE.



**q26*****************

compute q27_1_velha = q27_1.
compute q27_2_velha = q27_2.
compute q27_3_velha = q27_3.
compute q27_99_velha = q27_99.
compute q27_0_velha = q27_0.
execute. 


DO IF (q27_0= 1 ).
RECODE q27_1(ELSE=SYSMIS).
RECODE q27_2(ELSE=SYSMIS).
RECODE q27_3(ELSE=SYSMIS).
RECODE q27_99(ELSE=SYSMIS).
RECODE q27_0(ELSE=SYSMIS).
END IF.
EXECUTE.




**q31*****************

compute q31_1_velha = q31_1.
compute q31_2_velha = q31_2.
compute q31_3_velha = q31_3.
compute q31_4_velha = q31_4.
compute q31_99_velha = q31_99.
compute q31_98_velha = q31_98.
compute q31_0_velha = q31_0.
execute. 


DO IF (q31_98= 1  | q31_0=1).
RECODE q31_1(ELSE=SYSMIS).
RECODE q31_2(ELSE=SYSMIS).
RECODE q31_3(ELSE=SYSMIS).
RECODE q31_4(ELSE=SYSMIS).
RECODE q31_99(ELSE=SYSMIS).
END IF.
EXECUTE.


**q33*****************


compute q33_1_1_velha = q33_1_1.
compute q33_1_2_velha = q33_1_2.
compute q33_1_3_velha = q33_1_3.
compute q33_1_4_velha = q33_1_4.
compute q33_1_5_velha = q33_1_5.
compute q33_1_6_velha = q33_1_6.
compute q33_1_7_velha = q33_1_7.
compute q33_1_8_velha = q33_1_8.
compute q33_1_0_velha = q33_1_0.
compute q33_1_97_velha = q33_1_97.
compute q33_2_1_velha = q33_2_1.
compute q33_2_2_velha = q33_2_2.
compute q33_2_3_velha = q33_2_3.
compute q33_2_4_velha = q33_2_4.
compute q33_2_5_velha = q33_2_5.
compute q33_2_6_velha = q33_2_6.
compute q33_2_7_velha = q33_2_7.
compute q33_2_8_velha = q33_2_8.
compute q33_2_0_velha = q33_2_0.
compute q33_2_97_velha = q33_2_97.
compute q33_3_1_velha = q33_3_1.
compute q33_3_2_velha = q33_3_2.
compute q33_3_3_velha = q33_3_3.
compute q33_3_4_velha = q33_3_4.
compute q33_3_5_velha = q33_3_5.
compute q33_3_6_velha = q33_3_6.
compute q33_3_7_velha = q33_3_7.
compute q33_3_8_velha = q33_3_8.
compute q33_3_0_velha = q33_3_0.
compute q33_3_97_velha = q33_3_97.
compute q33_4_1_velha = q33_4_1.
compute q33_4_2_velha = q33_4_2.
compute q33_4_3_velha = q33_4_3.
compute q33_4_4_velha = q33_4_4.
compute q33_4_5_velha = q33_4_5.
compute q33_4_6_velha = q33_4_6.
compute q33_4_7_velha = q33_4_7.
compute q33_4_8_velha = q33_4_8.
compute q33_4_0_velha = q33_4_0.
compute q33_4_97_velha = q33_4_97.
compute q33_5_1_velha = q33_5_1.
compute q33_5_2_velha = q33_5_2.
compute q33_5_3_velha = q33_5_3.
compute q33_5_4_velha = q33_5_4.
compute q33_5_5_velha = q33_5_5.
compute q33_5_6_velha = q33_5_6.
compute q33_5_7_velha = q33_5_7.
compute q33_5_8_velha = q33_5_8.
compute q33_5_0_velha = q33_5_0.
compute q33_5_97_velha = q33_5_97.
compute q33_6_1_velha = q33_6_1.
compute q33_6_2_velha = q33_6_2.
compute q33_6_3_velha = q33_6_3.
compute q33_6_4_velha = q33_6_4.
compute q33_6_5_velha = q33_6_5.
compute q33_6_6_velha = q33_6_6.
compute q33_6_7_velha = q33_6_7.
compute q33_6_8_velha = q33_6_8.
compute q33_6_0_velha = q33_6_0.
compute q33_6_97_velha = q33_6_97.
compute q33_7_1_velha = q33_7_1.
compute q33_7_2_velha = q33_7_2.
compute q33_7_3_velha = q33_7_3.
compute q33_7_4_velha = q33_7_4.
compute q33_7_5_velha = q33_7_5.
compute q33_7_6_velha = q33_7_6.
compute q33_7_7_velha = q33_7_7.
compute q33_7_8_velha = q33_7_8.
compute q33_7_0_velha = q33_7_0.
compute q33_7_97_velha = q33_7_97.
compute q33_8_1_velha = q33_8_1.
compute q33_8_2_velha = q33_8_2.
compute q33_8_3_velha = q33_8_3.
compute q33_8_4_velha = q33_8_4.
compute q33_8_5_velha = q33_8_5.
compute q33_8_6_velha = q33_8_6.
compute q33_8_7_velha = q33_8_7.
compute q33_8_8_velha = q33_8_8.
compute q33_8_0_velha = q33_8_0.
compute q33_8_97_velha = q33_8_97.
compute q33_9_1_velha = q33_9_1.
compute q33_9_2_velha = q33_9_2.
compute q33_9_3_velha = q33_9_3.
compute q33_9_4_velha = q33_9_4.
compute q33_9_5_velha = q33_9_5.
compute q33_9_6_velha = q33_9_6.
compute q33_9_7_velha = q33_9_7.
compute q33_9_8_velha = q33_9_8.
compute q33_9_0_velha = q33_9_0.
compute q33_9_97_velha = q33_9_97.
compute q33_10_1_velha = q33_10_1.
compute q33_10_2_velha = q33_10_2.
compute q33_10_3_velha = q33_10_3.
compute q33_10_4_velha = q33_10_4.
compute q33_10_5_velha = q33_10_5.
compute q33_10_6_velha = q33_10_6.
compute q33_10_7_velha = q33_10_7.
compute q33_10_8_velha = q33_10_8.
compute q33_10_0_velha = q33_10_0.
compute q33_10_97_velha = q33_10_97.
compute q33_11_1_velha = q33_11_1.
compute q33_11_2_velha = q33_11_2.
compute q33_11_3_velha = q33_11_3.
compute q33_11_4_velha = q33_11_4.
compute q33_11_5_velha = q33_11_5.
compute q33_11_6_velha = q33_11_6.
compute q33_11_7_velha = q33_11_7.
compute q33_11_8_velha = q33_11_8.
compute q33_11_0_velha = q33_11_0.
compute q33_11_97_velha = q33_11_97.
execute. 





DO IF (q33_1_0=1 | q33_1_97=1).
RECODE q33_1_1(ELSE=SYSMIS).
RECODE q33_1_2(ELSE=SYSMIS).
RECODE q33_1_3(ELSE=SYSMIS).
RECODE q33_1_4(ELSE=SYSMIS).
RECODE q33_1_5(ELSE=SYSMIS).
RECODE q33_1_6(ELSE=SYSMIS).
RECODE q33_1_7(ELSE=SYSMIS).
RECODE q33_1_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_2_0=1 | q33_2_97=1).
RECODE q33_2_1(ELSE=SYSMIS).
RECODE q33_2_2(ELSE=SYSMIS).
RECODE q33_2_3(ELSE=SYSMIS).
RECODE q33_2_4(ELSE=SYSMIS).
RECODE q33_2_5(ELSE=SYSMIS).
RECODE q33_2_6(ELSE=SYSMIS).
RECODE q33_2_7(ELSE=SYSMIS).
RECODE q33_2_8(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q33_3_0=1 | q33_3_97=1).
RECODE q33_3_1(ELSE=SYSMIS).
RECODE q33_3_2(ELSE=SYSMIS).
RECODE q33_3_3(ELSE=SYSMIS).
RECODE q33_3_4(ELSE=SYSMIS).
RECODE q33_3_5(ELSE=SYSMIS).
RECODE q33_3_6(ELSE=SYSMIS).
RECODE q33_3_7(ELSE=SYSMIS).
RECODE q33_3_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_4_0=1 | q33_4_97=1).
RECODE q33_3_1(ELSE=SYSMIS).
RECODE q33_3_2(ELSE=SYSMIS).
RECODE q33_3_3(ELSE=SYSMIS).
RECODE q33_3_4(ELSE=SYSMIS).
RECODE q33_3_5(ELSE=SYSMIS).
RECODE q33_3_6(ELSE=SYSMIS).
RECODE q33_3_7(ELSE=SYSMIS).
RECODE q33_3_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_3_0=1 | q33_3_97=1).
RECODE q33_4_1(ELSE=SYSMIS).
RECODE q33_4_2(ELSE=SYSMIS).
RECODE q33_4_3(ELSE=SYSMIS).
RECODE q33_4_4(ELSE=SYSMIS).
RECODE q33_4_5(ELSE=SYSMIS).
RECODE q33_4_6(ELSE=SYSMIS).
RECODE q33_4_7(ELSE=SYSMIS).
RECODE q33_4_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_5_0=1 | q33_5_97=1).
RECODE q33_5_1(ELSE=SYSMIS).
RECODE q33_5_2(ELSE=SYSMIS).
RECODE q33_5_3(ELSE=SYSMIS).
RECODE q33_5_4(ELSE=SYSMIS).
RECODE q33_5_5(ELSE=SYSMIS).
RECODE q33_5_6(ELSE=SYSMIS).
RECODE q33_5_7(ELSE=SYSMIS).
RECODE q33_5_8(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q33_6_0=1 | q33_6_97=1).
RECODE q33_6_1(ELSE=SYSMIS).
RECODE q33_6_2(ELSE=SYSMIS).
RECODE q33_6_3(ELSE=SYSMIS).
RECODE q33_6_4(ELSE=SYSMIS).
RECODE q33_6_5(ELSE=SYSMIS).
RECODE q33_6_6(ELSE=SYSMIS).
RECODE q33_6_7(ELSE=SYSMIS).
RECODE q33_6_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_7_0=1 | q33_7_97=1).
RECODE q33_7_1(ELSE=SYSMIS).
RECODE q33_7_2(ELSE=SYSMIS).
RECODE q33_7_3(ELSE=SYSMIS).
RECODE q33_7_4(ELSE=SYSMIS).
RECODE q33_7_5(ELSE=SYSMIS).
RECODE q33_7_6(ELSE=SYSMIS).
RECODE q33_7_7(ELSE=SYSMIS).
RECODE q33_7_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_8_0=1 | q33_8_97=1).
RECODE q33_8_1(ELSE=SYSMIS).
RECODE q33_8_2(ELSE=SYSMIS).
RECODE q33_8_3(ELSE=SYSMIS).
RECODE q33_8_4(ELSE=SYSMIS).
RECODE q33_8_5(ELSE=SYSMIS).
RECODE q33_8_6(ELSE=SYSMIS).
RECODE q33_8_7(ELSE=SYSMIS).
RECODE q33_8_8(ELSE=SYSMIS).
END IF.
EXECUTE.




DO IF (q33_9_0=1 | q33_9_97=1).
RECODE q33_9_1(ELSE=SYSMIS).
RECODE q33_9_2(ELSE=SYSMIS).
RECODE q33_9_3(ELSE=SYSMIS).
RECODE q33_9_4(ELSE=SYSMIS).
RECODE q33_9_5(ELSE=SYSMIS).
RECODE q33_9_6(ELSE=SYSMIS).
RECODE q33_9_7(ELSE=SYSMIS).
RECODE q33_9_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_10_0=1 | q33_10_97=1).
RECODE q33_10_1(ELSE=SYSMIS).
RECODE q33_10_2(ELSE=SYSMIS).
RECODE q33_10_3(ELSE=SYSMIS).
RECODE q33_10_4(ELSE=SYSMIS).
RECODE q33_10_5(ELSE=SYSMIS).
RECODE q33_10_6(ELSE=SYSMIS).
RECODE q33_10_7(ELSE=SYSMIS).
RECODE q33_10_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_11_0=1 | q33_11_97=1).
RECODE q33_11_1(ELSE=SYSMIS).
RECODE q33_11_2(ELSE=SYSMIS).
RECODE q33_11_3(ELSE=SYSMIS).
RECODE q33_11_4(ELSE=SYSMIS).
RECODE q33_11_5(ELSE=SYSMIS).
RECODE q33_11_6(ELSE=SYSMIS).
RECODE q33_11_7(ELSE=SYSMIS).
RECODE q33_11_8(ELSE=SYSMIS).
END IF.
EXECUTE.



*****q42********************************************************************************


compute q42_1_velha = q42_1.
compute q42_2_velha = q42_2.
compute q42_3_velha = q42_3.
compute q42_4_velha = q42_4.
compute q42_5_velha = q42_5.
compute q42_6_velha = q42_6.
compute q42_7_velha = q42_7.
compute q42_0_velha = q42_0.
execute. 


DO IF (q42_0=1).
RECODE q42_1(ELSE=SYSMIS).
RECODE q42_2(ELSE=SYSMIS).
RECODE q42_3(ELSE=SYSMIS).
RECODE q42_4(ELSE=SYSMIS).
RECODE q42_5(ELSE=SYSMIS).
RECODE q42_6(ELSE=SYSMIS).
RECODE q42_7(ELSE=SYSMIS).
END IF.
EXECUTE.



*****q45*******************************************************************************


compute q45_1_velha = q45_1.
compute q45_2_velha = q45_2.
compute q45_3_velha = q45_3.
compute q45_4_velha = q45_4.
compute q45_5_velha = q45_5.
compute q45_99_velha = q45_99.
compute q45_0_velha = q45_0.
execute. 


DO IF (q45_0=1).
RECODE q45_1(ELSE=SYSMIS).
RECODE q45_2(ELSE=SYSMIS).
RECODE q45_3(ELSE=SYSMIS).
RECODE q45_4(ELSE=SYSMIS).
RECODE q45_5(ELSE=SYSMIS).
RECODE q45_99(ELSE=SYSMIS).
END IF.
EXECUTE.


*****q46*******************************************************************************


compute q46_1_velha = q46_1.
compute q46_2_velha = q46_2.
compute q46_3_velha = q46_3.
compute q46_4_velha = q46_4.
compute q46_5_velha = q46_5.
compute q46_6_velha = q46_6.
compute q46_7_velha = q46_7.
compute q46_8_velha = q46_8.
compute q46_9_velha = q46_9.
compute q46_10_velha = q46_10.
compute q46_99_velha = q46_99.
compute q46_0_velha = q46_0.
execute. 


DO IF (q46_0=1).
RECODE q46_1(ELSE=SYSMIS).
RECODE q46_2(ELSE=SYSMIS).
RECODE q46_3(ELSE=SYSMIS).
RECODE q46_4(ELSE=SYSMIS).
RECODE q46_5(ELSE=SYSMIS).
RECODE q46_6(ELSE=SYSMIS).
RECODE q46_7(ELSE=SYSMIS).
RECODE q46_8(ELSE=SYSMIS).
RECODE q46_9(ELSE=SYSMIS).
RECODE q46_10(ELSE=SYSMIS).
RECODE q46_99(ELSE=SYSMIS).
END IF.
EXECUTE.


*****q47*******************************************************************************

compute q47_1_velha = q47_1.
compute q47_2_velha = q47_2.
compute q47_3_velha = q47_3.
compute q47_98_velha = q47_98.
execute. 


DO IF (q47_98=1).
RECODE q47_1(ELSE=SYSMIS).
RECODE q47_2(ELSE=SYSMIS).
RECODE q47_3(ELSE=SYSMIS).
END IF.
EXECUTE.

*****q48*******************************************************************************


compute q48_0_velha = q48_0.
compute q48_1_velha = q48_1.
compute q48_2_velha = q48_2.
compute q48_3_velha = q48_3.
compute q48_4_velha = q48_4.
compute q48_5_velha = q48_5.
compute q48_6_velha = q48_6.
execute. 



DO IF (q48_0=1).
RECODE q48_1(ELSE=SYSMIS).
RECODE q48_2(ELSE=SYSMIS).
RECODE q48_3(ELSE=SYSMIS).
RECODE q48_4(ELSE=SYSMIS).
RECODE q48_5(ELSE=SYSMIS).
RECODE q48_6(ELSE=SYSMIS).
END IF.
EXECUTE.





VARIABLE LABELS
q2_velha'q2_v11968_2. Esta Unidade é uma “Casa Lar em Aldeia”?'
q5_1_velha'q5_1_v10946_1_1: Sim, com o Estado (governo estadual)'
q5_2_velha'q5_2_v10946_2_2: Sim, com o município no qual esta unidade se localiza (com a prefeitura na qual a sede da unidade se localiza)'
q5_3_velha'q5_3_v10946_3_3: Sim, com outros municípios'
q5_0_velha'q5_0_v10946_0_0: Não'
q5_98_velha'q5_98_v10946_98_98: Não sabe informar'
q6_velha'q6_v15937_6. Esta entidade participa de qual rede/federação estadual ou regional?'
q7_1_velha'q7_1_v10950_1_1: Conselho de Assistência Social'
q7_2_velha'q7_2_v10950_2_2: Conselho de Direitos da Criança e Adolescente'
q7_3_velha'q7_3_v10950_3_3: Conselho dos Direitos do Idoso'
q7_99_velha'q7_99_v10950_99_99: Outros'
q7_0_velha'q7_0_v10950_0_0: Em nenhum Conselho'
q9_velha'q9_v12943_9. Em caso de unidades estaduais, esta unidade possui municípios vinculados conforme os parâmetros estabelecidos pela Resolução CIT nº 31/2013?'
q25_1_velha'q25_1_v11048_1_1: Visitas domiciliares da equipe técnica da Unidade à família da(o) usuária(o)'
q25_2_velha'q25_2_v11048_2_2: Reuniões com grupos de famílias das(os) usuárias(os)'
q25_3_velha'q25_3_v11048_3_3: Atendimento psicossocial individualizado'
q25_4_velha'q25_4_v11048_4_4: Atendimento psicossocial em grupos'
q25_5_velha'q25_5_v11048_5_5: Atendimento psicossocial das famílias das pessoas acolhidas (orientação familiar)'
q25_6_velha'q25_6_v11048_6_6: Palestras / oficinas'
q25_7_velha'q25_7_v11048_7_7: Elaboração de relatórios técnicos sobre casos em acompanhamento'
q25_8_velha'q25_8_v11048_8_8: Discussão de casos com outras(os) profissionais da rede'
q25_9_velha'q25_9_v11048_9_9: Encaminhamento para retirada de documentos'
q25_10_velha'q25_10_v11048_10_10: Passeios com usuárias(os)'
q25_16_velha'q25_16_v11048_16_16: Promove contato e a participação da família na vida da(o) usuária(o)'
q25_11_velha'q25_11_v11048_11_11: Promove atividades com participação da Comunidade'
q25_12_velha'q25_12_v11048_12_12: Promove a participação das pessoas acolhidas em serviços, projetos ou atividades existentes na comunidade'
q25_13_velha'q25_13_v11048_13_13: Envio de relatório semestral para o Judiciário (exclusivo para acolhimento de criança/adolescente)'
q25_14_velha'q25_14_v11048_14_14: Acompanhamento Escolar'
q25_15_velha'q25_15_v11048_15_15: Organização e discussão das rotinas das Unidades com as(os) acolhidas(os)'
q25_0_velha'q25_0_v11048_0_0: Não realiza nenhuma das atividades acima'
q26_1_velha'q26_1_v16001_1_1: apoio para o jovem egresso para a qualificação profissional e trabalho remunerado'
q26_2_velha'q26_2_v16001_2_2: apoio para continuidade dos estudos'
q26_3_velha'q26_3_v16001_3_3: encaminhamento para república'
q26_4_velha'q26_4_v16001_4_4: identificação de rede parental, amigos que possam apoiar o adolescente nessa nova fase'
q26_5_velha'q26_5_v16001_5_5: atividades que desenvolvam a autonomia quanto ao uso e gestão do dinheiro'
q26_6_velha'q26_6_v16001_6_6: atividades que desenvolvam a autonomia quanto ao autocuidado e cuidado com a residência'
q26_7_velha'q26_7_v16001_7_7: atividades que desenvolvam a autonomia quanto a utilização de serviços públicos e comunitários'
q26_0_velha'q26_0_v16001_0_0: não realiza ações para o desligamento'
q26_98_velha'q26_98_v16001_98_98: não atende adolescentes até a maioridade'
q27_1_velha'q27_1_v11045_1_1: Político-Pedagógico (PPP)'
q27_2_velha'q27_2_v11045_2_2: Prontuários de atendimento individualizados das(os) acolhidas(os)'
q27_3_velha'q27_3_v11045_3_3: Plano Individual de Atendimento (PIA) de cada pessoa acolhida'
q27_99_velha'q27_99_v11045_99_99: Outro.'
q27_0_velha'q27_0_v11045_0_0: Não possui nenhum dos instrumentais acima mencionados'
q31_1_velha'q31_1_v11049_1_1: A própria unidade/serviço de acolhimento'
q31_2_velha'q31_2_v11049_2_2: O CREAS'
q31_3_velha'q31_3_v11049_3_3: O CRAS'
q31_4_velha'q31_4_v11049_4_4: Unidades do Sistema de Justiça (Varas, Ministério Público, Defensoria)'
q31_99_velha'q31_99_v11049_99_99: Outro'
q31_98_velha'q31_98_v11049_98_98: Não sabe informar '
q31_0_velha'q31_0_v11049_0_0: Não é realizado acompanhamento de egressos '
q33_1_1_velha'q33_1_1_v11052_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_1_2_velha'q33_1_2_v11052_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_1_3_velha'q33_1_3_v11052_3_3: Encaminha usuárias(os) para esta unidade'
q33_1_4_velha'q33_1_4_v11052_4_4: Acompanha os encaminhamentos'
q33_1_5_velha'q33_1_5_v11052_5_5: Realiza reuniões periódicas'
q33_1_6_velha'q33_1_6_v11052_6_6: Troca informações'
q33_1_7_velha'q33_1_7_v11052_7_7: Realiza estudos de caso em conjunto'
q33_1_8_velha'q33_1_8_v11052_8_8: Desenvolve atividades em parceria'
q33_1_0_velha'q33_1_0_v11052_0_0: Não tem nenhuma articulação'
q33_1_97_velha'q33_1_97_v11052_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_2_1_velha'q33_2_1_v11057_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_2_2_velha'q33_2_2_v11057_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_2_3_velha'q33_2_3_v11057_3_3: Encaminha usuárias(os) para esta unidade'
q33_2_4_velha'q33_2_4_v11057_4_4: Acompanha os encaminhamentos'
q33_2_5_velha'q33_2_5_v11057_5_5: Realiza reuniões periódicas'
q33_2_6_velha'q33_2_6_v11057_6_6: Troca informações'
q33_2_7_velha'q33_2_7_v11057_7_7: Realiza estudos de caso em conjunto'
q33_2_8_velha'q33_2_8_v11057_8_8: Desenvolve atividades em parceria'
q33_2_0_velha'q33_2_0_v11057_0_0: Não tem nenhuma articulação'
q33_2_97_velha'q33_2_97_v11057_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_3_1_velha'q33_3_1_v11058_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_3_2_velha'q33_3_2_v11058_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_3_3_velha'q33_3_3_v11058_3_3: Encaminha usuárias(os) para esta unidade'
q33_3_4_velha'q33_3_4_v11058_4_4: Acompanha os encaminhamentos'
q33_3_5_velha'q33_3_5_v11058_5_5: Realiza reuniões periódicas'
q33_3_6_velha'q33_3_6_v11058_6_6: Troca informações'
q33_3_7_velha'q33_3_7_v11058_7_7: Realiza estudos de caso em conjunto'
q33_3_8_velha'q33_3_8_v11058_8_8: Desenvolve atividades em parceria'
q33_3_0_velha'q33_3_0_v11058_0_0: Não tem nenhuma articulação'
q33_3_97_velha'q33_3_97_v11058_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_4_1_velha'q33_4_1_v11059_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_4_2_velha'q33_4_2_v11059_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_4_3_velha'q33_4_3_v11059_3_3: Encaminha usuárias(os) para esta unidade'
q33_4_4_velha'q33_4_4_v11059_4_4: Acompanha os encaminhamentos'
q33_4_5_velha'q33_4_5_v11059_5_5: Realiza reuniões periódicas'
q33_4_6_velha'q33_4_6_v11059_6_6: Troca informações'
q33_4_7_velha'q33_4_7_v11059_7_7: Realiza estudos de caso em conjunto'
q33_4_8_velha'q33_4_8_v11059_8_8: Desenvolve atividades em parceria'
q33_4_0_velha'q33_4_0_v11059_0_0: Não tem nenhuma articulação'
q33_4_97_velha'q33_4_97_v11059_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_5_1_velha'q33_5_1_v11060_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_5_2_velha'q33_5_2_v11060_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_5_3_velha'q33_5_3_v11060_3_3: Encaminha usuárias(os) para esta unidade'
q33_5_4_velha'q33_5_4_v11060_4_4: Acompanha os encaminhamentos'
q33_5_5_velha'q33_5_5_v11060_5_5: Realiza reuniões periódicas'
q33_5_6_velha'q33_5_6_v11060_6_6: Troca informações'
q33_5_7_velha'q33_5_7_v11060_7_7: Realiza estudos de caso em conjunto'
q33_5_8_velha'q33_5_8_v11060_8_8: Desenvolve atividades em parceria'
q33_5_0_velha'q33_5_0_v11060_0_0: Não tem nenhuma articulação'
q33_5_97_velha'q33_5_97_v11060_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_6_1_velha'q33_6_1_v11061_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_6_2_velha'q33_6_2_v11061_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_6_3_velha'q33_6_3_v11061_3_3: Encaminha usuárias(os) para esta unidade'
q33_6_4_velha'q33_6_4_v11061_4_4: Acompanha os encaminhamentos'
q33_6_5_velha'q33_6_5_v11061_5_5: Realiza reuniões periódicas'
q33_6_6_velha'q33_6_6_v11061_6_6: Troca informações'
q33_6_7_velha'q33_6_7_v11061_7_7: Realiza estudos de caso em conjunto'
q33_6_8_velha'q33_6_8_v11061_8_8: Desenvolve atividades em parceria'
q33_6_0_velha'q33_6_0_v11061_0_0: Não tem nenhuma articulação'
q33_6_97_velha'q33_6_97_v11061_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_7_1_velha'q33_7_1_v14585_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_7_2_velha'q33_7_2_v14585_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_7_3_velha'q33_7_3_v14585_3_3: Encaminha usuárias(os) para esta unidade'
q33_7_4_velha'q33_7_4_v14585_4_4: Acompanha os encaminhamentos'
q33_7_5_velha'q33_7_5_v14585_5_5: Realiza reuniões periódicas'
q33_7_6_velha'q33_7_6_v14585_6_6: Troca informações'
q33_7_7_velha'q33_7_7_v14585_7_7: Realiza estudos de caso em conjunto'
q33_7_8_velha'q33_7_8_v14585_8_8: Desenvolve atividades em parceria'
q33_7_0_velha'q33_7_0_v14585_0_0: Não tem nenhuma articulação'
q33_7_97_velha'q33_7_97_v14585_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_8_1_velha'q33_8_1_v14586_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_8_2_velha'q33_8_2_v14586_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_8_3_velha'q33_8_3_v14586_3_3: Encaminha usuárias(os) para esta unidade'
q33_8_4_velha'q33_8_4_v14586_4_4: Acompanha os encaminhamentos'
q33_8_5_velha'q33_8_5_v14586_5_5: Realiza reuniões periódicas'
q33_8_6_velha'q33_8_6_v14586_6_6: Troca informações'
q33_8_7_velha'q33_8_7_v14586_7_7: Realiza estudos de caso em conjunto'
q33_8_8_velha'q33_8_8_v14586_8_8: Desenvolve atividades em parceria'
q33_8_0_velha'q33_8_0_v14586_0_0: Não tem nenhuma articulação'
q33_8_97_velha'q33_8_97_v14586_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_9_1_velha'q33_9_1_v16018_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_9_2_velha'q33_9_2_v16018_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_9_3_velha'q33_9_3_v16018_3_3: Encaminha usuárias(os) para esta unidade'
q33_9_4_velha'q33_9_4_v16018_4_4: Acompanha os encaminhamentos'
q33_9_5_velha'q33_9_5_v16018_5_5: Realiza reuniões periódicas'
q33_9_6_velha'q33_9_6_v16018_6_6: Troca informações'
q33_9_7_velha'q33_9_7_v16018_7_7: Realiza estudos de caso em conjunto'
q33_9_8_velha'q33_9_8_v16018_8_8: Desenvolve atividades em parceria'
q33_9_0_velha'q33_9_0_v16018_0_0: Não tem nenhuma articulação'
q33_9_97_velha'q33_9_97_v16018_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_10_1_velha'q33_10_1_v16019_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_10_2_velha'q33_10_2_v16019_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_10_3_velha'q33_10_3_v16019_3_3: Encaminha usuárias(os) para esta unidade'
q33_10_4_velha'q33_10_4_v16019_4_4: Acompanha os encaminhamentos'
q33_10_5_velha'q33_10_5_v16019_5_5: Realiza reuniões periódicas'
q33_10_6_velha'q33_10_6_v16019_6_6: Troca informações'
q33_10_7_velha'q33_10_7_v16019_7_7: Realiza estudos de caso em conjunto'
q33_10_8_velha'q33_10_8_v16019_8_8: Desenvolve atividades em parceria'
q33_10_0_velha'q33_10_0_v16019_0_0: Não tem nenhuma articulação'
q33_10_97_velha'q33_10_97_v16019_97_97: Serviço ou instituição não existente no Município ou no DF'
q33_11_1_velha'q33_11_1_v16020_1_1: Possui dados de localização (endereço, telefone, etc.)'
q33_11_2_velha'q33_11_2_v16020_2_2: Recebe usuárias(os) encaminhados por esta unidade'
q33_11_3_velha'q33_11_3_v16020_3_3: Encaminha usuárias(os) para esta unidade'
q33_11_4_velha'q33_11_4_v16020_4_4: Acompanha os encaminhamentos'
q33_11_5_velha'q33_11_5_v16020_5_5: Realiza reuniões periódicas'
q33_11_6_velha'q33_11_6_v16020_6_6: Troca informações'
q33_11_7_velha'q33_11_7_v16020_7_7: Realiza estudos de caso em conjunto'
q33_11_8_velha'q33_11_8_v16020_8_8: Desenvolve atividades em parceria'
q33_11_0_velha'q33_11_0_v16020_0_0: Não tem nenhuma articulação'
q33_11_97_velha'q33_11_97_v16020_97_97: Serviço ou instituição não existente no Município ou no DF'
q42_1_velha'q42_1_v12967_1_1: Sim, suporte de profissional com conhecimento em LIBRAS'
q42_2_velha'q42_2_v12967_2_2: Sim, suporte de material em braille'
q42_3_velha'q42_3_v12967_3_3: Sim, suporte para leitores de telas de computador para pessoas com deficiência visual'
q42_4_velha'q42_4_v12967_4_4: Sim, há outras adaptações ou estratégias para assegurar acessibilidade às pessoas com deficiência auditiva/surdas e pessoas com deficiência visual nesta unidade'
q42_5_velha'q42_5_v12967_5_5: Sim, outras adaptações e tecnologias assistivas para deficiência física'
q42_6_velha'q42_6_v12967_6_6: Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo'
q42_7_velha'q42_7_v12967_7_7: Sim, pisos especiais com relevos para sinalização voltados pessoa com deficiência visual'
q42_0_velha'q42_0_v12967_0_0: Não há outras adaptações'
q45_1_velha'q45_1_v16036_1_1: Todas(os) as(os) funcionárias(os)/familiares permaneceram trabalhando normalmente'
q45_2_velha'q45_2_v16036_2_2: Afastaram-se as(os) funcionárias(os) que tinham suspeita/confirmação da doença'
q45_3_velha'q45_3_v16036_3_3: Afastaram-se as(os) funcionárias(os) do grupos de risco'
q45_4_velha'q45_4_v16036_4_4: Adotou-se esquema de rodízio entre as(os) funcionárias(os)'
q45_5_velha'q45_5_v16036_5_5: Adotou-se temporariamente o regime de funcionamento emergencial com cuidador(es) residente(s), de modo a reduzir o fluxo diário de entrada e saída de profissionais'
q45_99_velha'q45_99_v16036_99_99: Outro'
q45_0_velha'q45_0_v16036_0_0: Nenhuma das anteriores'
q46_1_velha'q46_1_v16038_1_1: Empreendeu-se esforço para aumentar as medidas de higiene e limpeza'
q46_2_velha'q46_2_v16038_2_2: Preparou-se quarto exclusivo para fazer o isolamento dos usuários'
q46_3_velha'q46_3_v16038_3_3: As(Os) usuárias(os) foram alocados em outros espaços físicos (fora da unidade de acolhimento)'
q46_4_velha'q46_4_v16038_4_4: Aumentou-se o distanciamento físico entre as camas'
q46_5_velha'q46_5_v16038_5_5: Foi feita a quarentena de novas pessoas acolhidas'
q46_6_velha'q46_6_v16038_6_6: Foram alterados os locais e horários de visitas familiares e pessoas com laços afetivos'
q46_7_velha'q46_7_v16038_7_7: Houve agilização da saída de usuárias(os)'
q46_8_velha'q46_8_v16038_8_8: Foi facilitado o uso de tecnologias de comunicação (celular, aplicativos de reunião, etc) para manutenção dos vínculos afetivos dos usuárias(os)'
q46_9_velha'q46_9_v16038_9_9: As(Os) profissionais do serviço receberam capacitação sobre os procedimentos de prevenção necessários'
q46_10_velha'q46_10_v16038_10_10: Restringiu-se a saída dos usuárias(os)'
q46_99_velha'q46_99_v16038_99_99: Outros'
q46_0_velha'q46_0_v16038_0_0: Nenhuma das anteriores'
q47_1_velha'q47_1_v16040_1_1: Ocorreram novos acolhimentos no mesmo ritmo dos meses anteriores à pandemia'
q47_2_velha'q47_2_v16040_2_2: O número de acolhimentos aumentou'
q47_3_velha'q47_3_v16040_3_3: O número de acolhimentos diminuiu'
q47_98_velha'q47_98_v16040_98_98: Não sabe informar'
q48_0_velha'q48_0_v16041_0_0: Não houve agilização de saída das crianças/adolescentes'
q48_1_velha'q48_1_v16041_1_1: para serem reintegradas às famílias de origem (natural ou extensa).'
q48_2_velha'q48_2_v16041_2_2: para serem acolhidas por famílias acolhedoras.'
q48_3_velha'q48_3_v16041_3_3: para residir temporariamente com padrinhos afetivos'
q48_4_velha'q48_4_v16041_4_4: para residir temporariamente com funcionários do serviço devidamente autorizados'
q48_5_velha'q48_5_v16041_5_5: encaminhadas para famílias adotivas'
q48_6_velha'q48_6_v16041_6_6: para repúblicas ou aluguel social para os que completaram 18 anos'
.









 













