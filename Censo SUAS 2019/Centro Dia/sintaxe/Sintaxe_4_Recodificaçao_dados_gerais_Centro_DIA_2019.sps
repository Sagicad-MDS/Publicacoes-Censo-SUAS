
*****recodificar
*q4*********************************


compute q6_velha  =  q6.
compute q7_velha  =   q7 .
compute q8_1_velha  = q8_1.
compute q8_2_velha   = q8_2.
compute q8_3_velha  =  q8_3.
compute q8_0_velha  =  q8_0.
compute q9_1_velha  =  q9_1.
compute q9_2_velha  =  q9_2.
compute q9_99_velha  =  q9_99.
compute q9_0_velha  = q9_0.
compute q10_0_velha  =  q10_0.
compute q10_1_velha  =  q10_1.
compute q10_2_velha  =  q10_2 .
compute q10_3_velha  =  q10_3.
compute q10_4_velha  =  q10_4.
compute q10_5_velha  =  q10_5.
compute q10_6_velha  =  q10_6.
compute q10_7_velha  =  q10_7.
compute q10_8_velha  =  q10_8.
compute q10_9_velha  =  q10_9.
compute q10_10_velha  =  q10_10.
compute q10_99_velha  =  q10_99.
compute q11_1_velha  = q11_1. 
compute q11_2_velha  = q11_2. 
compute q11_3_velha  =  q11_3.
compute q11_4_velha  =  q11_4.
compute q11_99_velha  = q11_99.
compute q11_0_velha  = q11_0.
execute. 



DO IF (q4=1).
RECODE q6 (ELSE=SYSMIS).
RECODE q7 (ELSE=SYSMIS).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).
RECODE q8_3 (ELSE=SYSMIS).
RECODE q8_0 (ELSE=SYSMIS).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_99 (ELSE=SYSMIS).
RECODE q9_0 (ELSE=SYSMIS).
RECODE q10_0 (ELSE=SYSMIS).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE  q10_6 (ELSE=SYSMIS).
RECODE q10_7  (ELSE=SYSMIS).
RECODE q10_8 (ELSE=SYSMIS).
RECODE  q10_9 (ELSE=SYSMIS).
RECODE q10_10  (ELSE=SYSMIS).
RECODE q10_99  (ELSE=SYSMIS).
RECODE q11_1 (ELSE=SYSMIS).
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
RECODE q9_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q10*****************

DO IF (q10_0=1).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE  q10_6 (ELSE=SYSMIS).
RECODE q10_7  (ELSE=SYSMIS).
RECODE q10_8 (ELSE=SYSMIS).
RECODE  q10_9 (ELSE=SYSMIS).
RECODE q10_10  (ELSE=SYSMIS).
RECODE q10_99  (ELSE=SYSMIS).
END IF.
EXECUTE.




**q11*****************


DO IF (q11_0=1).
RECODE q11_1 (ELSE=SYSMIS).
RECODE q11_2 (ELSE=SYSMIS).
RECODE q11_3 (ELSE=SYSMIS).
RECODE q11_4 (ELSE=SYSMIS).
RECODE q11_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q12**************

compute q13_1_velha = q13_1. 
compute q13_2_velha = q13_2.
compute q13_3_velha = q13_3.
compute q13_4_velha = q13_4.
compute q13_5_velha = q13_5.
compute q13_6_velha = q13_6.
compute q13_7_velha = q13_7.
compute q13_8_velha = q13_8. 
compute q13_9_velha = q13_9.
compute q13_10_velha = q13_10.
compute q13_11_velha = q13_11.
compute q13_12_velha = q13_12.
compute q13_0_velha = q13_0.
compute q14_velha = q14.
execute. 


DO IF (q12=0).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3 (ELSE=SYSMIS).
RECODE q13_4 (ELSE=SYSMIS).
RECODE q13_5 (ELSE=SYSMIS).
RECODE q13_6 (ELSE=SYSMIS).
RECODE q13_7 (ELSE=SYSMIS).
RECODE q13_8 (ELSE=SYSMIS).
RECODE q13_9 (ELSE=SYSMIS).
RECODE q13_10 (ELSE=SYSMIS).
RECODE q13_11 (ELSE=SYSMIS).
RECODE q13_12 (ELSE=SYSMIS).
RECODE q13_0  (ELSE=SYSMIS).
RECODE q14 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q13_0 =1).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3 (ELSE=SYSMIS).
RECODE q13_4 (ELSE=SYSMIS).
RECODE q13_5 (ELSE=SYSMIS).
RECODE q13_6 (ELSE=SYSMIS).
RECODE q13_7 (ELSE=SYSMIS).
RECODE q13_8 (ELSE=SYSMIS).
RECODE q13_9 (ELSE=SYSMIS).
RECODE q13_10 (ELSE=SYSMIS).
RECODE q13_11 (ELSE=SYSMIS).
RECODE q13_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q15***

