
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
compute q10_5_velha  =  q10_5.
compute q10_6_velha  =  q10_6.
compute q10_99_velha  =  q10_99.

DO IF (q10_0=1).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE q10_6 (ELSE=SYSMIS).
RECODE q10_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

**q11*****************

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

DO IF (q11=1).
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
compute q13_3_1_velha = q13_3_1. 
compute q13_3_2_velha = q13_3_2. 
compute q13_3_3_velha = q13_3_3. 
compute q13_3_0_velha = q13_3_0. 
compute q13_4_1_velha = q13_4_1. 
compute q13_4_2_velha = q13_4_2. 
compute q13_4_3_velha = q13_4_3. 
compute q13_4_0_velha = q13_4_0. 
compute q13_5_1_velha = q13_5_1. 
compute q13_5_2_velha = q13_5_2. 
compute q13_5_3_velha = q13_5_3. 
compute q13_5_0_velha = q13_5_0. 
compute q13_6_1_velha = q13_6_1. 
compute q13_6_2_velha = q13_6_2. 
compute q13_6_3_velha = q13_6_3. 
compute q13_6_0_velha = q13_6_0. 
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

DO IF (q13_3_0=1).
RECODE q13_3_1(ELSE=SYSMIS).
RECODE q13_3_2 (ELSE=SYSMIS).
RECODE q13_3_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q13_4_0=1).
RECODE q13_4_1(ELSE=SYSMIS).
RECODE q13_4_2 (ELSE=SYSMIS).
RECODE q13_4_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q13_5_0=1).
RECODE q13_5_1(ELSE=SYSMIS).
RECODE q13_5_2 (ELSE=SYSMIS).
RECODE q13_5_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q13_6_0=1).
RECODE q13_6_1(ELSE=SYSMIS).
RECODE q13_6_2 (ELSE=SYSMIS).
RECODE q13_6_3 (ELSE=SYSMIS).
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

*****q22************************************************************************************

compute q22_1_velha  =  q22_1.
compute q22_2_velha  =  q22_2.
compute q22_3_velha  = q22_3.
compute q22_4_velha  =  q22_4.
compute q22_5_velha  =  q22_5.
compute q22_6_velha  =  q22_6.
compute q22_7_velha  =  q22_7.
compute q22_8_velha  =  q22_8.
compute q22_9_velha  =  q22_9.
compute q22_10_velha  =  q22_10.
compute q22_11_velha  =  q22_11.
compute q22_12_velha  =  q22_12.
compute q22_0_velha  =  q22_0.


DO IF (q22_0=1).
RECODE q22_1(ELSE=SYSMIS).
RECODE q22_2(ELSE=SYSMIS).
RECODE q22_3(ELSE=SYSMIS).
RECODE q22_4(ELSE=SYSMIS).
RECODE q22_5(ELSE=SYSMIS).
RECODE q22_6(ELSE=SYSMIS).
RECODE q22_7(ELSE=SYSMIS).
RECODE q22_8(ELSE=SYSMIS).
RECODE q22_9(ELSE=SYSMIS).
RECODE q22_10(ELSE=SYSMIS).
RECODE q22_11(ELSE=SYSMIS).
RECODE q22_12(ELSE=SYSMIS).
END IF.
EXECUTE.

*****q23************************************************************************************

compute q23_1_velha  =  q23_1.
compute q23_2_velha  =  q23_2.
compute q23_3_velha  = q23_3.
compute q23_4_velha  =  q23_4.
compute q23_5_velha  =  q23_5.
compute q23_6_velha  =  q23_6.
compute q23_7_velha  =  q23_7.
compute q23_8_velha  =  q23_8.
compute q23_9_velha  =  q23_9.
compute q23_10_velha  =  q23_10.
compute q23_99_velha  =  q23_99.
compute q23_12_velha  =  q23_12.


DO IF (q23_12=1).
RECODE q23_1(ELSE=SYSMIS).
RECODE q23_2(ELSE=SYSMIS).
RECODE q23_3(ELSE=SYSMIS).
RECODE q23_4(ELSE=SYSMIS).
RECODE q23_5(ELSE=SYSMIS).
RECODE q23_6(ELSE=SYSMIS).
RECODE q23_7(ELSE=SYSMIS).
RECODE q23_8(ELSE=SYSMIS).
RECODE q23_9(ELSE=SYSMIS).
RECODE q23_10(ELSE=SYSMIS).
RECODE q23_99(ELSE=SYSMIS).
END IF.
EXECUTE.

****q24************************************************************************

compute q24_1_velha  =  q24_1.
compute q24_2_velha  =  q24_2.
compute q24_3_velha  = q24_3.
compute q24_4_velha  =  q24_4.
compute q24_5_velha  =  q24_5.
compute q24_99_velha  =  q24_99.
compute q24_0_velha  =  q24_0.


DO IF (q24_0=1).
RECODE q24_1(ELSE=SYSMIS).
RECODE q24_2(ELSE=SYSMIS).
RECODE q24_3(ELSE=SYSMIS).
RECODE q24_4(ELSE=SYSMIS).
RECODE q24_5(ELSE=SYSMIS).
RECODE q24_99(ELSE=SYSMIS).
END IF.
EXECUTE.

***q30*****

compute q30_1_velha  =  q30_1.
compute q30_2_velha  =  q30_2.
compute q30_3_velha  = q30_3.
compute q30_4_velha  =  q30_4.
compute q30_5_velha  =  q30_5.
compute q30_0_velha  =  q30_0.

DO IF (q30_0=1).
RECODE q30_1(ELSE=SYSMIS).
RECODE q30_2(ELSE=SYSMIS).
RECODE q30_3(ELSE=SYSMIS).
RECODE q30_4(ELSE=SYSMIS).
RECODE q30_5(ELSE=SYSMIS).
END IF.
EXECUTE.


