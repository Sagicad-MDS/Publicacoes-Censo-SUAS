
*****recodificar
*q3*********************************

compute q4_1_velha  =  q4_1.
compute q4_2_velha  =   q4_2 .
compute q4_3_velha  = q4_3.
compute q4_4_velha   = q4_4.
compute q4_5_velha  =  q4_5.
compute q4_6_velha  =  q4_6.
compute q4_7_velha  =  q4_7.
compute q4_8_velha  =  q4_8.
compute q4_99_velha  =  q4_99.
compute q5_1_velha  = q5_1.
compute q5_2_velha  =  q5_2.
compute q5_3_velha  =  q5_3.
compute q5_4_velha  =  q5_4 .
compute q5_5_velha  =  q5_5.
compute q5_6_velha  =  q5_6.
compute q5_7_velha  =  q5_7.
compute q5_8_velha  =  q5_8.
compute q5_9_velha  =  q5_9.
compute q5_10_velha  =  q5_10.
compute q5_11_velha  =  q5_11.
compute q5_12_velha  =  q5_12.
compute q5_13_velha  =  q5_13.
compute q5_14_velha  = q5_14. 
compute q5_99_velha  = q5_99. 
execute. 



DO IF (q3=0).
RECODE q4_1 (ELSE=SYSMIS).
RECODE q4_2 (ELSE=SYSMIS).
RECODE q4_3 (ELSE=SYSMIS).
RECODE q4_4 (ELSE=SYSMIS).
RECODE q4_5 (ELSE=SYSMIS).
RECODE q4_6 (ELSE=SYSMIS).
RECODE q4_7 (ELSE=SYSMIS).
RECODE q4_8 (ELSE=SYSMIS).
RECODE q4_99 (ELSE=SYSMIS).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_4 (ELSE=SYSMIS).
RECODE q5_5 (ELSE=SYSMIS).
RECODE q5_6 (ELSE=SYSMIS).
RECODE q5_7 (ELSE=SYSMIS).
RECODE  q5_8 (ELSE=SYSMIS).
RECODE q5_9  (ELSE=SYSMIS).
RECODE q5_10 (ELSE=SYSMIS).
RECODE  q5_11 (ELSE=SYSMIS).
RECODE q5_12  (ELSE=SYSMIS).
RECODE q5_13  (ELSE=SYSMIS).
RECODE q5_14 (ELSE=SYSMIS).
RECODE q5_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q5_1=1).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_4 (ELSE=SYSMIS).
RECODE q5_5 (ELSE=SYSMIS).
RECODE q5_6 (ELSE=SYSMIS).
RECODE q5_7 (ELSE=SYSMIS).
RECODE  q5_8 (ELSE=SYSMIS).
RECODE q5_9  (ELSE=SYSMIS).
RECODE q5_10 (ELSE=SYSMIS).
RECODE  q5_11 (ELSE=SYSMIS).
RECODE q5_12  (ELSE=SYSMIS).
RECODE q5_13  (ELSE=SYSMIS).
RECODE q5_14 (ELSE=SYSMIS).
RECODE q5_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q10*********************************

compute q11_1_1_velha  =  q11_1_1.
compute q11_1_1_1_velha  =   q11_1_1_1 .
compute q11_1_1_2_velha  =  q11_1_1_2.
compute q11_1_1_3_velha  =   q11_1_1_3.
compute q11_2_1_velha  =  q11_2_1.
compute q11_2_1_1_velha  =   q11_2_1_1 .
compute q11_2_1_2_velha  =  q11_2_1_2.
compute q11_2_1_3_velha  =   q11_2_1_3.
compute q11_3_1_velha  = q11_3_1.
compute q11_3_1_1_velha  =   q11_3_1_1 .
compute q11_3_1_2_velha  =  q11_3_1_2.
compute q11_3_1_3_velha  =   q11_3_1_3.
compute q11_4_1_velha  =  q11_4_1.
compute q11_4_1_1_velha  =   q11_4_1_1.
compute q11_4_1_2_velha  =  q11_4_1_2.
compute q11_4_1_3_velha  =   q11_4_1_3.
compute q11_5_1_velha  =  q11_5_1.
compute q11_5_1_1_velha  =   q11_5_1_1.
compute q11_5_1_2_velha  =  q11_5_1_2.
compute q11_5_1_3_velha  =   q11_5_1_3.

DO IF (q10=0).
RECODE q11_1_1 (ELSE=SYSMIS).
RECODE q11_1_1_1 (ELSE=SYSMIS).
RECODE q11_1_1_2 (ELSE=SYSMIS).
RECODE q11_1_1_3 (ELSE=SYSMIS).
RECODE q11_2_1 (ELSE=SYSMIS).
RECODE q11_2_1_1 (ELSE=SYSMIS).
RECODE q11_2_1_2 (ELSE=SYSMIS).
RECODE q11_2_1_3 (ELSE=SYSMIS).
RECODE q11_3_1 (ELSE=SYSMIS).
RECODE q11_3_1_1 (ELSE=SYSMIS).
RECODE q11_3_1_2 (ELSE=SYSMIS).
RECODE q11_3_1_3 (ELSE=SYSMIS).
RECODE q11_4_1  (ELSE=SYSMIS).
RECODE q11_4_1_1  (ELSE=SYSMIS).
RECODE q11_4_1_2  (ELSE=SYSMIS).
RECODE q11_4_1_3 (ELSE=SYSMIS).
RECODE q11_5_1 (ELSE=SYSMIS).
RECODE q11_5_1_1  (ELSE=SYSMIS).
RECODE q11_5_1_2  (ELSE=SYSMIS).
RECODE q11_5_1_3  (ELSE=SYSMIS).
END IF.
EXECUTE.

***q15*******************************************************

compute q15_0_velha  =  q15_0.
compute q15_1_velha  =  q15_1.
compute q15_2_velha  =   q15_2 .
compute q15_99_velha  =  q13_99.


DO IF (q15_0=1).
RECODE q15_1 (ELSE=SYSMIS).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q16**************************************************************

compute q16_1_velha  =  q16_1.
compute q16_2_velha  = q16_2.
compute q16_3_velha  = q16_3.
compute q16_4_velha  = q16_4.
compute q16_99_velha  = q16_99.
compute q16_0_velha  = q16_0.


DO IF (q16_0=1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q19******************************************************************

compute q20_1_velha  = q20_1.
compute q20_2_velha  =  q20_2.
compute q20_3_velha  = q20_3.
compute q20_4_velha  = q20_4.
compute q20_5_velha  = q20_5.
compute q20_6_velha  = q20_6.
compute q20_7_velha  = q20_7.
compute q20_8_velha  = q20_8.
compute q20_9_velha  = q20_9.
compute q20_10_velha  = q20_10.
compute q20_11_velha  = q20_11.
compute q20_12_velha  = q20_12.
compute q20_13_velha  = q20_13.
compute q20_14_velha  = q20_14.
compute q20_0_velha  = q20_0.
compute q21_velha  = q21.
compute q22_velha  = q22.
compute q23_1_velha  = q23_1.
compute q23_2_velha  = q23_2.
compute q23_3_velha  = q23_3.
compute q23_4_velha  = q23_4.
compute q23_5_velha  = q23_5.
compute q23_6_velha  = q23_6.
compute q23_7_velha  = q23_7.
compute q23_8_velha  = q23_8.
compute q23_9_velha  = q23_9.
compute q23_10_velha  = q23_10.
compute q23_11_velha  = q23_11.
compute q23_12_velha  = q23_12.
compute q24_1_velha  = q24_1.
compute q24_2_velha  = q24_2.
compute q24_3_velha  = q24_3.
compute q24_4_velha  = q24_4.
compute q24_5_velha  = q24_5.
compute q24_99_velha  = q24_99.

DO IF (q19=0).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
RECODE q20_6 (ELSE=SYSMIS).
RECODE q20_7 (ELSE=SYSMIS).
RECODE q20_8 (ELSE=SYSMIS).
RECODE q20_9 (ELSE=SYSMIS).
RECODE q20_10 (ELSE=SYSMIS).
RECODE q20_11 (ELSE=SYSMIS).
RECODE q20_12 (ELSE=SYSMIS).
RECODE q20_13 (ELSE=SYSMIS).
RECODE q20_14 (ELSE=SYSMIS).
RECODE q20_0 (ELSE=SYSMIS).
RECODE q21 (ELSE=SYSMIS).
RECODE q22 (ELSE=SYSMIS).
RECODE q23_1 (ELSE=SYSMIS).
RECODE q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS).
RECODE q23_6 (ELSE=SYSMIS).
RECODE q23_7 (ELSE=SYSMIS).
RECODE q23_8 (ELSE=SYSMIS).
RECODE q23_9 (ELSE=SYSMIS).
RECODE q23_10 (ELSE=SYSMIS).
RECODE q23_11 (ELSE=SYSMIS).
RECODE q23_12 (ELSE=SYSMIS).
RECODE q24_1 (ELSE=SYSMIS).
RECODE q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_5 (ELSE=SYSMIS).
RECODE q24_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q20******************************************************************

