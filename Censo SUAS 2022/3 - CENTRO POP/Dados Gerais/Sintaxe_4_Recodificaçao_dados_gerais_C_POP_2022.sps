
*****recodificar
*q2*********************************

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

compute q12_1_velha  =  q12_1.
compute q12_1_1_velha  =   q12_1_1 .
compute q12_1_2_velha  =  q12_1_2.
compute q12_1_3_velha  =   q12_1_3.
compute q12_2_velha  =  q12_2.
compute q12_2_1_velha  =   q12_2_1 .
compute q12_2_2_velha  =  q12_2_2.
compute q12_2_3_velha  =   q12_2_3.
compute q12_3_velha  =  q12_3.
compute q12_3_1_velha  =   q12_3_1 .
compute q12_3_2_velha  =  q12_3_2.
compute q12_3_3_velha  =   q12_3_3.
compute q12_4_velha  =  q12_4.
compute q12_4_1_velha  =   q12_4_1 .
compute q12_4_2_velha  =  q12_4_2.
compute q12_4_3_velha  =   q12_4_3.
compute q12_5_velha  =  q12_5.
compute q12_5_1_velha  =   q12_5_1 .
compute q12_5_2_velha  =  q12_5_2.
compute q12_5_3_velha  =   q12_5_3.

DO IF (q11=0).
RECODE q12_1 (ELSE=SYSMIS).
RECODE q12_1_1 (ELSE=SYSMIS).
RECODE q12_1_2 (ELSE=SYSMIS).
RECODE q12_1_3 (ELSE=SYSMIS).
RECODE q12_2 (ELSE=SYSMIS).
RECODE q12_2_1 (ELSE=SYSMIS).
RECODE q12_2_2 (ELSE=SYSMIS).
RECODE q12_2_3 (ELSE=SYSMIS).
RECODE q12_3 (ELSE=SYSMIS).
RECODE q12_3_1 (ELSE=SYSMIS).
RECODE q12_3_2 (ELSE=SYSMIS).
RECODE q12_3_3 (ELSE=SYSMIS).
RECODE q12_4 (ELSE=SYSMIS).
RECODE q12_4_1 (ELSE=SYSMIS).
RECODE q12_4_2 (ELSE=SYSMIS).
RECODE q12_4_3 (ELSE=SYSMIS).
RECODE q12_5 (ELSE=SYSMIS).
RECODE q12_5_1 (ELSE=SYSMIS).
RECODE q12_5_2 (ELSE=SYSMIS).
RECODE q12_5_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q13*******************************************************

compute q13_0_velha  =  q13_0.
compute q13_1_velha  =  q13_1.
compute q13_2_velha  =   q13_2 .
compute q13_3_velha  =  q13_3.
compute q13_4_velha  =   q13_4.
compute q13_5_velha  = q13_5.
compute q13_99_velha  =  q13_99.
compute q13_6_velha  =   q13_6 .
compute q13_7_velha  =  q13_7.
compute q14_velha  =   q14.
compute q15_velha  = q15.



DO IF (q13_0=1).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3 (ELSE=SYSMIS).
RECODE q13_4 (ELSE=SYSMIS).
RECODE q13_5 (ELSE=SYSMIS).
RECODE q13_99  (ELSE=SYSMIS).
RECODE q13_6 (ELSE=SYSMIS).
RECODE q13_7 (ELSE=SYSMIS).
RECODE q14 (ELSE=SYSMIS).
RECODE q15  (ELSE=SYSMIS).
END IF.
EXECUTE.


**q17**************************************************************

compute q18_1_velha  =  q18_1.
compute q18_2_velha  = q18_2.
compute q18_3_velha  = q18_3.
compute q18_4_velha  = q18_4.
compute q18_5_velha  = q18_5.
compute q18_6_velha  = q18_6.
compute q18_7_velha  =  q18_7.
compute q18_8_velha  = q18_8.
compute q18_9_velha  = q18_9.
compute q18_10_velha  = q18_10.
compute q18_11_velha  = q18_11.
compute q18_12_velha  = q18_12.
compute q18_99_velha  =  q18_99.


