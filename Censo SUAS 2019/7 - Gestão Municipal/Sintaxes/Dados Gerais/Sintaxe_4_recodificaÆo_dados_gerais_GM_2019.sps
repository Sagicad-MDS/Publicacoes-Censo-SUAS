* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO MUNICIPAL - CENSO SUAS 2019
****************************************************************************************************
****q1**********************************************************************************************

COMPUTE q2_1_velha=q2_1.
COMPUTE q2_2_velha=q2_2.
COMPUTE q2_3_velha=q2_3.
COMPUTE q2_4_velha=q2_4.
COMPUTE q2_5_velha=q2_5.
COMPUTE q2_6_velha=q2_6.
COMPUTE q2_7_velha=q2_7.
COMPUTE q2_99_velha=q2_99.
EXECUTE.

DO IF (q1=1 | q1=3 | q1=4).
RECODE q2_1 (ELSE=SYSMIS).
RECODE q2_2 (ELSE=SYSMIS).
RECODE q2_3 (ELSE=SYSMIS).
RECODE q2_4 (ELSE=SYSMIS).
RECODE q2_5 (ELSE=SYSMIS).
RECODE q2_6 (ELSE=SYSMIS).
RECODE q2_7 (ELSE=SYSMIS).
RECODE q2_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q3**********************************************************************************************

COMPUTE q4_velha=q4.
EXECUTE.

DO IF (q3_7=0).
RECODE q4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q5**********************************************************************************************

COMPUTE q5_velha=q5.
EXECUTE.


DO IF (q5>0).
RECODE q5_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.



COMPUTE q6_1_velha=q6_1.
COMPUTE q6_2_velha=q6_2.
COMPUTE q6_3_velha=q6_3.
COMPUTE q6_4_velha=q6_4.
COMPUTE q6_5_velha=q6_5.
COMPUTE q6_6_velha=q6_6.
COMPUTE q6_7_velha=q6_7.
COMPUTE q6_8_velha=q6_8.
COMPUTE q6_9_velha=q6_9.
COMPUTE q6_10_velha=q6_10.
COMPUTE q6_11_velha=q6_11.
COMPUTE q6_12_velha=q6_12.
COMPUTE q6_13_velha=q6_13.
COMPUTE q6_14_velha=q6_14.
COMPUTE q6_15_velha=q6_15.
COMPUTE q6_16_velha=q6_16.
COMPUTE q6_17_velha=q6_17.
COMPUTE q6_18_velha=q6_18.
COMPUTE q6_19_velha=q6_19.
COMPUTE q6_20_velha=q6_20.
COMPUTE q6_21_velha=q6_21.
COMPUTE q6_22_velha=q6_22.
COMPUTE q6_99_velha=q6_99.
EXECUTE.

DO IF (q5_1=1).
RECODE q6_1 (ELSE=SYSMIS).
RECODE q6_2 (ELSE=SYSMIS).
RECODE q6_3 (ELSE=SYSMIS).
RECODE q6_4 (ELSE=SYSMIS).
RECODE q6_5 (ELSE=SYSMIS).
RECODE q6_6 (ELSE=SYSMIS).
RECODE q6_7 (ELSE=SYSMIS).
RECODE q6_8 (ELSE=SYSMIS).
RECODE q6_9 (ELSE=SYSMIS).
RECODE q6_10 (ELSE=SYSMIS).
RECODE q6_11 (ELSE=SYSMIS).
RECODE q6_12 (ELSE=SYSMIS).
RECODE q6_13 (ELSE=SYSMIS).
RECODE q6_14  (ELSE=SYSMIS).
RECODE q6_15 (ELSE=SYSMIS).
RECODE q6_16 (ELSE=SYSMIS).
RECODE q6_17  (ELSE=SYSMIS).
RECODE q6_18 (ELSE=SYSMIS).
RECODE q6_19 (ELSE=SYSMIS).
RECODE q6_20 (ELSE=SYSMIS).
RECODE q6_21 (ELSE=SYSMIS).
RECODE q6_22 (ELSE=SYSMIS).
RECODE q6_99(ELSE=SYSMIS).
END IF. 
EXECUTE.



****q11**********************************************************************************************

COMPUTE q12_velha=q12.
COMPUTE q13_velha=q13.
COMPUTE q14_velha=q14.


DO IF (q11=0).
RECODE q12 (ELSE=SYSMIS).
RECODE q13 (ELSE=SYSMIS).
RECODE q14 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q15**********************************************************************************************

COMPUTE q16_velha=q16.
COMPUTE q17_velha=q17.


DO IF (q15=0).
RECODE q16 (ELSE=SYSMIS).
RECODE q17 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q18*******************************************************************




COMPUTE q18_1_velha=q18_1.
COMPUTE q18_2_velha=q18_2.
COMPUTE q18_3_velha=q18_3.
COMPUTE q18_4_velha=q18_4.
COMPUTE q18_5_velha=q18_5.
COMPUTE q18_6_velha=q18_6.
COMPUTE q18_99_velha=q18_99.
COMPUTE q18_0_velha=q18_0.
EXECUTE.

