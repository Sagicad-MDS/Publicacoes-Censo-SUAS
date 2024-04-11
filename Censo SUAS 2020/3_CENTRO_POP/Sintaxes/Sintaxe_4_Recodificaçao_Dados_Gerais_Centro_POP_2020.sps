* Encoding: UTF-8.

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

***q8*********************************

compute q8_1_velha  =  q8_1.    
compute q8_2_velha  =   q8_2 .
compute q8_3_velha  = q8_3.
compute q8_4_velha   = q8_4.
compute q8_5_velha  =  q8_5.
compute q8_6_velha  =  q8_6.
compute q8_7_velha  =  q8_7.
compute q8_99_velha  =  q8_99.
compute q8_0_velha  =  q8_0.


DO IF (q8_0=1).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).    
RECODE q8_3 (ELSE=SYSMIS).
RECODE q8_4 (ELSE=SYSMIS).
RECODE q8_5 (ELSE=SYSMIS).
RECODE q8_6 (ELSE=SYSMIS).
RECODE q8_7 (ELSE=SYSMIS).
RECODE q8_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q11*********************************

compute q12_1_1_velha  =  q12_1_1.
compute q12_1_2_1_velha  =   q12_1_2_1 .
compute q12_1_2_2_velha  =  q12_1_2_2.
compute q12_1_2_3_velha  =   q12_1_2_3.
compute q12_2_1_velha  = q12_2_1.
compute q12_2_2_1_velha   = q12_2_2_1.
compute q12_2_2_2_velha  =  q12_2_2_2.
compute q12_2_2_3_velha  =  q12_2_2_3.
compute q12_3_1_velha  =  q12_3_1.
compute q12_3_2_1_velha  = q12_3_2_1.
compute q12_3_2_2_velha  =   q12_3_2_2 .
compute q12_3_2_3_velha  = q12_3_2_3.
compute q12_4_1_velha   = q12_4_1.
compute q12_4_2_1_velha  =  q12_4_2_1.
compute q12_4_2_2_velha  =  q12_4_2_2.
compute q12_4_2_3_velha  =  q12_4_2_3.
compute q12_5_1_velha   = q12_5_1.
compute q12_5_2_1_velha  =  q12_5_2_1.
compute q12_5_2_2_velha  =  q12_5_2_2.
compute q12_5_2_3_velha  =  q12_5_2_3.


DO IF (q11=0).
RECODE q12_1_1 (ELSE=SYSMIS).
RECODE q12_1_2_1 (ELSE=SYSMIS).
RECODE q12_1_2_2  (ELSE=SYSMIS).
RECODE q12_1_2_3 (ELSE=SYSMIS).
RECODE q12_2_1 (ELSE=SYSMIS).
RECODE q12_2_2_1 (ELSE=SYSMIS).
RECODE q12_2_2_2  (ELSE=SYSMIS).
RECODE q12_2_2_3 (ELSE=SYSMIS).
RECODE q12_3_1 (ELSE=SYSMIS).
RECODE q12_3_2_1 (ELSE=SYSMIS).
RECODE q12_3_2_2  (ELSE=SYSMIS).
RECODE q12_3_2_3 (ELSE=SYSMIS).
RECODE q12_4_1 (ELSE=SYSMIS).
RECODE q12_4_2_1 (ELSE=SYSMIS).
RECODE q12_4_2_2  (ELSE=SYSMIS).
RECODE q12_4_2_3 (ELSE=SYSMIS).
RECODE q12_5_1 (ELSE=SYSMIS).
RECODE q12_5_2_1 (ELSE=SYSMIS).
RECODE q12_5_2_2  (ELSE=SYSMIS).
RECODE q12_5_2_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q13*******************************************************

compute q13_1_velha = q13_1.
compute q13_2_velha  = q13_2.
compute q13_3_velha  = q13_3.
compute q13_4_velha  = q13_4.
compute q13_5_velha  = q13_5.
compute q13_99_velha  = q13_99.
compute q13_6_velha  = q13_6.
compute q13_7_velha  = q13_7.
compute q14_1_velha  = q14_1.
compute q14_2_velha  = q14_2.
compute q14_3_velha  = q14_3.
compute q14_99_velha  = q14_99.
compute q15_velha  = q15.

DO IF (q13_0=1).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3 (ELSE=SYSMIS).
RECODE q13_4 (ELSE=SYSMIS).
RECODE q13_5 (ELSE=SYSMIS).
RECODE q13_99 (ELSE=SYSMIS).
RECODE q13_6 (ELSE=SYSMIS).
RECODE q13_7 (ELSE=SYSMIS).
RECODE q14_1 (ELSE=SYSMIS).
RECODE q14_2 (ELSE=SYSMIS).
RECODE q14_3 (ELSE=SYSMIS).
RECODE q14_99 (ELSE=SYSMIS).
RECODE q15 (ELSE=SYSMIS).
END IF.
EXECUTE.