DO IF (q17=0).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2 (ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_4 (ELSE=SYSMIS).
RECODE q18_5 (ELSE=SYSMIS).
RECODE q18_6 (ELSE=SYSMIS).
RECODE q18_7 (ELSE=SYSMIS).
RECODE q18_8 (ELSE=SYSMIS).
RECODE q18_9 (ELSE=SYSMIS).
RECODE q18_10 (ELSE=SYSMIS).
RECODE q18_11 (ELSE=SYSMIS).
RECODE q18_12 (ELSE=SYSMIS).
RECODE q18_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q20******************************************************************

compute q20_0_velha  = q20_0.
compute q20_1_velha  = q20_1.
compute q20_2_velha  =  q20_2.
compute q20_99_velha  = q20_99.


DO IF (q20_0=1).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q22**********************************************************************

compute q22_1_1_velha  = q22_1_1.
compute q22_1_2_velha  = q22_1_2.
compute q22_2_1_velha  = q22_2_1.
compute q22_2_2_velha  = q22_2_2.
compute q22_3_1_velha  = q22_3_1.
compute q22_3_2_velha  = q22_3_2.

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



**q24************************************************************************

compute q25_1_velha  = q25_1.
compute q25_2_velha  = q25_2.
compute q25_3_velha  = q25_3.
compute q25_4_velha  = q25_4.
compute q25_5_velha  = q25_5.
compute q25_6_velha  = q25_6.
compute q25_7_velha  = q25_7.
compute q25_8_velha  = q25_8.
compute q25_9_velha  = q25_9.
compute q25_10_velha  = q25_10.
compute q25_11_velha  = q25_11.
compute q25_12_velha  = q25_12.
compute q25_13_velha  = q25_13.
compute q25_14_velha  = q25_14.
compute q25_0_velha  = q25_0.
compute q25_1_velha  = q25_1.
compute q26_1_velha  = q26_1.
compute q26_2_velha  = q26_2.
compute q26_3_velha  = q26_3.
compute q26_4_velha  = q26_4.
compute q26_5_velha  = q26_5.
compute q26_6_velha  = q26_6.
compute q26_7_velha  = q26_7.
compute q26_8_velha  = q26_8.
compute q26_9_velha  = q26_9.
compute q26_10_velha  = q26_10.
compute q26_11_velha  = q26_11.
compute q26_12_velha  = q26_12.
compute q26_13_velha  = q26_13.
compute q27_velha  = q27.
compute q28_velha  = q28.
compute q29_1_velha  = q29_1.
compute q29_2_velha  = q29_2.
compute q29_3_velha  = q29_3.
compute q29_4_velha  = q29_4.
compute q29_5_velha  = q29_5.
compute q29_6_velha  = q29_6.
compute q29_7_velha  = q29_7.
compute q29_8_velha  = q29_8.
compute q29_9_velha  = q29_9.
compute q29_10_velha  = q29_10.
compute q29_11_velha  = q29_11.
compute q29_12_velha  = q29_12.
compute q29_99_velha  = q29_99.
compute q30_1_velha  = q30_1.
compute q30_2_velha  = q30_2.
compute q30_3_velha  = q30_3.
compute q30_4_velha  = q30_4.
compute q30_5_velha  = q30_5.
compute q30_99_velha  = q30_99.
compute q31_1_velha  = q31_1.
compute q31_2_velha  = q31_2.
compute q31_3_velha  = q31_3.
compute q31_4_velha  = q31_4.
compute q31_5_velha  = q31_5.
compute q31_6_velha  = q31_6.
compute q31_7_velha  = q31_7.
compute q31_8_velha  = q31_8.
compute q31_9_velha  = q31_9.
compute q31_0_velha  = q31_0.
compute q31_99_velha  = q31_99.
compute q32_velha  = q32.



DO IF (q24=3  |  q24=2 ).
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
RECODE q25_12 (ELSE=SYSMIS).
RECODE q25_13 (ELSE=SYSMIS).
RECODE q25_14  (ELSE=SYSMIS).
RECODE q25_0  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q24=0 ).
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
RECODE q25_12 (ELSE=SYSMIS).
RECODE q25_13 (ELSE=SYSMIS).
RECODE q25_14  (ELSE=SYSMIS).
RECODE q25_0  (ELSE=SYSMIS).
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
RECODE q26_12 (ELSE=SYSMIS).
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
RECODE q29_99 (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_99 (ELSE=SYSMIS).
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
RECODE q31_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q25************************************************************************

DO IF ( q25_0=1 ).
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
RECODE q25_12 (ELSE=SYSMIS).
RECODE q25_13 (ELSE=SYSMIS).
RECODE q25_14  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF ( q25_0=1 ).
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
RECODE q26_12 (ELSE=SYSMIS).
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
RECODE q29_99 (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_99 (ELSE=SYSMIS).
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
RECODE q31_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q29************************************************************************

DO IF ( q29_1=1 ).
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
RECODE q29_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q31************************************************************************


DO IF ( q31_0 =1 ).
RECODE q31_1 (ELSE=SYSMIS).
RECODE q31_2 (ELSE=SYSMIS).
RECODE q31_3 (ELSE=SYSMIS).
RECODE q31_4 (ELSE=SYSMIS).
RECODE q31_5 (ELSE=SYSMIS).
RECODE q31_6 (ELSE=SYSMIS).
RECODE q31_7 (ELSE=SYSMIS).
RECODE q31_8 (ELSE=SYSMIS).
RECODE q31_9 (ELSE=SYSMIS).
RECODE q31_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q32************************************************************************

compute q33_1_velha  = q33_1.
compute q33_2_velha  = q33_2.
compute q33_3_velha  = q33_3.
compute q33_4_velha  = q33_4.
compute q34_1_velha  = q34_1.
compute q34_2_velha  = q34_2.
compute q34_3_velha  = q34_3.
compute q34_4_velha  = q34_4.
compute q34_5_velha  = q34_5.
compute q34_6_velha  = q34_6.
compute q34_7_velha  = q34_7.
compute q34_8_velha  = q34_8.
compute q34_9_velha  = q34_9.
compute q34_99_velha  = q34_99.


DO IF ( q32 =0 ).
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
RECODE q34_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_1=1 |  q33_2 = 1 |  q33_3= 1 ).
RECODE q34_1 (ELSE=SYSMIS).
RECODE q34_2 (ELSE=SYSMIS).
RECODE q34_3 (ELSE=SYSMIS).
RECODE q34_4 (ELSE=SYSMIS).
RECODE q34_5 (ELSE=SYSMIS).
RECODE q34_6 (ELSE=SYSMIS).
RECODE q34_7 (ELSE=SYSMIS).
RECODE q34_8 (ELSE=SYSMIS).
RECODE q34_9 (ELSE=SYSMIS).
RECODE q34_99 (ELSE=SYSMIS).
END IF.
EXECUTE.




**q35************************************************************************

compute q36_1_velha  = q36_1.
compute q36_2_velha  = q36_2.
compute q36_3_velha  = q36_3.
compute q36_4_velha  = q36_4.
compute q36_5_velha  = q36_5.
compute q36_0_velha  = q36_0.
compute q37_0_velha  = q37_0.
compute q37_1_velha  = q37_1.
compute q37_2_velha  = q37_2.
compute q37_3_velha  = q37_3.
compute q37_4_velha  = q37_4.
compute q37_5_velha  = q37_5.
compute q37_6_velha  = q37_6.
compute q37_7_velha  = q37_7.
compute q37_8_velha  = q37_8.
compute q37_9_velha  = q37_9.
compute q37_10_velha  = q37_10.
compute q37_11_velha  = q37_11.
compute q37_12_velha  = q37_12.
compute q37_13_velha  = q37_13.
compute q37_99_velha  = q37_99.
compute q38_0_velha  = q38_0.
compute q38_1_velha  = q38_1.
compute q38_2_velha  = q38_2.
compute q38_3_velha  = q38_3.
compute q38_4_velha  = q38_4.
compute q38_5_velha  = q38_5.
compute q38_6_velha  = q38_6.
compute q38_7_velha  = q38_7.
compute q38_8_velha  = q38_8.
compute q38_9_velha  = q38_9.
compute q38_10_velha  = q38_10.
compute q38_11_velha  = q38_11.
compute q38_12_velha  = q38_12.
compute q38_13_velha  = q38_13.
compute q38_14_velha  = q38_14.
compute q38_15_velha  = q38_15.
compute q38_99_velha  = q38_99.


DO IF (q35= 0 ).
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
END IF.
EXECUTE.


**q36************************************************************************

DO IF (q36_0= 1 ).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q37************************************************************************

DO IF (q37_0= 1 ).
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



*q37************************************************************************

DO IF (q38_0= 1 ).
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



*q39************************************************************************

compute q40_1_velha  = q40_1.
compute q40_2_velha  = q40_2.
compute q40_3_velha  = q40_3.
compute q40_4_velha  = q40_4.
compute q40_5_velha  = q40_5.
compute q40_6_velha  = q40_6.
compute q40_7_velha  = q40_7.
compute q40_8_velha  = q40_8.
compute q40_9_velha  = q40_9.





DO IF (q39= 0 ).
RECODE q40_1 (ELSE=SYSMIS).
RECODE q40_2 (ELSE=SYSMIS).
RECODE q40_3 (ELSE=SYSMIS).
RECODE q40_4 (ELSE=SYSMIS).
RECODE q40_5 (ELSE=SYSMIS).
RECODE q40_6 (ELSE=SYSMIS).
RECODE q40_7 (ELSE=SYSMIS).
RECODE q40_8 (ELSE=SYSMIS).
RECODE q40_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q41************************************************************************

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
compute q41_13_1_velha  = q41_13_1.
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
compute q41_14_1_velha  = q41_14_1.
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
compute q41_15_1_velha  = q41_15_1.
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

DO IF ( q41_6_0=1 | q41_6_97=1).
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




VARIABLE LABELS
q4_1_velha  'v10102_1_q4_1_1: Secretaria da Assistência Social ou congênere_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q4_2_velha    'v10102_2_q4_2_2: Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-Prefeitura etc)_4. Especifique o tipo de unidade com a qual este Centro POP compartilha o imóvel.'
q4_3_velha  'v10102_3_q4_3_3: Conselho Municipal de Assistência Social_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q4_4_velha  'v10102_4_q4_4_4: CRAS – Centro de Referência de Assistência Social_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q4_5_velha 'v10102_5_q4_5_5: CREAS – Centro de Referência Especializado de Assistência Social_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q4_6_velha 'v10102_6_q4_6_6: Unidade de Acolhimento institucional (Abrigo)_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q4_7_velha 'v10102_7_q4_7_7: Outra unidade pública de serviços da Assistência Social_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q4_8_velha 'v10102_8_q4_8_8: Entidade/Organização da Sociedade Civil/Associação Comunitária_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q4_99_velha 'v10102_99_q4_99_99: Outros_4. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.'
q5_1_velha 'v10104_1_q5_1_1: Apenas o endereço é o mesmo, mas todos os espaços do Centro de Referência para Pop_Rua são independentes e de uso exclusivo, inclusive a entrada_5. Espaços compartilhados entre o CentroPOP e a outra Unidade'
q5_2_velha 'v10104_2_q5_2_2: Entrada / Porta de Acesso_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade'
q5_3_velha 'v10104_3_q5_3_3: Recepção_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q5_4_velha 'v10104_4_q5_4_4: Algumas salas de atendimento_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade'
q5_5_velha 'v10104_5_q5_5_5: Todas as salas de atendimento_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade'
q5_6_velha 'v10104_6_q5_6_6: Salas administrativas_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade'
q5_7_velha 'v10104_7_q5_7_7: Espaço para atividades coletivas_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade)'
q5_8_velha 'v10104_8_q5_8_8: Banheiros_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q5_9_velha 'v10104_8_q5_8_8: Banheiros_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q5_10_velha 'v10104_10_q5_10_10: Área Externa_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q5_11_velha 'v10104_10_q5_10_10: Área Externa_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q5_12_velha 'v10104_12_q5_12_12: Refeitório_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q5_13_velha 'v10104_13_q5_13_13: Lavanderia_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q5_14_velha 'v10104_14_q5_14_14: Espaço para guarda de pertences_5. Especifique quais espaços do imóvel são compartilhados entre o Centro POP e a outra Unidade:'
q5_99_velha 'v10104_99_q5_99_99: Outros_5. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:'
q8_1_velha 'v12648_1_q8_1_1: Sim, suporte de profissional com conhecimento em LIBRAS_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_2_velha 'v12648_2_q8_2_2: Sim, suporte de material em braile_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_3_velha 'v12648_3_q8_3_3: Sim, suporte para leitores de telas de computador para pessoas com deficiência visual_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_4_velha 'v12648_4_q8_4_4: Sim, pisos especiais com relevos para sinalização voltados para pessoa com deficiência visual_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_5_velha 'v12648_5_q8_5_5: Sim, outras adaptações e tecnologias assistivas para deficiência física._8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_6_velha 'v12648_6_q8_6_6: Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_7_velha 'v12648_7_q8_7_7: Sim, pisos especiais com relevos para sinalização voltados pessoa com deficiência visual_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_99_velha 'v12648_99_q8_99_99: Há outras estratégias para acessibilidade de pessoas com deficiência auditiva e visual_8. Há outras adaptações para assegurar a acessibilidade desta unidade?'
q8_0_velha 'v12648_0_q8_0_0: Não há outras adaptações_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q12_1_velha 'v12648_0_q8_0_0: Não há outras adaptações_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q12_1_1_velha 'v12648_0_q8_0_0: Não há outras adaptações_8. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q12_1_2_velha 'v10177_2_q12_1_2_12.1.2. Lanche/Café da Manhã - 2: Em outra unidade pública ou privada'
q12_1_3_velha 'v10177_3_q12_1_3_12.1.3. Lanche/Café da Manhã - 3: No espaço deste Centro POP'
q12_2_velha 'v10173_q12_2_12.2. Almoço - É ofertada a refeição?'
q12_2_1_velha 'v10178_1_q12_2_1_12.2.1. Almoço - 1: Restaurante Popular'
q12_2_2_velha 'v10178_2_q12_2_2_12.2.2. Almoço - 2: Em outra unidade pública ou privada'
q12_2_3_velha 'v10178_3_q12_2_3_12.2.3. Almoço - 3: No espaço deste Centro POP'
q12_3_velha 'v10174_q12_3_12.3. Lanche/Café da Tarde - É ofertada a refeição?'
q12_3_1_velha 'v10179_1_q12_3_1_12.3.1. Lanche/Café da Tarde - 1: Restaurante Popular'
q12_3_2_velha 'v10179_2_q12_3_2_12.3.2. Lanche/Café da Tarde - 2: Em outra unidade pública ou privada'
q12_3_3_velha 'v10179_3_q12_3_3_12.3.3. Lanche/Café da Tarde - 3: No espaço deste Centro POP'
q12_4_velha 'v10175_q12_4_12.4. Jantar - É ofertada a refeição?'
q12_4_1_velha 'v10180_1_q12_4_1_12.4.1. Jantar - 1: Restaurante Popular'
q12_4_2_velha 'v10180_2_q12_4_2_12.4.2. Jantar - 2: Em outra unidade pública ou privada'
q12_4_3_velha 'v10180_3_q12_4_3_12.4.3. Jantar - 3: No espaço deste Centro POP'
q12_5_velha 'v10176_q12_5_12.5. Lanche/Café da Noite - É ofertada a refeição?'
q12_5_1_velha 'v10181_1_q12_5_1_12.5.1. Lanche/Café da Noite - 1: Restaurante Popular'
q12_5_2_velha 'v10181_2_q12_5_2_12.5.2. Lanche/Café da Noite -  2: Em outra unidade pública ou privada'
q12_5_3_velha 'v10181_3_q12_5_3_12.5.3. Lanche/Café da Noite - 3: No espaço deste Centro POP'
q13_0_velha 'v15548_1_q13_0_13.0. Este Centro POP ficou fechado em todo tempo da pandemia - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_1_velha 'v15540_q13_1_13.1. Ofertou atendimento presencial ao público em geral - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_2_velha 'v15540_q13_1_13.1. Ofertou atendimento presencial ao público em geral - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_3_velha 'v15542_q13_3_13.3. Ofertou atendimentos/acompanhamento apenas para casos emergenciais - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_4_velha 'v15543_q13_4_13.4. Ofertou os atendimentos das demandas de benefícios eventuais e Cadastro Único/ Auxílio Emergencial - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_5_velha 'v15544_q13_5_13.5. Ofertou teleatendimento por telefone e aplicativos de videoconferência - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_99_velha 'v15547_q13_99_13.99. Ofertou atividades coletivas (oficinas, grupo, ações comunitárias) - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_6_velha 'v15545_q13_6_13.6. Realizou visitas domiciliares - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q13_7_velha 'v15546_q13_7_13.7. Outro - funcionamento deste Centro POP durante a pandemia do Coronavírus'
q14_velha 'v15519_1_q14  Como estava a jornada de trabalho das(os) profissionais durante a maior parte da pandemia?'
q15_velha 'v15522_q15_15. Os trabalhadores deste Centro POP tiveram acesso a Equipamentos de Proteção Individual?'
q18_1_velha 'v10185_1_q18_1_1: Atividades esportivas_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_2_velha 'v10185_2_q18_2_2: Atividades musicais (cantar, tocar instrumentos musicais, etc.)_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_3_velha 'v10185_3_q18_3_3: Atividades de arte e cultura (pintura, circo, dança, teatro, trabalhos em papel, etc.)_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_4_velha 'v10185_4_q18_4_4: Artesanato (bijuterias, pintura em tecido, bordado, crochê, etc.)_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_5_velha 'v10185_5_q18_5_5: Inclusão digital_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_6_velha 'v10185_6_q18_6_6: Atividades de linguagem (produção de texto, contação de histórias, roda de conversa, etc.)_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_7_velha 'v10185_7_q18_7_7: Atividades que envolvam alimentos (culinária, hortas, etc.)_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_8_velha 'v10185_8_q18_8_8: Jogos e brincadeiras (jogos de tabuleiro, baralhos, dominós, etc.)_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_9_velha 'v10185_9_q18_9_9: Orientação para o mundo do trabalho_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_10_velha 'v10185_10_q18_10_10: Atividades de autocuidado (higiene, alimentação, descanso)_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_11_velha 'v10185_11_q18_11_11: Assembleias, debates e outras atividades participativas_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_12_velha 'v10185_11_q18_11_11: Assembleias, debates e outras atividades participativas_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q18_99_velha 'v10185_99_q18_99_99: Outros_18. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:'
q20_0_velha 'v12655_0_q20_0_0: Não encaminha e/ou não há estratégias para acolhimento provisório (não marque as demais)_20. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:'
q20_1_velha 'v12655_1_q20_1_1: Encaminha para uma unidade de acolhimento da rede socioassistencial_20. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:'
q20_2_velha 'v12655_2_q20_2_2: Encaminha para uma unidade de outra política pública_20. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:'
q20_99_velha 'v12655_99_q20_99_99: Outro_20. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:'
q22_1_1_velha 'v12659_q22_1_1_22.1.1. República para adultos em processo de saída das ruas - Esta unidade possui serviço de referência para encaminhar as(os) usuárias(os)?'
q22_1_2_velha 'v12667_q22_1_2_22.1.2. República para adultos em processo de saída das ruas - Com que frequência há o encaminhamento?'
q22_2_1_velha 'v12660_q22_2_1_22.2.1. Programas de Aluguel/Locação Social ou Auxílio Moradia - Esta unidade possui serviço de referência para encaminhar as(os) usuárias(os)?'
q22_2_2_velha 'v12668_q22_2_2_22.2.2. Programas de Aluguel/Locação Social ou Auxílio Moradia - Com que frequência há o encaminhamento?'
q22_3_1_velha 'v12661_q22_3_1_22.3.1. Programas de Habitação Popular - Esta unidade possui serviço de referência para encaminhar as(os) usuárias(os)?'
q22_3_2_velha 'v12669_q22_3_2_22.3.2. Programas de Habitação Popular - Com que frequência há o encaminhamento?'
q25_1_velha 'v11865_1_q25_1_1: Coordena o Serviço referenciado_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_2_velha 'v11865_2_q25_2_2: Coleta/recebe periodicamente informações sobre dados de atendimento do Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_3_velha 'v11865_3_q25_3_3: Realiza reuniões periódicas para avaliação do Serviço com a Unidade referenciada_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_4_velha 'v11865_4_q25_4_4: Participa do planejamento das atividades do Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_5_velha 'v11865_5_q25_5_5: Acompanha cotidianamente as atividades do Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_6_velha  'v11865_6_q25_6_6: Constrói estratégias metodológicas do Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_7_velha 'v11865_7_q25_7_7: Elabora relatórios técnicos específicos sobre casos atendidos/acompanhados pelo Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_8_velha 'v11865_8_q25_8_8: Realiza estudos de caso em parceria com o Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_9_velha 'v11865_9_q25_9_9: Define procedimentos comuns e/ou complementares ao Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_10_velha 'v11865_10_q25_10_10: Possui fluxos de encaminhamentos e trocas de informações com o Serviço_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_11_velha 'v11865_11_q25_11_11: Articula com a rede de serviços socioassistenciais_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_12_velha 'v11865_12_q25_12_12: Articula com a rede dos serviços das políticas públicas setoriais_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_13_velha 'v11865_13_q25_13_13: Articula com os órgãos do Sistema de Justiça_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q25_14_velha 'v11865_14_q25_14_14: Articula com os órgãos de defesa de direitos (Defensoria Pública, Ministério Público, Conselho Tutelar, etc.)_indique as atividades realizadas'
q25_0_velha 'v11865_0_q25_0_0: Não realiza nenhuma das atividades acima_25. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:'
q26_1_velha 'v10201_1_q26_1_1: Identificação de situações de risco pessoal e social com direitos violados_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_2_velha 'v10201_2_q26_2_2: Conhecimento/mapeamento do território_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_3_velha 'v10201_3_q26_3_3: Informação, comunicação e defesa de direitos das(os) usuárias(os)_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_4_velha' v10201_4_q26_4_4: Escuta de usuárias(os)_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_5_velha' v10201_4_q26_4_4: Escuta de usuárias(os)_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_6_velha 'v10201_6_q26_6_6: Encaminhamento para a rede de serviços locais_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_7_velha 'v10201_7_q26_7_7: Articulação da rede de serviços socioassistenciais_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_8_velha 'v10201_8_q26_8_8: Articulação com os serviços de políticas públicas setoriais_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_9_velha 'v10201_9_q26_9_9: Articulação com os demais órgãos de garantia e defesa de direitos_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_10_velha 'v10201_10_q26_10_10: Elaboração de relatórios_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_11_velha 'v10201_11_q26_11_11: Ações de sensibilização para divulgação do trabalho realizado_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_12_velha  'v10201_11_q26_11_11: Ações de sensibilização para divulgação do trabalho realizado_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q26_13_velha 'v10201_13_q26_13_13: Registro de atendimento e acompanhamento das(os) usuárias(os)_26. Quais atividades o Serviço Especializado em Abordagem Social realiza?'
q27_velha 'v10204_q27_27. Quantos dias por semana a abordagem social é realizada:'
q28_velha 'v10205_q28_28. Em quais períodos do dia costuma ser realizada a abordagem social?'
q29_1_velha 'v10206_1_q29_1_1: A Abordagem é realizada exclusivamente pela equipe do Centro Pop_29. A abordagem social é realizada em parceria com:'
q29_2_velha 'v10206_2_q29_2_2: Equipes da atenção básica de saúde_29. A abordagem social é realizada em parceria com:'
q29_3_velha 'v10206_3_q29_3_3: Equipes de saúde mental_29. A abordagem social é realizada em parceria com:'
q29_4_velha 'v10206_4_q29_4_4: Equipes de serviços de acolhimento_29. A abordagem social é realizada em parceria com:'
q29_5_velha 'v10206_5_q29_5_5: Equipes do CREAS_29. A abordagem social é realizada em parceria com:'
q29_6_velha 'v10206_6_q29_6_6: Equipes de outras unidades públicas da rede socioassistencial_29. A abordagem social é realizada em parceria com:'
q29_7_velha 'v10206_7_q29_7_7: Equipes de entidades da rede socioassistencial privada_29. A abordagem social é realizada em parceria com:'
q29_8_velha 'v10206_8_q29_8_8: Integrantes de movimentos sociais_29. A abordagem social é realizada em parceria com:'
q29_9_velha 'v10206_9_q29_9_9: Guarda municipal_29. A abordagem social é realizada em parceria com:'
q29_10_velha 'v10206_10_q29_10_10: Polícia militar_29. A abordagem social é realizada em parceria com:'
q29_11_velha 'v10206_11_q29_11_11: Conselho Tutelar_29. A abordagem social é realizada em parceria com:'
q29_12_velha 'v10206_12_q29_12_12: Órgãos de defesa de direitos_29. A abordagem social é realizada em parceria com:'
q29_99_velha 'v10206_99_q29_99_99: Outros_29. A abordagem social é realizada em parceria com:'
q30_1_velha ' v15528_1_q30_1_1: Conhecimento prévio dos técnicos do Serviço_30. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q30_2_velha 'v15528_2_q30_2_2: A partir de diagnósticos socioterritoriais realizados pelo órgão gestor de Assistência Social_30. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q30_3_velha 'v15528_3_q30_3_3: A partir de diagnósticos socioterritoriais realizados pela equipe que executa o serviço_30. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q30_4_velha 'v15528_4_q30_4_4: Demanda dos órgãos de defesa de diretos_30. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q30_5_velha 'v15528_5_q30_5_5: Denúncias/Solicitações da população_30. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q30_99_velha 'v15528_99_q30_99_99: Outros_30. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q31_1_velha 'v15528_99_q30_99_99: Outros_30. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q31_2_velha 'v15530_2_q31_2_2: Aciona o Conselho Tutelar_31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q31_3_velha 'v15530_3_q31_3_3: Avalia os riscos que a criança ou o adolescente estão submetidos_31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q31_4_velha 'v15530_4_q31_4_4: Realiza a identificação da família de origem_31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q31_5_velha 'v15530_5_q31_5_5: Avalia as possibilidades de retorno seguro para convivência familiar e comunitária_31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados?'
q31_6_velha 'v15530_6_q31_6_6: Constrói alternativas processuais/gradativas para a saída das ruas, evitando o acolhimento compulsório_31. atende crianças/adolescentes em situação de rua desacompanhados?'
q31_7_velha 'v15530_7_q31_7_7: Articula com atores do Sistema de Garantia de Direitos para proteção e outros suportes_31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados?'
q31_8_velha 'v15530_8_q31_8_8: Estabelece fluxo e articulações entre o Serviço de Abordagem e o Serviço de Acolhimento_31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados?'
q31_9_velha 'v15530_9_q31_9_9: Articula com sistema de justiça para aplicação de medida protetiva e outros encaminhamentos_31. Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados?'
q31_0_velha 'v15530_0_q31_0_0: NÃO atendeu nenhuma criança/adolescente em situação de rua _31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q31_99_velha 'v15530_99_q31_99_99: Outra_31. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q32_velha 'v10207_q32_32. É feita concessão de Benefícios Eventuais neste CENTRO POP?'
q33_1_velha 'v10208_1_q33_1_1: Benefício Eventual em situação de morte_33. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?'
q33_2_velha 'v10208_2_q33_2_2: Benefício Eventual em situação de natalidade_33. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?'
q33_3_velha 'v10208_3_q33_3_3: Benefício Eventual em situação de calamidade (inclui desastres e emergências)_33. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?'
q33_4_velha 'v10208_4_q33_4_4: Benefício Eventual em situação de vulnerabilidade social temporária_33. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?'
q34_1_velha 'v15532_1_q34_1_1: Auxílio relacionado à segurança alimentar (cesta básica, leite, entre outros)_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_2_velha 'v15532_2_q34_2_2: Auxílio para deslocamento / passagens (vale-transporte)_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_3_velha 'v15532_3_q34_3_3: Auxílio/Isenção para retirada de documentação (inclui auxílio para retirada de fotos)_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_4_velha 'v15532_4_q34_4_4: Aluguel social/locação social/auxílio moradia_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_5_velha 'v15532_5_q34_5_5: Material de construção_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_6_velha' v15532_6_q34_6_6: Pagamento/ Isenção de contas de água e luz_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_7_velha 'v15532_7_q34_7_7: Auxílio gás_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_8_velha 'v15532_7_q34_7_7: Auxílio gás_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_9_velha 'v15532_9_q34_9_9: Móveis e Eletrodomésticos_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q34_99_velha 'v15532_10_q34_99_10: Outros_34. Caso o município conceda Benefício Eventual em situação de vulnerabilidade social temporária, informe quais'
q36_1_velha 'v15534_1_q36_1_1: Busca ativa (entrevista domiciliar, mutirão e ações itinerantes) com a finalidade de inclusão e atualização cadastral_36. Quais atividades o Centro Pop realiza no âmbito Cadastro Único?)'
q36_2_velha 'v15534_2_q36_2_2: Consultas ao cadastro das famílias e pessoas em situação de rua_36. Quais atividades o Centro Pop realiza no âmbito Cadastro Único?'
q36_3_velha 'v15534_3_q36_3_3: Orienta sobre questões relacionadas ao Cadastro Único_36. Quais atividades o Centro Pop realiza no âmbito Cadastro Único?'
q36_4_velha 'v15534_4_q36_4_4: O Centro Pop é registrado como o endereço de famílias e pessoas em situação de rua_36. Quais atividades o Centro Pop realiza no âmbito Cadastro Único?'
q36_5_velha 'v15534_5_q36_5_5: Encaminha famílias e pessoas em situação de rua para programas usuários do Cadastro Único_36. Quais atividades o Centro Pop realiza no âmbito Cadastro Único?'
q36_0_velha 'v15534_0_q36_0_0: Não realiza atividades relacionadas ao Cadastro Único_36. Quais atividades o Centro Pop realiza no âmbito Cadastro Único?'
q37_0_velha 'v15535_0_q37_0_0: Não realiza ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família_37.Ações/atividades junto à gestão de benefícios do PBF'
q37_1_velha 'v15535_1_q37_1_1: Informação individualizada sobre regras do Programa (valores de benefícios, regras de concessão, bloqueio, suspensão e cancelamento de benefícios e condicionalidades)_37. gestão de benefícios do PBF'
q37_2_velha 'v15535_2_q37_2_2: Informação coletiva às famílias sobre regras do Programa (Reuniões de acolhida, palestra etc)_37. Ações/atividades junto à gestão de benefícios do PBF'
q37_3_velha' v15535_3_q37_3_3: Emissão de declaração de troca de responsável familiar para recebimento do benefício_37. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q37_4_velha 'v15535_4_q37_4_4: Emissão de declaração especial para recebimento do benefício (quando em situações de emergência e estado de calamidade público)_37. Ações/atividades junto à gestão de benefícios do PBF'
q37_5_velha 'v15535_5_q37_5_5: Esclarecimentos sobre o conteúdo de mensagens no extrato de pagamentos, recebida pelo beneficiário_37. Ações/atividades junto à gestão de benefícios do PBF'
q37_6_velha 'v15535_6_q37_6_6: Esclarecimentos sobre informações de pagamento do Programa: entrega, desbloqueio e ativação do Cartão Bolsa Família e calendário de pagamentos_37.Ações/atividades junto à gestão de benefícios do PBF'
q37_7_velha 'v15535_7_q37_7_7: Realiza manutenção de benefícios diretamente no SIBEC_37. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q37_8_velha 'v15535_8_q37_8_8: Registro no Formulário Padrão de Gestão de Benefícios (FPGB) e seu arquivamento_37. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q37_9_velha 'v15535_9_q37_9_9: Solicitação de manutenção de benefícios pelo módulo de Administração Off-line do SigPBF_37.  gestão de benefícios do Programa Bolsa Família:'
q37_10_velha 'v15535_10_q37_10_10: Elaboração de ofícios à Secretaria Nacional de Renda de Cidadania solicitando a manutenção de benefícios_37. à gestão de benefícios do PBF'
q37_11_velha 'v15535_11_q37_11_11: Orientação sobre como denunciar irregularidades no pagamento e no atendimento dos canais da CAIXA_37. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do PBF'
q37_12_velha 'v15535_12_q37_12_12: Registro de denúncias de recebimento indevido de benefícios_37. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q37_13_velha 'v15535_13_q37_13_13: Apuração de denúncias de recebimento indevido de benefícios_37. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q37_99_velha 'v15535_99_q37_99_99: Outros_37. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q38_0_velha 'v15537_0_q38_0_0: Não realiza atividades referente ao descumprimento de condicionalidades_38. Ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_1_velha 'v15537_1_q38_1_1: Esclarecimentos às famílias sobre as regras de condicionalidades durante o atendimento particularizado_38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_2_velha 'v15537_2_q38_2_2: Interação com as escolas dos beneficiários em descumprimento_38. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_3_velha 'v15537_3_q38_3_3: Interação com a equipe de saúde no município responsável pelo acompanhamento das condicionalidades de saúde_38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_4_velha 'v15537_4_q38_4_4: Ação para prestar informações às famílias sobre as condicionalidades (Reuniões de acolhida, palestras, oficinas em grupo)_38.PBF em descumprimento de condicionalidades:'
q38_5_velha 'v15537_5_q38_5_5: Busca ativa (visita domiciliar/envio de cartas/SMS,ações itinerantes) para facilitar a apresentação de recurso pelas famílias_38.  PBF em descumprimento de condicionalidades:'
q38_6_velha 'v15537_6_q38_6_6: Emissão de laudo ou relatório social para subsidiar a família atendida/acompanhada pelo CRAS na apresentação do recurso_38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_7_velha 'v15537_7_q38_7_7: Fornecimento de comprovante do registro de recurso para as famílias_38.PBF em descumprimento de condicionalidades:'
q38_8_velha 'v15537_8_q38_8_8: Arquivamento da documentação comprobatória apresentada pela família no registro do recurso_38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_9_velha 'v15537_9_q38_9_9: Acesso à lista de famílias em fase de suspensão por descumprimento de condicionalidades no território abrangido pelo CRAS_38. PBF em descumprimento de condicionalidades:'
q38_10_velha 'v15537_10_q38_10_10: Busca ativa das famílias para inclusão nos serviços para superação da situação que gerou o descumprimento_38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_11_velha 'v15537_11_q38_11_11: Priorização das famílias em fase de suspensão por descumprimento de condicionalidades nas ações do PAIF_38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_12_velha 'v15537_12_q38_12_12: Registro no Sicon dos atendimentos/acompanhamentos realizados no âmbito do PAIF com as famílias PBF_38.Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_13_velha 'v15537_13_q38_13_13: Ativação da interrupção temporária dos efeitos do descumprimento no Sicon_PBF em descumprimento de condicionalidades:'
q38_14_velha 'v15537_14_q38_14_14: Encaminhamento de famílias/indivíduos para outros serviços, programas ou benefícios socioassistenciais_38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_15_velha 'v15537_15_q38_15_15: Encaminhamento de famílias/indivíduos para outras políticas públicas (educação, saúde,etc.) 38. Ações/atividades junto às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q38_99_velha 'v15537_99_q38_99_99: Outros_38. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias beneficiárias do PBF em descumprimento de condicionalidades:'
q40_1_velha 'v10222_1_q40_1_1: Usuárias(os) participam de reuniões de planejamento desta unidade_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_2_velha 'v10222_2_q40_2_2: Apoio financeiro para que usuárias(os) consigam participar de reuniões de planejamento desta unidade_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_3_velha 'v10222_3_q40_3_3: Existência de representante de usuárias(os) junto à unidade_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_4_velha 'v10222_4_q40_4_4: Eleição para representante de usuárias(os) junto à unidade_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_5_velha 'v10222_5_q40_5_5: Estímulo à formação de coletivo/comitê de usuárias(os)_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_6_velha 'v10222_6_q40_6_6: Realização de questionário de satisfação/ pesquisa de opinião (inclui urna de sugestões)_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_7_velha 'v10222_7_q40_7_7: Realização de reuniões/entrevistas específicas para levantar demandas das(os) usuárias(os)_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_8_velha 'v10222_8_q40_8_8: Usuárias(os) escolhem os temas a serem trabalhados nas ações coletivas da unidade_40. Quais mecanismos de participação são utilizados nesta unidade?'
q40_9_velha 'v10222_8_q40_8_8: Usuárias(os) escolhem os temas a serem trabalhados nas ações coletivas da unidade_40. Quais mecanismos de participação são utilizados nesta unidade?'
q41_1_1_velha 'v10224_1_q41_1_1_1: Possui dados de localização (endereço, telefone, etc.)_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_2_velha 'v10224_2_q41_1_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_3_velha 'v10224_3_q41_1_3_3: Encaminha usuárias(os) para este Centro de Referência_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_4_velha 'v10224_4_q41_1_4_4: Acompanha os encaminhamentos_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_5_velha 'v10224_5_q41_1_5_5: Realiza reuniões periódicas_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_6_velha' v10224_6_q41_1_6_6: Troca Informações_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_7_velha 'v10224_7_q41_1_7_7: Realiza estudos de caso em conjunto_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_8_velha 'v10224_7_q41_1_7_7: Realiza estudos de caso em conjunto_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_9_velha 'v10224_9_q41_1_9_9: Possui fluxo/protocolo de articulação_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_0_velha 'v10224_0_q41_1_0_0: Não tem nenhuma articulação_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_1_97_velha 'v10224_97_q41_1_97_97: Serviço ou instituição não existente no Município/DF_41.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)'
q41_2_1_velha' v10225_1_q41_2_1_1: Possui dados de localização (endereço, telefone, etc.)_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_2_velha 'v10225_1_q41_2_1_1: Possui dados de localização (endereço, telefone, etc.)_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_3_velha 'v10225_3_q41_2_3_3: Encaminha usuárias(os) para este Centro de Referência_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_4_velha 'v10225_4_q41_2_4_4: Acompanha os encaminhamentos_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_5_velha 'v10225_5_q41_2_5_5: Realiza reuniões periódicas_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_6_velha 'v10225_6_q41_2_6_6: Troca Informações_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_7_velha 'v10225_7_q41_2_7_7: Realiza estudos de caso em conjunto_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_8_velha 'v10225_8_q41_2_8_8: Desenvolve atividades em parceria_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_9_velha 'v10225_9_q41_2_9_9: Possui fluxo/protocolo de articulação_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_0_velha 'v10225_0_q41_2_0_0: Não tem nenhuma articulação_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_2_97_velha 'v10225_97_q41_2_97_97: Serviço ou instituição não existente no Município/DF_41.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)'
q41_3_1_velha 'v10226_1_q41_3_1_1: Possui dados de localização (endereço, telefone, etc.)_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_2_velha 'v10226_2_q41_3_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_3_velha 'v10226_3_q41_3_3_3: Encaminha usuárias(os) para este Centro de Referência_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_4_velha 'v10226_4_q41_3_4_4: Acompanha os encaminhamentos_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_5_velha 'v10226_5_q41_3_5_5: Realiza reuniões periódicas_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_6_velha 'v10226_6_q41_3_6_6: Troca Informações_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_7_velha 'v10226_7_q41_3_7_7: Realiza estudos de caso em conjunto_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_8_velha 'v10226_8_q41_3_8_8: Desenvolve atividades em parceria_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_9_velha 'v10226_9_q41_3_9_9: Possui fluxo/protocolo de articulação_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_0_velha 'v10226_0_q41_3_0_0: Não tem nenhuma articulação_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_3_97_velha 'v10226_97_q41_3_97_97: Serviço ou instituição não existente no Município/DF_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_4_1_velha 'v10226_97_q41_3_97_97: Serviço ou instituição não existente no Município/DF_41.3. Centro de Referência de Assistência Social (CRAS)'
q41_4_2_velha 'v10227_2_q41_4_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_3_velha 'v10227_3_q41_4_3_3: Encaminha usuárias(os) para este Centro de Referência_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_4_velha 'v10227_4_q41_4_4_4: Acompanha os encaminhamentos_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_5_velha 'v10227_5_q41_4_5_5: Realiza reuniões periódicas_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_6_velha 'v10227_6_q41_4_6_6: Troca Informações_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_7_velha 'v10227_7_q41_4_7_7: Realiza estudos de caso em conjunto_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_8_velha 'v10227_8_q41_4_8_8: Desenvolve atividades em parceria_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_9_velha 'v10227_9_q41_4_9_9: Possui fluxo/protocolo de articulação_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_0_velha 'v10227_0_q41_4_0_0: Não tem nenhuma articulação_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_4_97_velha 'v10227_97_q41_4_97_97: Serviço ou instituição não existente no Município/DF_41.4. Centro de Referência Especializado de Assistência Social (CREAS)'
q41_5_1_velha 'v10228_1_q41_5_1_1: Possui dados de localização (endereço, telefone, etc.)_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_2_velha 'v10228_2_q41_5_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_3_velha 'v10228_3_q41_5_3_3: Encaminha usuárias(os) para este Centro de Referência_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_4_velha 'v10228_4_q41_5_4_4: Acompanha os encaminhamentos_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_5_velha 'v10228_4_q41_5_4_4: Acompanha os encaminhamentos_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_6_velha 'v10228_6_q41_5_6_6: Troca Informações_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_7_velha'v10228_7_q41_5_7_7: Realiza estudos de caso em conjunto_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_8_velha 'v10228_8_q41_5_8_8: Desenvolve atividades em parceria_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_9_velha 'v10228_9_q41_5_9_9: Possui fluxo/protocolo de articulação_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_0_velha 'v10228_0_q41_5_0_0: Não tem nenhuma articulação_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_5_97_velha 'v10228_97_q41_5_97_97: Serviço ou instituição não existente no Município/DF_41.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)'
q41_6_1_velha 'v10229_1_q41_6_1_1: Possui dados de localização (endereço, telefone, etc.)_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_2_velha 'v10229_2_q41_6_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_3_velha 'v10229_3_q41_6_3_3: Encaminha usuárias(os) para este Centro de Referência_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_4_velha 'v10229_4_q41_6_4_4: Acompanha os encaminhamentos_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_5_velha 'v10229_5_q41_6_5_5: Realiza reuniões periódicas_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_6_velha 'v10229_6_q41_6_6_6: Troca Informações_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_7_velha 'v10229_7_q41_6_7_7: Realiza estudos de caso em conjunto_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_8_velha 'v10229_8_q41_6_8_8: Desenvolve atividades em parceria_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_9_velha 'v10229_9_q41_6_9_9: Possui fluxo/protocolo de articulação_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_0_velha 'v10229_0_q41_6_0_0: Não tem nenhuma articulação_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_6_97_velha 'v10229_97_q41_6_97_97: Serviço ou instituição não existente no Município/DF_41.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)'
q41_7_1_velha 'v10231_1_q41_7_1_1: Possui dados de localização (endereço, telefone, etc.)_41.7. Serviços de saúde voltados à internação'
q41_7_2_velha 'v10231_2_q41_7_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.7. Serviços de saúde voltados à internação'
q41_7_3_velha'v10231_3_q41_7_3_3: Encaminha usuárias(os) para este Centro de Referência_41.7. Serviços de saúde voltados à internação'
q41_7_4_velha 'v10231_4_q41_7_4_4: Acompanha os encaminhamentos_41.7. Serviços de saúde voltados à internação'
q41_7_5_velha 'v10231_5_q41_7_5_5: Realiza reuniões periódicas_41.7. Serviços de saúde voltados à internação'
q41_7_6_velha 'v10231_6_q41_7_6_6: Troca Informações_41.7. Serviços de saúde voltados à internação'
q41_7_7_velha 'v10231_7_q41_7_7_7: Realiza estudos de caso em conjunto_41.7. Serviços de saúde voltados à internação'
q41_7_8_velha' v10231_8_q41_7_8_8: Desenvolve atividades em parceria_41.7. Serviços de saúde voltados à internação'
q41_7_9_velha 'v10231_9_q41_7_9_9: Possui fluxo/protocolo de articulação_41.7. Serviços de saúde voltados à internação'
q41_7_0_velha 'v10231_0_q41_7_0_0: Não tem nenhuma articulação_41.7. Serviços de saúde voltados à internação'
q41_7_97_velha 'v10231_97_q41_7_97_97: Serviço ou instituição não existente no Município/DF_41.7. Serviços de saúde voltados à internação'
q41_8_1_velha 'v10232_1_q41_8_1_1: Possui dados de localização (endereço, telefone, etc.)_41.8. Serviços de educação'
q41_8_2_velha 'v10232_2_q41_8_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.8. Serviços de educação'
q41_8_3_velha 'v10232_3_q41_8_3_3: Encaminha usuárias(os) para este Centro de Referência_41.8. Serviços de educação'
q41_8_4_velha 'v10232_4_q41_8_4_4: Acompanha os encaminhamentos_41.8. Serviços de educação'
q41_8_5_velha 'v10232_5_q41_8_5_5: Realiza reuniões periódicas_41.8. Serviços de educação'
q41_8_6_velha 'v10232_6_q41_8_6_6: Troca Informações_41.8. Serviços de educação'
q41_8_7_velha 'v10232_7_q41_8_7_7: Realiza estudos de caso em conjunto_41.8. Serviços de educação'
q41_8_8_velha 'v10232_8_q41_8_8_8: Desenvolve atividades em parceria_41.8. Serviços de educação'
q41_8_9_velha 'v10232_9_q41_8_9_9: Possui fluxo/protocolo de articulação_41.8. Serviços de educação'
q41_8_0_velha 'v10232_0_q41_8_0_0: Não tem nenhuma articulação_41.8. Serviços de educação'
q41_8_97_velha 'v10232_97_q41_8_97_97: Serviço ou instituição não existente no Município/DF_41.8. Serviços de educação'
q41_9_1_velha 'v14444_1_q41_9_1_1: Possui dados de localização (endereço, telefone, etc.)_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_2_velha' v14444_2_q41_9_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_3_velha 'v14444_3_q41_9_3_3: Encaminha usuárias(os) para este Centro de Referência_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_4_velha 'v14444_4_q41_9_4_4: Acompanha os encaminhamentos_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_5_velha 'v14444_5_q41_9_5_5: Realiza reuniões periódicas_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_6_velha 'v14444_6_q41_9_6_6: Troca Informações_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_7_velha 'v14444_7_q41_9_7_7: Realiza estudos de caso em conjunto_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_8_velha' v14444_8_q41_9_8_8: Desenvolve atividades em parceria_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_9_velha 'v14444_9_q41_9_9_9: Possui fluxo/protocolo de articulação_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_0_velha 'v14444_0_q41_9_0_0: Não tem nenhuma articulação_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_9_97_velha 'v14444_97_q41_9_97_97: Serviço ou instituição não existente no Município/DF_41.9. Políticas Culturais (ponto de cultura, entre outros)'
q41_10_1_velha 'v10234_1_q41_10_1_1: Possui dados de localização (endereço, telefone, etc.)_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_2_velha  'v10234_2_q41_10_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_3_velha 'v10234_3_q41_10_3_3: Encaminha usuárias(os) para este Centro de Referência_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_4_velha 'v10234_4_q41_10_4_4: Acompanha os encaminhamentos_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_5_velha 'v10234_5_q41_10_5_5: Realiza reuniões periódicas_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_6_velha' v10234_6_q41_10_6_6: Troca Informações_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_7_velha 'v10234_7_q41_10_7_7: Realiza estudos de caso em conjunto_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_8_velha 'v10234_8_q41_10_8_8: Desenvolve atividades em parceria_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_9_velha 'v10234_9_q41_10_9_9: Possui fluxo/protocolo de articulação_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_0_velha 'v10234_0_q41_10_0_0: Não tem nenhuma articulação_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_10_97_velha 'v10234_97_q41_10_97_97: Serviço ou instituição não existente no Município/DF_41.10. Órgãos responsáveis pela emissão de documentação civil básica'
q41_11_1_velha 'v10235_1_q41_11_1_1: Possui dados de localização (endereço, telefone, etc.)_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_2_velha' v10235_2_q41_11_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_3_velha 'v10235_3_q41_11_3_3: Encaminha usuárias(os) para este Centro de Referência_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_4_velha 'v10235_4_q41_11_4_4: Acompanha os encaminhamentos_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_5_velha 'v10235_5_q41_11_5_5: Realiza reuniões periódicas_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_6_velha 'v10235_6_q41_11_6_6: Troca Informações_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_7_velha 'v10235_7_q41_11_7_7: Realiza estudos de caso em conjunto_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_8_velha 'v10235_8_q41_11_8_8: Desenvolve atividades em parceria_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_9_velha 'v10235_9_q41_11_9_9: Possui fluxo/protocolo de articulação_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_0_velha 'v10235_0_q41_11_0_0: Não tem nenhuma articulação_41.11. Serviços/Programas de Segurança Alimentar'
q41_11_97_velha 'v10235_97_q41_11_97_97: Serviço ou instituição não existente no Município/DF_41.11. Serviços/Programas de Segurança Alimentar'
q41_12_1_velha 'v10236_1_q41_12_1_1: Possui dados de localização (endereço, telefone, etc.)_41.12. Serviços/Programas de Habitação'
q41_12_2_velha 'v10236_2_q41_12_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.12. Serviços/Programas de Habitação'
q41_12_3_velha 'v10236_3_q41_12_3_3: Encaminha usuárias(os) para este Centro de Referência_41.12. Serviços/Programas de Habitação'
q41_12_4_velha 'v10236_4_q41_12_4_4: Acompanha os encaminhamentos_41.12. Serviços/Programas de Habitação'
q41_12_5_velha 'v10236_5_q41_12_5_5: Realiza reuniões periódicas_41.12. Serviços/Programas de Habitação'
q41_12_6_velha 'v10236_6_q41_12_6_6: Troca Informações_41.12. Serviços/Programas de Habitação'
q41_12_7_velha 'v10236_7_q41_12_7_7: Realiza estudos de caso em conjunto_41.12. Serviços/Programas de Habitação'
q41_12_8_velha 'v10236_8_q41_12_8_8: Desenvolve atividades em parceria_41.12. Serviços/Programas de Habitação'
q41_12_9_velha 'v10236_9_q41_12_9_9: Possui fluxo/protocolo de articulação_41.12. Serviços/Programas de Habitação'
q41_12_0_velha 'v10236_0_q41_12_0_0: Não tem nenhuma articulação_41.12. Serviços/Programas de Habitação'
q41_12_97_velha ' v10236_97_q41_12_97_97: Serviço ou instituição não existente no Município/DF_41.12. Serviços/Programas de Habitação'
q41_13_1_velha 'v10237_1_q41_13_1_1: Possui dados de localização (endereço, telefone, etc.)_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_2_velha 'v10237_2_q41_13_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_3_velha 'v10237_3_q41_13_3_3: Encaminha usuárias(os) para este Centro de Referência_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_4_velha 'v10237_4_q41_13_4_4: Acompanha os encaminhamentos_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_5_velha 'v10237_5_q41_13_5_5: Realiza reuniões periódicas_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_6_velha 'v10237_6_q41_13_6_6: Troca Informações_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_7_velha 'v10237_7_q41_13_7_7: Realiza estudos de caso em conjunto_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_8_velha 'v10237_8_q41_13_8_8: Desenvolve atividades em parceria_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_9_velha 'v10237_9_q41_13_9_9: Possui fluxo/protocolo de articulação_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_0_velha 'v10237_0_q41_13_0_0: Não tem nenhuma articulação_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_13_97_velha 'v10237_97_q41_13_97_97: Serviço ou instituição não existente no Município/DF_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_14_1_velha 'v10237_97_q41_13_97_97: Serviço ou instituição não existente no Município/DF_41.13. Serviços/Programas de Geração de Trabalho e Renda'
q41_14_2_velha 'v10240_2_q41_14_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_3_velha 'v10240_2_q41_14_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_4_velha 'v10240_4_q41_14_4_4: Acompanha os encaminhamentos_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_5_velha 'v10240_5_q41_14_5_5: Realiza reuniões periódicas_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_6_velha 'v10240_6_q41_14_6_6: Troca Informações_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_7_velha 'v10240_7_q41_14_7_7: Realiza estudos de caso em conjunto_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_8_velha 'v10240_8_q41_14_8_8: Desenvolve atividades em parceria_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_9_velha 'v10240_9_q41_14_9_9: Possui fluxo/protocolo de articulação_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_0_velha 'v10240_0_q41_14_0_0: Não tem nenhuma articulação_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_14_97_velha 'v10240_97_q41_14_97_97: Serviço ou instituição não existente no Município/DF_41.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)'
q41_15_1_velha 'v10241_1_q41_15_1_1: Possui dados de localização (endereço, telefone, etc.)_41.15. Movimentos organizados da população em situação de rua'
q41_15_2_velha 'v10241_2_q41_15_2_2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência_41.15. Movimentos organizados da população em situação de rua'
q41_15_3_velha 'v10241_3_q41_15_3_3: Encaminha usuárias(os) para este Centro de Referência_41.15. Movimentos organizados da população em situação de rua'
q41_15_4_velha 'v10241_4_q41_15_4_4: Acompanha os encaminhamentos_41.15. Movimentos organizados da população em situação de rua'
q41_15_5_velha 'v10241_5_q41_15_5_5: Realiza reuniões periódicas_41.15. Movimentos organizados da população em situação de rua'
q41_15_6_velha 'v10241_6_q41_15_6_6: Troca Informações_41.15. Movimentos organizados da população em situação de rua'
q41_15_7_velha 'v10241_7_q41_15_7_7: Realiza estudos de caso em conjunto_41.15. Movimentos organizados da população em situação de rua'
q41_15_8_velha 'v10241_8_q41_15_8_8: Desenvolve atividades em parceria_41.15. Movimentos organizados da população em situação de rua'
q41_15_9_velha 'v10241_9_q41_15_9_9: Possui fluxo/protocolo de articulação_41.15. Movimentos organizados da população em situação de rua'
q41_15_0_velha 'v10241_0_q41_15_0_0: Não tem nenhuma articulação_41.15. Movimentos organizados da população em situação de rua'
q41_15_97_velha 'v10241_97_q41_15_97_97: Serviço ou instituição não existente no Município/DF_41.15. Movimentos organizados da população em situação de rua'
q42_1_velha 'v12759_1_q42_1_1: Deficiência_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_2_velha 'v12759_2_q42_2_2: Gênero_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_3_velha 'v12759_3_q42_3_3: População em situação de rua_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_4_velha 'v12759_4_q42_4_4: População LGBT, orientação sexual e identidade de gênero (Lésbicas, gays, bissexuais, transgêneros e intersexuais)_42.participaram de capacitação em algum deste temas?'
q42_5_velha 'v12759_5_q42_5_5: Álcool e outras drogas_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_6_velha 'v12759_6_q42_6_6: Diversidade étnico-racial (questão racial, comunidades indígenas, povos e comunidades tradicionais etc.)_42. participaram de capacitação em algum deste temas?'
q42_7_velha 'v12759_7_q42_7_7: Violências e violações de direitos_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_8_velha 'v12759_8_q42_8_8: Trabalho Infantil_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_9_velha 'v12759_9_q42_9_9: Criança e adolescente_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_10_velha 'v12759_10_q42_10_10: Juventude_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_11_velha 'v12759_11_q42_11_11: Envelhecimento_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_12_velha 'v12759_12_q42_12_12: Sistema Socioeducativo/ Medida Socioeducativa/ SINASE_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_13_velha 'v12759_13_q42_13_13: Migração_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_14_velha 'v12759_14_q42_14_14: Mundo do trabalho_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_99_velha 'v12759_99_q42_99_99: Outros_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
q42_0_velha  'v12759_0_q42_0_0: Não proporcionou/facilitou a participação das(os) profissionais_42. Nos últimos 12 meses, os profissionais deste Centro POP participaram de capacitação em algum deste temas?'
.