compute q15_1_velha = q15_1.
compute q15_2_velha = q15_2.
compute q15_3_velha = q15_3. 
compute q15_4_velha = q15_4.
compute q15_5_velha = q15_5.
compute q15_6_velha = q15_6.
execute. 


DO IF (q15_6= 1).
RECODE q15_1 (ELSE=SYSMIS).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_3 (ELSE=SYSMIS).
RECODE q15_4 (ELSE=SYSMIS).
RECODE q15_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q16**************************

compute q17_1_velha = q17_1. 
compute q17_2_velha = q17_2.
compute q17_3_velha = q17_3.
compute q17_4_velha = q17_4.
compute q17_5_velha = q17_5.
compute q17_99_velha = q17_99.
execute. 



DO IF (q16= 0).
RECODE q17_1 (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3 (ELSE=SYSMIS).
RECODE q17_4 (ELSE=SYSMIS).
RECODE q17_5 (ELSE=SYSMIS).
RECODE q17_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


*20*********************************

compute q20_1_velha = q20_1. 
compute q20_2_velha = q20_2.
compute q20_3_velha = q20_3.
compute q20_4_velha = q20_4.
compute q20_5_velha = q20_5.
compute q20_6_velha = q20_6.
compute q20_0_velha = q20_0.
execute. 


DO IF (q20_0= 1).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q23********************************************************************


compute q23_1_velha = q23_1. 
compute q23_2_velha = q23_2.
compute q23_3_velha = q23_3.
compute q23_4_velha = q23_4.
compute q23_5_velha = q23_5.
compute q23_6_velha = q23_6.
compute q23_7_velha = q23_7.
compute q23_8_velha = q23_8. 
compute q23_9_velha = q23_9.
compute q23_10_velha = q23_10.
compute q23_11_velha = q23_11.
compute q23_12_velha = q23_12.
compute q23_13_velha = q23_13.
compute q23_14_velha = q23_14.
compute q23_15_velha = q23_15. 
compute q23_16_velha = q23_16.
compute q23_17_velha = q23_17.
compute q23_18_velha = q23_18.
compute q23_19_velha = q23_19.
compute q23_20_velha = q23_20.
compute q23_21_velha = q23_21.
compute q23_22_velha = q23_22.
compute q23_99_velha = q23_99.
compute q23_0_velha = q23_0.
execute. 


DO IF (q23_0= 1).
RECODE q23_1 (ELSE=SYSMIS).
RECODE q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS).
RECODE q23_6 (ELSE=SYSMIS).
RECODE q23_7 (ELSE=SYSMIS).
RECODE q23_8 (ELSE=SYSMIS).
RECODE q23_9 (ELSE=SYSMIS).
RECODE q23_10(ELSE=SYSMIS).
RECODE q23_11 (ELSE=SYSMIS).
RECODE q23_12 (ELSE=SYSMIS).
RECODE q23_13 (ELSE=SYSMIS).
RECODE q23_14 (ELSE=SYSMIS).
RECODE q23_15 (ELSE=SYSMIS).
RECODE q23_16 (ELSE=SYSMIS).
RECODE q23_17 (ELSE=SYSMIS).
RECODE q23_18 (ELSE=SYSMIS).
RECODE q23_19 (ELSE=SYSMIS).
RECODE q23_20 (ELSE=SYSMIS).
RECODE q23_21 (ELSE=SYSMIS).
RECODE q23_22 (ELSE=SYSMIS).
RECODE q23_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q24***********************************************************************

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
compute q25_11_velha = q25_11.
compute q26_1_velha = q26_1. 
compute q26_2_velha = q26_2.
compute q26_3_velha = q26_3.
compute q26_4_velha = q26_4.
compute q26_5_velha = q26_5.
compute q26_99_velha = q26_99.
execute. 



DO IF (q24= 0).
RECODE q25_1 (ELSE=SYSMIS).
RECODE q25_2 (ELSE=SYSMIS).
RECODE q25_3 (ELSE=SYSMIS).
RECODE q25_4 (ELSE=SYSMIS).
RECODE q25_5 (ELSE=SYSMIS).
RECODE q25_6 (ELSE=SYSMIS).
RECODE q25_7 (ELSE=SYSMIS).
RECODE q25_8 (ELSE=SYSMIS).
RECODE q25_9 (ELSE=SYSMIS).
RECODE q25_10 (ELSE=SYSMIS).
RECODE q25_11 (ELSE=SYSMIS).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS).
RECODE q26_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q27**********************************************************************************

compute q28_1_velha = q28_1.
compute q28_2_velha = q28_2.
compute q28_3_velha = q28_3.
compute q28_4_velha = q28_4.
compute q28_5_velha = q28_5.
compute q28_99_velha = q28_99.
execute. 


DO IF (q27= 0).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
RECODE q28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q32************************************************************************************************


COMPUTE q32_7_total=SUM(q32_1, q32_2, q32_3, q32_4, q32_5, q32_6).
EXECUTE.