***q32*****

compute q32_1_velha  =  q32_1.
compute q32_2_velha  =  q32_2.
compute q32_3_velha  = q32_3.
compute q32_4_velha  =  q32_4.
compute q32_5_velha  =  q32_5.
compute q32_99_velha  =  q32_99.

DO IF (q31=0).
RECODE q32_1(ELSE=SYSMIS).
RECODE q32_2(ELSE=SYSMIS).
RECODE q32_3(ELSE=SYSMIS).
RECODE q32_4(ELSE=SYSMIS).
RECODE q32_5(ELSE=SYSMIS).
RECODE q32_99(ELSE=SYSMIS).
END IF.
EXECUTE.


***q34*****

compute q34_1_velha  =  q34_1.
compute q34_2_velha  =  q34_2.
compute q34_3_velha  = q34_3.
compute q34_4_velha  =  q34_4.
compute q34_5_velha  =  q34_5.


DO IF (q33=0).
RECODE q34_1(ELSE=SYSMIS).
RECODE q34_2(ELSE=SYSMIS).
RECODE q34_3(ELSE=SYSMIS).
RECODE q34_4(ELSE=SYSMIS).
RECODE q34_5(ELSE=SYSMIS).
END IF.
EXECUTE.


***q39*****

compute q39_1_velha  =  q39_1.
compute q39_2_velha  =  q39_2.
compute q39_3_velha  = q39_3.
compute q39_4_velha  =  q39_4.
compute q39_5_velha  =  q39_5.
compute q39_6_velha  = q39_6.
compute q39_7_velha  =  q39_7.
compute q40_1_velha  =  q40_1.
compute q40_2_velha  =  q40_2.
compute q40_3_velha  = q40_3.
compute q40_4_velha  =  q40_4.
compute q41_velha  =  q41.


DO IF (q39_1=1).
RECODE q39_2(ELSE=SYSMIS).
RECODE q39_3(ELSE=SYSMIS).
RECODE q39_4(ELSE=SYSMIS).
RECODE q39_5(ELSE=SYSMIS).
RECODE q39_6(ELSE=SYSMIS).
RECODE q39_7(ELSE=SYSMIS).
RECODE q40_1(ELSE=SYSMIS).
RECODE q40_2(ELSE=SYSMIS).
RECODE q40_3(ELSE=SYSMIS).
RECODE q40_4(ELSE=SYSMIS).
RECODE q41(ELSE=SYSMIS).
END IF.
EXECUTE.




****q42******************************************************************************************


compute q42_1_1_velha = q42_1_1.
compute q42_1_2_velha = q42_1_2.
compute q42_1_3_velha = q42_1_3.
compute q42_1_4_velha = q42_1_4.
compute q42_1_5_velha = q42_1_5.
compute q42_1_6_velha = q42_1_6.
compute q42_1_7_velha = q42_1_7.
compute q42_1_8_velha = q42_1_8.
compute q42_1_0_velha = q42_1_0.
compute q42_1_9_velha = q42_1_9.
compute q42_2_1_velha = q42_2_1.
compute q42_2_2_velha = q42_2_2.
compute q42_2_3_velha = q42_2_3.
compute q42_2_4_velha = q42_2_4.
compute q42_2_5_velha = q42_2_5.
compute q42_2_6_velha = q42_2_6.
compute q42_2_7_velha = q42_2_7.
compute q42_2_8_velha = q42_2_8.
compute q42_2_0_velha = q42_2_0.
compute q42_2_9_velha = q42_2_9.
compute q42_3_1_velha = q42_3_1.
compute q42_3_2_velha = q42_3_2.
compute q42_3_3_velha = q42_3_3.
compute q42_3_4_velha = q42_3_4.
compute q42_3_5_velha = q42_3_5.
compute q42_3_6_velha = q42_3_6.
compute q42_3_7_velha = q42_3_7.
compute q42_3_8_velha = q42_3_8.
compute q42_3_0_velha = q42_3_0.
compute q42_3_9_velha = q42_3_9.
compute q42_4_1_velha = q42_4_1.
compute q42_4_2_velha = q42_4_2.
compute q42_4_3_velha = q42_4_3.
compute q42_4_4_velha = q42_4_4.
compute q42_4_5_velha = q42_4_5.
compute q42_4_6_velha = q42_4_6.
compute q42_4_7_velha = q42_4_7.
compute q42_4_8_velha = q42_4_8.
compute q42_4_0_velha = q42_4_0.
compute q42_4_9_velha = q42_4_9.
compute q42_5_1_velha = q42_5_1.
compute q42_5_2_velha = q42_5_2.
compute q42_5_3_velha = q42_5_3.
compute q42_5_4_velha = q42_5_4.
compute q42_5_5_velha = q42_5_5.
compute q42_5_6_velha = q42_5_6.
compute q42_5_7_velha = q42_5_7.
compute q42_5_8_velha = q42_5_8.
compute q42_5_0_velha = q42_5_0.
compute q42_5_9_velha = q42_5_9.
compute q42_6_1_velha = q42_6_1.
compute q42_6_2_velha = q42_6_2.
compute q42_6_3_velha = q42_6_3.
compute q42_6_4_velha = q42_6_4.
compute q42_6_5_velha = q42_6_5.
compute q42_6_6_velha = q42_6_6.
compute q42_6_7_velha = q42_6_7.
compute q42_6_8_velha = q42_6_8.
compute q42_6_0_velha = q42_6_0.
compute q42_6_9_velha = q42_6_9.
compute q42_7_1_velha = q42_7_1.
compute q42_7_2_velha = q42_7_2.
compute q42_7_3_velha = q42_7_3.
compute q42_7_4_velha = q42_7_4.
compute q42_7_5_velha = q42_7_5.
compute q42_7_6_velha = q42_7_6.
compute q42_7_7_velha = q42_7_7.
compute q42_7_8_velha = q42_7_8.
compute q42_7_0_velha = q42_7_0.
compute q42_7_9_velha = q42_7_9.
compute q42_8_1_velha = q42_8_1.
compute q42_8_2_velha = q42_8_2.
compute q42_8_3_velha = q42_8_3.
compute q42_8_4_velha = q42_8_4.
compute q42_8_5_velha = q42_8_5.
compute q42_8_6_velha = q42_8_6.
compute q42_8_7_velha = q42_8_7.
compute q42_8_8_velha = q42_8_8.
compute q42_8_0_velha = q42_8_0.
compute q42_8_9_velha = q42_8_9.
execute. 