DO IF (q20_0=1).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
RECODE q20_6 (ELSE=SYSMIS).
RECODE q20_7 (ELSE=SYSMIS).
RECODE q20_8 (ELSE=SYSMIS).
RECODE q20_9 (ELSE=SYSMIS).
RECODE q20_10 (ELSE=SYSMIS).
RECODE q20_11 (ELSE=SYSMIS).
RECODE q20_12 (ELSE=SYSMIS).
RECODE q20_13 (ELSE=SYSMIS).
RECODE q20_14 (ELSE=SYSMIS).
RECODE q21 (ELSE=SYSMIS).
RECODE q22 (ELSE=SYSMIS).
RECODE q23_1 (ELSE=SYSMIS).
RECODE q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS).
RECODE q23_6 (ELSE=SYSMIS).
RECODE q23_7 (ELSE=SYSMIS).
RECODE q23_8 (ELSE=SYSMIS).
RECODE q23_9 (ELSE=SYSMIS).
RECODE q23_10 (ELSE=SYSMIS).
RECODE q23_11 (ELSE=SYSMIS).
RECODE q23_12 (ELSE=SYSMIS).
RECODE q24_1 (ELSE=SYSMIS).
RECODE q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_5 (ELSE=SYSMIS).
RECODE q24_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q23******************************************************************

DO IF (q23_1=1).
RECODE q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS).
RECODE q23_6 (ELSE=SYSMIS).
RECODE q23_7 (ELSE=SYSMIS).
RECODE q23_8 (ELSE=SYSMIS).
RECODE q23_9 (ELSE=SYSMIS).
RECODE q23_10 (ELSE=SYSMIS).
RECODE q23_11 (ELSE=SYSMIS).
RECODE q23_12 (ELSE=SYSMIS).
END IF.
EXECUTE.



**q25************************************************************************


compute q26_1_velha  = q26_1.
compute q26_2_velha  = q26_2.
compute q26_3_velha  = q26_3.
compute q26_4_velha  = q26_4.
compute q27_1_velha  = q27_1.
compute q27_2_velha  = q27_2.
compute q27_3_velha  = q27_3.
compute q27_4_velha  = q27_4.
compute q27_5_velha  = q27_5.
compute q27_6_velha  = q27_6.
compute q27_7_velha  = q27_7.
compute q27_8_velha  = q27_8.
compute q27_9_velha  = q27_9.
compute q27_99_velha  = q27_99.