DO IF (q33_1> q32_7_total).
RECODE q33_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_2> q32_7_total).
RECODE q33_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q33_3> q32_7_total).
RECODE q33_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_4> q32_7_total).
RECODE q33_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_5> q32_7_total).
RECODE q33_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_6> q32_7_total).
RECODE q33_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q36******************************************************************************************


compute q36_1_1_velha = q36_1_1.
compute q36_1_2_velha = q36_1_2.
compute q36_1_3_velha = q36_1_3.
compute q36_1_4_velha = q36_1_4.
compute q36_1_5_velha = q36_1_5.
compute q36_1_6_velha = q36_1_6.
compute q36_1_7_velha = q36_1_7.
compute q36_1_8_velha = q36_1_8.
compute q36_1_9_velha = q36_1_9.
compute q36_1_10_velha = q36_1_10.
compute q36_2_1_velha = q36_2_1.
compute q36_2_2_velha = q36_2_2.
compute q36_2_3_velha = q36_2_3.
compute q36_2_4_velha = q36_2_4.
compute q36_2_5_velha = q36_2_5.
compute q36_2_6_velha = q36_2_6.
compute q36_2_7_velha = q36_2_7.
compute q36_2_8_velha = q36_2_8.
compute q36_2_9_velha = q36_2_9.
compute q36_2_10_velha = q36_2_10.
compute q36_3_1_velha = q36_3_1.
compute q36_3_2_velha = q36_3_2.
compute q36_3_3_velha = q36_3_3.
compute q36_3_4_velha = q36_3_4.
compute q36_3_5_velha = q36_3_5.
compute q36_3_6_velha = q36_3_6.
compute q36_3_7_velha = q36_3_7.
compute q36_3_8_velha = q36_3_8.
compute q36_3_9_velha = q36_3_9.
compute q36_3_10_velha = q36_3_10.
compute q36_4_1_velha = q36_4_1.
compute q36_4_2_velha = q36_4_2.
compute q36_4_3_velha = q36_4_3.
compute q36_4_4_velha = q36_4_4.
compute q36_4_5_velha = q36_4_5.
compute q36_4_6_velha = q36_4_6.
compute q36_4_7_velha = q36_4_7.
compute q36_4_8_velha = q36_4_8.
compute q36_4_9_velha = q36_4_9.
compute q36_4_10_velha = q36_4_10.
compute q36_5_1_velha = q36_5_1.
compute q36_5_2_velha = q36_5_2.
compute q36_5_3_velha = q36_5_3.
compute q36_5_4_velha = q36_5_4.
compute q36_5_5_velha = q36_5_5.
compute q36_5_6_velha = q36_5_6.
compute q36_5_7_velha = q36_5_7.
compute q36_5_8_velha = q36_5_8.
compute q36_5_9_velha = q36_5_9.
compute q36_5_10_velha = q36_5_10.
compute q36_6_1_velha = q36_6_1.
compute q36_6_2_velha = q36_6_2.
compute q36_6_3_velha = q36_6_3.
compute q36_6_4_velha = q36_6_4.
compute q36_6_5_velha = q36_6_5.
compute q36_6_6_velha = q36_6_6.
compute q36_6_7_velha = q36_6_7.
compute q36_6_8_velha = q36_6_8.
compute q36_6_9_velha = q36_6_9.
compute q36_6_10_velha = q36_6_10.
execute. 

DO IF (q36_1_9=1 | q36_1_10=1).
RECODE q36_1_1 (ELSE=SYSMIS).
RECODE q36_1_2 (ELSE=SYSMIS).
RECODE q36_1_3 (ELSE=SYSMIS).
RECODE q36_1_4 (ELSE=SYSMIS).
RECODE q36_1_5 (ELSE=SYSMIS).
RECODE q36_1_6 (ELSE=SYSMIS).
RECODE q36_1_7 (ELSE=SYSMIS).
RECODE q36_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q36_2_9=1 | q36_2_10 =1).
RECODE q36_2_1 (ELSE=SYSMIS).
RECODE q36_2_2 (ELSE=SYSMIS).
RECODE q36_2_3 (ELSE=SYSMIS).
RECODE q36_2_4 (ELSE=SYSMIS).
RECODE q36_2_5 (ELSE=SYSMIS).
RECODE q36_2_6 (ELSE=SYSMIS).
RECODE q36_2_7 (ELSE=SYSMIS).
RECODE q36_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q36_3_9=1 | q36_3_10).
RECODE q36_3_1 (ELSE=SYSMIS).
RECODE q36_3_2 (ELSE=SYSMIS).
RECODE q36_3_3 (ELSE=SYSMIS).
RECODE q36_3_4 (ELSE=SYSMIS).
RECODE q36_3_5 (ELSE=SYSMIS).
RECODE q36_3_6 (ELSE=SYSMIS).
RECODE q36_3_7 (ELSE=SYSMIS).
RECODE q36_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q36_4_9=1 | q36_4_10 =1).
RECODE q36_4_1 (ELSE=SYSMIS).
RECODE q36_4_2 (ELSE=SYSMIS).
RECODE q36_4_3 (ELSE=SYSMIS).
RECODE q36_4_4 (ELSE=SYSMIS).
RECODE q36_4_5 (ELSE=SYSMIS).
RECODE q36_4_6 (ELSE=SYSMIS).
RECODE q36_4_7 (ELSE=SYSMIS).
RECODE q36_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q36_5_9=1 | q36_5_10 = 1).
RECODE q36_5_1 (ELSE=SYSMIS).
RECODE q36_5_2 (ELSE=SYSMIS).
RECODE q36_5_3 (ELSE=SYSMIS).
RECODE q36_5_4 (ELSE=SYSMIS).
RECODE q36_5_5 (ELSE=SYSMIS).
RECODE q36_5_6 (ELSE=SYSMIS).
RECODE q36_5_7 (ELSE=SYSMIS).
RECODE q36_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q36_6_9=1 | q36_6_10=1).
RECODE q36_6_1 (ELSE=SYSMIS).
RECODE q36_6_2 (ELSE=SYSMIS).
RECODE q36_6_3 (ELSE=SYSMIS).
RECODE q36_6_4 (ELSE=SYSMIS).
RECODE q36_6_5 (ELSE=SYSMIS).
RECODE q36_6_6 (ELSE=SYSMIS).
RECODE q36_6_7 (ELSE=SYSMIS).
RECODE q36_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q37******************************************************************************************