DO IF (q18_0=1 | q18_1=1).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2 (ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_4 (ELSE=SYSMIS).
RECODE q18_5 (ELSE=SYSMIS).
RECODE q18_6 (ELSE=SYSMIS).
RECODE q18_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q19*******************************************************************

COMPUTE q19_1_velha=q19_1.
COMPUTE q19_2_velha=q19_2.
COMPUTE q19_3_velha=q19_3.
COMPUTE q19_4_velha=q19_4.
COMPUTE q19_5_velha=q19_5.
COMPUTE q19_6_velha=q19_6.
COMPUTE q19_7_velha=q19_7.
COMPUTE q19_99_velha=q19_99.
COMPUTE q19_0_velha=q19_0.
EXECUTE.

DO IF (q19_0=1).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


**q20******************************************************************

COMPUTE q20_1_velha=q20_1.
COMPUTE q20_2_velha=q20_2.
COMPUTE q20_3_velha=q20_3.
COMPUTE q20_4_velha=q20_4.
COMPUTE q20_5_velha=q20_5.
COMPUTE q20_6_velha=q20_6.
COMPUTE q20_7_velha=q20_7.
COMPUTE q20_8_velha=q20_8.
COMPUTE q20_0_velha=q20_0.
EXECUTE.

DO IF (q20_0=1).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
RECODE q20_6 (ELSE=SYSMIS).
RECODE q20_7 (ELSE=SYSMIS).
RECODE q20_8 (ELSE=SYSMIS).
END IF. 
EXECUTE.


**q21******************************************************************

COMPUTE q22_1_velha=q22_1.
COMPUTE q22_2_velha=q22_2.
COMPUTE q22_3_velha=q22_3.
COMPUTE q22_4_velha=q22_4.
COMPUTE q22_5_velha=q22_5.
EXECUTE.

DO IF (q21=0).
RECODE q22_1 (ELSE=SYSMIS).
RECODE q22_2 (ELSE=SYSMIS).
RECODE q22_3 (ELSE=SYSMIS).
RECODE q22_4 (ELSE=SYSMIS).
RECODE q22_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q24******************************************************************

COMPUTE q25_velha=q25.
COMPUTE q26_velha=q26.
COMPUTE q27_velha=q27.
COMPUTE q28_velha=q28.
COMPUTE q29_velha=q29.
COMPUTE q30_1_velha=q30_1.
COMPUTE q30_2_velha=q30_2.
COMPUTE q30_3_velha=q30_3.
COMPUTE q30_4_velha=q30_4.
COMPUTE q30_5_velha=q30_5.
COMPUTE q30_6_velha=q30_6.
COMPUTE q30_0_velha=q30_0.
EXECUTE.

DO IF (q24=0).
RECODE q25 (ELSE=SYSMIS).
RECODE q26 (ELSE=SYSMIS).
RECODE q27 (ELSE=SYSMIS).
RECODE q28 (ELSE=SYSMIS).
RECODE q29 (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_6 (ELSE=SYSMIS).
RECODE q30_0 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q30******************************************************************

DO IF (q30_0=1).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_6 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q31******************************************************************

COMPUTE q31_1_velha=q31_1.
COMPUTE q31_2_velha=q31_2.
COMPUTE q31_3_velha=q31_3.
COMPUTE q31_4_velha=q31_4.
COMPUTE q31_5_velha=q31_5.
COMPUTE q31_6_velha=q31_6.
COMPUTE q31_7_velha=q31_7.
COMPUTE q31_8_velha=q31_8.
COMPUTE q31_9_velha=q31_9.
COMPUTE q31_0_velha=q31_0.
EXECUTE.

DO IF (q31_0=1).
RECODE q31_1 (ELSE=SYSMIS).
RECODE q31_2 (ELSE=SYSMIS).
RECODE q31_3 (ELSE=SYSMIS).
RECODE q31_4 (ELSE=SYSMIS).
RECODE q31_5 (ELSE=SYSMIS).
RECODE q31_6 (ELSE=SYSMIS).
RECODE q31_7 (ELSE=SYSMIS).
RECODE q31_8 (ELSE=SYSMIS).
RECODE q31_9 (ELSE=SYSMIS).
RECODE q31_0 (ELSE=SYSMIS).
END IF. 
EXECUTE.




**q33******************************************************************

COMPUTE q33_velha=q33.
EXECUTE.



**q37******************************************************************

COMPUTE q38_1_velha=q38_1.
COMPUTE q38_2_velha=q38_2.
COMPUTE q38_3_velha=q38_3.
COMPUTE q38_4_velha=q38_4.
COMPUTE q38_5_velha=q38_5.
COMPUTE q38_6_velha=q38_6.
COMPUTE q38_7_velha=q38_7.
COMPUTE q38_8_velha=q38_8.
COMPUTE q38_99_velha=q38_99.
COMPUTE q39_1_velha=q39_1.
COMPUTE q39_2_velha=q39_2.
COMPUTE q39_3_velha=q39_3.
COMPUTE q39_4_velha=q39_4.
COMPUTE q39_5_velha=q39_5.
COMPUTE q39_6_velha=q39_6.
COMPUTE q39_7_velha=q39_7.
COMPUTE q39_8_velha=q39_8.
COMPUTE q39_9_velha=q39_9.
COMPUTE q39_10_velha=q39_10.
COMPUTE q39_11_velha=q39_11.
COMPUTE q39_12_velha=q39_12.
COMPUTE q39_99_velha=q39_99.
EXECUTE.

DO IF (q37=0).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2 (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_4 (ELSE=SYSMIS).
RECODE q38_5 (ELSE=SYSMIS).
RECODE q38_6 (ELSE=SYSMIS).
RECODE q38_7 (ELSE=SYSMIS).
RECODE q38_8 (ELSE=SYSMIS).
RECODE q38_99 (ELSE=SYSMIS).
RECODE q39_0 (ELSE=SYSMIS).
RECODE q39_1 (ELSE=SYSMIS).
RECODE q39_2 (ELSE=SYSMIS).
RECODE q39_3 (ELSE=SYSMIS).
RECODE q39_4 (ELSE=SYSMIS).
RECODE q39_5 (ELSE=SYSMIS).
RECODE q39_6 (ELSE=SYSMIS).
RECODE q39_7 (ELSE=SYSMIS).
RECODE q39_8 (ELSE=SYSMIS).
RECODE q39_9 (ELSE=SYSMIS).
RECODE q39_10 (ELSE=SYSMIS).
RECODE q39_11 (ELSE=SYSMIS).
RECODE q39_12 (ELSE=SYSMIS).
RECODE q39_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q39***********************************************************************************************************

DO IF (q39_0=1).
RECODE q39_1 (ELSE=SYSMIS).
RECODE q39_2 (ELSE=SYSMIS).
RECODE q39_3 (ELSE=SYSMIS).
RECODE q39_4 (ELSE=SYSMIS).
RECODE q39_5 (ELSE=SYSMIS).
RECODE q39_6 (ELSE=SYSMIS).
RECODE q39_7 (ELSE=SYSMIS).
RECODE q39_8 (ELSE=SYSMIS).
RECODE q39_9 (ELSE=SYSMIS).
RECODE q39_10 (ELSE=SYSMIS).
RECODE q39_11 (ELSE=SYSMIS).
RECODE q39_12 (ELSE=SYSMIS).
RECODE q39_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


**q40***********************************************************************************************************


COMPUTE q40_1_velha=q40_1.
COMPUTE q40_2_velha=q40_2.
COMPUTE q40_3_velha=q40_3.
COMPUTE q40_4_velha=q40_4.
COMPUTE q40_5_velha=q40_5.
COMPUTE q40_6_velha=q40_6.
COMPUTE q40_7_velha=q40_7.
COMPUTE q40_8_velha=q40_8.
COMPUTE q40_9_velha=q40_9.
COMPUTE q40_99_velha=q40_99.
COMPUTE q40_0_velha=q40_0.
EXECUTE.

DO IF (q40_0=1).
RECODE q40_1 (ELSE=SYSMIS).
RECODE q40_2 (ELSE=SYSMIS).
RECODE q40_3 (ELSE=SYSMIS).
RECODE q40_4 (ELSE=SYSMIS).
RECODE q40_5 (ELSE=SYSMIS).
RECODE q40_6 (ELSE=SYSMIS).
RECODE q40_7 (ELSE=SYSMIS).
RECODE q40_8 (ELSE=SYSMIS).
RECODE q40_9 (ELSE=SYSMIS).
RECODE q40_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.





*********************************q43 e q44



COMPUTE q43_velha=q43.
COMPUTE q44_velha=q44.
execute.




**q45***********************************************************************************************************


COMPUTE q45_1_1_velha=q45_1_1.
COMPUTE q45_1_2_velha=q45_1_2.
COMPUTE q45_1_3_velha=q45_1_3.
COMPUTE q45_1_4_velha=q45_1_4.
COMPUTE q45_1_0_velha=q45_1_0.
COMPUTE q45_2_1_velha=q45_2_1.
COMPUTE q45_2_2_velha=q45_2_2.
COMPUTE q45_2_3_velha=q45_2_3.
COMPUTE q45_2_4_velha=q45_2_4.
COMPUTE q45_2_0_velha=q45_2_0.
COMPUTE q45_3_1_velha=q45_3_1.
COMPUTE q45_3_2_velha=q45_3_2.
COMPUTE q45_3_3_velha=q45_3_3.
COMPUTE q45_3_4_velha=q45_3_4.
COMPUTE q45_3_0_velha=q45_3_0.
COMPUTE q45_4_1_velha=q45_4_1.
COMPUTE q45_4_2_velha=q45_4_2.
COMPUTE q45_4_3_velha=q45_4_3.
COMPUTE q45_4_4_velha=q45_4_4.
COMPUTE q45_4_0_velha=q45_4_0.
COMPUTE q45_5_1_velha=q45_5_1.
COMPUTE q45_5_2_velha=q45_5_2.
COMPUTE q45_5_3_velha=q45_5_3.
COMPUTE q45_5_4_velha=q45_5_4.
COMPUTE q45_5_0_velha=q45_5_0.
COMPUTE q45_6_1_velha=q45_6_1.
COMPUTE q45_6_2_velha=q45_6_2.
COMPUTE q45_6_3_velha=q45_6_3.
COMPUTE q45_6_4_velha=q45_6_4.
COMPUTE q45_6_0_velha=q45_6_0.
COMPUTE q45_7_1_velha=q45_7_1.
COMPUTE q45_7_2_velha=q45_7_2.
COMPUTE q45_7_3_velha=q45_7_3.
COMPUTE q45_7_4_velha=q45_7_4.
COMPUTE q45_7_0_velha=q45_7_0.
COMPUTE q45_8_1_velha=q45_8_1.
COMPUTE q45_8_2_velha=q45_8_2.
COMPUTE q45_8_3_velha=q45_8_3.
COMPUTE q45_8_4_velha=q45_8_4.
COMPUTE q45_8_0_velha=q45_8_0.
EXECUTE.

DO IF (q45_1_0=1).
RECODE q45_1_1 (ELSE=SYSMIS).
RECODE q45_1_2 (ELSE=SYSMIS).
RECODE q45_1_3 (ELSE=SYSMIS).
RECODE q45_1_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q45_2_0=1).
RECODE q45_2_1 (ELSE=SYSMIS).
RECODE q45_2_2 (ELSE=SYSMIS).
RECODE q45_2_3 (ELSE=SYSMIS).
RECODE q45_2_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q45_3_0=1).
RECODE q45_3_1 (ELSE=SYSMIS).
RECODE q45_3_2 (ELSE=SYSMIS).
RECODE q45_3_3 (ELSE=SYSMIS).
RECODE q45_3_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q45_4_0=1).
RECODE q45_4_1 (ELSE=SYSMIS).
RECODE q45_4_2 (ELSE=SYSMIS).
RECODE q45_4_3 (ELSE=SYSMIS).
RECODE q45_4_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q45_5_0=1).
RECODE q45_5_1 (ELSE=SYSMIS).
RECODE q45_5_2 (ELSE=SYSMIS).
RECODE q45_5_3 (ELSE=SYSMIS).
RECODE q45_5_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q45_6_0=1).
RECODE q45_6_1 (ELSE=SYSMIS).
RECODE q45_6_2 (ELSE=SYSMIS).
RECODE q45_6_3 (ELSE=SYSMIS).
RECODE q45_6_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q45_7_0=1).
RECODE q45_7_1 (ELSE=SYSMIS).
RECODE q45_7_2 (ELSE=SYSMIS).
RECODE q45_7_3 (ELSE=SYSMIS).
RECODE q45_7_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q45_8_0=1).
RECODE q45_8_1 (ELSE=SYSMIS).
RECODE q45_8_2 (ELSE=SYSMIS).
RECODE q45_8_3 (ELSE=SYSMIS).
RECODE q45_8_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