****************q17*******************************************************

compute q18_1_velha  =  q18_1.
compute q18_2_velha  =   q18_2 .
compute q18_3_velha  =  q18_3.
compute q18_4_velha  =   q18_4.
compute q18_5_velha  = q18_5.
compute q18_6_velha  =  q18_6.
compute q18_8_velha  =   q18_7 .
compute q18_8_velha  =  q18_8.
compute q18_9_velha  =   q18_9.
compute q18_10_velha  = q18_10.
compute q18_11_velha  = q18_11.
compute q18_12_velha  = q18_12.
compute q18_99_velha  = q18_99.

DO IF (q17=0).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2 (ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_4 (ELSE=SYSMIS).
RECODE q18_5 (ELSE=SYSMIS).
RECODE q18_6  (ELSE=SYSMIS).
RECODE q18_7 (ELSE=SYSMIS).
RECODE q18_8 (ELSE=SYSMIS).
RECODE q18_9 (ELSE=SYSMIS).
RECODE q18_10 (ELSE=SYSMIS).
RECODE q18_11 (ELSE=SYSMIS).
RECODE q18_12 (ELSE=SYSMIS).
RECODE q18_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

**q20**********************************************


compute q20_1_velha = q20_1.
compute q20_2_velha  = q20_2.
compute q20_99_velha  = q20_99.

DO IF (q20_0=1).
RECODE q20_1  (ELSE=SYSMIS).
RECODE q20_2  (ELSE=SYSMIS).
RECODE q20_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


***q22**************************************************************************


compute q22_1__1_velha  =  q22_1_1.
compute q22_1_2_velha  = q22_1_2.
compute q22_2_1_velha  = q22_2_1.
compute q22_2_2_velha  = q22_2_2.
compute q22_3_1_velha  = q22_3_1.
compute q22_3_1_velha  = q22_3_2.


DO IF (q22_1_1=0).
RECODE q22_1_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q22_2_1=0).
RECODE q22_2_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q22_3_1=0).
RECODE q22_3_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q24****************************************************************************

compute q25_1_velha =  q25_1  .
compute q25_2_velha = q25_2 .
compute q25_3_velha = q25_3 .
compute q25_4_velha = q25_4 .
compute q25_5_velha = q25_5 .
compute q25_6_velha = q25_6 .
compute q25_7_velha = q25_7 .
compute q25_8_velha = q25_8 .
compute q25_9_velha = q25_9 .
compute q25_10_velha = q25_10 .
compute q25_11_velha = q25_11 .
compute q25_12_velha  = q25_12  .
compute q25_13_velha = q25_13 .
compute q25_14_velha  = q25_14  .
compute q25_0_velha = q25_0 .
compute q25_1_velha = q25_1 .
compute q25_2_velha = q25_2 .
compute q25_3_velha = q25_3 .
compute q25_4_velha = q25_4 .
compute q25_5_velha = q25_5 .
compute q25_6_velha = q25_6 .
compute q25_7_velha = q25_7 .
compute q25_8_velha = q25_8 .
compute q25_9_velha = q25_9 .
compute q25_10_velha = q25_10 .
compute q25_11_velha = q25_11 .
compute q25_12_velha  = q25_12  .
compute q25_13_velha = q25_13 .
compute q25_14_velha  = q25_14  .
compute q25_0_velha = q25_0 .
compute q26_1_velha = q26_1 .
compute q26_2_velha = q26_2 .
compute q26_3_velha = q26_3 .
compute q26_4_velha = q26_4 .
compute q26_5_velha = q26_5 .
compute q26_6_velha = q26_6 .
compute q26_7_velha = q26_7 .
compute q26_8_velha = q26_8 .
compute q26_9_velha = q26_9 .
compute q26_10_velha = q26_10 .
compute q26_11_velha = q26_11 .
compute q26_12_velha  = q26_12  .
compute q26_13_velha = q26_13 .
compute q27_velha = q27 .
compute q28_velha = q28 .
compute q29_1_velha = q29_1 .
compute q29_2_velha = q29_2 .
compute q29_3_velha = q29_3 .
compute q29_4_velha = q29_4 .
compute q29_5_velha = q29_5 .
compute q29_6_velha = q29_6 .
compute q29_7_velha = q29_7 .
compute q29_8_velha = q29_8 .
compute q29_9_velha = q29_9 .
compute q29_10_velha = q29_10 .
compute q29_11_velha = q29_11 .
compute q29_12_velha = q29_12 .
compute q29_99_velha  = q29_99  .
compute q30_1_velha = q30_1 .
compute q30_2_velha = q30_2 .
compute q30_3_velha = q30_3 .
compute q30_4_velha = q30_4 .
compute q30_5_velha = q30_5 .
compute q30_99_velha  = q30_99  .
compute q31_1_velha = q31_1 .
compute q31_2_velha = q31_2 .
compute q31_3_velha = q31_3 .
compute q31_4_velha = q31_4 .
compute q31_5_velha = q31_5 .
compute q31_6_velha = q31_6 .
compute q31_7_velha = q31_7 .
compute q31_8_velha = q31_8 .
compute q31_9_velha = q31_9 .
compute q31_0_velha = q31_0 .
compute q31_99_velha  = q31_99  .