DO IF (q42_1_9=1 | q42_1_0=1).
RECODE q42_1_1 (ELSE=SYSMIS).
RECODE q42_1_2 (ELSE=SYSMIS).
RECODE q42_1_3 (ELSE=SYSMIS).
RECODE q42_1_4 (ELSE=SYSMIS).
RECODE q42_1_5 (ELSE=SYSMIS).
RECODE q42_1_6 (ELSE=SYSMIS).
RECODE q42_1_7 (ELSE=SYSMIS).
RECODE q42_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q42_2_9=1 | q42_2_0=1).
RECODE q42_2_1 (ELSE=SYSMIS).
RECODE q42_2_2 (ELSE=SYSMIS).
RECODE q42_2_3 (ELSE=SYSMIS).
RECODE q42_2_4 (ELSE=SYSMIS).
RECODE q42_2_5 (ELSE=SYSMIS).
RECODE q42_2_6 (ELSE=SYSMIS).
RECODE q42_2_7 (ELSE=SYSMIS).
RECODE q42_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q42_3_9=1 | q42_3_0=1).
RECODE q42_3_1 (ELSE=SYSMIS).
RECODE q42_3_2 (ELSE=SYSMIS).
RECODE q42_3_3 (ELSE=SYSMIS).
RECODE q42_3_4 (ELSE=SYSMIS).
RECODE q42_3_5 (ELSE=SYSMIS).
RECODE q42_3_6 (ELSE=SYSMIS).
RECODE q42_3_7 (ELSE=SYSMIS).
RECODE q42_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_4_9=1 | q42_4_0=1).
RECODE q42_4_1 (ELSE=SYSMIS).
RECODE q42_4_2 (ELSE=SYSMIS).
RECODE q42_4_3 (ELSE=SYSMIS).
RECODE q42_4_4 (ELSE=SYSMIS).
RECODE q42_4_5 (ELSE=SYSMIS).
RECODE q42_4_6 (ELSE=SYSMIS).
RECODE q42_4_7 (ELSE=SYSMIS).
RECODE q42_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q42_5_9=1 | q42_5_0=1).
RECODE q42_5_1 (ELSE=SYSMIS).
RECODE q42_5_2 (ELSE=SYSMIS).
RECODE q42_5_3 (ELSE=SYSMIS).
RECODE q42_5_4 (ELSE=SYSMIS).
RECODE q42_5_5 (ELSE=SYSMIS).
RECODE q42_5_6 (ELSE=SYSMIS).
RECODE q42_5_7 (ELSE=SYSMIS).
RECODE q42_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q42_6_9=1 | q42_6_0=1).
RECODE q42_6_1 (ELSE=SYSMIS).
RECODE q42_6_2 (ELSE=SYSMIS).
RECODE q42_6_3 (ELSE=SYSMIS).
RECODE q42_6_4 (ELSE=SYSMIS).
RECODE q42_6_5 (ELSE=SYSMIS).
RECODE q42_6_6 (ELSE=SYSMIS).
RECODE q42_6_7 (ELSE=SYSMIS).
RECODE q42_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.





DO IF (q42_7_9=1 | q42_7_0=1).
RECODE q42_7_1 (ELSE=SYSMIS).
RECODE q42_7_2 (ELSE=SYSMIS).
RECODE q42_7_3 (ELSE=SYSMIS).
RECODE q42_7_4 (ELSE=SYSMIS).
RECODE q42_7_5 (ELSE=SYSMIS).
RECODE q42_7_6 (ELSE=SYSMIS).
RECODE q42_7_7 (ELSE=SYSMIS).
RECODE q42_7_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q42_8_9=1 | q42_8_0=1).
RECODE q42_8_1 (ELSE=SYSMIS).
RECODE q42_8_2 (ELSE=SYSMIS).
RECODE q42_8_3 (ELSE=SYSMIS).
RECODE q42_8_4 (ELSE=SYSMIS).
RECODE q42_8_5 (ELSE=SYSMIS).
RECODE q42_8_6 (ELSE=SYSMIS).
RECODE q42_8_7 (ELSE=SYSMIS).
RECODE q42_8_8 (ELSE=SYSMIS).
END IF.
EXECUTE.