DO IF (q25=0).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q27_1 (ELSE=SYSMIS).
RECODE q27_2 (ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_4 (ELSE=SYSMIS).
RECODE q27_5 (ELSE=SYSMIS).
RECODE q27_6 (ELSE=SYSMIS).
RECODE q27_7 (ELSE=SYSMIS).
RECODE q27_8 (ELSE=SYSMIS).
RECODE q27_9 (ELSE=SYSMIS).
RECODE q27_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

**q26************************************************************************

DO IF (q26_4=0).
RECODE q27_1 (ELSE=SYSMIS).
RECODE q27_2 (ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_4 (ELSE=SYSMIS).
RECODE q27_5 (ELSE=SYSMIS).
RECODE q27_6 (ELSE=SYSMIS).
RECODE q27_7 (ELSE=SYSMIS).
RECODE q27_8 (ELSE=SYSMIS).
RECODE q27_9 (ELSE=SYSMIS).
RECODE q27_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

**q28************************************************************************

compute q29_1_velha  = q29_1.
compute q29_2_velha  = q29_2.
compute q29_3_velha  = q29_3.
compute q29_4_velha  = q29_4.
compute q29_5_velha  = q29_5.
compute q29_0_velha  = q29_0.


DO IF (q28=0).
RECODE q29_1 (ELSE=SYSMIS).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
RECODE q29_0 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q29************************************************************************


DO IF (q29_0=1).
RECODE q29_1 (ELSE=SYSMIS).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
END IF.
EXECUTE.



**q31************************************************************************

compute q31_1_1_velha  = q31_1_1.
compute q31_1_2_velha  =  q31_1_2.
compute q31_1_3_velha  = q31_1_3.
compute q31_1_4_velha  =  q31_1_4.
compute q31_1_5_velha  = q31_1_5.
compute q31_1_6_velha  =  q31_1_6.
compute q31_1_7_velha  = q31_1_7.
compute q31_1_8_velha  = q31_1_8.
compute q31_1_9_velha  = q31_1_9.
compute q31_1_0_velha  = q31_1_0.
compute q31_1_97_velha  =  q31_1_97.
compute q31_2_1_velha  = q31_2_1.
compute q31_2_2_velha  =  q31_2_2.
compute q31_2_3_velha  = q31_2_3.
compute q31_2_4_velha  =  q31_2_4.
compute q31_2_5_velha  = q31_2_5.
compute q31_2_6_velha  =  q31_2_6.
compute q31_2_7_velha  = q31_2_7.
compute q31_2_8_velha  = q31_2_8.
compute q31_2_9_velha  = q31_2_9.
compute q31_2_0_velha  = q31_2_0.
compute q31_2_97_velha  =  q31_2_97.
compute q31_3_1_velha  = q31_3_1.
compute q31_3_2_velha  =  q31_3_2.
compute q31_3_3_velha  = q31_3_3.
compute q31_3_4_velha  =  q31_3_4.
compute q31_3_5_velha  = q31_3_5.
compute q31_3_6_velha  =  q31_3_6.
compute q31_3_7_velha  = q31_3_7.
compute q31_3_8_velha  = q31_3_8.
compute q31_3_9_velha  = q31_3_9.
compute q31_3_0_velha  = q31_3_0.
compute q31_3_97_velha  =  q31_3_97.
compute q31_4_1_velha  = q31_4_1.
compute q31_4_2_velha  =  q31_4_2.
compute q31_4_3_velha  = q31_4_3.
compute q31_4_4_velha  =  q31_4_4.
compute q31_4_5_velha  = q31_4_5.
compute q31_4_6_velha  =  q31_4_6.
compute q31_4_7_velha  = q31_4_7.
compute q31_4_8_velha  = q31_4_8.
compute q31_4_9_velha  = q31_4_9.
compute q31_4_0_velha  = q31_4_0.
compute q31_4_97_velha  =  q31_4_97.
compute q31_5_1_velha  = q31_5_1.
compute q31_5_2_velha  =  q31_5_2.
compute q31_5_3_velha  = q31_5_3.
compute q31_5_4_velha  =  q31_5_4.
compute q31_5_5_velha  = q31_5_5.
compute q31_5_6_velha  =  q31_5_6.
compute q31_5_7_velha  = q31_5_7.
compute q31_5_8_velha  = q31_5_8.
compute q31_5_9_velha  = q31_5_9.
compute q31_5_0_velha  = q31_5_0.
compute q31_5_97_velha  =  q31_5_97.
compute q31_6_1_velha  = q31_6_1.
compute q31_6_2_velha  =  q31_6_2.
compute q31_6_3_velha  = q31_6_3.
compute q31_6_4_velha  =  q31_6_4.
compute q31_6_5_velha  = q31_6_5.
compute q31_6_6_velha  =  q31_6_6.
compute q31_6_7_velha  = q31_6_7.
compute q31_6_8_velha  = q31_6_8.
compute q31_6_9_velha  = q31_6_9.
compute q31_6_0_velha  = q31_6_0.
compute q31_6_97_velha  =  q31_6_97.
compute q31_7_1_velha  = q31_7_1.
compute q31_7_2_velha  =  q31_7_2.
compute q31_7_3_velha  = q31_7_3.
compute q31_7_4_velha  =  q31_7_4.
compute q31_7_5_velha  = q31_7_5.
compute q31_7_6_velha  =  q31_7_6.
compute q31_7_7_velha  = q31_7_7.
compute q31_7_8_velha  = q31_7_8.
compute q31_7_9_velha  = q31_7_9.
compute q31_7_0_velha  = q31_7_0.
compute q31_7_97_velha  =  q31_7_97.
compute q31_8_1_velha  = q31_8_1.
compute q31_8_2_velha  =  q31_8_2.
compute q31_8_3_velha  = q31_8_3.
compute q31_8_4_velha  =  q31_8_4.
compute q31_8_5_velha  = q31_8_5.
compute q31_8_6_velha  =  q31_8_6.
compute q31_8_7_velha  = q31_8_7.
compute q31_8_8_velha  = q31_8_8.
compute q31_8_9_velha  = q31_8_9.
compute q31_8_0_velha  = q31_8_0.
compute q31_8_97_velha  =  q31_8_97.
compute q31_9_1_velha  = q31_9_1.
compute q31_9_2_velha  =  q31_9_2.
compute q31_9_3_velha  = q31_9_3.
compute q31_9_4_velha  =  q31_9_4.
compute q31_9_5_velha  = q31_9_5.
compute q31_9_6_velha  =  q31_9_6.
compute q31_9_7_velha  = q31_9_7.
compute q31_9_8_velha  = q31_9_8.
compute q31_9_9_velha  = q31_9_9.
compute q31_9_0_velha  = q31_9_0.
compute q31_9_97_velha  =  q31_9_97.
compute q31_10_1_velha  = q31_10_1.
compute q31_10_2_velha  =  q31_10_2.
compute q31_10_3_velha  = q31_10_3.
compute q31_10_4_velha  =  q31_10_4.
compute q31_10_5_velha  = q31_10_5.
compute q31_10_6_velha  =  q31_10_6.
compute q31_10_7_velha  = q31_10_7.
compute q31_10_8_velha  = q31_10_8.
compute q31_10_9_velha  = q31_10_9.
compute q31_10_0_velha  = q31_10_0.
compute q31_10_97_velha  =  q31_10_97.
compute q31_11_1_velha  = q31_11_1.
compute q31_11_2_velha  =  q31_11_2.
compute q31_11_3_velha  = q31_11_3.
compute q31_11_4_velha  =  q31_11_4.
compute q31_11_5_velha  = q31_11_5.
compute q31_11_6_velha  =  q31_11_6.
compute q31_11_7_velha  = q31_11_7.
compute q31_11_8_velha  = q31_11_8.
compute q31_11_9_velha  = q31_11_9.
compute q31_11_0_velha  = q31_11_0.
compute q31_11_97_velha  =  q31_11_97.
compute q31_12_1_velha  = q31_12_1.
compute q31_12_2_velha  =  q31_12_2.
compute q31_12_3_velha  = q31_12_3.
compute q31_12_4_velha  =  q31_12_4.
compute q31_12_5_velha  = q31_12_5.
compute q31_12_6_velha  =  q31_12_6.
compute q31_12_7_velha  = q31_12_7.
compute q31_12_8_velha  = q31_12_8.
compute q31_12_9_velha  = q31_12_9.
compute q31_12_0_velha  = q31_12_0.
compute q31_12_97_velha  =  q31_12_97.
compute q31_13_1_velha  = q31_13_1.
compute q31_13_2_velha  =  q31_13_2.
compute q31_13_3_velha  = q31_13_3.
compute q31_13_4_velha  =  q31_13_4.
compute q31_13_5_velha  = q31_13_5.
compute q31_13_6_velha  =  q31_13_6.
compute q31_13_7_velha  = q31_13_7.
compute q31_13_8_velha  = q31_13_8.
compute q31_13_9_velha  = q31_13_9.
compute q31_13_0_velha  = q31_13_0.
compute q31_13_97_velha  =  q31_13_97.
compute q31_14_1_velha  = q31_14_1.
compute q31_14_2_velha  =  q31_14_2.
compute q31_14_3_velha  = q31_14_3.
compute q31_14_4_velha  =  q31_14_4.
compute q31_14_5_velha  = q31_14_5.
compute q31_14_6_velha  =  q31_14_6.
compute q31_14_7_velha  = q31_14_7.
compute q31_14_8_velha  = q31_14_8.
compute q31_14_9_velha  = q31_14_9.
compute q31_14_0_velha  = q31_14_0.
compute q31_14_97_velha  =  q31_14_97.
compute q31_15_1_velha  = q31_15_1.
compute q31_15_2_velha  =  q31_15_2.
compute q31_15_3_velha  = q31_15_3.
compute q31_15_4_velha  =  q31_15_4.
compute q31_15_5_velha  = q31_15_5.
compute q31_15_6_velha  =  q31_15_6.
compute q31_15_7_velha  = q31_15_7.
compute q31_15_8_velha  = q31_15_8.
compute q31_15_9_velha  = q31_15_9.
compute q31_15_0_velha  = q31_15_0.
compute q31_15_97_velha  =  q31_15_97.
compute q31_16_1_velha  = q31_16_1.
compute q31_16_2_velha  =  q31_16_2.
compute q31_16_3_velha  = q31_16_3.
compute q31_16_4_velha  =  q31_16_4.
compute q31_16_5_velha  = q31_16_5.
compute q31_16_6_velha  =  q31_16_6.
compute q31_16_7_velha  = q31_16_7.
compute q31_16_8_velha  = q31_16_8.
compute q31_16_9_velha  = q31_16_9.
compute q31_16_0_velha  = q31_16_0.
compute q31_16_97_velha  =  q31_16_97.


DO IF (q31_1_0=1 | q31_1_97=1).
RECODE q31_1_1 (ELSE=SYSMIS).
RECODE q31_1_2 (ELSE=SYSMIS).
RECODE q31_1_3 (ELSE=SYSMIS).
RECODE q31_1_4 (ELSE=SYSMIS).
RECODE q31_1_5 (ELSE=SYSMIS).
RECODE q31_1_6 (ELSE=SYSMIS).
RECODE q31_1_7 (ELSE=SYSMIS).
RECODE q31_1_8 (ELSE=SYSMIS).
RECODE q31_1_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q31_2_0=1 | q31_2_97=1).
RECODE q31_2_1 (ELSE=SYSMIS).
RECODE q31_2_2 (ELSE=SYSMIS).
RECODE q31_2_3 (ELSE=SYSMIS).
RECODE q31_2_4 (ELSE=SYSMIS).
RECODE q31_2_5 (ELSE=SYSMIS).
RECODE q31_2_6 (ELSE=SYSMIS).
RECODE q31_2_7 (ELSE=SYSMIS).
RECODE q31_2_8 (ELSE=SYSMIS).
RECODE q31_2_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q31_3_0=1 | q31_3_97=1).
RECODE q31_3_1 (ELSE=SYSMIS).
RECODE q31_3_2 (ELSE=SYSMIS).
RECODE q31_3_3 (ELSE=SYSMIS).
RECODE q31_3_4 (ELSE=SYSMIS).
RECODE q31_3_5 (ELSE=SYSMIS).
RECODE q31_3_6 (ELSE=SYSMIS).
RECODE q31_3_7 (ELSE=SYSMIS).
RECODE q31_3_8 (ELSE=SYSMIS).
RECODE q31_3_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q31_4_0=1 | q31_4_97=1).
RECODE q31_4_1 (ELSE=SYSMIS).
RECODE q31_4_2 (ELSE=SYSMIS).
RECODE q31_4_3 (ELSE=SYSMIS).
RECODE q31_4_4 (ELSE=SYSMIS).
RECODE q31_4_5 (ELSE=SYSMIS).
RECODE q31_4_6 (ELSE=SYSMIS).
RECODE q31_4_7 (ELSE=SYSMIS).
RECODE q31_4_8 (ELSE=SYSMIS).
RECODE q31_4_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q31_5_0=1 | q31_5_97=1).
RECODE q31_5_1 (ELSE=SYSMIS).
RECODE q31_5_2 (ELSE=SYSMIS).
RECODE q31_5_3 (ELSE=SYSMIS).
RECODE q31_5_4 (ELSE=SYSMIS).
RECODE q31_5_5 (ELSE=SYSMIS).
RECODE q31_5_6 (ELSE=SYSMIS).
RECODE q31_5_7 (ELSE=SYSMIS).
RECODE q31_5_8 (ELSE=SYSMIS).
RECODE q31_5_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF ( q31_6_0=1 | q31_6_97=1).
RECODE q31_6_1 (ELSE=SYSMIS).
RECODE q31_6_2 (ELSE=SYSMIS).
RECODE q31_6_3 (ELSE=SYSMIS).
RECODE q31_6_4 (ELSE=SYSMIS).
RECODE q31_6_5 (ELSE=SYSMIS).
RECODE q31_6_6 (ELSE=SYSMIS).
RECODE q31_6_7 (ELSE=SYSMIS).
RECODE q31_6_8 (ELSE=SYSMIS).
RECODE q31_6_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q31_7_0=1 | q31_7_97=1).
RECODE q31_7_1 (ELSE=SYSMIS).
RECODE q31_7_2 (ELSE=SYSMIS).
RECODE q31_7_3 (ELSE=SYSMIS).
RECODE q31_7_4 (ELSE=SYSMIS).
RECODE q31_7_5 (ELSE=SYSMIS).
RECODE q31_7_6 (ELSE=SYSMIS).
RECODE q31_7_7 (ELSE=SYSMIS).
RECODE q31_7_8 (ELSE=SYSMIS).
RECODE q31_7_9 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q31_8_0=1 | q31_8_97=1).
RECODE q31_8_1 (ELSE=SYSMIS).
RECODE q31_8_2 (ELSE=SYSMIS).
RECODE q31_8_3 (ELSE=SYSMIS).
RECODE q31_8_4 (ELSE=SYSMIS).
RECODE q31_8_5 (ELSE=SYSMIS).
RECODE q31_8_6 (ELSE=SYSMIS).
RECODE q31_8_7 (ELSE=SYSMIS).
RECODE q31_8_8 (ELSE=SYSMIS).
RECODE q31_8_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q31_9_0=1 | q31_9_97=1).
RECODE q31_9_1 (ELSE=SYSMIS).
RECODE q31_9_2 (ELSE=SYSMIS).
RECODE q31_9_3 (ELSE=SYSMIS).
RECODE q31_9_4 (ELSE=SYSMIS).
RECODE q31_9_5 (ELSE=SYSMIS).
RECODE q31_9_6 (ELSE=SYSMIS).
RECODE q31_9_7 (ELSE=SYSMIS).
RECODE q31_9_8 (ELSE=SYSMIS).
RECODE q31_9_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q31_10_0=1 | q31_10_97=1).
RECODE q31_10_1 (ELSE=SYSMIS).
RECODE q31_10_2 (ELSE=SYSMIS).
RECODE q31_10_3 (ELSE=SYSMIS).
RECODE q31_10_4 (ELSE=SYSMIS).
RECODE q31_10_5 (ELSE=SYSMIS).
RECODE q31_10_6 (ELSE=SYSMIS).
RECODE q31_10_7 (ELSE=SYSMIS).
RECODE q31_10_8 (ELSE=SYSMIS).
RECODE q31_10_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q31_11_0=1 | q31_11_97=1).
RECODE q31_11_1 (ELSE=SYSMIS).
RECODE q31_11_2 (ELSE=SYSMIS).
RECODE q31_11_3 (ELSE=SYSMIS).
RECODE q31_11_4 (ELSE=SYSMIS).
RECODE q31_11_5 (ELSE=SYSMIS).
RECODE q31_11_6 (ELSE=SYSMIS).
RECODE q31_11_7 (ELSE=SYSMIS).
RECODE q31_11_8 (ELSE=SYSMIS).
RECODE q31_11_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q31_12_0=1 | q31_12_97=1).
RECODE q31_12_1 (ELSE=SYSMIS).
RECODE q31_12_2 (ELSE=SYSMIS).
RECODE q31_12_3 (ELSE=SYSMIS).
RECODE q31_12_4 (ELSE=SYSMIS).
RECODE q31_12_5 (ELSE=SYSMIS).
RECODE q31_12_6 (ELSE=SYSMIS).
RECODE q31_12_7 (ELSE=SYSMIS).
RECODE q31_12_8 (ELSE=SYSMIS).
RECODE q31_12_9 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q31_13_0=1 | q31_13_97=1).
RECODE q31_13_1 (ELSE=SYSMIS).
RECODE q31_13_2 (ELSE=SYSMIS).
RECODE q31_13_3 (ELSE=SYSMIS).
RECODE q31_13_4 (ELSE=SYSMIS).
RECODE q31_13_5 (ELSE=SYSMIS).
RECODE q31_13_6 (ELSE=SYSMIS).
RECODE q31_13_7 (ELSE=SYSMIS).
RECODE q31_13_8 (ELSE=SYSMIS).
RECODE q31_13_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q31_14_0=1 | q31_14_97=1).
RECODE q31_14_1 (ELSE=SYSMIS).
RECODE q31_14_2 (ELSE=SYSMIS).
RECODE q31_14_3 (ELSE=SYSMIS).
RECODE q31_14_4 (ELSE=SYSMIS).
RECODE q31_14_5 (ELSE=SYSMIS).
RECODE q31_14_6 (ELSE=SYSMIS).
RECODE q31_14_7 (ELSE=SYSMIS).
RECODE q31_14_8 (ELSE=SYSMIS).
RECODE q31_14_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q31_15_0=1 | q31_15_97=1).
RECODE q31_15_1 (ELSE=SYSMIS).
RECODE q31_15_2 (ELSE=SYSMIS).
RECODE q31_15_3 (ELSE=SYSMIS).
RECODE q31_15_4 (ELSE=SYSMIS).
RECODE q31_15_5 (ELSE=SYSMIS).
RECODE q31_15_6 (ELSE=SYSMIS).
RECODE q31_15_7 (ELSE=SYSMIS).
RECODE q31_15_8 (ELSE=SYSMIS).
RECODE q31_15_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q31_16_0=1 | q31_16_97=1).
RECODE q31_16_1 (ELSE=SYSMIS).
RECODE q31_16_2 (ELSE=SYSMIS).
RECODE q31_16_3 (ELSE=SYSMIS).
RECODE q31_16_4 (ELSE=SYSMIS).
RECODE q31_16_5 (ELSE=SYSMIS).
RECODE q31_16_6 (ELSE=SYSMIS).
RECODE q31_16_7 (ELSE=SYSMIS).
RECODE q31_16_8 (ELSE=SYSMIS).
RECODE q31_16_9 (ELSE=SYSMIS).
END IF.
EXECUTE.