DO IF (q24=2 | q24=3).
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
RECODE q25_12  (ELSE=SYSMIS).
RECODE q25_13 (ELSE=SYSMIS).
RECODE q25_14  (ELSE=SYSMIS).
RECODE q25_0 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q24=0).
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
RECODE q25_12  (ELSE=SYSMIS).
RECODE q25_13 (ELSE=SYSMIS).
RECODE q25_14  (ELSE=SYSMIS).
RECODE q25_0 (ELSE=SYSMIS).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS).
RECODE q26_6 (ELSE=SYSMIS).
RECODE q26_7 (ELSE=SYSMIS).
RECODE q26_8 (ELSE=SYSMIS).
RECODE q26_9 (ELSE=SYSMIS).
RECODE q26_10 (ELSE=SYSMIS).
RECODE q26_11 (ELSE=SYSMIS).
RECODE q26_12  (ELSE=SYSMIS).
RECODE q26_13 (ELSE=SYSMIS).
RECODE q27 (ELSE=SYSMIS).
RECODE q28 (ELSE=SYSMIS).
RECODE q29_1 (ELSE=SYSMIS).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
RECODE q29_6 (ELSE=SYSMIS).
RECODE q29_7 (ELSE=SYSMIS).
RECODE q29_8 (ELSE=SYSMIS).
RECODE q29_9 (ELSE=SYSMIS).
RECODE q29_10 (ELSE=SYSMIS).
RECODE q29_11 (ELSE=SYSMIS).
RECODE q29_12 (ELSE=SYSMIS).
RECODE q29_99  (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_99  (ELSE=SYSMIS).
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
RECODE q31_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

****q25*************************************************************************

DO IF (q25_0=1).
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
RECODE q25_12  (ELSE=SYSMIS).
RECODE q25_13 (ELSE=SYSMIS).
RECODE q25_14  (ELSE=SYSMIS).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS).
RECODE q26_6 (ELSE=SYSMIS).
RECODE q26_7 (ELSE=SYSMIS).
RECODE q26_8 (ELSE=SYSMIS).
RECODE q26_9 (ELSE=SYSMIS).
RECODE q26_10 (ELSE=SYSMIS).
RECODE q26_11 (ELSE=SYSMIS).
RECODE q26_12  (ELSE=SYSMIS).
RECODE q26_13 (ELSE=SYSMIS).
RECODE q27 (ELSE=SYSMIS).
RECODE q28 (ELSE=SYSMIS).
RECODE q29_1 (ELSE=SYSMIS).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
RECODE q29_6 (ELSE=SYSMIS).
RECODE q29_7 (ELSE=SYSMIS).
RECODE q29_8 (ELSE=SYSMIS).
RECODE q29_9 (ELSE=SYSMIS).
RECODE q29_10 (ELSE=SYSMIS).
RECODE q29_11 (ELSE=SYSMIS).
RECODE q29_12 (ELSE=SYSMIS).
RECODE q29_99  (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_99  (ELSE=SYSMIS).
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
RECODE q31_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q29*****************************************************************


DO IF (q29_1=1).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
RECODE q29_6 (ELSE=SYSMIS).
RECODE q29_7 (ELSE=SYSMIS).
RECODE q29_8 (ELSE=SYSMIS).
RECODE q29_9 (ELSE=SYSMIS).
RECODE q29_10 (ELSE=SYSMIS).
RECODE q29_11 (ELSE=SYSMIS).
RECODE q29_12 (ELSE=SYSMIS).
RECODE q29_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


****q32******************************************************************

compute q33_1_velha = q33_1.
compute q33_2_velha = q33_2.
compute q33_3_velha = q33_3.
compute q33_4_velha = q33_4.
compute q34_1_velha = q34_1.
compute q34_2_velha = q34_2.
compute q34_3_velha = q34_3.
compute q34_4_velha = q34_4.
compute q34_5_velha = q34_5.
compute q34_6_velha = q34_6.
compute q34_7_velha = q34_7.
compute q34_8_velha = q34_8.
compute q34_9_velha = q34_9.
compute q34_10_velha = q34_10.


DO IF (q32=0).
RECODE q33_1 (ELSE=SYSMIS). 
RECODE q33_2 (ELSE=SYSMIS).
RECODE q33_3 (ELSE=SYSMIS).
RECODE q33_4 (ELSE=SYSMIS).
RECODE q34_1 (ELSE=SYSMIS).
RECODE q34_2 (ELSE=SYSMIS).
RECODE q34_3 (ELSE=SYSMIS).
RECODE q34_4 (ELSE=SYSMIS).
RECODE q34_5 (ELSE=SYSMIS).
RECODE q34_6 (ELSE=SYSMIS).
RECODE q34_7 (ELSE=SYSMIS).
RECODE q34_8 (ELSE=SYSMIS).
RECODE q34_9 (ELSE=SYSMIS).
RECODE q34_10 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q36**********************************************************************

compute q36_1_velha = q36_1.
compute q36_2_velha = q36_2.
compute q36_3_velha = q36_3.
compute q36_4_velha = q36_4.
compute q36_5_velha = q36_5.
compute q36_0_velha = q36_0.
compute q37_0_velha = q37_0.
compute q37_1_velha = q37_1.
compute q37_2_velha = q37_2.
compute q37_3_velha = q37_3.
compute q37_4_velha = q37_4.
compute q37_5_velha = q37_5.
compute q37_6_velha = q37_6.
compute q37_7_velha = q37_7.
compute q37_8_velha = q37_8.
compute q37_9_velha = q37_9.
compute q37_10_velha = q37_10.
compute q37_11_velha = q37_11.
compute q37_12_velha = q37_12.
compute q37_13_velha = q37_13.
compute q37_99_velha = q37_99.
compute q38_0_velha = q38_0.
compute q38_1_velha = q38_1.
compute q38_2_velha = q38_2.
compute q38_3_velha = q38_3.
compute q38_4_velha = q38_4.
compute q38_5_velha = q38_5.
compute q38_6_velha = q38_6.
compute q38_7_velha = q38_7.
compute q38_8_velha = q38_8.
compute q38_9_velha = q38_9.
compute q38_10_velha = q38_10.
compute q38_11_velha = q38_11.
compute q38_12_velha = q38_12.
compute q38_13_velha = q38_13.
compute q38_14_velha = q38_14.
compute q38_15_velha = q38_15.
compute q38_99_velha = q38_99.
compute q39_velha = q39.
compute q40_1_velha = q40_1.
compute q40_2_velha = q40_2.
compute q40_3_velha = q40_3.
compute q40_4_velha = q40_4.
compute q40_5_velha = q40_5.
compute q40_6_velha = q40_6.
compute q40_7_velha = q40_7.
compute q40_8_velha = q40_8.
compute q40_9_velha = q40_9.
compute q40_99_velha = q40_99.



DO IF (q35=0).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
RECODE q36_5 (ELSE=SYSMIS).
RECODE q36_0 (ELSE=SYSMIS).
RECODE q37_0 (ELSE=SYSMIS).
RECODE q37_1 (ELSE=SYSMIS).
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
RECODE q37_99 (ELSE=SYSMIS).
RECODE q38_0 (ELSE=SYSMIS).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2 (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_4 (ELSE=SYSMIS).
RECODE q38_5 (ELSE=SYSMIS).
RECODE q38_6 (ELSE=SYSMIS).
RECODE q38_7 (ELSE=SYSMIS).
RECODE q38_8 (ELSE=SYSMIS).
RECODE q38_9 (ELSE=SYSMIS).
RECODE q38_10 (ELSE=SYSMIS).
RECODE q38_11 (ELSE=SYSMIS).
RECODE q38_12 (ELSE=SYSMIS).
RECODE q38_13 (ELSE=SYSMIS).
RECODE q38_14 (ELSE=SYSMIS).
RECODE q38_15 (ELSE=SYSMIS).
RECODE q38_99 (ELSE=SYSMIS).
RECODE q39 (ELSE=SYSMIS).
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

***q37***************************

DO IF (q37_0=1).
RECODE q37_1 (ELSE=SYSMIS).
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
RECODE q37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q38*********************************

DO IF (q38_0=1).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2 (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_4 (ELSE=SYSMIS).
RECODE q38_5 (ELSE=SYSMIS).
RECODE q38_6 (ELSE=SYSMIS).
RECODE q38_7 (ELSE=SYSMIS).
RECODE q38_8 (ELSE=SYSMIS).
RECODE q38_9 (ELSE=SYSMIS).
RECODE q38_10 (ELSE=SYSMIS).
RECODE q38_11 (ELSE=SYSMIS).
RECODE q38_12 (ELSE=SYSMIS).
RECODE q38_13 (ELSE=SYSMIS).
RECODE q38_14 (ELSE=SYSMIS).
RECODE q38_15 (ELSE=SYSMIS).
RECODE q38_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q39*****************************************


DO IF (q39=0).
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


**q41***********************************************************************

compute q41_1_1_velha  = q41_1_1.
compute q41_1_2_velha  =  q41_1_2.
compute q41_1_3_velha  = q41_1_3.
compute q41_1_4_velha  =  q41_1_4.
compute q41_1_5_velha  = q41_1_5.
compute q41_1_6_velha  =  q41_1_6.
compute q41_1_7_velha  = q41_1_7.
compute q41_1_8_velha  = q41_1_8.
compute q41_1_9_velha  = q41_1_9.
compute q41_1_0_velha  = q41_1_0.
compute q41_1_97_velha  =  q41_1_97.
compute q41_2_1_velha  = q41_2_1.
compute q41_2_2_velha  =  q41_2_2.
compute q41_2_3_velha  = q41_2_3.
compute q41_2_4_velha  =  q41_2_4.
compute q41_2_5_velha  = q41_2_5.
compute q41_2_6_velha  =  q41_2_6.
compute q41_2_7_velha  = q41_2_7.
compute q41_2_8_velha  = q41_2_8.
compute q41_2_9_velha  = q41_2_9.
compute q41_2_0_velha  = q41_2_0.
compute q41_2_97_velha  =  q41_2_97.
compute q41_3_1_velha  = q41_3_1.
compute q41_3_2_velha  =  q41_3_2.
compute q41_3_3_velha  = q41_3_3.
compute q41_3_4_velha  =  q41_3_4.
compute q41_3_5_velha  = q41_3_5.
compute q41_3_6_velha  =  q41_3_6.
compute q41_3_7_velha  = q41_3_7.
compute q41_3_8_velha  = q41_3_8.
compute q41_3_9_velha  = q41_3_9.
compute q41_3_0_velha  = q41_3_0.
compute q41_3_97_velha  =  q41_3_97.
compute q41_4_1_velha  = q41_4_1.
compute q41_4_2_velha  =  q41_4_2.
compute q41_4_3_velha  = q41_4_3.
compute q41_4_4_velha  =  q41_4_4.
compute q41_4_5_velha  = q41_4_5.
compute q41_4_6_velha  =  q41_4_6.
compute q41_4_7_velha  = q41_4_7.
compute q41_4_8_velha  = q41_4_8.
compute q41_4_9_velha  = q41_4_9.
compute q41_4_0_velha  = q41_4_0.
compute q41_4_97_velha  =  q41_4_97.
compute q41_5_1_velha  = q41_5_1.
compute q41_5_2_velha  =  q41_5_2.
compute q41_5_3_velha  = q41_5_3.
compute q41_5_4_velha  =  q41_5_4.
compute q41_5_5_velha  = q41_5_5.
compute q41_5_6_velha  =  q41_5_6.
compute q41_5_7_velha  = q41_5_7.
compute q41_5_8_velha  = q41_5_8.
compute q41_5_9_velha  = q41_5_9.
compute q41_5_0_velha  = q41_5_0.
compute q41_5_97_velha  =  q41_5_97.
compute q41_6_1_velha  = q41_6_1.
compute q41_6_2_velha  =  q41_6_2.
compute q41_6_3_velha  = q41_6_3.
compute q41_6_4_velha  =  q41_6_4.
compute q41_6_5_velha  = q41_6_5.
compute q41_6_6_velha  =  q41_6_6.
compute q41_6_7_velha  = q41_6_7.
compute q41_6_8_velha  = q41_6_8.
compute q41_6_9_velha  = q41_6_9.
compute q41_6_0_velha  = q41_6_0.
compute q41_6_97_velha  =  q41_6_97.
compute q41_7_1_velha  = q41_7_1.
compute q41_7_2_velha  =  q41_7_2.
compute q41_7_3_velha  = q41_7_3.
compute q41_7_4_velha  =  q41_7_4.
compute q41_7_5_velha  = q41_7_5.
compute q41_7_6_velha  =  q41_7_6.
compute q41_7_7_velha  = q41_7_7.
compute q41_7_8_velha  = q41_7_8.
compute q41_7_9_velha  = q41_7_9.
compute q41_7_0_velha  = q41_7_0.
compute q41_7_97_velha  =  q41_7_97.
compute q41_8_1_velha  = q41_8_1.
compute q41_8_2_velha  =  q41_8_2.
compute q41_8_3_velha  = q41_8_3.
compute q41_8_4_velha  =  q41_8_4.
compute q41_8_5_velha  = q41_8_5.
compute q41_8_6_velha  =  q41_8_6.
compute q41_8_7_velha  = q41_8_7.
compute q41_8_8_velha  = q41_8_8.
compute q41_8_9_velha  = q41_8_9.
compute q41_8_0_velha  = q41_8_0.
compute q41_8_97_velha  =  q41_8_97.
compute q41_9_1_velha  = q41_9_1.
compute q41_9_2_velha  =  q41_9_2.
compute q41_9_3_velha  = q41_9_3.
compute q41_9_4_velha  =  q41_9_4.
compute q41_9_5_velha  = q41_9_5.
compute q41_9_6_velha  =  q41_9_6.
compute q41_9_7_velha  = q41_9_7.
compute q41_9_8_velha  = q41_9_8.
compute q41_9_9_velha  = q41_9_9.
compute q41_9_0_velha  = q41_9_0.
compute q41_9_97_velha  =  q41_9_97.
compute q41_10_1_velha  = q41_10_1.
compute q41_10_2_velha  =  q41_10_2.
compute q41_10_3_velha  = q41_10_3.
compute q41_10_4_velha  =  q41_10_4.
compute q41_10_5_velha  = q41_10_5.
compute q41_10_6_velha  =  q41_10_6.
compute q41_10_7_velha  = q41_10_7.
compute q41_10_8_velha  = q41_10_8.
compute q41_10_9_velha  = q41_10_9.
compute q41_10_0_velha  = q41_10_0.
compute q41_10_97_velha  =  q41_10_97.
compute q41_11_1_velha  = q41_11_1.
compute q41_11_2_velha  =  q41_11_2.
compute q41_11_3_velha  = q41_11_3.
compute q41_11_4_velha  =  q41_11_4.
compute q41_11_5_velha  = q41_11_5.
compute q41_11_6_velha  =  q41_11_6.
compute q41_11_7_velha  = q41_11_7.
compute q41_11_8_velha  = q41_11_8.
compute q41_11_9_velha  = q41_11_9.
compute q41_11_0_velha  = q41_11_0.
compute q41_11_97_velha  =  q41_11_97.
compute q41_12_1_velha  = q41_12_1.
compute q41_12_2_velha  =  q41_12_2.
compute q41_12_3_velha  = q41_12_3.
compute q41_12_4_velha  =  q41_12_4.
compute q41_12_5_velha  = q41_12_5.
compute q41_12_6_velha  =  q41_12_6.
compute q41_12_7_velha  = q41_12_7.
compute q41_12_8_velha  = q41_12_8.
compute q41_12_9_velha  = q41_12_9.
compute q41_12_0_velha  = q41_12_0.
compute q41_12_97_velha  =  q41_12_97.
compute  q41_13_1_velha  = q41_13_1.
compute q41_13_2_velha  =  q41_13_2.
compute q41_13_3_velha  = q41_13_3.
compute q41_13_4_velha  =  q41_13_4.
compute q41_13_5_velha  = q41_13_5.
compute q41_13_6_velha  =  q41_13_6.
compute q41_13_7_velha  = q41_13_7.
compute q41_13_8_velha  = q41_13_8.
compute q41_13_9_velha  = q41_13_9.
compute q41_13_0_velha  = q41_13_0.
compute q41_13_97_velha  =  q41_13_97.
compute  q41_14_1_velha  = q41_14_1.
compute q41_14_2_velha  =  q41_14_2.
compute q41_14_3_velha  = q41_14_3.
compute q41_14_4_velha  =  q41_14_4.
compute q41_14_5_velha  = q41_14_5.
compute q41_14_6_velha  =  q41_14_6.
compute q41_14_7_velha  = q41_14_7.
compute q41_14_8_velha  = q41_14_8.
compute q41_14_9_velha  = q41_14_9.
compute q41_14_0_velha  = q41_14_0.
compute q41_14_97_velha  =  q41_14_97.
compute  q41_15_1_velha  = q41_15_1.
compute q41_15_2_velha  =  q41_15_2.
compute q41_15_3_velha  = q41_15_3.
compute q41_15_4_velha  =  q41_15_4.
compute q41_15_5_velha  = q41_15_5.
compute q41_15_6_velha  =  q41_15_6.
compute q41_15_7_velha  = q41_15_7.
compute q41_15_8_velha  = q41_15_8.
compute q41_15_9_velha  = q41_15_9.
compute q41_15_0_velha  = q41_15_0.
compute q41_15_97_velha  =  q41_15_97.



DO IF (q41_1_0=1 | q41_1_97=1).
RECODE q41_1_1 (ELSE=SYSMIS).
RECODE q41_1_2 (ELSE=SYSMIS).
RECODE q41_1_3 (ELSE=SYSMIS).
RECODE q41_1_4 (ELSE=SYSMIS).
RECODE q41_1_5 (ELSE=SYSMIS).
RECODE q41_1_6 (ELSE=SYSMIS).
RECODE q41_1_7 (ELSE=SYSMIS).
RECODE q41_1_8 (ELSE=SYSMIS).
RECODE q41_1_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q41_2_0=1 | q41_2_97=1).
RECODE q41_2_1 (ELSE=SYSMIS).
RECODE q41_2_2 (ELSE=SYSMIS).
RECODE q41_2_3 (ELSE=SYSMIS).
RECODE q41_2_4 (ELSE=SYSMIS).
RECODE q41_2_5 (ELSE=SYSMIS).
RECODE q41_2_6 (ELSE=SYSMIS).
RECODE q41_2_7 (ELSE=SYSMIS).
RECODE q41_2_8 (ELSE=SYSMIS).
RECODE q41_2_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q41_3_0=1 | q41_3_97=1).
RECODE q41_3_1 (ELSE=SYSMIS).
RECODE q41_3_2 (ELSE=SYSMIS).
RECODE q41_3_3 (ELSE=SYSMIS).
RECODE q41_3_4 (ELSE=SYSMIS).
RECODE q41_3_5 (ELSE=SYSMIS).
RECODE q41_3_6 (ELSE=SYSMIS).
RECODE q41_3_7 (ELSE=SYSMIS).
RECODE q41_3_8 (ELSE=SYSMIS).
RECODE q41_3_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q41_4_0=1 | q41_4_97=1).
RECODE q41_4_1 (ELSE=SYSMIS).
RECODE q41_4_2 (ELSE=SYSMIS).
RECODE q41_4_3 (ELSE=SYSMIS).
RECODE q41_4_4 (ELSE=SYSMIS).
RECODE q41_4_5 (ELSE=SYSMIS).
RECODE q41_4_6 (ELSE=SYSMIS).
RECODE q41_4_7 (ELSE=SYSMIS).
RECODE q41_4_8 (ELSE=SYSMIS).
RECODE q41_4_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q41_5_0=1 | q41_5_97=1).
RECODE q41_5_1 (ELSE=SYSMIS).
RECODE q41_5_2 (ELSE=SYSMIS).
RECODE q41_5_3 (ELSE=SYSMIS).
RECODE q41_5_4 (ELSE=SYSMIS).
RECODE q41_5_5 (ELSE=SYSMIS).
RECODE q41_5_6 (ELSE=SYSMIS).
RECODE q41_5_7 (ELSE=SYSMIS).
RECODE q41_5_8 (ELSE=SYSMIS).
RECODE q41_5_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q41_6_0=1 | q41_6_97=1).
RECODE q41_6_1 (ELSE=SYSMIS).
RECODE q41_6_2 (ELSE=SYSMIS).
RECODE q41_6_3 (ELSE=SYSMIS).
RECODE q41_6_4 (ELSE=SYSMIS).
RECODE q41_6_5 (ELSE=SYSMIS).
RECODE q41_6_6 (ELSE=SYSMIS).
RECODE q41_6_7 (ELSE=SYSMIS).
RECODE q41_6_8 (ELSE=SYSMIS).
RECODE q41_6_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q41_7_0=1 | q41_7_97=1).
RECODE q41_7_1 (ELSE=SYSMIS).
RECODE q41_7_2 (ELSE=SYSMIS).
RECODE q41_7_3 (ELSE=SYSMIS).
RECODE q41_7_4 (ELSE=SYSMIS).
RECODE q41_7_5 (ELSE=SYSMIS).
RECODE q41_7_6 (ELSE=SYSMIS).
RECODE q41_7_7 (ELSE=SYSMIS).
RECODE q41_7_8 (ELSE=SYSMIS).
RECODE q41_7_9 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q41_8_0=1 | q41_8_97=1).
RECODE q41_8_1 (ELSE=SYSMIS).
RECODE q41_8_2 (ELSE=SYSMIS).
RECODE q41_8_3 (ELSE=SYSMIS).
RECODE q41_8_4 (ELSE=SYSMIS).
RECODE q41_8_5 (ELSE=SYSMIS).
RECODE q41_8_6 (ELSE=SYSMIS).
RECODE q41_8_7 (ELSE=SYSMIS).
RECODE q41_8_8 (ELSE=SYSMIS).
RECODE q41_8_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q41_9_0=1 | q41_9_97=1).
RECODE q41_9_1 (ELSE=SYSMIS).
RECODE q41_9_2 (ELSE=SYSMIS).
RECODE q41_9_3 (ELSE=SYSMIS).
RECODE q41_9_4 (ELSE=SYSMIS).
RECODE q41_9_5 (ELSE=SYSMIS).
RECODE q41_9_6 (ELSE=SYSMIS).
RECODE q41_9_7 (ELSE=SYSMIS).
RECODE q41_9_8 (ELSE=SYSMIS).
RECODE q41_9_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q41_10_0=1 | q41_10_97=1).
RECODE q41_10_1 (ELSE=SYSMIS).
RECODE q41_10_2 (ELSE=SYSMIS).
RECODE q41_10_3 (ELSE=SYSMIS).
RECODE q41_10_4 (ELSE=SYSMIS).
RECODE q41_10_5 (ELSE=SYSMIS).
RECODE q41_10_6 (ELSE=SYSMIS).
RECODE q41_10_7 (ELSE=SYSMIS).
RECODE q41_10_8 (ELSE=SYSMIS).
RECODE q41_10_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q41_11_0=1 | q41_11_97=1).
RECODE q41_11_1 (ELSE=SYSMIS).
RECODE q41_11_2 (ELSE=SYSMIS).
RECODE q41_11_3 (ELSE=SYSMIS).
RECODE q41_11_4 (ELSE=SYSMIS).
RECODE q41_11_5 (ELSE=SYSMIS).
RECODE q41_11_6 (ELSE=SYSMIS).
RECODE q41_11_7 (ELSE=SYSMIS).
RECODE q41_11_8 (ELSE=SYSMIS).
RECODE q41_11_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q41_12_0=1 | q41_12_97=1).
RECODE q41_12_1 (ELSE=SYSMIS).
RECODE q41_12_2 (ELSE=SYSMIS).
RECODE q41_12_3 (ELSE=SYSMIS).
RECODE q41_12_4 (ELSE=SYSMIS).
RECODE q41_12_5 (ELSE=SYSMIS).
RECODE q41_12_6 (ELSE=SYSMIS).
RECODE q41_12_7 (ELSE=SYSMIS).
RECODE q41_12_8 (ELSE=SYSMIS).
RECODE q41_12_9 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q41_13_0=1 | q41_13_97=1).
RECODE q41_13_1 (ELSE=SYSMIS).
RECODE q41_13_2 (ELSE=SYSMIS).
RECODE q41_13_3 (ELSE=SYSMIS).
RECODE q41_13_4 (ELSE=SYSMIS).
RECODE q41_13_5 (ELSE=SYSMIS).
RECODE q41_13_6 (ELSE=SYSMIS).
RECODE q41_13_7 (ELSE=SYSMIS).
RECODE q41_13_8 (ELSE=SYSMIS).
RECODE q41_13_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q41_14_0=1 | q41_14_97=1).
RECODE q41_14_1 (ELSE=SYSMIS).
RECODE q41_14_2 (ELSE=SYSMIS).
RECODE q41_14_3 (ELSE=SYSMIS).
RECODE q41_14_4 (ELSE=SYSMIS).
RECODE q41_14_5 (ELSE=SYSMIS).
RECODE q41_14_6 (ELSE=SYSMIS).
RECODE q41_14_7 (ELSE=SYSMIS).
RECODE q41_14_8 (ELSE=SYSMIS).
RECODE q41_14_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q41_15_0=1 | q41_15_97=1).
RECODE q41_15_1 (ELSE=SYSMIS).
RECODE q41_15_2 (ELSE=SYSMIS).
RECODE q41_15_3 (ELSE=SYSMIS).
RECODE q41_15_4 (ELSE=SYSMIS).
RECODE q41_15_5 (ELSE=SYSMIS).
RECODE q41_15_6 (ELSE=SYSMIS).
RECODE q41_15_7 (ELSE=SYSMIS).
RECODE q41_15_8 (ELSE=SYSMIS).
RECODE q41_15_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q42***********************************************************************