**q46***********************************************************************************************************

COMPUTE q47_velha=q47.

DO IF (q46=1).
RECODE q47 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q49***********************************************************************************************************


COMPUTE q50_1_velha=q50_1.
COMPUTE q50_2_velha=q50_2.
COMPUTE q50_3_velha=q50_3.
COMPUTE q50_4_velha=q50_4.
COMPUTE q50_5_velha=q50_5.
COMPUTE q50_6_velha=q50_6.
COMPUTE q50_7_velha=q50_7.
COMPUTE q50_8_velha=q50_8.
COMPUTE q50_9_velha=q50_9.
COMPUTE q50_10_velha=q50_10.
COMPUTE q50_11_velha=q50_11.
COMPUTE q50_12_velha=q50_12.
COMPUTE q50_13_velha=q50_13.
COMPUTE q50_14_velha=q50_14.
COMPUTE q50_15_velha=q50_15.
COMPUTE q50_99_velha=q50_99.
EXECUTE.


DO IF (q49=0).
RECODE q50_1 (ELSE=SYSMIS).
RECODE q50_2 (ELSE=SYSMIS).
RECODE q50_3 (ELSE=SYSMIS).
RECODE q50_4 (ELSE=SYSMIS).
RECODE q50_5 (ELSE=SYSMIS).
RECODE q50_6 (ELSE=SYSMIS).
RECODE q50_7 (ELSE=SYSMIS).
RECODE q50_8 (ELSE=SYSMIS).
RECODE q50_9 (ELSE=SYSMIS).
RECODE q50_10 (ELSE=SYSMIS).
RECODE q50_11 (ELSE=SYSMIS).
RECODE q50_12 (ELSE=SYSMIS).
RECODE q50_13 (ELSE=SYSMIS).
RECODE q50_14 (ELSE=SYSMIS).
RECODE q50_15 (ELSE=SYSMIS).
RECODE q50_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