VARIABLE LABELS
q4_1_velha'q4_1: Secretaria da Assist�ncia Social ou cong�nere-compartilha o im�vel'
q4_2_velha'q4_2: Outra unidade administrativa (Sede de Prefeitura, Administra��o Regional, Sub-Prefeitura etc)-compartilha o im�vel'
q4_3_velha'q4_3: Conselho Municipal de Assist�ncia Social-compartilha o im�vel'
q4_4_velha'q4_4: CRAS � Centro de Refer�ncia de Assist�ncia Social-compartilha o im�vel'
q4_5_velha'q4_5: CREAS � Centro de Refer�ncia Especializado de Assist�ncia Social-compartilha o im�vel'
q4_6_velha'q4_6: Unidade de Acolhimento institucional (Abrigo)-compartilha o im�vel'
q4_7_velha'q4_7: Outra unidade p�blica de servi�os da Assist�ncia Social-compartilha o im�vel'
q4_8_velha'q4_8: Entidade/Organiza��o da Sociedade Civil/Associa��o Comunit�ria-compartilha o im�vel'
q4_99_velha'q4_99: Outros-compartilha o im�vel'
q5_1_velha'q5_1: Apenas o endere�o � o mesmo, mas todos os espa�os do CPOP s�o independentes e de uso exclusivo, inclusive a entrada_espa�os compartilhados'
q5_2_velha'q5_2: Entrada / Porta de Acesso_espa�os do im�vel compartilhados'
q5_3_velha'q5_3: Recep��o_espa�os do im�vel compartilhados'
q5_4_velha'q5_4: Algumas salas de atendimento_espa�os do im�vel compartilhados'
q5_5_velha'q5_5: Todas as salas de atendimento_espa�os do im�vel compartilhados'
q5_6_velha'q5_6: Salas administrativas_espa�os do im�vel compartilhados'
q5_7_velha'q5_7: Espa�o para atividades coletivas_espa�os do im�vel compartilhados'
q5_8_velha'q5_8: Banheiros_espa�os do im�vel compartilhados'
q5_9_velha'q5_9: Copa/cozinha_espa�os do im�vel compartilhados'
q5_10_velha'q5_10: �rea Externa_espa�os do im�vel compartilhados'
q5_11_velha'q5_11: Almoxarifado ou similar_espa�os do im�vel compartilhados'
q5_12_velha'q5_12: Refeit�rio_espa�os do im�vel compartilhados'
q5_13_velha'q5_13: Lavanderia_espa�os do im�vel compartilhados'
q5_14_velha'q5_14: Espa�o para guarda de pertences_espa�os do im�vel compartilhados'
q5_99_velha'q5_99: Outros_espa�os do im�vel compartilhados'
q11_1_1_velha'q11_1_1Lanche/Caf� da Manh� - � ofertada a refei��o?'
q11_2_1_velha'q11_2_1Almo�o - � ofertada a refei��o?'
q11_3_1_velha'q11_3_1Lanche/Caf� da Tarde - � ofertada a refei��o?'
q11_4_1_velha'q11_4_1Jantar - � ofertada a refei��o?'
q11_5_1_velha'q11_5_1Lanche/Caf� da Noite - � ofertada a refei��o?'
q11_1_1_1_velha'q11_1_1_11: Restaurante Popular_ Em qual local'
q11_1_1_2_velha'q11_1_1_22: Em outra unidade p�blica ou privada_ Em qual local'
q11_1_1_3_velha'q11_1_1_33: No espa�o deste Centro POP_ Em qual local'
q11_2_1_1_velha'q11_2_1_11: Restaurante Popular_ Em qual local'
q11_2_1_2_velha'q11_2_1_22: Em outra unidade p�blica ou privada_ Em qual local'
q11_2_1_3_velha'q11_2_1_33: No espa�o deste Centro POP_ Em qual local'
q11_3_1_1_velha'q11_3_1_11: Restaurante Popular_ Em qual local'
q11_3_1_2_velha'q11_3_1_22: Em outra unidade p�blica ou privada_ Em qual local'
q11_3_1_3_velha'q11_3_1_33: No espa�o deste Centro POP_ Em qual local'
q11_4_1_1_velha'q11_4_1_11: Restaurante Popular_ Em qual local'
q11_4_1_2_velha'q11_4_1_22: Em outra unidade p�blica ou privada_ Em qual local'
q11_4_1_3_velha'q11_4_1_33: No espa�o deste Centro POP_ Em qual local'
q11_5_1_1_velha'q11_5_1_11: Restaurante Popular_ Em qual local'
q11_5_1_2_velha'q11_5_1_22: Em outra unidade p�blica ou privada_ Em qual local'
q11_5_1_3_velha'q11_5_1_33: No espa�o deste Centro POP_ Em qual local'
q15_0_velha'q15_00: N�o encaminha e/ou n�o h� estrat�gias para acolhimento provis�rio (n�o marque as demais)_acolhimento provis�rio'
q15_1_velha'q15_11: Encaminha para uma unidade de acolhimento da rede socioassistencial_acolhimento provis�rio'
q15_2_velha'q15_22: Encaminha para uma unidade de outra pol�tica p�blica_acolhimento provis�rio'
q15_99_velha'q15_9999: Outro_acolhimento provis�rio'
q16_1_velha'q16_11: Identifica pessoas com sintomas suspeitos_enfrentamento � tuberculose'
q16_2_velha'q16_22: Articula com a rede de sa�de para encaminhamento e apoio ao tratamento_enfrentamento � tuberculose'
q16_3_velha'q16_33: Garante aos usu�rios diagnosticados com Tuberculose o acesso aos servi�os de acolhimento por pelo menos 6 (seis) meses para fins de tratamento_enfrentamento � tuberculose'
q16_4_velha'q16_44: Orienta os usu�rios sobre a doen�a e seu tratamento (orienta��o individual, palestras, etc.)_enfrentamento � tuberculose'
q16_99_velha'q16_9999: Realiza outras a��es para enfrentamento da tuberculose_enfrentamento � tuberculose'
q16_0_velha'q16_00: N�o realiza nenhuma a��o espec�fica para enfretamento da tuberculose_enfrentamento � tuberculose'
q20_1_velha'q20_11: Coordena o Servi�o referenciado_Servi�o de Abordagem'
q20_2_velha'q20_22: Coleta/recebe periodicamente informa��es sobre dados de atendimento do Servi�o_Servi�o de Abordagem'
q20_3_velha'q20_33: Realiza reuni�es peri�dicas para avalia��o do Servi�o com a Unidade referenciada_Servi�o de Abordagem'
q20_4_velha'q20_44: Participa do planejamento das atividades do Servi�o_Servi�o de Abordagem'
q20_5_velha'q20_55: Acompanha cotidianamente as atividades do Servi�o_Servi�o de Abordagem'
q20_6_velha'q20_66: Constr�i estrat�gias metodol�gicas do Servi�o_Servi�o de Abordagem'
q20_7_velha'q20_77: Elabora relat�rios t�cnicos espec�ficos sobre casos atendidos/acompanhados pelo Servi�o_Servi�o de Abordagem'
q20_8_velha'q20_88: Realiza estudos de caso em parceria com o Servi�o_Servi�o de Abordagem'
q20_9_velha'q20_99: Define procedimentos comuns e/ou complementares ao Servi�o_Servi�o de Abordagem'
q20_10_velha'q20_1010: Possui fluxos de encaminhamentos e trocas de informa��es com o Servi�o_Servi�o de Abordagem'
q20_11_velha'q20_1111: Articula com a rede de servi�os socioassistenciais_Servi�o de Abordagem'
q20_12_velha'q20_1212: Articula com a rede dos servi�os das pol�ticas p�blicas setoriais_Servi�o de Abordagem'
q20_13_velha'q20_1313: Articula com os �rg�os do Sistema de Justi�a_Servi�o de Abordagem'
q20_14_velha'q20_1414: Articula com os �rg�os de defesa de direitos (Defensoria P�blica, Minist�rio P�blico, Conselho Tutelar etc.)_Servi�o de Abordagem'
q20_0_velha'q20_00: N�o realiza nenhuma das atividades acima_Servi�o de Abordagem'
q21_velha'q21Quantos dias por semana a abordagem social � realizada:'
q22_velha'q22Em quais per�odos do dia costuma ser realizada a abordagem social?'
q23_1_velha'q23_11: A Abordagem � realizada exclusivamente pela equipe do Centro Pop_abordagem social � realizada em parceria'
q23_2_velha'q23_22: Equipes da sa�de_abordagem social � realizada em parceria'
q23_3_velha'q23_33: Equipes de servi�os de acolhimento_abordagem social � realizada em parceria'
q23_4_velha'q23_44: Equipes do CREAS_abordagem social � realizada em parceria'
q23_5_velha'q23_55: Equipes de outras unidades p�blicas da rede socioassistencial_abordagem social � realizada em parceria'
q23_6_velha'q23_66: Equipes de entidades da rede socioassistencial privada_abordagem social � realizada em parceria'
q23_7_velha'q23_77: Integrantes de movimentos sociais_abordagem social � realizada em parceria'
q23_8_velha'q23_88: Guarda municipal_abordagem social � realizada em parceria'
q23_9_velha'q23_99: Pol�cia Militar_abordagem social � realizada em parceria'
q23_10_velha'q23_1010: Conselho Tutelar_abordagem social � realizada em parceria'
q23_11_velha'q23_1111: Defensoria P�blica_abordagem social � realizada em parceria'
q23_12_velha'q23_1212: Outros_abordagem social � realizada em parceria'
q24_1_velha'q24_11: Conhecimento pr�vio dos t�cnicos do Servi�o_definidas as �reas onde ser�o realizadas as abordagens'
q24_2_velha'q24_22: A partir de diagn�sticos socioterritoriais realizados pelo �rg�o gestor de Assist�ncia Social_definidas as �reas onde ser�o realizadas as abordagens'
q24_3_velha'q24_33: A partir de diagn�sticos socioterritoriais realizados pela equipe que executa o servi�o_definidas as �reas onde ser�o realizadas as abordagens'
q24_4_velha'q24_44: Demanda dos �rg�os de defesa de diretos_definidas as �reas onde ser�o realizadas as abordagens'
q24_5_velha'q24_55: Den�ncias/Solicita��es da popula��o_definidas as �reas onde ser�o realizadas as abordagens'
q24_99_velha'q24_9999: Outros_definidas as �reas onde ser�o realizadas as abordagens'
q26_1_velha'q26_11: Benef�cio Eventual em situa��o de morte_ concedidos'
q26_2_velha'q26_22: Benef�cio Eventual em situa��o de natalidade_concedidos'
q26_3_velha'q26_33: Benef�cio Eventual em situa��o de calamidade (inclui desastres e emerg�ncias)_concedidos'
q26_4_velha'q26_44: Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria_concedidos'
q27_1_velha'q27_11: Aux�lio relacionado � seguran�a alimentar (cesta b�sica, leite, entre outros)_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_2_velha'q27_22: Aux�lio para deslocamento / passagens (vale-transporte)_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_3_velha'q27_33: Aux�lio/Isen��o para retirada de documenta��o (inclui aux�lio para retirada de fotos)_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_4_velha'q27_44: Aluguel social/loca��o social/aux�lio moradia_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_5_velha'q27_55: Material de constru��o_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_6_velha'q27_66: Pagamento/ Isen��o de contas de �gua e luz_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_7_velha'q27_77: Aux�lio g�s_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_8_velha'q27_88: Vestimentas/ Roupas_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_9_velha'q27_99: M�veis e Eletrodom�sticos_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q27_99_velha'q27_9999: Outros_Benef�cio Eventual em situa��o de vulnerabilidade social tempor�ria'
q29_1_velha'q29_11: Busca ativa (entrevista domiciliar, mutir�o e a��es itinerantes) com a finalidade de inclus�o e atualiza��o cadastral_Cadastro �nico'
q29_2_velha'q29_22: Consultas ao cadastro das fam�lias e pessoas em situa��o de rua_Cadastro �nico'
q29_3_velha'q29_33: Orienta sobre quest�es relacionadas ao Cadastro �nico_Cadastro �nico'
q29_4_velha'q29_44: O Centro Pop � registrado como o endere�o de fam�lias e pessoas em situa��o de rua_Cadastro �nico'
q29_5_velha'q29_55: Encaminha fam�lias e pessoas em situa��o de rua para programas usu�rios do Cadastro �nico_Cadastro �nico'
q29_0_velha'q29_00: N�o realiza atividades relacionadas ao Cadastro �nico_Cadastro �nico'
q31_1_1_velha'q31_1_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�o Especializado em Abordagem Social'
q31_1_2_velha'q31_1_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Servi�o Especializado em Abordagem Social'
q31_1_3_velha'q31_1_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Servi�o Especializado em Abordagem Social'
q31_1_4_velha'q31_1_44: Acompanha os encaminhamentos_Servi�o Especializado em Abordagem Social'
q31_1_5_velha'q31_1_55: Realiza reuni�es peri�dicas_Servi�o Especializado em Abordagem Social'
q31_1_6_velha'q31_1_66: Troca Informa��es_Servi�o Especializado em Abordagem Social'
q31_1_7_velha'q31_1_77: Realiza estudos de caso em conjunto_Servi�o Especializado em Abordagem Social'
q31_1_8_velha'q31_1_88: Desenvolve atividades em parceria_Servi�o Especializado em Abordagem Social'
q31_1_9_velha'q31_1_99: Possui fluxo/protocolo de articula��o_Servi�o Especializado em Abordagem Social'
q31_1_0_velha'q31_1_00: N�o tem nenhuma articula��o_Servi�o Especializado em Abordagem Social'
q31_1_97_velha'q31_1_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Servi�o Especializado em Abordagem Social'
q31_2_1_velha'q31_2_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os de Acolhimento'
q31_2_2_velha'q31_2_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Servi�os de Acolhimento'
q31_2_3_velha'q31_2_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Servi�os de Acolhimento'
q31_2_4_velha'q31_2_44: Acompanha os encaminhamentos_Servi�os de Acolhimento'
q31_2_5_velha'q31_2_55: Realiza reuni�es peri�dicas_Servi�os de Acolhimento'
q31_2_6_velha'q31_2_66: Troca Informa��es_Servi�os de Acolhimento'
q31_2_7_velha'q31_2_77: Realiza estudos de caso em conjunto_Servi�os de Acolhimento'
q31_2_8_velha'q31_2_88: Desenvolve atividades em parceria_Servi�os de Acolhimento'
q31_2_9_velha'q31_2_99: Possui fluxo/protocolo de articula��o_Servi�os de Acolhimento'
q31_2_0_velha'q31_2_00: N�o tem nenhuma articula��o_Servi�os de Acolhimento'
q31_2_97_velha'q31_2_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Servi�os de Acolhimento'
q31_3_1_velha'q31_3_11: Possui dados de localiza��o (endere�o, telefone, etc.)_CRAS'
q31_3_2_velha'q31_3_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_CRAS'
q31_3_3_velha'q31_3_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_CRAS'
q31_3_4_velha'q31_3_44: Acompanha os encaminhamentos_CRAS'
q31_3_5_velha'q31_3_55: Realiza reuni�es peri�dicas_CRAS'
q31_3_6_velha'q31_3_66: Troca Informa��es_CRAS'
q31_3_7_velha'q31_3_77: Realiza estudos de caso em conjunto_CRAS'
q31_3_8_velha'q31_3_88: Desenvolve atividades em parceria_CRAS'
q31_3_9_velha'q31_3_99: Possui fluxo/protocolo de articula��o_CRAS'
q31_3_0_velha'q31_3_00: N�o tem nenhuma articula��o_CRAS'
q31_3_97_velha'q31_3_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_CRAS'
q31_4_1_velha'q31_4_11: Possui dados de localiza��o (endere�o, telefone, etc.)_CREAS'
q31_4_2_velha'q31_4_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_CREAS'
q31_4_3_velha'q31_4_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_CREAS'
q31_4_4_velha'q31_4_44: Acompanha os encaminhamentos_CREAS'
q31_4_5_velha'q31_4_55: Realiza reuni�es peri�dicas_CREAS'
q31_4_6_velha'q31_4_66: Troca Informa��es_CREAS'
q31_4_7_velha'q31_4_77: Realiza estudos de caso em conjunto_CREAS'
q31_4_8_velha'q31_4_88: Desenvolve atividades em parceria_CREAS'
q31_4_9_velha'q31_4_99: Possui fluxo/protocolo de articula��o_CREAS'
q31_4_0_velha'q31_4_00: N�o tem nenhuma articula��o_CREAS'
q31_4_97_velha'q31_4_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_CREAS'
q31_5_1_velha'q31_5_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os de Sa�de Mental'
q31_5_2_velha'q31_5_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Servi�os de Sa�de Mental'
q31_5_3_velha'q31_5_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Servi�os de Sa�de Mental'
q31_5_4_velha'q31_5_44: Acompanha os encaminhamentos_Servi�os de Sa�de Mental'
q31_5_5_velha'q31_5_55: Realiza reuni�es peri�dicas_Servi�os de Sa�de Mental'
q31_5_6_velha'q31_5_66: Troca Informa��es_Servi�os de Sa�de Mental'
q31_5_7_velha'q31_5_77: Realiza estudos de caso em conjunto_Servi�os de Sa�de Mental'
q31_5_8_velha'q31_5_88: Desenvolve atividades em parceria_Servi�os de Sa�de Mental'
q31_5_9_velha'q31_5_99: Possui fluxo/protocolo de articula��o_Servi�os de Sa�de Mental'
q31_5_0_velha'q31_5_00: N�o tem nenhuma articula��o_Servi�os de Sa�de Mental'
q31_5_97_velha'q31_5_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Servi�os de Sa�de Mental'
q31_6_1_velha'q31_6_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_2_velha'q31_6_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_3_velha'q31_6_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_4_velha'q31_6_44: Acompanha os encaminhamentos_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_5_velha'q31_6_55: Realiza reuni�es peri�dicas_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_6_velha'q31_6_66: Troca Informa��es_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_7_velha'q31_6_77: Realiza estudos de caso em conjunto_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_8_velha'q31_6_88: Desenvolve atividades em parceria_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_9_velha'q31_6_99: Possui fluxo/protocolo de articula��o_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_0_velha'q31_6_00: N�o tem nenhuma articula��o_Equipes de Sa�de que atuem no espa�o da rua'
q31_6_97_velha'q31_6_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Equipes de Sa�de que atuem no espa�o da rua'
q31_7_1_velha'q31_7_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os de sa�de voltados � interna��o'
q31_7_2_velha'q31_7_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Servi�os de sa�de voltados � interna��o'
q31_7_3_velha'q31_7_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Servi�os de sa�de voltados � interna��o'
q31_7_4_velha'q31_7_44: Acompanha os encaminhamentos_Servi�os de sa�de voltados � interna��o'
q31_7_5_velha'q31_7_55: Realiza reuni�es peri�dicas_Servi�os de sa�de voltados � interna��o'
q31_7_6_velha'q31_7_66: Troca Informa��es_Servi�os de sa�de voltados � interna��o'
q31_7_7_velha'q31_7_77: Realiza estudos de caso em conjunto_Servi�os de sa�de voltados � interna��o'
q31_7_8_velha'q31_7_88: Desenvolve atividades em parceria_Servi�os de sa�de voltados � interna��o'
q31_7_9_velha'q31_7_99: Possui fluxo/protocolo de articula��o_Servi�os de sa�de voltados � interna��o'
q31_7_0_velha'q31_7_00: N�o tem nenhuma articula��o_Servi�os de sa�de voltados � interna��o'
q31_7_97_velha'q31_7_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Servi�os de sa�de voltados � interna��o'
q31_8_1_velha'q31_8_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Comunidades Terap�uticas'
q31_8_2_velha'q31_8_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Comunidades Terap�uticas'
q31_8_3_velha'q31_8_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Comunidades Terap�uticas'
q31_8_4_velha'q31_8_44: Acompanha os encaminhamentos_Comunidades Terap�uticas'
q31_8_5_velha'q31_8_55: Realiza reuni�es peri�dicas_Comunidades Terap�uticas'
q31_8_6_velha'q31_8_66: Troca Informa��es_Comunidades Terap�uticas'
q31_8_7_velha'q31_8_77: Realiza estudos de caso em conjunto_Comunidades Terap�uticas'
q31_8_8_velha'q31_8_88: Desenvolve atividades em parceria_Comunidades Terap�uticas'
q31_8_9_velha'q31_8_99: Possui fluxo/protocolo de articula��o_Comunidades Terap�uticas'
q31_8_0_velha'q31_8_00: N�o tem nenhuma articula��o_Comunidades Terap�uticas'
q31_8_97_velha'q31_8_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Comunidades Terap�uticas'
q31_9_1_velha'q31_9_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os de educa��o'
q31_9_2_velha'q31_9_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Servi�os de educa��o'
q31_9_3_velha'q31_9_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Servi�os de educa��o'
q31_9_4_velha'q31_9_44: Acompanha os encaminhamentos_Servi�os de educa��o'
q31_9_5_velha'q31_9_55: Realiza reuni�es peri�dicas_Servi�os de educa��o'
q31_9_6_velha'q31_9_66: Troca Informa��es_Servi�os de educa��o'
q31_9_7_velha'q31_9_77: Realiza estudos de caso em conjunto_Servi�os de educa��o'
q31_9_8_velha'q31_9_88: Desenvolve atividades em parceria_Servi�os de educa��o'
q31_9_9_velha'q31_9_99: Possui fluxo/protocolo de articula��o_Servi�os de educa��o'
q31_9_0_velha'q31_9_00: N�o tem nenhuma articula��o_Servi�os de educa��o'
q31_9_97_velha'q31_9_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Servi�os de educa��o'
q31_10_1_velha'q31_10_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Pol�ticas Culturais'
q31_10_2_velha'q31_10_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Pol�ticas Culturais'
q31_10_3_velha'q31_10_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Pol�ticas Culturais'
q31_10_4_velha'q31_10_44: Acompanha os encaminhamentos_Pol�ticas Culturais'
q31_10_5_velha'q31_10_55: Realiza reuni�es peri�dicas_Pol�ticas Culturais'
q31_10_6_velha'q31_10_66: Troca Informa��es_Pol�ticas Culturais'
q31_10_7_velha'q31_10_77: Realiza estudos de caso em conjunto_Pol�ticas Culturais'
q31_10_8_velha'q31_10_88: Desenvolve atividades em parceria_Pol�ticas Culturais'
q31_10_9_velha'q31_10_99: Possui fluxo/protocolo de articula��o_Pol�ticas Culturais'
q31_10_0_velha'q31_10_00: N�o tem nenhuma articula��o_Pol�ticas Culturais'
q31_10_97_velha'q31_10_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Pol�ticas Culturais'
q31_11_1_velha'q31_11_11: Possui dados de localiza��o (endere�o, telefone, etc.)_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_2_velha'q31_11_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_3_velha'q31_11_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_4_velha'q31_11_44: Acompanha os encaminhamentos_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_5_velha'q31_11_55: Realiza reuni�es peri�dicas_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_6_velha'q31_11_66: Troca Informa��es_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_7_velha'q31_11_77: Realiza estudos de caso em conjunto_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_8_velha'q31_11_88: Desenvolve atividades em parceria_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_9_velha'q31_11_99: Possui fluxo/protocolo de articula��o_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_0_velha'q31_11_00: N�o tem nenhuma articula��o_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_11_97_velha'q31_11_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_�rg�os respons�veis pela emiss�o de documenta��o civil b�sica'
q31_12_1_velha'q31_12_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os/Programas de Seguran�a Alimentar'
q31_12_2_velha'q31_12_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Servi�os/Programas de Seguran�a Alimentar'
q31_12_3_velha'q31_12_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Servi�os/Programas de Seguran�a Alimentar'
q31_12_4_velha'q31_12_44: Acompanha os encaminhamentos_Servi�os/Programas de Seguran�a Alimentar'
q31_12_5_velha'q31_12_55: Realiza reuni�es peri�dicas_Servi�os/Programas de Seguran�a Alimentar'
q31_12_6_velha'q31_12_66: Troca Informa��es_Servi�os/Programas de Seguran�a Alimentar'
q31_12_7_velha'q31_12_77: Realiza estudos de caso em conjunto_Servi�os/Programas de Seguran�a Alimentar'
q31_12_8_velha'q31_12_88: Desenvolve atividades em parceria_Servi�os/Programas de Seguran�a Alimentar'
q31_12_9_velha'q31_12_99: Possui fluxo/protocolo de articula��o_Servi�os/Programas de Seguran�a Alimentar'
q31_12_0_velha'q31_12_00: N�o tem nenhuma articula��o_Servi�os/Programas de Seguran�a Alimentar'
q31_12_97_velha'q31_12_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Servi�os/Programas de Seguran�a Alimentar'
q31_13_1_velha'q31_13_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os/Programas de Habita��o'
q31_13_2_velha'q31_13_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Servi�os/Programas de Habita��o'
q31_13_3_velha'q31_13_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Servi�os/Programas de Habita��o'
q31_13_4_velha'q31_13_44: Acompanha os encaminhamentos_Servi�os/Programas de Habita��o'
q31_13_5_velha'q31_13_55: Realiza reuni�es peri�dicas_Servi�os/Programas de Habita��o'
q31_13_6_velha'q31_13_66: Troca Informa��es_Servi�os/Programas de Habita��o'
q31_13_7_velha'q31_13_77: Realiza estudos de caso em conjunto_Servi�os/Programas de Habita��o'
q31_13_8_velha'q31_13_88: Desenvolve atividades em parceria_Servi�os/Programas de Habita��o'
q31_13_9_velha'q31_13_99: Possui fluxo/protocolo de articula��o_Servi�os/Programas de Habita��o'
q31_13_0_velha'q31_13_00: N�o tem nenhuma articula��o_Servi�os/Programas de Habita��o'
q31_13_97_velha'q31_13_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Servi�os/Programas de Habita��o'
q31_14_1_velha'q31_14_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Programas de Gera��o de Trabalho e Renda'
q31_14_2_velha'q31_14_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Programas de Gera��o de Trabalho e Renda'
q31_14_3_velha'q31_14_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Programas de Gera��o de Trabalho e Renda'
q31_14_4_velha'q31_14_44: Acompanha os encaminhamentos_Programas de Gera��o de Trabalho e Renda'
q31_14_5_velha'q31_14_55: Realiza reuni�es peri�dicas_Programas de Gera��o de Trabalho e Renda'
q31_14_6_velha'q31_14_66: Troca Informa��es_Programas de Gera��o de Trabalho e Renda'
q31_14_7_velha'q31_14_77: Realiza estudos de caso em conjunto_Programas de Gera��o de Trabalho e Renda'
q31_14_8_velha'q31_14_88: Desenvolve atividades em parceria_Programas de Gera��o de Trabalho e Renda'
q31_14_9_velha'q31_14_99: Possui fluxo/protocolo de articula��o_Programas de Gera��o de Trabalho e Renda'
q31_14_0_velha'q31_14_00: N�o tem nenhuma articula��o_Programas de Gera��o de Trabalho e Renda'
q31_14_97_velha'q31_14_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Programas de Gera��o de Trabalho e Renda'
q31_15_1_velha'q31_15_11: Possui dados de localiza��o (endere�o, telefone, etc.)_�rg�os de Defesa de Direitos'
q31_15_2_velha'q31_15_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_�rg�os de Defesa de Direitos'
q31_15_3_velha'q31_15_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_�rg�os de Defesa de Direitos'
q31_15_4_velha'q31_15_44: Acompanha os encaminhamentos_�rg�os de Defesa de Direitos'
q31_15_5_velha'q31_15_55: Realiza reuni�es peri�dicas_�rg�os de Defesa de Direitos'
q31_15_6_velha'q31_15_66: Troca Informa��es_�rg�os de Defesa de Direitos'
q31_15_7_velha'q31_15_77: Realiza estudos de caso em conjunto_�rg�os de Defesa de Direitos'
q31_15_8_velha'q31_15_88: Desenvolve atividades em parceria_�rg�os de Defesa de Direitos'
q31_15_9_velha'q31_15_99: Possui fluxo/protocolo de articula��o_�rg�os de Defesa de Direitos'
q31_15_0_velha'q31_15_00: N�o tem nenhuma articula��o_�rg�os de Defesa de Direitos'
q31_15_97_velha'q31_15_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_�rg�os de Defesa de Direitos'
q31_16_1_velha'q31_16_11: Possui dados de localiza��o (endere�o, telefone, etc.)_Movimentos organizados da popula��o em situa��o de rua'
q31_16_2_velha'q31_16_22: Recebe usu�rias(os) encaminhadas(os) por este Centro de Refer�ncia_Movimentos organizados da popula��o em situa��o de rua'
q31_16_3_velha'q31_16_33: Encaminha usu�rias(os) para este Centro de Refer�ncia_Movimentos organizados da popula��o em situa��o de rua'
q31_16_4_velha'q31_16_44: Acompanha os encaminhamentos_Movimentos organizados da popula��o em situa��o de rua'
q31_16_5_velha'q31_16_55: Realiza reuni�es peri�dicas_Movimentos organizados da popula��o em situa��o de rua'
q31_16_6_velha'q31_16_66: Troca Informa��es_Movimentos organizados da popula��o em situa��o de rua'
q31_16_7_velha'q31_16_77: Realiza estudos de caso em conjunto_Movimentos organizados da popula��o em situa��o de rua'
q31_16_8_velha'q31_16_88: Desenvolve atividades em parceria_Movimentos organizados da popula��o em situa��o de rua'
q31_16_9_velha'q31_16_99: Possui fluxo/protocolo de articula��o_Movimentos organizados da popula��o em situa��o de rua'
q31_16_0_velha'q31_16_00: N�o tem nenhuma articula��o_Movimentos organizados da popula��o em situa��o de rua'
q31_16_97_velha'q31_16_9797: Servi�o ou institui��o n�o existente no Munic�pio/DF_Movimentos organizados da popula��o em situa��o de rua'
.