compute q42_1_velha  = q42_1.
compute q42_2_velha  =  q42_2.
compute q42_3_velha  = q42_3.
compute q42_4_velha  =  q42_4.
compute q42_5_velha  = q42_5.
compute q42_6_velha  =  q42_6.
compute q42_7_velha  = q42_7.
compute q42_8_velha  =  q42_8.
compute q42_9_velha  = q42_9.
compute q42_10_velha  =  q42_10.
compute q42_11_velha  = q42_11.
compute q42_12_velha  =  q42_12.
compute q42_13_velha  = q42_13.
compute q42_14_velha  = q42_14.
compute q42_99_velha  =  q42_99.
compute q42_0_velha  = q42_0.

DO IF (q42_0=1).
RECODE q42_1  (ELSE=SYSMIS).
RECODE q42_2  (ELSE=SYSMIS).
RECODE q42_3 (ELSE=SYSMIS).
RECODE q42_4  (ELSE=SYSMIS).
RECODE q42_5  (ELSE=SYSMIS).
RECODE q42_6 (ELSE=SYSMIS).
RECODE q42_7 (ELSE=SYSMIS).
RECODE q42_8  (ELSE=SYSMIS).
RECODE q42_9 (ELSE=SYSMIS).
RECODE q42_10  (ELSE=SYSMIS).
RECODE q42_11 (ELSE=SYSMIS). 
RECODE q42_12  (ELSE=SYSMIS).
RECODE q42_13 (ELSE=SYSMIS). 
RECODE q42_14  (ELSE=SYSMIS).
RECODE q42_99 (ELSE=SYSMIS). 
END IF.
EXECUTE.