compute q37_1_velha =  q37_1.
compute q37_2_velha =  q37_2.
compute q37_3_velha =  q37_3.
compute q37_4_velha =  q37_4.
compute q37_5_velha =  q37_5.
compute q37_6_velha =  q37_6.
compute q37_7_velha =  q37_7.
compute q37_8_velha =  q37_8.
compute q37_9_velha =  q37_9.
compute q37_10_velha =  q37_10.
compute q37_11_velha =  q37_11.
compute q37_12_velha =  q37_12.
compute q37_13_velha =  q37_13.
compute q37_14_velha =  q37_14.
compute q37_99_velha =  q37_99.
compute q37_0_velha =  q37_0.
execute. 


DO IF (q37_0=1).
RECODE q37_1(ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_3 (ELSE=SYSMIS).
RECODE q37_4 (ELSE=SYSMIS).
RECODE q37_5 (ELSE=SYSMIS).
RECODE q37_6 (ELSE=SYSMIS).
RECODE q37_7 (ELSE=SYSMIS).
RECODE q37_8 (ELSE=SYSMIS).
RECODE q37_9 (ELSE=SYSMIS).
RECODE q37_10 (ELSE=SYSMIS).
RECODE q37_11 (ELSE=SYSMIS).
RECODE q37_12 (ELSE=SYSMIS).
RECODE q37_13 (ELSE=SYSMIS).
RECODE q37_14 (ELSE=SYSMIS).
RECODE q37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.







VARIABLE LABELS
q6_velha	'q_6_Esta entidade faz parte de alguma rede/federação nacional, estadual ou regional de entidades de defesa e apoio às pessoas com deficiência e suas famílias?'
q7_velha	'q_7_Caso sim, informe a principal rede/federação de que faz parte:'
q8_1_velha	 'q_8_1_A entidade recebe recursos financeiros da Assistência Social visando à manutenção desse Centro Dia?1 - Sim, municipal ou do Distrito Federal'
q8_2_velha	 'q_8_2_A entidade recebe recursos financeiros da Assistência Social visando à manutenção desse Centro Dia?2 - Sim, estadual'
q8_3_velha	 'q_8_3_A entidade recebe recursos financeiros da Assistência Social visando à manutenção desse Centro Dia?3 - Sim, federal'
q8_0_velha	 'q_8_0_A entidade recebe recursos financeiros da Assistência Social visando à manutenção desse Centro Dia?0 - Não'
q9_1_velha 'q_9_1_Esta unidade recebe recursos financeiros de outras políticas públicas visando à manutenção desse Centro Dia?1 - Sim, da Saúde'
q9_2_velha	 'q_9_2_Esta unidade recebe recursos financeiros de outras políticas públicas visando à manutenção desse Centro Dia?2 - Sim, da Educação'
q9_99_velha 'q_9_99_Esta unidade recebe recursos financeiros de outras políticas públicas visando à manutenção desse Centro Dia?3 - Outras'
q9_0_velha	 'q_9_0_Esta unidade recebe recursos financeiros de outras políticas públicas visando à manutenção desse Centro Dia?0 - Não'
q10_0_velha 'q_10_0_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? :0 - Não recebe nenhuma outra forma de apoio do poder público municipal'
q10_1_velha 'q_10_1_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 1 - Cessão de recursos humanos'
q10_2_velha 'q_10_2_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 2 - Cessão imobiliária'
q10_3_velha 'q_10_3_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 3 - Pagamento de aluguel'
q10_4_velha 'q_10_4_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?4 - Pagamento de contas de água'
q10_5_velha 'q_10_5_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 5 - Pagamento de contas de luz ou telefone'
q10_6_velha 'q_10_6_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?6 - Fornecimento de gêneros alimentícios'
q10_7_velha 'q_10_7_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 7 - Fornecimento de materiais de higiene e limpeza'
q10_8_velha 'q_10_8_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 8 - Fornecimento de materiais pedagógicos, culturais, esportivos e outros'
q10_9_velha 'q_10_9_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 9 - Isenção de taxas ou tributos municipais'
q10_10_velha 'q_10_10_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 10 - Treinamento e capacitação de trabalhadores da entidade'
q10_99_velha 'q_10_99_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal? 99 - Outros'
q11_1_velha 'q_11_1_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:1 - Conselho Municipal, Estadual ou do Distrito Federal de Assistência Social'
q11_2_velha 'q_11_2_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:2 - Conselho Municipal, Estadual ou do Distrito Federal de Direitos da Criança e Adolescente'
q11_3_velha 'q_11_3_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:3 - Conselho Municipal, Estadual ou do Distrito Federal de Direitos do Idoso'
q11_4_velha 'q_11_4_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:4 - Conselho Municipal, Estadual ou do Distrito Federal de Direitos da Pessoa com Deficiência'
q11_99_velha 'q_11_99_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:99 - Outros'
q11_0_velha 'q_11_0_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:0 - Em nenhum dos citados acima'
q13_1_velha 'q_13_1_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:1 - Coleta/recebe periodicamente informações sobre dados de atendimento do Serviço'
q13_2_velha 'q_13_2_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:2 - Realiza reuniões periódicas para avaliação do Serviço com o Centro Dia'
q13_3_velha 'q_13_3_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:3 - Participa do processo de planejamento das atividades do Serviço'
q13_4_velha 'q_13_4_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:4 - Acompanha cotidianamente as atividades do Serviço'
q13_5_velha 'q_13_5_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:5 - Constrói estratégias metodológicas do Serviço'
q13_6_velha 'q_13_6_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:6 - Elabora relatórios técnicos específicos sobre casos atendidos/acompanhados pelo Serviço'
q13_7_velha 'q_13_7_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:7 - Realiza estudos de caso em parceria com o Serviço'
q13_8_velha 'q_13_8_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:8 - Define procedimentos comuns e/ou complementares ao Serviço'
q13_9_velha 'q_13_9_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:9 - Possui fluxos de encaminhamentos e trocas de informações com o Serviço'
q13_10_velha 'q_13_10_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:10 - Articula com a rede de serviços socioassistenciais'
q13_11_velha 'q_13_11_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:11 - Articula com a rede dos serviços das políticas públicas setoriais'
q13_12_velha 'q_13_12_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:12 - Articula com os demais órgãos do Sistema de Garantia de Direitos'
q13_0_velha 'q_13_0_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:0 - Não realiza nenhuma das atividades acima'
q14_velha	'q_14_Em relação às vagas do Serviço de PSE para pessoas com deficiência, idosas(os) e suas famílias, informe se:'
q15_1_velha 'q_15_1_Esta Unidade oferece alimentação às(aos) usuárias(os)?1 - Lanches/Café da manhã'
q15_2_velha 'q_15_2_Esta Unidade oferece alimentação às(aos) usuárias(os)?2 - Almoço'
q15_3_velha 'q_15_3_Esta Unidade oferece alimentação às(aos) usuárias(os)?3 - Lanche/ Café da Tarde'
q15_4_velha 'q_15_4_Esta Unidade oferece alimentação às(aos) usuárias(os)?4 - Jantar'
q15_5_velha 'q_15_5_Esta Unidade oferece alimentação às(aos) usuárias(os)?5 - Lanche/Café da Noite'
q15_6_velha 'q_15_6_Esta Unidade oferece alimentação às(aos) usuárias(os)?6 - Não oferta alimentação'
q17_1_velha 'q_17_1_Como se dá este apoio?1 - A unidade possui transporte especializado para o deslocamento das(os) usuárias(os)'
q17_2_velha 'q_17_2_Como se dá este apoio?2 - A unidade fornece ajuda de custo (passagens) para o deslocamento das(os) usuárias(os)'
q17_3_velha 'q_17_3_Como se dá este apoio?3 - O poder público fornece gratuidade no transporte público para pessoas com deficiência e idosas'
q17_4_velha 'q_17_4_Como se dá este apoio?4 - O poder público fornece passagens (vale-transporte, etc.)'
q17_5_velha 'q_17_5_Como se dá este apoio?5 - O poder público fornece transporte especializado para o deslocamento dos usuários'
q17_99_velha 'q_17_99_Como se dá este apoio?99 - Outros'
q20_1_velha 'q_20_1_Há outras adaptações para assegurar a acessibilidade desta unidade?1 - Sim, suporte de profissional com conhecimento em LIBRAS'
q20_2_velha 'q_20_2_Há  outras adaptações para assegurar a acessibilidade desta unidade?2 - Sim, suporte de material em Braille'
q20_3_velha 'q_20_3_Há outras adaptações para assegurar a acessibilidade desta unidade?3 - Sim, suporte para leitores de telas de computador para pessoas com deficiência visual'
q20_4_velha 'q_20_4_Há outras adaptações para assegurar a acessibilidade desta unidade?4 - Sim, outras adaptações e tecnologias assistivas para deficiência física'
q20_5_velha 'q_20_5_Há  outras adaptações para assegurar a acessibilidade desta unidade?5 - Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo'
q20_6_velha 'q_20_6_Há outras adaptações para assegurar a acessibilidade desta unidade?6 - Sim, pisos especiais com relevos para sinalização voltados pessoa com  deficiência visual'
q20_0_velha 'q_20_0_Há  outras adaptações para assegurar a acessibilidade desta unidade?0 - Não há outras adaptações'
q23_1_velha 'q_23_1_Quais das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):1 - Alfabetização'
q23_2_velha 'q_23_2_Quais das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):2 - Escolarização Formal'
q23_3_velha 'q_23_3_Quais  das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):3 - Reforço Escolar'
q23_4_velha 'q_23_4_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):4 - Ensino do método Braille de leitura'
q23_5_velha 'q_23_5_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):5 - Ensino de Libras'
q23_6_velha 'q_23_6_Quais das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):6 - Atendimentos Médicos'
q23_7_velha 'q_23_7_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):7 - Atendimento Odontológico'
q23_8_velha 'q_23_8_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):8 - Terapia Ocupacional'
q23_9_velha 'q_23_9_Quais das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):9 - Fisioterapia'
q23_10_velha 'q_23_10_Quais das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):10 - Fonoaudiologia'
q23_11_velha 'q_23_11_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):11 - Atendimento Clínico em Psicologia'
q23_12_velha 'q_23_12_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):12 - Provisão em órtese e prótese'
q23_13_velha 'q_23_13_Quais  das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):13 - Atividades Esportivas'
q23_14_velha 'q_23_14_Quais  das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):14 - Atividades Artísticas e Culturais (musicalização, dança, teatro, entre outros)'
q23_15_velha 'q_23_15_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):15 - Musicalidade (cantar, tocar instrumentos, etc)'
q23_16_velha 'q_23_16_Quais das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):16 - Artesanato (bijuterias, pintura em tecido, bordado, crochê, etc.)'
q23_17_velha 'q_23_17_Quais  das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):17 - Atividades de inclusão digital'
q23_18_velha 'q_23_18_Quais  atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):18 - Atividades de linguagem (produção de texto, contação de histórias, roda de conversa, etc.)'
q23_19_velha 'q_23_19_Quais das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):19 - Atividades que envolvam alimentos (oficinas de culinária, hortas, etc.)'
q23_20_velha 'q_23_20_Quais atividades são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):20 - Jogos e Brincadeiras (jogos de tabuleiro, brincadeiras de roda, esconde-esconde, mímica, etc.)'
q23_21_velha 'q_23_21_Quais  das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):21 - Atividades de orientação para o mundo do trabalho'
q23_22_velha 'q_23_22_Quais  das demais atividades  descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):22 - Passeios e/ou atividades externas'
q23_99_velha 'q_23_99_Quais  das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):99 - Outras atividades'
q23_0_velha 'q_23_0_Quais das demais atividades descritas são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):0 - Nenhuma das atividades acima'
q25_1_velha 'q_25_1_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?1 - Identificação e perfil da(o) usuária(o)'
q25_2_velha 'q_25_2_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?2 - Informações sobre as deficiências e grau de dependência da(o) usuária(o)'
q25_3_velha 'q_25_3_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?3 - Identificação e perfil da família'
q25_4_velha 'q_25_4_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?4 - Caraterísticas socioeconômicas da(o) usuária(o) e sua família (renda, condições de moradia, trabalho, etc.)'
q25_5_velha 'q_25_5_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?5 - Identificação e perfil das condições de cuidados familiares da(o) usuária(o)'
q25_6_velha 'q_25_6_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?6 - Habilidades e capacidades para cuidar e ser cuidado'
q25_7_velha 'q_25_7_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?7 - Serviços frequentados pela(o) usuária(o) no território'
q25_8_velha 'q_25_8_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?8 - Potencialidades e características da rede de atenção e apoio no território'
q25_9_velha 'q_25_9_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?9 - Pactuações entre os serviços, usuárias(os) e/ou família sobre o período de permanência da(o) usuária(o) no serviço (turno/dia/semana/mês)'
q25_10_velha 'q_25_10_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?10 - Plano de atividades a serem realizadas'
q25_11_velha 'q_25_11_Quais são os itens que compõem o Plano Individual e/ou Familiar de Atendimento?11 - Avaliação periódica do alcance dos objetivos do Serviço com a(o) usuária(o) e/ou suas famílias e proposição de adequações necessárias'
q26_1_velha 'q_26_1_Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?1 - As(os) usuárias(os) e/ou os membros da sua família'
q26_2_velha 'q_26_2_Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?2 - As(os) técnicas(os) de referência da(o) usuária(o)'
q26_3_velha 'q_26_3_Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?3 - O(a) coordenador(a) do Centro Dia'
q26_4_velha 'q_26_4_Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?4 - As(os) técnicas(os) do CREAS de referência'
q26_5_velha 'q_26_5_Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?5 - Equipes de outras áreas nas quais a(o) usuária(o) é atendido'
q26_99_velha 'q_26_99_Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?99 - Outros'
q28_1_velha 'q_28_1_Quais mecanismos de participação são utilizados nesta unidade?1 - Convida as(os) usuárias(os) e/ou familiares para as reuniões de planejamento desta unidade'
q28_2_velha 'q_28_2_Quais mecanismos de participação são utilizados nesta unidade?2 - Apoio financeiro para a participação de reuniões de planejamento junto a esta unidade'
q28_3_velha 'q_28_3_Quais mecanismos de participação são utilizados nesta unidade?3 - Existência de representante usuárias(os) junto à unidade'
q28_4_velha 'q_28_4_Quais mecanismos de participação são utilizados nesta unidade?4 - Realiza questionário de satisfação/ pesquisa de opinião (inclui urna de sugestões)'
q28_5_velha 'q_28_5_Quais mecanismos de participação são utilizados nesta unidade?5 - As(os) usuárias(os) escolhem os temas a serem trabalhados nas ações coletivas (oficinas/palestras) da unidade'
q28_99_velha 'q_28_99_Quais mecanismos de participação são utilizados nesta unidade?99 - Outros.'
q32_7_total 'q_32_7_Total de pessoas atendidas no Serviço no  mês de agosto de 2018'
q36_1_1_velha 'q_36_1_1_Unidades de acolhimento1 - Possui localização (endereço, telefone, etc)'
q36_1_2_velha 'q_36_1_2_Unidades de acolhimento2 - Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q36_1_3_velha 'q_36_1_3_Unidades de acolhimento3 - Encaminha usuárias(os) para este Centro-Dia'
q36_1_4_velha 'q_36_1_4_Unidades de acolhimento4 - Acompanha os encaminhamentos'
q36_1_5_velha 'q_36_1_5_Unidades de acolhimento5 - Realiza reuniões periódicas'
q36_1_6_velha 'q_36_1_6_Unidades de acolhimento6 - Troca Informações'
q36_1_7_velha 'q_36_1_7_Unidades de acolhimento7 - Realiza estudos de caso em conjunto'
q36_1_8_velha 'q_36_1_8_Unidades de acolhimento8 - Desenvolve atividades em parceria'
q36_1_9_velha 'q_36_1_9_Unidades de acolhimento9 - Não tem nenhuma articulação'
q36_1_10_velha 'q_36_1_10_Unidades de acolhimento10 - Serviço ou instituição não existente no Município ou no DF'
q36_2_1_velha 'q_36_2_1_CRAS1 - Possui localização (endereço, telefone, etc)'
q36_2_2_velha 'q_36_2_2_CRAS2 - Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q36_2_3_velha 'q_36_2_3_CRAS3 - Encaminha usuárias(os) para este Centro-Dia'
q36_2_4_velha 'q_36_2_4_CRAS4 - Acompanha os encaminhamentos'
q36_2_5_velha 'q_36_2_5_CRAS5 - Realiza reuniões periódicas'
q36_2_6_velha 'q_36_2_6_CRAS6 - Troca Informações'
q36_2_7_velha 'q_36_2_7_CRAS7 - Realiza estudos de caso em conjunto'
q36_2_8_velha 'q_36_2_8_CRAS8 - Desenvolve atividades em parceria'
q36_2_9_velha 'q_36_2_9_CRAS9 - Não tem nenhuma articulação'
q36_2_10_velha 'q_36_2_10_CRAS10 - Serviço ou instituição não existente no Município ou no DF'
q36_3_1_velha 'q_36_3_1_CREAS1 - Possui localização (endereço, telefone, etc)'
q36_3_2_velha 'q_36_3_2_CREAS2 - Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q36_3_3_velha 'q_36_3_3_CREAS3 - Encaminha usuárias(os) para este Centro-Dia'
q36_3_4_velha 'q_36_3_4_CREAS4 - Acompanha os encaminhamentos'
q36_3_5_velha 'q_36_3_5_CREAS5 - Realiza reuniões periódicas'
q36_3_6_velha 'q_36_3_6_CREAS6 - Troca Informações'
q36_3_7_velha 'q_36_3_7_CREAS7 - Realiza estudos de caso em conjunto'
q36_3_8_velha 'q_36_3_8_CREAS8 - Desenvolve atividades em parceria'
q36_3_9_velha 'q_36_3_9_CREAS9 - Não tem nenhuma articulação'
q36_3_10_velha  'q_36_3_10_CREAS10 - Serviço ou instituição não existente no Município ou no DF'
q36_4_1_velha  'q_36_4_1_Serviço de saúde1 - Possui localização (endereço, telefone, etc)'
q36_4_2_velha 'q_36_4_2_Serviço de saúde2 - Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q36_4_3_velha 'q_36_4_3_Serviço de saúde3 - Encaminha usuárias(os) para este Centro-Dia'
q36_4_4_velha 'q_36_4_4_Serviço de saúde4 - Acompanha os encaminhamentos'
q36_4_5_velha 'q_36_4_5_Serviço de saúde5 - Realiza reuniões periódicas'
q36_4_6_velha 'q_36_4_6_Serviço de saúde6 - Troca Informações'
q36_4_7_velha 'q_36_4_7_Serviço de saúde7 - Realiza estudos de caso em conjunto'
q36_4_8_velha 'q_36_4_8_Serviço de saúde8 - Desenvolve atividades em parceria'
q36_4_9_velha 'q_36_4_9_Serviço de saúde9 - Não tem nenhuma articulação'
q36_4_10_velha 'q_36_4_10_Serviço de saúde10 - Serviço ou instituição não existente no Município ou no DF'
q36_5_1_velha 'q_36_5_1_Serviço de educação1 - Possui localização (endereço, telefone, etc)'
q36_5_2_velha 'q_36_5_2_Serviço de educação2 - Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q36_5_3_velha 'q_36_5_3_Serviço de educação3 - Encaminha usuárias(os) para este Centro-Dia'
q36_5_4_velha 'q_36_5_4_Serviço de educação4 - Acompanha os encaminhamentos'
q36_5_5_velha 'q_36_5_5_Serviço de educação5 - Realiza reuniões periódicas'
q36_5_6_velha 'q_36_5_6_Serviço de educação6 - Troca Informações'
q36_5_7_velha 'q_36_5_7_Serviço de educação7 - Realiza estudos de caso em conjunto'
q36_5_8_velha 'q_36_5_8_Serviço de educação8 - Desenvolve atividades em parceria'
q36_5_9_velha 'q_36_5_9_Serviço de educação9 - Não tem nenhuma articulação'
q36_5_10_velha 'q_36_5_10_Serviço de educação10 - Serviço ou instituição não existente no Município ou no DF'
q36_6_1_velha 'q_36_6_1_Sistema de justiça/Judiciário1 - Possui localização (endereço, telefone, etc)'
q36_6_2_velha 'q_36_6_2_Sistema de justiça/Judiciário2 - Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q36_6_3_velha 'q_36_6_3_Sistema de justiça/Judiciário3 - Encaminha usuárias(os) para este Centro-Dia'
q36_6_4_velha 'q_36_6_4_Sistema de justiça/Judiciário4 - Acompanha os encaminhamentos'
q36_6_5_velha 'q_36_6_5_Sistema de justiça/Judiciário5 - Realiza reuniões periódicas'
q36_6_6_velha 'q_36_6_6_Sistema de justiça/Judiciário6 - Troca Informações'
q36_6_7_velha 'q_36_6_7_Sistema de justiça/Judiciário7 - Realiza estudos de caso em conjunto'
q36_6_8_velha 'q_36_6_8_Sistema de justiça/Judiciário8 - Desenvolve atividades em parceria'
q36_6_9_velha 'q_36_6_9_Sistema de justiça/Judiciário9 - Não tem nenhuma articulação'
q36_6_10_velha 'q_36_6_10_Sistema de justiça/Judiciário10 - Serviço ou instituição não existente no Município ou no DF'
q37_1_velha 'q_37_1_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?1 - Deficiência'
q37_2_velha 'q_37_2_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?2 - Gênero'
q37_3_velha 'q_37_3_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?3 - População em situação de rua'
q37_4_velha 'q_37_4_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?4 - População LGBT, orientação sexual e identidade de gênero'
q37_5_velha 'q_37_5_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?5 - Álcool e outras drogas'
q37_6_velha 'q_37_6_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?6 - Diversidade étnico-racial (questão racial, comunidades indígenas, povos e comunidades tradicionais etc.)'
q37_7_velha 'q_37_7_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?7 - Violências e violações de direitos'
q37_8_velha 'q_37_8_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?8 - Trabalho Infantil'
q37_9_velha 'q_37_9_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?9 - Criança e adolescente'
q37_10_velha 'q_37_10_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?10 - Juventude'
q37_11_velha 'q_37_11_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?11 - Envelhecimento'
q37_12_velha 'q_37_12_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?12 - Sistema Socioeducativo/Medida Socioeducativa/SINASE'
q37_13_velha 'q_37_13_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?13 - Migração'
q37_14_velha 'q_37_14_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?14 - Mundo do trabalho'
q37_99_velha 'q_37_99_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?99 - Outros'
q37_0_velha 'q_37_0_Nos últimos 12 meses, a Unidade proporcionou/ facilitou a participação de seus profissionais em capacitação sobre?0 - Não proporcionou/facilitou a participação das(os) profissionais'
.