COMPUTE q51_1_4_velha=q51_1_4.
execute.



**q52***********************************************************************************************************

COMPUTE q53_velha=q53.

COMPUTE q54_velha=q54.


COMPUTE q53_98velha=q53_98.

COMPUTE q54_98velha=q54_98.

EXECUTE.


DO IF (q52=0).
RECODE q53 (ELSE=SYSMIS).
RECODE q54 (ELSE=SYSMIS).
RECODE q53_98 (ELSE=SYSMIS).
RECODE q54_98 (ELSE=SYSMIS).
END IF. 
EXECUTE.


**q55***********************************************************************************************************

COMPUTE q56_1_velha=q56_1.
COMPUTE q56_2_velha=q56_2.
EXECUTE.


DO IF (q55=0).
RECODE q56_1 (ELSE=SYSMIS).
RECODE q56_2  (ELSE=SYSMIS).
END IF. 
EXECUTE.



**q57***********************************************************************************************************

COMPUTE q58_velha=q58.
EXECUTE.


DO IF (q57=0).
RECODE q59 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q59***********************************************************************************************************

COMPUTE q60_velha=q60.
EXECUTE.


DO IF (q59=0).
RECODE q60 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q61***********************************************************************************************************

COMPUTE q62_velha=q62.
COMPUTE q63_velha=q63.
COMPUTE q64_velha=q64.
EXECUTE.


DO IF (q61=0).
RECODE q62 (ELSE=SYSMIS).
RECODE q63 (ELSE=SYSMIS).
RECODE q64 (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q63=0).
RECODE q64 (ELSE=SYSMIS).
END IF. 
EXECUTE.