VARIABLE LABELS
q6_velha 'q6_v11394_6. Esta entidade faz parte de alguma rede/federação nacional, estadual ou regional de entidades de defesa e apoio às pessoas com deficiência e suas famílias?'
q7_velha 'q7_v11395_7. Caso sim, informe a principal rede/federação de que faz parte:'
q8_1_velha 'q8_1_v11397_1_1: Sim, municipal ou do Distrito Federal_A entidade recebe recursos financeiros da Assistência Social visando à manutenção dessa unidade?'
q8_2_velha 'q8_2_v11397_2_2: Sim, estadual_A entidade recebe recursos financeiros da Assistência Social visando à manutenção dessa unidade?'
q8_3_velha 'q8_3_v11397_3_3: Sim, federal (subvenções/emendas parlamentares)_A entidade recebe recursos financeiros da Assistência Social visando à manutenção dessa unidade?'
q8_0_velha 'q8_0_v11397_0_0: Não_A entidade recebe recursos financeiros da Assistência Social visando à manutenção dessa unidade?'
q9_0_velha 'q9_0_v14417_0_0: Não_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_1_velha 'q9_1_v14417_1_1: Cessão de recursos humanos_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_2_velha 'q9_2_v14417_2_2: Cessão de imóvel_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_3_velha 'q9_3_v14417_3_3: Pagamento de aluguel_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_4_velha 'q9_4_v14417_4_4: Pagamento de contas de água_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_5_velha 'q9_5_v14417_5_5: Pagamento de contas de luz ou telefone_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_6_velha 'q9_6_v14417_6_6: Fornecimento de gêneros alimentícios_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_7_velha 'q9_7_v14417_7_7: Fornecimento de materiais de higiene e limpeza_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_8_velha 'q9_8_v14417_8_8: Fornecimento de materiais pedagógicos, culturais, esportivos e outros_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_9_velha 'q9_9_v14417_9_9: Isenção de taxas ou tributos municipais_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_10_velha 'q9_10_v14417_10_10: Treinamento e capacitação de trabalhadores da entidade_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q9_99_velha 'q9_99_v14417_99_99: Outros_A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
q10_0_velha 'q10_0_v11399_0_0: Em nenhum dos citados acima_10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q10_1_velha 'q10_1_v11399_1_1: Conselho de Assistência Social_10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q10_2_velha 'q10_2_v11399_2_2: Conselho de Direitos da Criança e Adolescente_10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q10_3_velha 'q10_3_v11399_3_3: Conselho Municipal, Estadual ou do Distrito Federal de Direitos do Idoso_10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q10_4_velha 'q10_4_v11399_4_4: Conselho de Direitos do Idoso_10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q10_5_velha 'q10_5_v11399_5_5: Conselho de Direitos da Pessoa com Deficiência_10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q10_6_velha 'q10_6_v11399_6_6: Conselho de Direitos da Mulher_10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q10_99_velha 'q10_99_v11399_99_99: Outros._10. Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro:'
q12_0_velha 'q12_0_v12631_0_0: Não realiza nenhuma das atividades acima_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_1_velha 'q12_1_v12631_1_1: Coleta/recebe periodicamente informações sobre dados de atendimento do Serviço_12. O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_2_velha 'q12_2_v12631_2_2: Realiza reuniões periódicas para avaliação do Serviço com o Centro Dia_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_3_velha 'q12_2_v12631_2_2: Realiza reuniões periódicas para avaliação do Serviço com o Centro Dia_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_4_velha 'q12_4_v12631_4_4: Acompanha cotidianamente as atividades do Serviço_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_5_velha 'q12_5_v12631_5_5: Participa da construção de estratégias metodológicas do Serviço_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_6_velha 'q12_6_v12631_6_6: Elabora relatórios técnicos específicos sobre casos atendidos/acompanhados pelo Serviço_12. O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_7_velha 'q12_7_v12631_7_7: Realiza estudos de caso em parceria com o Serviço_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_8_velha 'q12_8_v12631_8_8: Define procedimentos comuns e/ou complementares ao Serviço_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_9_velha 'q12_9_v12631_9_9: Possui fluxos de encaminhamentos e trocas de informações com o Serviço_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_10_velha 'q12_9_v12631_9_9: Possui fluxos de encaminhamentos e trocas de informações com o Serviço_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_11_velha 'q12_11_v12631_11_11: Articula com a rede dos serviços das políticas públicas setoriais_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_12_velha 'q12_12_v12631_12_12: Articula com os demais órgãos do Sistema de Garantia de Direitos_12. O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento:'
q12_13_velha 'q12_13_v12631_13_13: Participa da definição dos critérios de acesso das(os) usuárias(os) ao serviço_12. O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:'
q13_1_1_velha 'q13_1_1_v14420_1_1: ... recebe recursos financeiros, visando à sua manutenção_13.1. Em relação às políticas públicas de Saúde, esta unidade:'
q13_1_2_velha 'q13_1_2_v14420_2_2: .. compartilha espaços físicos, mas as ofertas são separadas_13.1. Em relação às políticas públicas de Saúde, esta unidade:'
q13_1_3_velha 'q13_1_3_v14420_3_3: ...realiza a oferta de forma integrada_13.1. Em relação às políticas públicas de Saúde, esta unidade:'
q13_1_0_velha 'q13_1_0_v14420_0_0: Nenhuma das anteriores_13.1. Em relação às políticas públicas de Saúde, esta unidade:'
q13_2_1_velha 'q13_2_1_v15515_1_1: ... recebe recursos financeiros, visando à sua manutenção_13.2. Em relação às políticas públicas de Educação, esta unidade:'
q13_2_2_velha 'q13_2_2_v15515_2_2: .. compartilha espaços físicos, mas as ofertas são separadas_13.2. Em relação às políticas públicas de Educação, esta unidade:'
q13_2_3_velha 'q13_2_3_v15515_3_3: ...realiza a oferta de forma integrada_13.2. Em relação às políticas públicas de Educação, esta unidade:'
q13_2_0_velha 'q13_2_0_v15515_0_0: Nenhuma das anteriores_13.2. Em relação às políticas públicas de Educação, esta unidade:'
q13_3_1_velha 'q13_3_1_v15516_1_1: ... recebe recursos financeiros, visando à sua manutenção_13.3. Em relação às políticas públicas de Qualificação e acesso ao mundo do trabalho, esta unidade:'
q13_3_2_velha 'q13_3_2_v15516_2_2: .. compartilha espaços físicos, mas as ofertas são separadas_13.3. Em relação às políticas públicas de Qualificação e acesso ao mundo do trabalho, esta unidade:'
q13_3_3_velha 'q13_3_3_v15516_3_3: ...realiza a oferta de forma integrada_13.3. Em relação às políticas públicas de Qualificação e acesso ao mundo do trabalho, esta unidade:'
q13_3_0_velha 'q13_3_0_v15516_0_0: Nenhuma das anteriores_13.3. Em relação às políticas públicas de Qualificação e acesso ao mundo do trabalho, esta unidade:'
q13_4_1_velha 'q13_4_1_v15517_1_1: ... recebe recursos financeiros, visando à sua manutenção_13.4. Em relação às políticas públicas para os idosos, esta unidade:'
q13_4_2_velha 'q13_4_2_v15517_2_2: .. compartilha espaços físicos, mas as ofertas são separadas_13.4. Em relação às políticas públicas para os idosos, esta unidade:'
q13_4_3_velha 'q13_4_3_v15517_3_3: ...realiza a oferta de forma integrada_13.4. Em relação às políticas públicas para os idosos, esta unidade:'
q13_4_0_velha  'q13_4_0_v15517_0_0: Nenhuma das anteriores_13.4. Em relação às políticas públicas para os idosos, esta unidade:'
q13_5_1_velha 'q13_5_1_v15518_1_1: ... recebe recursos financeiros, visando à sua manutenção_13.5. Em relação às políticas públicas da Criança e do Adolescente, esta unidade:'
q13_5_2_velha 'q13_5_2_v15518_2_2: .. compartilha espaços físicos, mas as ofertas são separadas_13.5. Em relação às políticas públicas da Criança e do Adolescente, esta unidade:'
q13_5_3_velha 'q13_5_3_v15518_3_3: ...realiza a oferta de forma integrada_13.5. Em relação às políticas públicas da Criança e do Adolescente, esta unidade:'
q13_5_0_velha 'q13_5_0_v15518_0_0: Nenhuma das anteriores_13.5. Em relação às políticas públicas da Criança e do Adolescente, esta unidade:'
q13_6_1_velha 'q13_6_1_v15520_1_1: ... recebe recursos financeiros, visando à sua manutenção_13.6. Em relação à outras políticas públicas, esta unidade:'
q13_6_2_velha 'q13_6_2_v15520_2_2: .. compartilha espaços físicos, mas as ofertas são separadas_13.6. Em relação à outras políticas públicas, esta unidade:'
q13_6_3_velha 'q13_6_3_v15520_3_3: ...realiza a oferta de forma integrada_13.6. Em relação à outras políticas públicas, esta unidade:'
q13_6_0_velha 'q13_6_0_v15520_0_0: Nenhuma das anteriores_13.6. Em relação à outras políticas públicas, esta unidade:'
q16_0_velha 'q16_0_v11427_0_0: Não há outras adaptações._16. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q16_1_velha 'q16_1_v11427_1_1: Sim, suporte de profissional com conhecimento em LIBRAS_16. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q16_2_velha 'q16_2_v11427_2_2: Sim, suporte de material em Braille_16. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q16_3_velha 'q16_3_v11427_3_3: Sim, suporte para leitores de telas de computador para pessoas com deficiência visual_16. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q16_4_velha 'q16_4_v11427_4_4: Sim, há outras adaptações ou estratégias para assegurar a acessibilidade as pessoas com deficiência auditiva/surdas e pessoas com deficiência visual'
q16_5_velha 'q16_5_v11427_5_5: Sim, outras adaptações e tecnologias assistivas para deficiência física_16. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q16_6_velha 'q16_6_v11427_6_6: Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo._16. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q16_7_velha 'q16_7_v11427_7_7: Sim, pisos especiais com relevos para sinalização voltados para pessoa com deficiência visual_16. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q22_1_velha 'q22_1_v11439_1_1: Alfabetização_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_2_velha 'q22_2_v11439_2_2: Escolarização Formal_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_3_velha 'q22_3_v11439_3_3: Reforço Escolar_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_4_velha 'q22_4_v11439_4_4: Ensino do método Braille de leitura_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_5_velha 'q22_5_v11439_5_5: Ensino de Libras_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_6_velha 'q22_6_v11439_6_6: Atendimentos Médicos_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_7_velha 'q22_7_v11439_7_7: Atendimento Odontológico_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_8_velha 'q22_8_v11439_8_8: Terapia Ocupacional_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_9_velha 'q22_9_v11439_9_9: Fisioterapia_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_10_velha 'q22_10_v11439_10_10: Fonoaudiologia_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_11_velha 'q22_11_v11439_11_11: Atendimento Clínico em Psicologia_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_12_velha 'q22_12_v11439_12_12: Provisão em órtese e prótese_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q22_0_velha 'q22_0_v11439_0_0: Nenhuma das anteriores_22. informe quais das demais atividades alem da SPS Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias'
q23_1_velha 'q23_1_v15560_1_1: Atividades Esportivas_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_2_velha 'q23_2_v15560_2_2: Atividades Artísticas e Culturais (musicalização, dança, teatro, entre outras)_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_3_velha 'q23_2_v15560_2_2: Atividades Artísticas e Culturais (musicalização, dança, teatro, entre outras)_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_4_velha 'q23_4_v15560_4_4: Artesanato (bijuterias, pintura em tecido, bordado, crochê, etc.)_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_5_velha 'q23_5_v15560_5_5: Atividades de inclusão digital_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_6_velha 'q23_6_v15560_6_6: Atividades de linguagem (produção de texto, contação de histórias, roda de conversa, etc.)_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_7_velha 'q23_7_v15560_7_7: Atividades que envolvam alimentos (oficinas de culinária, hortas, etc.)_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_8_velha 'q23_8_v15560_8_8: Jogos e Brincadeiras (jogos de tabuleiro, etc.)_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_9_velha 'q23_9_v15560_9_9: Atividades de orientação para o mundo do trabalho_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_10_velha 'q23_10_v15560_10_10: Passeios e/ou atividades externas_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_99_velha 'q23_99_v15560_99_99: Outras atividades._23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q23_12_velha 'q23_12_v15560_12_12: Nenhuma das atividades acima_23. Qual o tipo de atividade realizada durante as oficinas desta unidade?'
q24_1_velha 'q24_1_v12637_1_1: As (Os) usuárias(os) e/ou os membros da sua família_24. Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
q24_2_velha 'q24_2_v12637_2_2: As (Os) técnicas(os) de referência da(o) usuária(o)_24. Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
q24_3_velha 'q24_3_v12637_3_3: A (O) coordenadora (o) do Centro Dia_24. Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
q24_4_velha 'q24_4_v12637_4_4: As (Os) técnicas (os) do CREAS de referência_24. Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
q24_5_velha  'q24_5_v12637_5_5: Equipes de outras áreas nas quais a (o) usuária (o) é atendida (o)_24. Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
q24_99_velha 'q24_99_v12637_99_99: Outros_24. Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
q24_0_velha 'q24_0_v12637_0_0: Esta unidade não faz Plano Individual e/ou Familiar de Atendimento_24. Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
q30_1_velha 'q30_1_v14421_1_1: Lanches/Café da manhã_30. Esta Unidade oferece alimentação às (aos) usuárias (os)?'
q30_2_velha 'q30_2_v14421_2_2: Almoço_30. Esta Unidade oferece alimentação às (aos) usuárias (os)?'
q30_3_velha 'q30_3_v14421_3_3: Lanche/Café da Tarde_30. Esta Unidade oferece alimentação às (aos) usuárias (os)?'
q30_4_velha 'q30_4_v14421_4_4: Jantar_30. Esta Unidade oferece alimentação às (aos) usuárias (os)?'
q30_5_velha 'q30_5_v14421_5_5: Lanche/Café da Noite_30. Esta Unidade oferece alimentação às (aos) usuárias (os)?'
q30_0_velha 'q30_0_v14421_0_0: Não oferta alimentação_30. Esta Unidade oferece alimentação às (aos) usuárias (os)?'
q32_1_velha 'q32_1_v14423_1_1: A unidade possui transporte especializado para o deslocamento das (os) usuárias (os)_32. Como se dá este apoio?'
q32_2_velha 'q32_2_v14423_2_2: A unidade fornece ajuda de custo (passagens) para o deslocamento das (os) usuárias (os)_32. Como se dá este apoio?'
q32_3_velha 'q32_3_v14423_3_3: O poder público fornece gratuidade no transporte público para pessoas com deficiência e idosas_32. Como se dá este apoio?'
q32_4_velha 'q32_4_v14423_4_4: O poder público fornece passagens (vale-transporte, etc.)_32. Como se dá este apoio?'
q32_5_velha 'q32_5_v14423_5_5: O poder público fornece transporte especializado para o deslocamento das(os) usuárias(os)_32. Como se dá este apoio?'
q32_99_velha 'q32_99_v14423_99_99: Outros_32. Como se dá este apoio?'
q34_1_velha 'q34_1_v15566_1_1: As (Os) usuárias (os) e/ou familiares participam das reuniões de planejamento desta unidade._34. Quais mecanismos de participação são utilizados nesta unidade?'
q34_2_velha 'q34_2_v15566_2_2: As (Os) usuárias (os) contam com representante que participa do planejamento desta unidade._34. Quais mecanismos de participação são utilizados nesta unidade?'
q34_3_velha 'q34_3_v15566_3_3: As (Os) usuárias (os) escolhem os temas a serem trabalhados nas atividades coletivas (oficinas/palestras) da unidade._34. Quais mecanismos de participação são utilizados nesta unidade?'
q34_4_velha 'q34_4_v15566_4_4: A equipe técnica disponibiliza outros meios para avaliação da oferta (questionário de satisfação, pesquisa de opinião, urna de sugestões)._34. Quais mecanismos de participação são utilizados nesta unidade?'
q34_5_velha ' q34_5_v15566_5_5: Outros._34. Quais mecanismos de participação são utilizados nesta unidade?'
q39_1_velha 'q39_1_v15580_39.1. Este Centro dia e/ou similar ficou fechado em todo tempo da pandemia_funcionamento durante  pandemia'
q39_2_velha 'q39_2_v15581_39.2. Ofertou atendimento presencial ao público em geral_funcionamento durante  pandemia'
q39_3_velha 'q39_3_v15582_39.3. Ofertou apenas os atendimentos presenciais agendados_funcionamento durante  pandemia'
q39_4_velha 'q39_4_v15583_39.4. Ofertou atendimentos/acompanhamento apenas para o público prioritário_funcionamento durante  pandemia'
q39_5_velha 'q39_5_v15584_39.5. Ofertou teleatendimento por telefone e aplicativos de videoconferência_funcionamento durante  pandemia'
q39_6_velha 'q39_6_v15585_39.6. Ofertou atividades coletivas (oficinas, grupo, ações comunitárias)_funcionamento durante  pandemia'
q39_7_velha 'q39_7_v15586_39.7. Realizou visitas domiciliares_funcionamento durante  pandemia'
q40_1_velha 'q40_1_v15589_1_1: Teve que ampliar o número de profissionais_40. Como estava a jornada de trabalho das(os) profissionais durante a pandemia?'
q40_2_velha 'q40_2_v15589_2_2: Com jornada de trabalho normal (semelhante a jornada anterior a pandemia)_40. Como estava a jornada de trabalho das(os) profissionais durante a pandemia?'
q40_3_velha 'q40_3_v15589_3_3: Com jornada de trabalho reduzida_40. Como estava a jornada de trabalho das(os) profissionais durante a pandemia?'
q40_4_velha 'q40_4_v15589_4_4: Outros_40. Como estava a jornada de trabalho das(os) profissionais durante a pandemia?'
q41_velha 'q41_v15591_41. Os trabalhadores desta unidade tiveram acesso a Equipamentos de Proteção Individual?'
q42_1_1_velha 'q42_1_1_v14438_1_42.1. Unidades de acolhimento_1: Possui localização (endereço, telefone, etc)'
q42_1_2_velha 'q42_1_2_v14438_2_42.1. Unidades de acolhimento_2: Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q42_1_3_velha 'q42_1_3_v14438_3_42.1. Unidades de acolhimento_3: Encaminha usuárias(os) para este Centro-Dia'
q42_1_4_velha 'q42_1_4_v14438_4_42.1. Unidades de acolhimento_4: Acompanha os encaminhamentos'
q42_1_5_velha 'q42_1_5_v14438_5_42.1. Unidades de acolhimento_5: Realiza reuniões periódicas'
q42_1_6_velha 'q42_1_6_v14438_6_42.1. Unidades de acolhimento_6: Troca Informações'
q42_1_7_velha 'q42_1_7_v14438_7_42.1. Unidades de acolhimento_7: Realiza estudos de caso em conjunto'
q42_1_8_velha 'q42_1_8_v14438_8_42.1. Unidades de acolhimento_8: Desenvolve atividades em parceria'
q42_1_0_velha 'q42_1_0_v14438_0_42.1. Unidades de acolhimento_0: Serviço ou instituição não existente no Município ou no DF'
q42_1_9_velha 'q42_1_9_v14438_9_42.1. Unidades de acolhimento_9: Não tem nenhuma articulação'
q42_2_1_velha 'q42_2_1_v14439_1_42.2. CRAS_1: Possui localização (endereço, telefone, etc)'
q42_2_2_velha 'q42_2_2_v14439_2_42.2. CRAS_2: Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q42_2_3_velha 'q42_2_3_v14439_3_42.2. CRAS_3: Encaminha usuárias(os) para este Centro-Dia'
q42_2_4_velha 'q42_2_4_v14439_4_42.2. CRAS_4: Acompanha os encaminhamentos'
q42_2_5_velha 'q42_2_5_v14439_5_42.2. CRAS_5: Realiza reuniões periódicas'
q42_2_6_velha 'q42_2_6_v14439_6_42.2. CRAS_6: Troca Informações'
q42_2_7_velha 'q42_2_7_v14439_7_42.2. CRAS_7: Realiza estudos de caso em conjunto'
q42_2_8_velha 'q42_2_8_v14439_8_42.2. CRAS_8: Desenvolve atividades em parceria'
q42_2_0_velha 'q42_2_0_v14439_0_42.2. CRAS_0: Serviço ou instituição não existente no Município ou no DF'
q42_2_9_velha 'q42_2_9_v14439_9_42.2. CRAS_9: Não tem nenhuma articulação'
q42_3_1_velha 'q42_3_1_v14440_1_42.3. CREAS_1: Possui localização (endereço, telefone, etc)'
q42_3_2_velha 'q42_3_1_v14440_1_42.3. CREAS_1: Possui localização (endereço, telefone, etc)'
q42_3_3_velha  'q42_3_3_v14440_3_42.3. CREAS_3: Encaminha usuárias(os) para este Centro-Dia'
q42_3_4_velha 'q42_3_4_v14440_4_42.3. CREAS_4: Acompanha os encaminhamentos'
q42_3_5_velha 'q42_3_5_v14440_5_42.3. CREAS_5: Realiza reuniões periódicas'
q42_3_6_velha 'q42_3_6_v14440_6_42.3. CREAS_6: Troca Informações'
q42_3_7_velha 'q42_3_7_v14440_7_42.3. CREAS_7: Realiza estudos de caso em conjunto'
q42_3_8_velha 'q42_3_7_v14440_7_42.3. CREAS_7: Realiza estudos de caso em conjunto'
q42_3_0_velha 'q42_3_0_v14440_0_42.3. CREAS_0: Serviço ou instituição não existente no Município ou no DF'
q42_3_9_velha 'q42_3_9_v14440_9_42.3. CREAS_9: Não tem nenhuma articulação'
q42_4_1_velha 'q42_4_1_v14441_1_42.4. Serviço de saúde_1: Possui localização (endereço, telefone, etc)'
q42_4_2_velha 'q42_4_2_v14441_2_42.4. Serviço de saúde_2: Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q42_4_3_velha 'q42_4_3_v14441_3_42.4. Serviço de saúde_3: Encaminha usuárias(os) para este Centro-Dia'
q42_4_4_velha 'q42_4_4_v14441_4_42.4. Serviço de saúde_4: Acompanha os encaminhamentos'
q42_4_5_velha 'q42_4_5_v14441_5_42.4. Serviço de saúde_5: Realiza reuniões periódicas'
q42_4_6_velha 'q42_4_6_v14441_6_42.4. Serviço de saúde_6: Troca Informações'
q42_4_7_velha 'q42_4_7_v14441_7_42.4. Serviço de saúde_7: Realiza estudos de caso em conjunto'
q42_4_8_velha 'q42_4_8_v14441_8_42.4. Serviço de saúde_8: Desenvolve atividades em parceria'
q42_4_0_velha 'q42_4_0_v14441_0_42.4. Serviço de saúde_0: Serviço ou instituição não existente no Município ou no DF'
q42_4_9_velha 'q42_4_9_v14441_9_42.4. Serviço de saúde_9: Não tem nenhuma articulação'
q42_5_1_velha 'q42_5_1_v14442_1_42.5. Serviços de educação_1: Possui localização (endereço, telefone, etc)'
q42_5_2_velha 'q42_5_2_v14442_2_42.5. Serviços de educação_2: Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q42_5_3_velha 'q42_5_3_v14442_3_42.5. Serviços de educação_3: Encaminha usuárias(os) para este Centro-Dia'
q42_5_4_velha 'q42_5_4_v14442_4_42.5. Serviços de educação_4: Acompanha os encaminhamentos'
q42_5_5_velha 'q42_5_5_v14442_5_42.5. Serviços de educação_5: Realiza reuniões periódicas'
q42_5_6_velha 'q42_5_6_v14442_6_42.5. Serviços de educação_6: Troca Informações'
q42_5_7_velha 'q42_5_7_v14442_7_42.5. Serviços de educação_7: Realiza estudos de caso em conjunto'
q42_5_8_velha 'q42_5_8_v14442_8_42.5. Serviços de educação_8: Desenvolve atividades em parceria'
q42_5_0_velha 'q42_5_0_v14442_0_42.5. Serviços de educação_0: Serviço ou instituição não existente no Município ou no DF'
q42_5_9_velha 'q42_5_9_v14442_9_42.5. Serviços de educação_9: Não tem nenhuma articulação'
q42_6_1_velha 'q42_6_1_v14443_1_42.6. Sistema de justiça/Judiciário_1: Possui localização (endereço, telefone, etc)'
q42_6_2_velha 'q42_6_2_v14443_2_42.6. Sistema de justiça/Judiciário_2: Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q42_6_3_velha 'q42_6_3_v14443_3_42.6. Sistema de justiça/Judiciário_3: Encaminha usuárias(os) para este Centro-Dia'
q42_6_4_velha ' q42_6_4_v14443_4_42.6. Sistema de justiça/Judiciário_4: Acompanha os encaminhamentos'
q42_6_5_velha 'q42_6_5_v14443_5_42.6. Sistema de justiça/Judiciário_5: Realiza reuniões periódicas'
q42_6_6_velha 'q42_6_6_v14443_6_42.6. Sistema de justiça/Judiciário_6: Troca Informações'
q42_6_7_velha 'q42_6_7_v14443_7_42.6. Sistema de justiça/Judiciário_7: Realiza estudos de caso em conjunto'
q42_6_8_velha 'q42_6_8_v14443_8_42.6. Sistema de justiça/Judiciário_8: Desenvolve atividades em parceria'
q42_6_0_velha 'q42_6_0_v14443_0_42.6. Sistema de justiça/Judiciário_0: Serviço ou instituição não existente no Município ou no DF'
q42_6_9_velha 'q42_6_0_v14443_0_42.6. Sistema de justiça/Judiciário_0: Serviço ou instituição não existente no Município ou no DF'
q42_7_1_velha 'q42_7_1_v15592_1_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_1: Possui localização (endereço, telefone, etc)'
q42_7_2_velha 'q42_7_2_v15592_2_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_2: Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q42_7_3_velha 'q42_7_3_v15592_3_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_3: Encaminha usuárias(os) para este Centro-Dia'
q42_7_4_velha 'q42_7_4_v15592_4_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_4: Acompanha os encaminhamentos'
q42_7_5_velha 'q42_7_5_v15592_5_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_5: Realiza reuniões periódicas'
q42_7_6_velha 'q42_7_6_v15592_6_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_6: Troca Informações'
q42_7_7_velha 'q42_7_7_v15592_7_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_7: Realiza estudos de caso em conjunto'
q42_7_8_velha 'q42_7_8_v15592_8_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_8: Desenvolve atividades em parceria'
q42_7_0_velha 'q42_7_0_v15592_0_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_0: Serviço ou instituição não existente no Município ou no DF'
q42_7_9_velha 'q42_7_9_v15592_9_42.7. Organizações e Entidades de Garantia e Defesa de Direitos das pessoas com Deficiência e/ou Idosas_9: Não tem nenhuma articulação'
q42_8_1_velha 'q42_8_1_v15593_1_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_1: Possui localização (endereço, telefone, etc)'
q42_8_2_velha 'q42_8_2_v15593_2_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_2: Recebe usuárias(os) encaminhadas(os) por este Centro-Dia'
q42_8_3_velha 'q42_8_3_v15593_3_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_3: Encaminha usuárias(os) para este Centro-Dia'
q42_8_4_velha 'q42_8_4_v15593_4_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_4: Acompanha os encaminhamentos'
q42_8_5_velha 'q42_8_5_v15593_5_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_5: Realiza reuniões periódicas'
q42_8_6_velha 'q42_8_6_v15593_6_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_6: Troca Informações'
q42_8_7_velha 'q42_8_7_v15593_7_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_7: Realiza estudos de caso em conjunto'
q42_8_8_velha 'q42_8_8_v15593_8_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_8: Desenvolve atividades em parceria'
q42_8_0_velha 'q42_8_0_v15593_0_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_0: Serviço ou instituição não existente no Município ou no DF'
q42_8_9_velha 'q42_8_9_v15593_9_42.8. Unidades e Projetos de Qualificação para o mundo do trabalho_9: Não tem nenhuma articulação'
.