VARIABLE LABELS
q2_1_velha'q2_1_v11144_1_2. A qual secretaria a assistência social está associada?1: Educação'
q2_2_velha'q2_2_v11144_2_2. A qual secretaria a assistência social está associada?2: Planejamento'
q2_3_velha'q2_3_v11144_3_2. A qual secretaria a assistência social está associada?3: Saúde'
q2_4_velha'q2_4_v11144_4_2. A qual secretaria a assistência social está associada?4: Habitação'
q2_5_velha'q2_5_v11144_5_2. A qual secretaria a assistência social está associada?5: Segurança Alimentar'
q2_6_velha'q2_6_v11144_6_2. A qual secretaria a assistência social está associada?6: Trabalho e/ou Emprego'
q2_7_velha'q2_7_v11144_7_2. A qual secretaria a assistência social está associada?7: Direitos Humanos'
q2_99_velha'q2_99_v11144_99_2. A qual secretaria a assistência social está associada?99: Outra'
q4_velha'q4_v13077_4. No caso de haver subdivisão administrativa de Proteção Social Especial, ela é desmembrada entre Alta e Média Complexidade?'
q6_1_velha'q6_1_v13079_1_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:1: Conceituação da assistência social'
q6_2_velha'q6_2_v13079_2_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:2: Funções da assistência social (Vigilância Socioassistencial, Proteção Social, Defesa de Direitos)'
q6_3_velha'q6_3_v13079_3_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:3: Princípios pelos quais a Assistência Social é regida'
q6_4_velha'q6_4_v13079_4_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:4: Diretrizes para organização da Assistência Social'
q6_5_velha'q6_5_v13079_5_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:5: Organização da assistência social por níveis de Proteção Social'
q6_6_velha'q6_6_v13079_6_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:6: Conceituação e Objetivos do SUAS'
q6_7_velha'q6_7_v13079_7_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:7: Público destinatário do SUAS'
q6_8_velha'q6_8_v13079_8_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:8: Previsão do financiamento dos serviços'
q6_9_velha'q6_9_v13079_9_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:9: Previsão do financiamento dos programas e projetos'
q6_10_velha'q6_10_v13079_10_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:10: Previsão do financiamento dos benefícios socioassistenciais'
q6_11_velha'q6_11_v13079_11_6. Conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:11: Especificação do órgão da Administração Pública responsável pela coordenação da Política de Assistência Social'
q6_12_velha'q6_12_v13079_12_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:12: Previsão de prazo para regulamentação do funcionamento do Fundo de Assistência Social'
q6_13_velha'q6_13_v13079_13_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:13: Especificação e/ou conceituação dos equipamentos públicos estatais CRAS e CREAS'
q6_14_velha'q6_14_v13079_14_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:14: Especificação e/ou conceituação dos serviços socioassistenciais'
q6_15_velha'q6_15_v13079_15_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:15: Especificação, conceituação e/ou formas de concessão dos benefícios eventuais'
q6_16_velha'q6_16_v13079_16_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:16: Criação e/ou competências do Conselho Municipal de Assistência Social'
q6_17_velha'q6_17_v13079_17_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:17: Criação do Fundo Municipal de Assistência Social'
q6_18_velha'q6_18_v13079_18_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:18: Instituição do Plano Municipal de Assistência Social'
q6_19_velha'q6_19_v13079_19_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:19: Organização das Conferências Municipais de Assistência Social'
q6_20_velha'q6_20_v13079_20_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:20: Instâncias de pactuação'
q6_21_velha'q6_21_v13079_21_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:21: Relação com as Organizações da Sociedade Civil'
q6_22_velha'q6_22_v13079_22_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:22: Organização dos Recursos Humanos (cargos e salários, gratificações, educação permanente, entre outros)'
q6_99_velha'q6_99_v13079_99_6. Informe o conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social – SUAS:99: Outros'
q12_velha'q12_v11340_12. Caso sim, quantas pessoas?'
q13_velha'q13_v13084_13. Este quantitativo considera:'
q14_velha'q14_v11342_14. Como foi realizado este levantamento ou pesquisa?'
q16_velha'q16_v13200_16. Em qual(is) unidade(s) e com que equipe o Serviço é ofertado?'
q17_velha'q17_v13201_17. Quantas pessoas foram atendidas pelo Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas no município, em Agosto/2019?'
q18_1_velha'q18_1_v11196_1_18. Como a Assistência Social atende questões de violações de direitos no município?1: Atende no CREAS do município'
q18_2_velha'q18_2_v11196_2_18. Como a Assistência Social atende questões de violações de direitos no município?2: Encaminha para o CREAS de outro município'
q18_3_velha'q18_3_v11196_3_18. Como a Assistência Social atende questões de violações de direitos no município?3: Encaminha para o CREAS Regional ao qual está vinculado'
q18_4_velha'q18_4_v11196_4_18. Como a Assistência Social atende questões de violações de direitos no município?4: Atende no CRAS'
q18_5_velha'q18_5_v11196_5_18. Como a Assistência Social atende questões de violações de direitos no município?5: Atende em entidade ou organização da sociedade civil no município'
q18_6_velha'q18_6_v11196_6_18. Como a Assistência Social atende questões de violações de direitos no município?6: É atendido pela equipe de referência (ou técnica(o) do órgão gestor'
q18_99_velha'q18_99_v11196_99_18. Como a Assistência Social atende questões de violações de direitos no município?99: Outro'
q18_0_velha'q18_0_v11196_0_18. Como a Assistência Social atende questões de violações de direitos no município?0: Não é atendido pela Assistência Social'
q19_1_velha'q19_1_v14658_1_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?1: Atende no CREAS do município'
q19_2_velha'q19_2_v14658_2_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?2: Encaminha para o CREAS de outro município'
q19_3_velha'q19_3_v14658_3_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?3: Encaminha para o CREAS Regional ao qual está vinculado'
q19_4_velha'q19_4_v14658_4_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?4: Executa no CRAS'
q19_5_velha'q19_5_v14658_5_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?5: Executa em entidade no município'
q19_6_velha'q19_6_v14658_6_19. Como o município atende adolescentes em cumprimento de MSE-  LA e PSC?6: Executa em outra unidade pública (exceto CREAS) de acompanhamento de adolescentes em cumprimento de Medida Socioeducativa (LA ou PSC) do município'
q19_7_velha'q19_7_v14658_7_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?7: É atendido pela equipe de referência (ou técnico) do órgão gestor (responda a questão 20)'
q19_99_velha'q19_99_v14658_99_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?99: Outro'
q19_0_velha'q19_0_v14658_0_19. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?0: Não atende'
q20_1_velha'q20_1_v14662_1_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?1: Atendimento/acompanhamento direto às famílias e indivíduos'
q20_2_velha'q20_2_v14662_2_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?2: Elaboração dos Planos de Acompanhamento Familiar ou Individual'
q20_3_velha'q20_3_v14662_3_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?3: Elaboração de relatórios técnicos sobre as famílias/indivíduos em acompanhamento'
q20_4_velha'q20_4_v14662_4_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?4: Registro do atendimento/acompanhamento em prontuário'
q20_5_velha'q20_5_v14662_5_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?5: Encaminhamento dos usuários para a rede de serviços local'
q20_6_velha'q20_6_v14662_6_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?6: Articulação da rede de políticas setoriais no município'
q20_7_velha'q20_7_v14662_7_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?7: Articulação com os órgãos do sistema de justiça do município'
q20_8_velha'q20_8_v14662_8_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?8: Busca ativa'
q20_0_velha'q20_0_v14662_0_20. Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza?0: Nenhuma das anteriores'
q22_1_velha'q22_1_v14664_1_22. Em qual(is) unidade(s) o serviço é ofertado?1: No(s) CREAS'
q22_2_velha'q22_2_v14664_2_22. Em qual(is) unidade(s) o serviço é ofertado?2: No(s) Centro POP'
q22_3_velha'q22_3_v14664_3_22. Em qual(is) unidade(s) o serviço é ofertado?3: Na sede/órgão gestor do município (considerar nesta opção estruturas administrativas descentralizadas, como regionais ou similares)'
q22_4_velha'q22_4_v14664_4_22. Em qual(is) unidade(s) o serviço é ofertado?4: Em outra unidade pública. Se sim, quantas unidades?'
q22_5_velha'q22_5_v14664_5_22. Em qual(is) unidade(s) o serviço é ofertado?5: Em entidade ou Organização da Sociedade Civil Se sim, quantas unidades?'
q25_velha'q25_v14669_25. Caso sim, o Programa de apoio à família guardiã na família extensa (Guarda Subsidiada) é regulamentado por lei municipal?'
q26_velha'q26_v14670_26. O Programa de apoio à família guardiã na família extensa (Guarda Subsidiada) é ofertado por unidade governamental ou por Organização da Sociedade Civil (OSC)?'
q27_velha'q27_v14671_27. Atualmente, quantas crianças e/ou adolescente estão acolhidos em famílias guardiãs na família extensa inseridas no Programa?'
q28_velha'q28_v14672_28. Atualmente, quantas famílias recebem recursos pelo Programa? (Se não tiver, preencher “0”)'
q29_velha'q29_v14674_29. Qual é o valor médio de repasse a estas famílias?'
q30_1_velha'q30_1_v13140_1_30. Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? 1: Visitas domiciliares da equipe técnica do Programa à família'
q30_2_velha'q30_2_v13140_2_30. Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? 2: Reuniões com grupos de famílias'
q30_3_velha'q30_3_v13140_3_30. Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? 3: Atendimento psicossocial individualizado'
q30_4_velha'q30_4_v13140_4_30. Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? 4: Palestras / oficinas'
q30_5_velha'q30_5_v13140_5_30. Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? 5: Elaboração de relatórios técnicos sobre casos em acompanhamento'
q30_6_velha'q30_6_v13140_6_30. Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? 6: Envio de relatórios para o Judiciário'
q30_0_velha'q30_0_v13140_0_30. Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? 0: Não realiza nenhuma das atividades acima'
q31_1_velha'q31_1_v14675_1_31. Acolhimento de crianças/adolescentes,gestão e monitoramento?1: Controla o acesso às vagas (controle da porta de entrada), sendo responsável por indicar a Unidade de Acolhimento que receberá a criança/adolescente'
q31_2_velha'q31_2_v14675_2_31. Acolhimento de crianças/adolescentes, atividades de gestão e monitoramento realizadas pelo órgão gestor da Assistência Social?2: Acompanha/monitora o fluxo de entradas e saídas de crianças e adolescentes nas Unidades'
q31_3_velha'q31_3_v14675_3_31. Acolhimento de crianças/adolescentes, atividades de gestão e monitoramento realizadas pelo órgão gestor da Assistência Social?3: Centraliza as informações das medidas de acolhimento determinadas pelo poder Judiciário'
q31_4_velha'q31_4_v14675_4_31. Acolhimento de crianças/adolescentes, atividades de gestão e monitoramento realizadas pelo órgão gestor da Assistência Social?4: Centraliza as informações dos acolhimentos emergenciais realizados pelo Conselho Tutelar'
q31_5_velha'q31_5_v14675_5_31. Acolhimento de crianças/adolescentes, atividades de gestão e monitoramento realizada pelo órgão gestor da AS?5: Promove a articulação dos serviços de acolhimento com os demais serviços da rede socioassistencial'
q31_6_velha'q31_6_v14675_6_31. Acolhimento de crianças/adolescentes, gestão e monitoramento realizada pelo órgão gestor da AS?6: Promove a articulação dos serviços de acolhimento com as demais políticas públicas e órgãos de defesa de direitos'
q31_7_velha'q31_7_v14675_7_31. Nos casos de acolhimento de crianças e adolescentes, quais atividades de gestão e monitoramento são realizadas pelo órgão gestor da Assistência Social?7: Realiza supervisão e suporte técnico aos serviços de acolhimento'
q31_8_velha'q31_8_v14675_8_31. Acolhimento de crianças/adolescentes, quais atividades de gestão e monitoramento realizada pelo órgão gestor da AS?8: Monitora o tempo de permanência das crianças e adolescentes nos serviços de acolhimento'
q31_9_velha'q31_9_v14675_9_31. Nos casos de acolhimento de crianças e adolescentes, quais atividades de gestão e monitoramento são realizadas pelo órgão gestor da Assistência Social?9: Fiscaliza a qualidade dos serviços'
q31_0_velha'q31_0_v14675_0_31. Nos casos de acolhimento de crianças e adolescentes, quais atividades de gestão e monitoramento são realizadas pelo órgão gestor da Assistência Social?0: Não realiza nenhuma das atividades listadas acima'
q38_1_velha'q38_1_v13166_1_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?1: Serviço Nacional do Emprego – SINE'
q38_2_velha'q38_2_v13166_2_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?2: Cursos do PRONATEC'
q38_3_velha'q38_3_v13166_3_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?3: Cursos técnicos de instituições municipais/estaduais'
q38_4_velha'q38_4_v13166_4_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?4: Cooperativas'
q38_5_velha'q38_5_v13166_5_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?5: Microcrédito'
q38_6_velha'q38_6_v13166_6_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?6: Micro empreendedorismo individual'
q38_7_velha'q38_7_v13166_7_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?7: Sistema S (SESC, SENAC, SESI, SENAR, etc)'
q38_8_velha'q38_8_v13166_8_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?8: Organizações de trabalhadores (sindicatos, conselhos, etc)'
q38_99_velha'q38_99_v13166_99_38. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?99: Outros'
q39_1_velha'q39_1_v13186_1_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?1: Pessoas inscritas no CADÚNICO;'
q39_2_velha'q39_2_v13186_2_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?2: Beneficiárias(os) do Programa Bolsa Família;'
q39_3_velha'q39_3_v13186_3_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?3: Pessoas com deficiência;'
q39_4_velha'q39_4_v13186_4_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?4: Pessoas do Serviço de Convivência e Fortalecimento de Vínculos;'
q39_5_velha'q39_5_v13186_5_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?5: Adolescentes e jovens no sistema socioeducativo e egressas(os);'
q39_6_velha'q39_6_v13186_6_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?6: Adultas(os) em Famílias com presença de trabalho infantil;'
q39_7_velha'q39_7_v13186_7_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?7: Famílias com pessoas em situação de privação de liberdade;'
q39_8_velha'q39_8_v13186_8_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?8: Indivíduos egressos do sistema penal;'
q39_9_velha'q39_9_v13186_9_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?9: Famílias com crianças em situação de acolhimento provisório;'
q39_10_velha'q39_10_v13186_10_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?10: Adolescentes e jovens no serviço de acolhimento e egressas(os);'
q39_11_velha'q39_11_v13186_11_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?11: População em Situação de Rua;'
q39_12_velha'q39_12_v13186_12_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?12: Povos e comunidades tradicionais;'
q39_99_velha'q39_99_v13186_99_39. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acessuas Trabalho?99: Outros'
q40_1_velha'q40_1_v13187_1_40. Especifique ações relativas ao BPC são desenvolvidas pela Assistência Social no município:1: Realizar estudos sobre as condições de vulnerabilidade das famílias com pessoas idosas e com deficiência'
q40_2_velha'q40_2_v13187_2_40. Especifique ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município:2: Orientar a população usuária sobre seus direitos e procedimentos para acesso ao BPC'
q40_3_velha'q40_3_v13187_3_40. Especifique quais as ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município:3: Apoiar e acompanhar o processo de concessão do BPC'
q40_4_velha'q40_4_v13187_4_40. Especifique ações relativas ao BPC são desenvolvidas pela Assistência Social no município:4: Distribuir aos CRAS e CREAS do município listas territorializadas das famílias com beneficiárias(os) do BPC'
q40_5_velha'q40_5_v13187_5_40. Especifique ações relativas ao BPC são desenvolvidas pela Assistência Social no município:5: Articular com outros setores a inserção das(os) beneficiárias(os) nas diversas políticas sociais'
q40_6_velha'q40_6_v13187_6_40. Especifique  ações relativas ao BPC são desenvolvidas pela Assistência Social no município:6: Realizar e acompanhar a inserção e atualização das(os) beneficiárias(os) do BPC no Cadastro Único'
q40_7_velha'q40_7_v13187_7_40. Especifique quais as ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município:7: Articular ações com INSS acerca do requerimento e manutenção do BPC'
q40_8_velha'q40_8_v13187_8_40. Ações relativas ao BPC desenvolvidas pela AS no município:8: Realizar e acompanhar a inserção de crianças e adolescentes com deficiência beneficiárias do BPC na escola, em articulação com o Grupo Gestor Local'
q40_9_velha'q40_9_v13187_9_40. Especifique  ações relativas ao (BPC são desenvolvidas pela Assistência Social no município:9: Acompanhar a inserção de jovens e adultas(os) com deficiência beneficiárias(os) do BPC no mundo do trabalho'
q40_99_velha'q40_99_v13187_99_40. Especifique quais as ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município:99: Outros'
q40_0_velha'q40_0_v13187_0_40. Especifique quais as ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município:0: Não realiza'
q45_1_1_velha'q45_1_1_v13190_1_45.1. Na sede do órgão gestor/Secretaria de Assistência1: Entrevista para Inclusão Cadastral'
q45_1_2_velha'q45_1_2_v13190_2_45.1. Na sede do órgão gestor/Secretaria de Assistência2: Entrevista para Atualização Cadastral'
q45_1_3_velha'q45_1_3_v13190_3_45.1. Na sede do órgão gestor/Secretaria de Assistência3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_1_4_velha'q45_1_4_v13190_4_45.1. Na sede do órgão gestor/Secretaria de Assistência4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_1_0_velha'q45_1_0_v13190_0_45.1. Na sede do órgão gestor/Secretaria de Assistência0: Não realiza'
q45_2_1_velha'q45_2_1_v14693_1_45.2. Nos CRAS1: Entrevista para Inclusão Cadastral'
q45_2_2_velha'q45_2_2_v14693_2_45.2. Nos CRAS2: Entrevista para Atualização Cadastral'
q45_2_3_velha'q45_2_3_v14693_3_45.2. Nos CRAS3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_2_4_velha'q45_2_4_v14693_4_45.2. Nos CRAS4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_2_0_velha'q45_2_0_v14693_0_45.2. Nos CRAS0: Não realiza'
q45_3_1_velha'q45_3_1_v14694_1_45.3. Em unidades/postos fixos exclusivos para cadastramento1: Entrevista para Inclusão Cadastral'
q45_3_2_velha'q45_3_2_v14694_2_45.3. Em unidades/postos fixos exclusivos para cadastramento2: Entrevista para Atualização Cadastral'
q45_3_3_velha'q45_3_3_v14694_3_45.3. Em unidades/postos fixos exclusivos para cadastramento3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_3_4_velha'q45_3_4_v14694_4_45.3. Em unidades/postos fixos exclusivos para cadastramento4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_3_0_velha'q45_3_0_v14694_0_45.3. Em unidades/postos fixos exclusivos para cadastramento0: Não realiza'
q45_4_1_velha'q45_4_1_v14695_1_45.4. Em unidades móveis ou postos temporários1: Entrevista para Inclusão Cadastral'
q45_4_2_velha'q45_4_2_v14695_2_45.4. Em unidades móveis ou postos temporários2: Entrevista para Atualização Cadastral'
q45_4_3_velha'q45_4_3_v14695_3_45.4. Em unidades móveis ou postos temporários3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_4_4_velha'q45_4_4_v14695_4_45.4. Em unidades móveis ou postos temporários4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_4_0_velha'q45_4_5_v14695_0_45.4. Em unidades móveis ou postos temporários0: Não realiza'
q45_5_1_velha'q45_5_1_v14696_1_45.5. Em outras unidades da Assistência Social1: Entrevista para Inclusão Cadastral'
q45_5_2_velha'q45_5_2_v14696_2_45.5. Em outras unidades da Assistência Social2: Entrevista para Atualização Cadastral'
q45_5_3_velha'q45_5_3_v14696_3_45.5. Em outras unidades da Assistência Social3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_5_4_velha'q45_5_4_v14696_4_45.5. Em outras unidades da Assistência Social4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_5_0_velha'q45_5_0_v14696_0_45.5. Em outras unidades da Assistência Social0: Não realiza'
q45_6_1_velha'q45_6_1_v14697_1_45.6. Em unidades de outras políticas públicas1: Entrevista para Inclusão Cadastral'
q45_6_2_velha'q45_6_2_v14697_2_45.6. Em unidades de outras políticas públicas2: Entrevista para Atualização Cadastral'
q45_6_3_velha'q45_6_3_v14697_3_45.6. Em unidades de outras políticas públicas3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_6_4_velha'q45_6_4_v14697_4_45.6. Em unidades de outras políticas públicas4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_6_0_velha'q45_6_0_v14697_0_45.6. Em unidades de outras políticas públicas0: Não realiza'
q45_7_1_velha'q45_7_1_v14698_1_45.7. No domicílio das famílias1: Entrevista para Inclusão Cadastral'
q45_7_2_velha'q45_7_2_v14698_2_45.7. No domicílio das famílias2: Entrevista para Atualização Cadastral'
q45_7_3_velha'q45_7_3_v14698_3_45.7. No domicílio das famílias3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_7_4_velha'q45_7_4_v14698_4_45.7. No domicílio das famílias4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_7_0_velha'q45_7_0_v14698_0_45.7. No domicílio das famílias0: Não realiza'
q45_8_1_velha'q45_8_1_v14699_1_45.8. Outros1: Entrevista para Inclusão Cadastral'
q45_8_2_velha'q45_8_2_v14699_2_45.8. Outros2: Entrevista para Atualização Cadastral'
q45_8_3_velha'q45_8_3_v14699_3_45.8. Outros3: Digitação dos dados das famílias no Sistema de Cadastro Único'
q45_8_4_velha'q45_8_4_v14699_4_45.8. Outros4: Fornecimento de comprovante de cadastramento por demanda das famílias'
q45_8_0_velha'q45_8_0_v14699_5_45.8. Outros0: Não realiza'
q47_velha'q47_v13193_47. Em média, após a entrevista, quanto tempo leva para que os dados coletados no formulário em papel sejam inseridos no sistema?'
q50_1_velha'q50_1_v14801_1_50. conteúdos/temas das ações de comunicação Realizadas pelo órgão gestor de Assistência Social em 2018?1: Informação sobre direitos das(os) usuárias(os) (Direito da pessoa idosa, da Mulher, de crianças/adolescentes, etc)'
q50_2_velha'q50_2_v14801_2_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?2: BPC'
q50_3_velha'q50_3_v14801_3_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?3: Programa Bolsa Família'
q50_4_velha'q50_4_v14801_4_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?4: Cadastro Único'
q50_5_velha'q50_5_v14801_5_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?5: Serviços Socioassistenciais (CRAS, Acolhimento, etc)'
q50_6_velha'q50_6_v14801_6_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?6: População de Rua'
q50_7_velha'q50_7_v14801_7_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?7: Trabalho Infantil'
q50_8_velha'q50_8_v14801_8_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?8: Violência Doméstica'
q50_9_velha'q50_9_v14801_9_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?9: Exploração Sexual'
q50_10_velha'q50_10_v14801_10_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?10: Desigualdade de Gênero'
q50_11_velha'q50_11_v14801_11_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?11: Direito LGBT'
q50_12_velha'q50_12_v14801_12_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?12: Divulgação de eventos técnicos'
q50_13_velha'q50_13_v14801_13_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?13: Divulgação de Orientações Técnicas'
q50_14_velha'q50_14_v14801_14_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?14: Divulgação de Normativas'
q50_15_velha'q50_15_v14801_15_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?15: Controle Social'
q50_99_velha'q50_99_v14801_99_50. Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018?99: Outros'
q53_velha'q53_v14791_53. Em que ano ocorreu a última atualização do Plano de Capacitação e Educação Permanente?'
q54_velha'q54_v14793_54. Para o ano de 2019, qual foi a previsão de quantidade de trabalhadores capacitados no plano?'
q56_1_velha'q56_1_v14795_56.1. Profissionais'
q56_2_velha'q56_2_v14708_56.2. Conselheiras(os) (não contabilizar os/as tutelares)'
q58_velha'q58_v14711_58. Em 2018, qual a quantidade de profissionais do município (SEDE E UNIDADES PÚBLICAS) que participaram de cursos do CAPACITASUAS?'
q60_velha'q60_v14714_60. Com qual frequência ocorrem as reuniões ordinárias da Mesa de Negociação do SUAS?'
q62_velha'q62_v14718_62. Qual o ano da última atualização deste PCCS?'
q63_velha'q63_v15145_63. Existe Coordenador do Programa Criança Feliz no Município?'
q64_velha'q64_v15146_64. Qual a escolaridade do Coordenador Municipal do Programa Criança Feliz no Município?'
.







