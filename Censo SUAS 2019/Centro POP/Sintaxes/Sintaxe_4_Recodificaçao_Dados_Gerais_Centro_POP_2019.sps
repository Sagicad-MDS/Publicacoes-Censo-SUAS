
*****recodificar
*q2*********************************

compute q3_1_velha  =  q3_1.
compute q3_2_velha  =   q3_2 .
compute q3_3_velha  = q3_3.
compute q3_4_velha   = q3_4.
compute q3_5_velha  =  q3_5.
compute q3_6_velha  =  q3_6.
compute q3_7_velha  =  q3_7.
compute q3_8_velha  =  q3_8.
compute q3_99_velha  =  q3_99.
compute q4_1_velha  = q4_1.
compute q4_2_velha  =  q4_2.
compute q4_3_velha  =  q4_3.
compute q4_4_velha  =  q4_4 .
compute q4_5_velha  =  q4_5.
compute q4_6_velha  =  q4_6.
compute q4_7_velha  =  q4_7.
compute q4_8_velha  =  q4_8.
compute q4_9_velha  =  q4_9.
compute q4_10_velha  =  q4_10.
compute q4_11_velha  =  q4_11.
compute q4_12_velha  =  q4_12.
compute q4_13_velha  =  q4_13.
compute q4_14_velha  = q4_14. 
compute q4_99_velha  = q4_99. 
execute. 



DO IF (q2=0).
RECODE q3_1 (ELSE=SYSMIS).
RECODE q3_2 (ELSE=SYSMIS).
RECODE q3_3 (ELSE=SYSMIS).
RECODE q3_4 (ELSE=SYSMIS).
RECODE q3_5 (ELSE=SYSMIS).
RECODE q3_6 (ELSE=SYSMIS).
RECODE q3_7 (ELSE=SYSMIS).
RECODE q3_8 (ELSE=SYSMIS).
RECODE q3_99 (ELSE=SYSMIS).
RECODE q4_1 (ELSE=SYSMIS).
RECODE q4_2 (ELSE=SYSMIS).
RECODE q4_3 (ELSE=SYSMIS).
RECODE q4_4 (ELSE=SYSMIS).
RECODE q4_5 (ELSE=SYSMIS).
RECODE q4_6 (ELSE=SYSMIS).
RECODE q4_7 (ELSE=SYSMIS).
RECODE  q4_8 (ELSE=SYSMIS).
RECODE q4_9  (ELSE=SYSMIS).
RECODE q4_10 (ELSE=SYSMIS).
RECODE  q4_11 (ELSE=SYSMIS).
RECODE q4_12  (ELSE=SYSMIS).
RECODE q4_13  (ELSE=SYSMIS).
RECODE q4_14 (ELSE=SYSMIS).
RECODE q4_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q4_1=1).
RECODE q4_2 (ELSE=SYSMIS).
RECODE q4_3 (ELSE=SYSMIS).
RECODE q4_4 (ELSE=SYSMIS).
RECODE q4_5 (ELSE=SYSMIS).
RECODE q4_6 (ELSE=SYSMIS).
RECODE q4_7 (ELSE=SYSMIS).
RECODE  q4_8 (ELSE=SYSMIS).
RECODE q4_9  (ELSE=SYSMIS).
RECODE q4_10 (ELSE=SYSMIS).
RECODE  q4_11 (ELSE=SYSMIS).
RECODE q4_12  (ELSE=SYSMIS).
RECODE q4_13  (ELSE=SYSMIS).
RECODE q4_14 (ELSE=SYSMIS).
RECODE q4_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q7*********************************

compute q7_1_velha  =  q7_1.
compute q7_2_velha  =   q7_2 .
compute q7_3_velha  = q7_3.
compute q7_4_velha   = q7_4.
compute q7_5_velha  =  q7_5.
compute q7_6_velha  =  q7_6.
compute q7_0_velha  =  q7_0.


DO IF (q7_0=1).
RECODE q7_1 (ELSE=SYSMIS).
RECODE q7_2 (ELSE=SYSMIS).
RECODE q7_3 (ELSE=SYSMIS).
RECODE q7_4 (ELSE=SYSMIS).
RECODE q7_5 (ELSE=SYSMIS).
RECODE q7_6 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q10*********************************

compute q11_1_1_velha  =  q11_1_1.
compute q11_1_2_1_velha  =   q11_1_2_1 .
compute q11_1_2_2_velha  =  q11_1_2_2.
compute q11_1_2_3_velha  =   q11_1_2_3.
compute q11_2_1_velha  = q11_2_1.
compute q11_2_2_1_velha   = q11_2_2_1.
compute q11_2_2_2_velha  =  q11_2_2_2.
compute q11_2_2_3_velha  =  q11_2_2_3.
compute q11_3_1_velha  =  q11_3_1.
compute q11_3_2_1_velha  = q11_3_2_1.
compute q11_3_2_2_velha  =   q11_3_2_2 .
compute q11_3_2_3_velha  = q11_3_2_3.
compute q11_4_1_velha   = q11_4_1.
compute q11_4_2_1_velha  =  q11_4_2_1.
compute q11_4_2_2_velha  =  q11_4_2_2.
compute q11_4_2_3_velha  =  q11_4_2_3.
compute q11_5_1_velha   = q11_5_1.
compute q11_5_2_1_velha  =  q11_5_2_1.
compute q11_5_2_2_velha  =  q11_5_2_2.
compute q11_5_2_3_velha  =  q11_5_2_3.


DO IF (q10=0).
RECODE q11_1_1 (ELSE=SYSMIS).
RECODE q11_1_2_1 (ELSE=SYSMIS).
RECODE q11_1_2_2  (ELSE=SYSMIS).
RECODE q11_1_2_3 (ELSE=SYSMIS).
RECODE q11_2_1 (ELSE=SYSMIS).
RECODE q11_2_2_1 (ELSE=SYSMIS).
RECODE q11_2_2_2  (ELSE=SYSMIS).
RECODE q11_2_2_3 (ELSE=SYSMIS).
RECODE q11_3_1 (ELSE=SYSMIS).
RECODE q11_3_2_1 (ELSE=SYSMIS).
RECODE q11_3_2_2  (ELSE=SYSMIS).
RECODE q11_3_2_3 (ELSE=SYSMIS).
RECODE q11_4_1 (ELSE=SYSMIS).
RECODE q11_4_2_1 (ELSE=SYSMIS).
RECODE q11_4_2_2  (ELSE=SYSMIS).
RECODE q11_4_2_3 (ELSE=SYSMIS).
RECODE q11_5_1 (ELSE=SYSMIS).
RECODE q11_5_2_1 (ELSE=SYSMIS).
RECODE q11_5_2_2  (ELSE=SYSMIS).
RECODE q11_5_2_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q13*******************************************************

compute q14_1_velha  =  q14_1.
compute q14_2_velha  =   q14_2 .
compute q14_3_velha  =  q14_3.
compute q14_4_velha  =   q14_4.
compute q14_5_velha  = q14_5.
compute q14_6_velha  =  q14_6.
compute q14_7_velha  =   q14_7 .
compute q14_8_velha  =  q14_8.
compute q14_9_velha  =   q14_9.
compute q14_10_velha  = q14_10.
compute q14_99_velha  = q14_99.

DO IF (q13=0).
RECODE q14_1 (ELSE=SYSMIS).
RECODE q14_2 (ELSE=SYSMIS).
RECODE q14_3 (ELSE=SYSMIS).
RECODE q14_4 (ELSE=SYSMIS).
RECODE q14_5 (ELSE=SYSMIS).
RECODE q14_6  (ELSE=SYSMIS).
RECODE q14_7 (ELSE=SYSMIS).
RECODE q14_8 (ELSE=SYSMIS).
RECODE q14_9 (ELSE=SYSMIS).
RECODE q14_10 (ELSE=SYSMIS).
RECODE q14_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


**q16**************************************************************


compute q16_1_velha  =  q16_1.
compute q16_2_velha  = q16_2.
compute q16_99_velha  = q16_99.
compute q16_97_velha  = q16_97.
compute q16_0_velha  = q16_0.


DO IF (q16_97=1  |  q16_0=1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q17**************************************************************************


compute q17_1_velha  =  q17_1.
compute q17_1_1_velha  = q17_1_1.
compute q17_2_velha  = q17_2.
compute q17_2_1_velha  = q17_2_1.
compute q17_3_velha  = q17_3.
compute q17_3_1_velha  = q17_3_1.


DO IF (q17_1=0).
RECODE q17_1_1 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q17_2=0).
RECODE q17_2_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_3=0).
RECODE q17_3_1 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q18****************************************************************************

compute q19_1_velha  =  q19_1.
compute q19_2_velha  = q19_2.
compute q19_3_velha  = q19_3.
compute q19_4_velha  = q19_4.
compute q19_5_velha  = q19_5.
compute q19_6_velha  = q19_6.
compute q19_7_velha  =  q19_7.
compute q19_8_velha  = q19_8.
compute q19_9_velha  = q19_9.
compute q19_10_velha  = q19_10.
compute q19_11_velha  = q19_11.
compute q19_12_velha  = q19_12.
compute q19_13_velha  =  q19_13.
compute q19_14_velha  = q19_14.
compute q19_0_velha  = q19_0.
compute q20_1_velha  = q20_1.
compute q20_2_velha  = q20_2.
compute q20_3_velha  = q20_3.
compute q20_4_velha  =  q20_4.
compute q20_5_velha  = q20_5.
compute q20_6_velha  = q20_6.
compute q20_7_velha  = q20_7.
compute q20_8_velha  = q20_8.
compute q20_9_velha  = q20_9.
compute q20_10_velha  =  q20_10.
compute q20_11_velha  = q20_11.
compute q20_12_velha  = q20_12.
compute q20_13_velha  = q20_13.
compute q20_14_velha  =q20_14.
compute q21_velha  = q21.
compute q22_velha  =  q22.
compute q23_1_velha  = q23_1.
compute q23_2_velha  = q23_2.
compute q23_3_velha  = q23_3.
compute q23_4_velha  = q23_4.
compute q23_5_velha  = q23_5.
compute q23_6_velha  =  q23_6.
compute q23_7_velha  = q23_7.
compute q23_8_velha  = q23_8.
compute q23_9_velha  = q23_9.
compute q23_10_velha  = q23_10.
compute q23_11_velha  = q23_11.
compute q23_99_velha  =  q23_99.

DO IF (q18=2 | q18=3).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
RECODE q19_10 (ELSE=SYSMIS).
RECODE q19_11 (ELSE=SYSMIS).
RECODE q19_12  (ELSE=SYSMIS).
RECODE q19_13 (ELSE=SYSMIS).
RECODE q19_14  (ELSE=SYSMIS).
RECODE q19_0 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q18=0).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
RECODE q19_10 (ELSE=SYSMIS).
RECODE q19_11 (ELSE=SYSMIS).
RECODE q19_12  (ELSE=SYSMIS).
RECODE q19_13 (ELSE=SYSMIS).
RECODE q19_14  (ELSE=SYSMIS).
RECODE q19_0 (ELSE=SYSMIS).
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
RECODE q20_12  (ELSE=SYSMIS).
RECODE q20_13 (ELSE=SYSMIS).
RECODE q20_14  (ELSE=SYSMIS).
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
RECODE q23_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

****q19*************************************************************************

DO IF (q19_0=1).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
RECODE q19_10 (ELSE=SYSMIS).
RECODE q19_11 (ELSE=SYSMIS).
RECODE q19_12  (ELSE=SYSMIS).
RECODE q19_13 (ELSE=SYSMIS).
RECODE q19_14  (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q19_0=1).
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
RECODE q20_12  (ELSE=SYSMIS).
RECODE q20_13 (ELSE=SYSMIS).
RECODE q20_14  (ELSE=SYSMIS).
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
RECODE q23_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q23*****************************************************************


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
RECODE q23_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


****q24******************************************************************

compute q25_1_velha  = q25_1.
compute q25_2_velha  = q25_2.
compute q25_3_velha  =  q25_3.
compute q25_4_velha  = q25_4.
compute q26_velha  =  q26.

DO IF (q24=0).
RECODE q25_1 (ELSE=SYSMIS).
RECODE q25_2 (ELSE=SYSMIS).
RECODE q25_3 (ELSE=SYSMIS).
RECODE q25_4 (ELSE=SYSMIS).
RECODE q26 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q27**********************************************************************

compute q28_1_velha  = q28_1.
compute q28_2_velha  =  q28_2.
compute q28_3_velha  = q28_3.
compute q28_4_velha  =  q28_4.
compute q28_5_velha  = q28_5.
compute q28_6_velha  =  q28_6.
compute q28_7_velha  = q28_7.
compute q28_8_velha  =  q28_8.
compute q28_9_velha  =  q28_9.
compute q28_10_velha  = q28_10.
compute q28_99_velha  =  q28_99.


DO IF (q27=0).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
RECODE q28_6 (ELSE=SYSMIS).
RECODE q28_7 (ELSE=SYSMIS).
RECODE q28_8 (ELSE=SYSMIS).
RECODE q28_9 (ELSE=SYSMIS).
RECODE q28_10 (ELSE=SYSMIS).
RECODE q28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q29************************************************************************

compute q29_1_1_velha  = q29_1_1.
compute q29_1_2_velha  =  q29_1_2.
compute q29_1_3_velha  = q29_1_3.
compute q29_1_4_velha  =  q29_1_4.
compute q29_1_5_velha  = q29_1_5.
compute q29_1_6_velha  =  q29_1_6.
compute q29_1_7_velha  = q29_1_7.
compute q29_1_8_velha  = q29_1_8.
compute q29_1_9_velha  = q29_1_9.
compute q29_1_0_velha  = q29_1_0.
compute q29_1_97_velha  =  q29_1_97.
compute q29_2_1_velha  = q29_2_1.
compute q29_2_2_velha  =  q29_2_2.
compute q29_2_3_velha  = q29_2_3.
compute q29_2_4_velha  =  q29_2_4.
compute q29_2_5_velha  = q29_2_5.
compute q29_2_6_velha  =  q29_2_6.
compute q29_2_7_velha  = q29_2_7.
compute q29_2_8_velha  = q29_2_8.
compute q29_2_9_velha  = q29_2_9.
compute q29_2_0_velha  = q29_2_0.
compute q29_2_97_velha  =  q29_2_97.
compute q29_3_1_velha  = q29_3_1.
compute q29_3_2_velha  =  q29_3_2.
compute q29_3_3_velha  = q29_3_3.
compute q29_3_4_velha  =  q29_3_4.
compute q29_3_5_velha  = q29_3_5.
compute q29_3_6_velha  =  q29_3_6.
compute q29_3_7_velha  = q29_3_7.
compute q29_3_8_velha  = q29_3_8.
compute q29_3_9_velha  = q29_3_9.
compute q29_3_0_velha  = q29_3_0.
compute q29_3_97_velha  =  q29_3_97.
compute q29_4_1_velha  = q29_4_1.
compute q29_4_2_velha  =  q29_4_2.
compute q29_4_3_velha  = q29_4_3.
compute q29_4_4_velha  =  q29_4_4.
compute q29_4_5_velha  = q29_4_5.
compute q29_4_6_velha  =  q29_4_6.
compute q29_4_7_velha  = q29_4_7.
compute q29_4_8_velha  = q29_4_8.
compute q29_4_9_velha  = q29_4_9.
compute q29_4_0_velha  = q29_4_0.
compute q29_4_97_velha  =  q29_4_97.
compute q29_5_1_velha  = q29_5_1.
compute q29_5_2_velha  =  q29_5_2.
compute q29_5_3_velha  = q29_5_3.
compute q29_5_4_velha  =  q29_5_4.
compute q29_5_5_velha  = q29_5_5.
compute q29_5_6_velha  =  q29_5_6.
compute q29_5_7_velha  = q29_5_7.
compute q29_5_8_velha  = q29_5_8.
compute q29_5_9_velha  = q29_5_9.
compute q29_5_0_velha  = q29_5_0.
compute q29_5_97_velha  =  q29_5_97.
compute q29_6_1_velha  = q29_6_1.
compute q29_6_2_velha  =  q29_6_2.
compute q29_6_3_velha  = q29_6_3.
compute q29_6_4_velha  =  q29_6_4.
compute q29_6_5_velha  = q29_6_5.
compute q29_6_6_velha  =  q29_6_6.
compute q29_6_7_velha  = q29_6_7.
compute q29_6_8_velha  = q29_6_8.
compute q29_6_9_velha  = q29_6_9.
compute q29_6_0_velha  = q29_6_0.
compute q29_6_97_velha  =  q29_6_97.
compute q29_7_1_velha  = q29_7_1.
compute q29_7_2_velha  =  q29_7_2.
compute q29_7_3_velha  = q29_7_3.
compute q29_7_4_velha  =  q29_7_4.
compute q29_7_5_velha  = q29_7_5.
compute q29_7_6_velha  =  q29_7_6.
compute q29_7_7_velha  = q29_7_7.
compute q29_7_8_velha  = q29_7_8.
compute q29_7_9_velha  = q29_7_9.
compute q29_7_0_velha  = q29_7_0.
compute q29_7_97_velha  =  q29_7_97.
compute q29_8_1_velha  = q29_8_1.
compute q29_8_2_velha  =  q29_8_2.
compute q29_8_3_velha  = q29_8_3.
compute q29_8_4_velha  =  q29_8_4.
compute q29_8_5_velha  = q29_8_5.
compute q29_8_6_velha  =  q29_8_6.
compute q29_8_7_velha  = q29_8_7.
compute q29_8_8_velha  = q29_8_8.
compute q29_8_9_velha  = q29_8_9.
compute q29_8_0_velha  = q29_8_0.
compute q29_8_97_velha  =  q29_8_97.
compute q29_9_1_velha  = q29_9_1.
compute q29_9_2_velha  =  q29_9_2.
compute q29_9_3_velha  = q29_9_3.
compute q29_9_4_velha  =  q29_9_4.
compute q29_9_5_velha  = q29_9_5.
compute q29_9_6_velha  =  q29_9_6.
compute q29_9_7_velha  = q29_9_7.
compute q29_9_8_velha  = q29_9_8.
compute q29_9_9_velha  = q29_9_9.
compute q29_9_0_velha  = q29_9_0.
compute q29_9_97_velha  =  q29_9_97.
compute q29_10_1_velha  = q29_10_1.
compute q29_10_2_velha  =  q29_10_2.
compute q29_10_3_velha  = q29_10_3.
compute q29_10_4_velha  =  q29_10_4.
compute q29_10_5_velha  = q29_10_5.
compute q29_10_6_velha  =  q29_10_6.
compute q29_10_7_velha  = q29_10_7.
compute q29_10_8_velha  = q29_10_8.
compute q29_10_9_velha  = q29_10_9.
compute q29_10_0_velha  = q29_10_0.
compute q29_10_97_velha  =  q29_10_97.
compute q29_11_1_velha  = q29_11_1.
compute q29_11_2_velha  =  q29_11_2.
compute q29_11_3_velha  = q29_11_3.
compute q29_11_4_velha  =  q29_11_4.
compute q29_11_5_velha  = q29_11_5.
compute q29_11_6_velha  =  q29_11_6.
compute q29_11_7_velha  = q29_11_7.
compute q29_11_8_velha  = q29_11_8.
compute q29_11_9_velha  = q29_11_9.
compute q29_11_0_velha  = q29_11_0.
compute q29_11_97_velha  =  q29_11_97.
compute q29_12_1_velha  = q29_12_1.
compute q29_12_2_velha  =  q29_12_2.
compute q29_12_3_velha  = q29_12_3.
compute q29_12_4_velha  =  q29_12_4.
compute q29_12_5_velha  = q29_12_5.
compute q29_12_6_velha  =  q29_12_6.
compute q29_12_7_velha  = q29_12_7.
compute q29_12_8_velha  = q29_12_8.
compute q29_12_9_velha  = q29_12_9.
compute q29_12_0_velha  = q29_12_0.
compute q29_12_97_velha  =  q29_12_97.
compute  q29_13_1_velha  = q29_13_1.
compute q29_13_2_velha  =  q29_13_2.
compute q29_13_3_velha  = q29_13_3.
compute q29_13_4_velha  =  q29_13_4.
compute q29_13_5_velha  = q29_13_5.
compute q29_13_6_velha  =  q29_13_6.
compute q29_13_7_velha  = q29_13_7.
compute q29_13_8_velha  = q29_13_8.
compute q29_13_9_velha  = q29_13_9.
compute q29_13_0_velha  = q29_13_0.
compute q29_13_97_velha  =  q29_13_97.
compute  q29_14_1_velha  = q29_14_1.
compute q29_14_2_velha  =  q29_14_2.
compute q29_14_3_velha  = q29_14_3.
compute q29_14_4_velha  =  q29_14_4.
compute q29_14_5_velha  = q29_14_5.
compute q29_14_6_velha  =  q29_14_6.
compute q29_14_7_velha  = q29_14_7.
compute q29_14_8_velha  = q29_14_8.
compute q29_14_9_velha  = q29_14_9.
compute q29_14_0_velha  = q29_14_0.
compute q29_14_97_velha  =  q29_14_97.
compute  q29_15_1_velha  = q29_15_1.
compute q29_15_2_velha  =  q29_15_2.
compute q29_15_3_velha  = q29_15_3.
compute q29_15_4_velha  =  q29_15_4.
compute q29_15_5_velha  = q29_15_5.
compute q29_15_6_velha  =  q29_15_6.
compute q29_15_7_velha  = q29_15_7.
compute q29_15_8_velha  = q29_15_8.
compute q29_15_9_velha  = q29_15_9.
compute q29_15_0_velha  = q29_15_0.
compute q29_15_97_velha  =  q29_15_97.



DO IF (q29_1_0=1 | q29_1_97=1).
RECODE q29_1_1 (ELSE=SYSMIS).
RECODE q29_1_2 (ELSE=SYSMIS).
RECODE q29_1_3 (ELSE=SYSMIS).
RECODE q29_1_4 (ELSE=SYSMIS).
RECODE q29_1_5 (ELSE=SYSMIS).
RECODE q29_1_6 (ELSE=SYSMIS).
RECODE q29_1_7 (ELSE=SYSMIS).
RECODE q29_1_8 (ELSE=SYSMIS).
RECODE q29_1_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_2_0=1 | q29_2_97=1).
RECODE q29_2_1 (ELSE=SYSMIS).
RECODE q29_2_2 (ELSE=SYSMIS).
RECODE q29_2_3 (ELSE=SYSMIS).
RECODE q29_2_4 (ELSE=SYSMIS).
RECODE q29_2_5 (ELSE=SYSMIS).
RECODE q29_2_6 (ELSE=SYSMIS).
RECODE q29_2_7 (ELSE=SYSMIS).
RECODE q29_2_8 (ELSE=SYSMIS).
RECODE q29_2_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_3_0=1 | q29_3_97=1).
RECODE q29_3_1 (ELSE=SYSMIS).
RECODE q29_3_2 (ELSE=SYSMIS).
RECODE q29_3_3 (ELSE=SYSMIS).
RECODE q29_3_4 (ELSE=SYSMIS).
RECODE q29_3_5 (ELSE=SYSMIS).
RECODE q29_3_6 (ELSE=SYSMIS).
RECODE q29_3_7 (ELSE=SYSMIS).
RECODE q29_3_8 (ELSE=SYSMIS).
RECODE q29_3_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_4_0=1 | q29_4_97=1).
RECODE q29_4_1 (ELSE=SYSMIS).
RECODE q29_4_2 (ELSE=SYSMIS).
RECODE q29_4_3 (ELSE=SYSMIS).
RECODE q29_4_4 (ELSE=SYSMIS).
RECODE q29_4_5 (ELSE=SYSMIS).
RECODE q29_4_6 (ELSE=SYSMIS).
RECODE q29_4_7 (ELSE=SYSMIS).
RECODE q29_4_8 (ELSE=SYSMIS).
RECODE q29_4_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_5_0=1 | q29_5_97=1).
RECODE q29_5_1 (ELSE=SYSMIS).
RECODE q29_5_2 (ELSE=SYSMIS).
RECODE q29_5_3 (ELSE=SYSMIS).
RECODE q29_5_4 (ELSE=SYSMIS).
RECODE q29_5_5 (ELSE=SYSMIS).
RECODE q29_5_6 (ELSE=SYSMIS).
RECODE q29_5_7 (ELSE=SYSMIS).
RECODE q29_5_8 (ELSE=SYSMIS).
RECODE q29_5_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_6_0=1 | q29_6_97=1).
RECODE q29_6_1 (ELSE=SYSMIS).
RECODE q29_6_2 (ELSE=SYSMIS).
RECODE q29_6_3 (ELSE=SYSMIS).
RECODE q29_6_4 (ELSE=SYSMIS).
RECODE q29_6_5 (ELSE=SYSMIS).
RECODE q29_6_6 (ELSE=SYSMIS).
RECODE q29_6_7 (ELSE=SYSMIS).
RECODE q29_6_8 (ELSE=SYSMIS).
RECODE q29_6_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_7_0=1 | q29_7_97=1).
RECODE q29_7_1 (ELSE=SYSMIS).
RECODE q29_7_2 (ELSE=SYSMIS).
RECODE q29_7_3 (ELSE=SYSMIS).
RECODE q29_7_4 (ELSE=SYSMIS).
RECODE q29_7_5 (ELSE=SYSMIS).
RECODE q29_7_6 (ELSE=SYSMIS).
RECODE q29_7_7 (ELSE=SYSMIS).
RECODE q29_7_8 (ELSE=SYSMIS).
RECODE q29_7_9 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q29_8_0=1 | q29_8_97=1).
RECODE q29_8_1 (ELSE=SYSMIS).
RECODE q29_8_2 (ELSE=SYSMIS).
RECODE q29_8_3 (ELSE=SYSMIS).
RECODE q29_8_4 (ELSE=SYSMIS).
RECODE q29_8_5 (ELSE=SYSMIS).
RECODE q29_8_6 (ELSE=SYSMIS).
RECODE q29_8_7 (ELSE=SYSMIS).
RECODE q29_8_8 (ELSE=SYSMIS).
RECODE q29_8_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_9_0=1 | q29_9_97=1).
RECODE q29_9_1 (ELSE=SYSMIS).
RECODE q29_9_2 (ELSE=SYSMIS).
RECODE q29_9_3 (ELSE=SYSMIS).
RECODE q29_9_4 (ELSE=SYSMIS).
RECODE q29_9_5 (ELSE=SYSMIS).
RECODE q29_9_6 (ELSE=SYSMIS).
RECODE q29_9_7 (ELSE=SYSMIS).
RECODE q29_9_8 (ELSE=SYSMIS).
RECODE q29_9_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_10_0=1 | q29_10_97=1).
RECODE q29_10_1 (ELSE=SYSMIS).
RECODE q29_10_2 (ELSE=SYSMIS).
RECODE q29_10_3 (ELSE=SYSMIS).
RECODE q29_10_4 (ELSE=SYSMIS).
RECODE q29_10_5 (ELSE=SYSMIS).
RECODE q29_10_6 (ELSE=SYSMIS).
RECODE q29_10_7 (ELSE=SYSMIS).
RECODE q29_10_8 (ELSE=SYSMIS).
RECODE q29_10_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_11_0=1 | q29_11_97=1).
RECODE q29_11_1 (ELSE=SYSMIS).
RECODE q29_11_2 (ELSE=SYSMIS).
RECODE q29_11_3 (ELSE=SYSMIS).
RECODE q29_11_4 (ELSE=SYSMIS).
RECODE q29_11_5 (ELSE=SYSMIS).
RECODE q29_11_6 (ELSE=SYSMIS).
RECODE q29_11_7 (ELSE=SYSMIS).
RECODE q29_11_8 (ELSE=SYSMIS).
RECODE q29_11_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_12_0=1 | q29_12_97=1).
RECODE q29_12_1 (ELSE=SYSMIS).
RECODE q29_12_2 (ELSE=SYSMIS).
RECODE q29_12_3 (ELSE=SYSMIS).
RECODE q29_12_4 (ELSE=SYSMIS).
RECODE q29_12_5 (ELSE=SYSMIS).
RECODE q29_12_6 (ELSE=SYSMIS).
RECODE q29_12_7 (ELSE=SYSMIS).
RECODE q29_12_8 (ELSE=SYSMIS).
RECODE q29_12_9 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q29_13_0=1 | q29_13_97=1).
RECODE q29_13_1 (ELSE=SYSMIS).
RECODE q29_13_2 (ELSE=SYSMIS).
RECODE q29_13_3 (ELSE=SYSMIS).
RECODE q29_13_4 (ELSE=SYSMIS).
RECODE q29_13_5 (ELSE=SYSMIS).
RECODE q29_13_6 (ELSE=SYSMIS).
RECODE q29_13_7 (ELSE=SYSMIS).
RECODE q29_13_8 (ELSE=SYSMIS).
RECODE q29_13_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_14_0=1 | q29_14_97=1).
RECODE q29_14_1 (ELSE=SYSMIS).
RECODE q29_14_2 (ELSE=SYSMIS).
RECODE q29_14_3 (ELSE=SYSMIS).
RECODE q29_14_4 (ELSE=SYSMIS).
RECODE q29_14_5 (ELSE=SYSMIS).
RECODE q29_14_6 (ELSE=SYSMIS).
RECODE q29_14_7 (ELSE=SYSMIS).
RECODE q29_14_8 (ELSE=SYSMIS).
RECODE q29_14_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_15_0=1 | q29_15_97=1).
RECODE q29_15_1 (ELSE=SYSMIS).
RECODE q29_15_2 (ELSE=SYSMIS).
RECODE q29_15_3 (ELSE=SYSMIS).
RECODE q29_15_4 (ELSE=SYSMIS).
RECODE q29_15_5 (ELSE=SYSMIS).
RECODE q29_15_6 (ELSE=SYSMIS).
RECODE q29_15_7 (ELSE=SYSMIS).
RECODE q29_15_8 (ELSE=SYSMIS).
RECODE q29_15_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q31***********************************************************************

compute q30_1_velha  = q30_1.
compute q30_2_velha  =  q30_2.
compute q30_3_velha  = q30_3.
compute q30_4_velha  =  q30_4.
compute q30_5_velha  = q30_5.
compute q30_6_velha  =  q30_6.
compute q30_7_velha  = q30_7.
compute q30_8_velha  =  q30_8.
compute q30_9_velha  = q30_9.
compute q30_10_velha  =  q30_10.
compute q30_11_velha  = q30_11.
compute q30_12_velha  =  q30_12.
compute q30_13_velha  = q30_13.
compute q30_14_velha  = q30_14.
compute q30_99_velha  =  q30_99.
compute q30_0_velha  = q30_0.

DO IF (q30_0=1).
RECODE q30_1  (ELSE=SYSMIS).
RECODE q30_2  (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4  (ELSE=SYSMIS).
RECODE q30_5  (ELSE=SYSMIS).
RECODE q30_6 (ELSE=SYSMIS).
RECODE q30_7 (ELSE=SYSMIS).
RECODE q30_8  (ELSE=SYSMIS).
RECODE q30_9 (ELSE=SYSMIS).
RECODE q30_10  (ELSE=SYSMIS).
RECODE q30_11 (ELSE=SYSMIS). 
RECODE q30_12  (ELSE=SYSMIS).
RECODE q30_13 (ELSE=SYSMIS). 
RECODE q30_14  (ELSE=SYSMIS).
RECODE q30_99 (ELSE=SYSMIS). 
END IF.
EXECUTE.




VARIABLE LABELS
q3_1_velha'q3_1_v10102_1_3. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.1: Secretaria da Assistência Social ou congênere'
q3_2_velha'q3_2_v10102_2_3. Especifique o tipo de unidade com a qual este Centro POP compartilha o imóvel.2: Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-Prefeitura etc)'
q3_3_velha'q3_3_v10102_3_3. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.3: Conselho Municipal de Assistência Social'
q3_4_velha'q3_4_v10102_4_3. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.4: CRAS – Centro de Referência de Assistência Social'
q3_5_velha'q3_5_v10102_5_3. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.5: CREAS – Centro de Referência Especializado de Assistência Social'
q3_6_velha'q3_6_v10102_6_3. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.6: Unidade de Acolhimento institucional (Abrigo)'
q3_7_velha'q3_7_v10102_7_3. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.7: Outra unidade pública de serviços da Assistência Social'
q3_8_velha'q3_8_v10102_8_3. Especifique o tipo de unidade com a qual este Centro de Referência Especializado para População em Situação de Rua compartilha o imóvel.8: Entidade e/ou Organizações da Sociedade Civil/Associação Comunitária'
q4_1_velha'q4_1_v10104_1_4. Especifique quais espaços do imóvel são compartilhados entre o Centro POPe a outra Unidade:1: Apenas o endereço é o mesmo, mas todos os espaços do Centro POP são independentes e de uso exclusivo, inclusive a entrada'
q4_2_velha'q4_2_v10104_2_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:2: Entrada / Porta de Acesso'
q4_3_velha'q4_3_v10104_3_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:3: Recepção'
q4_4_velha'q4_4_v10104_4_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:4: Algumas salas de atendimento'
q4_5_velha'q4_5_v10104_5_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:5: Todas as salas de atendimento'
q4_6_velha'q4_6_v10104_6_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:6: Salas administrativas'
q4_7_velha'q4_7_v10104_7_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:7: Espaço para atividades coletivas'
q4_8_velha'q4_8_v10104_8_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:8: Banheiros'
q4_9_velha'q4_9_v10104_9_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:9: Copa/cozinha'
q4_10_velha'q4_10_v10104_10_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:10: Área Externa'
q4_11_velha'q4_11_v10104_11_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:11: Almoxarifado ou similar'
q4_12_velha'q4_12_v10104_12_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:12: Refeitório'
q4_13_velha'q4_13_v10104_13_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:13: Lavanderia'
q4_14_velha'q4_14_v10104_14_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:14: Espaço para guarda de pertences'
q4_99_velha'q4_99_v10104_99_4. Especifique quais espaços do imóvel são compartilhados entre o Centro de Referência Especializado para População em Situação de Rua e a outra Unidade:99: Outros'
q7_1_velha'q7_1_v12648_1_7. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?1: Sim, suporte de profissional com conhecimento em LIBRAS'
q7_2_velha'q7_2_v12648_2_7. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?2: Sim, suporte de material em braille'
q7_3_velha'q7_3_v12648_3_7. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?3: Sim, suporte para leitores de telas de computador para pessoas com deficiência visual'
q7_4_velha'q7_4_v12648_4_7. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?4: Sim, outras adaptações e tecnologias assistivas para deficiência física'
q7_5_velha'q7_5_v12648_5_7. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?5: Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo'
q7_6_velha'q7_6_v12648_6_7. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?6: Sim, pisos especiais com relevos para sinalização voltados para pessoa com deficiência visual'
q7_0_velha'q7_0_v12648_0_7. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?0: Não há outras adaptações'
q11_1_1_velha'q11_1_1_v10172_11.1.1. Refeições oferecidas - Lanche/Café da Manhã'
q11_1_2_1_velha'q11_1_2_1_v10177_1_11.1.2. Local de oferta de refeição - Lanche/Café da Manhã1: Restaurante Popular'
q11_1_2_2_velha'q11_1_2_2_v10177_2_11.1.2. Local de oferta de refeição - Lanche/Café da Manhã2: Em outra unidade pública ou privada'
q11_1_2_3_velha'q11_1_2_3_v10177_3_11.1.2. Local de oferta de refeição - Lanche/Café da Manhã3: No espaço deste Centro POP'
q11_2_1_velha'q11_2_1_v10173_11.2.1. Refeições oferecidas - Almoço'
q11_2_2_1_velha'q11_2_2_1_v10178_1_11.2.2. Local de oferta de refeição - Almoço1: Restaurante Popular'
q11_2_2_2_velha'q11_2_2_2_v10178_2_11.2.2. Local de oferta de refeição - Almoço2: Em outra unidade pública ou privada'
q11_2_2_3_velha'q11_2_2_3_v10178_3_11.2.2. Local de oferta de refeição - Almoço3: No espaço deste Centro POP'
q11_3_1_velha'q11_3_1_v10174_11.3.1. Refeições oferecidas - Lanche/Café da Tarde'
q11_3_2_1_velha'q11_3_2_1_v10179_1_11.3.2. Local de oferta de refeição - Lanche/Café da Tarde1: Restaurante Popular'
q11_3_2_2_velha'q11_3_2_2_v10179_2_11.3.2. Local de oferta de refeição - Lanche/Café da Tarde2: Em outra unidade pública ou privada'
q11_3_2_3_velha'q11_3_2_3_v10179_3_11.3.2. Local de oferta de refeição - Lanche/Café da Tarde3: No espaço deste Centro POP'
q11_4_1_velha'q11_4_1_v10175_11.4.1. Refeições oferecidas - Jantar'
q11_4_2_1_velha'q11_4_2_1_v10180_1_11.4.2. Local de oferta de refeição - Jantar1: Restaurante Popular'
q11_4_2_2_velha'q11_4_2_2_v10180_2_11.4.2. Local de oferta de refeição - Jantar2: Em outra unidade pública ou privada'
q11_4_2_3_velha'q11_4_2_3_v10180_3_11.4.2. Local de oferta de refeição - Jantar3: No espaço deste Centro POP'
q11_5_1_velha'q11_5_1_v10176_11.5.1. Refeições oferecidas - Lanche/Café da Noite'
q11_5_2_1_velha'q11_5_2_1_v10181_1_11.5.2. Local de oferta de refeição - Lanche/Café da Noite1: Restaurante Popular'
q11_5_2_2_velha'q11_5_2_2_v10181_2_11.5.2. Local de oferta de refeição - Lanche/Café da Noite2: Em outra unidade pública ou privada'
q11_5_2_3_velha'q11_5_2_3_v10181_3_11.5.2. Local de oferta de refeição - Lanche/Café da Noite3: No espaço deste Centro POP'
q14_1_velha'q14_1_v10185_1_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:1: Atividades esportivas'
q14_2_velha'q14_2_v10185_2_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:2: Musicalidade (cantar, tocar instrumentos, etc)'
q14_3_velha'q14_3_v10185_3_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:3: Atividades de arte e cultura (pintura, circo, dança, teatro, trabalhos em papel, etc.)'
q14_4_velha'q14_4_v10185_4_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:4: Artesanato (bijuterias, pintura em tecido, bordado, crochê, etc.)'
q14_5_velha'q14_5_v10185_5_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:5: Atividades de inclusão digital'
q14_6_velha'q14_6_v10185_6_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:6: Atividades de linguagem (produção de texto, contação de histórias, roda de conversa, etc.)'
q14_7_velha'q14_7_v10185_7_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:7: Atividades que envolvam alimentos (culinária, alimentos, hortas, etc.)'
q14_8_velha'q14_8_v10185_8_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:8: Jogos e Brincadeiras (jogos de tabuleiro, brincadeiras de roda, esconde-esconde, mímica, etc.)'
q14_9_velha'q14_9_v10185_9_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:9: Atividades de orientação para o mundo do trabalho'
q14_10_velha'q14_10_v10185_10_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:10: Prestam atividades de cuidado de vida diária'
q14_99_velha'q14_99_v10185_99_14. Indique as atividades coletivas normalmente realizadas com as(os) usuárias(os) deste Centro POP:99: Outros'
q16_1_velha'q16_1_v12655_1_16. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:1: Encaminha para uma unidade de acolhimento da rede Socioassistencial'
q16_2_velha'q16_2_v12655_2_16. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:2: Encaminha para uma unidade de outra política pública'
q16_99_velha'q16_99_v12655_99_16. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:99: Outro'
q16_97_velha'q16_97_v12655_97_16. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:97: Não encaminha para acolhimento provisório'
q16_0_velha'q16_0_v12655_0_16. Quando a(o) usuária(o) demanda acolhimento provisório (pernoite e/ou pousada temporária), esta unidade:0: Não há estratégias de acolhimento provisório no município'
q17_1_velha'q17_1_v12659_17.1. República para adultos em processo de saída das ruas - Esta unidade possui serviço de referência para encaminhar as(os) usuárias(os)?'
q17_1_1_velha'q17_1_1_v12667_17.1.1. República para adultos em processo de saída das ruas - Com que frequência há o encaminhamento?'
q17_2_velha'q17_2_v12660_17.2. Programas de Aluguel Social - Esta unidade possui serviço de referência para encaminhar as(os) usuárias(os)?'
q17_2_1_velha'q17_2_1_v12668_17.2.1. Programas de Aluguel Social - Com que frequência há o encaminhamento?'
q17_3_velha'q17_3_v12661_17.3. Programas de Habitação Popular - Esta unidade possui serviço de referência para encaminhar as(os) usuárias(os)?'
q17_3_1_velha'q17_3_1_v12669_17.3.1. Programas de Habitação Popular - Com que frequência há o encaminhamento?'
q19_1_velha'q19_1_v11865_1_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:1: Cumpre função de coordenador do Serviço referenciado'
q19_2_velha'q19_2_v11865_2_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:2: Coleta/recebe periodicamente informações sobre dados de atendimento do Serviço'
q19_3_velha'q19_3_v11865_3_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:3: Realiza reuniões periódicas para avaliação do Serviço com a Unidade referenciada'
q19_4_velha'q19_4_v11865_4_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:4: Participa do processo de planejamento das atividades do Serviço'
q19_5_velha'q19_5_v11865_5_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:5: Acompanha cotidianamente as atividades do Serviço'
q19_6_velha'q19_6_v11865_6_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:6: Constrói estratégias metodológicas do Serviço'
q19_7_velha'q19_7_v11865_7_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:7: Elabora relatórios técnicos específicos sobre casos atendidos/acompanhados pelo Serviço'
q19_8_velha'q19_8_v11865_8_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:8: Realiza estudos de caso em parceria com o Serviço'
q19_9_velha'q19_9_v11865_9_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:9: Define procedimentos comuns e/ou complementares ao Serviço'
q19_10_velha'q19_10_v11865_10_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:10: Possui fluxos de encaminhamentos e trocas de informações com o Serviço'
q19_11_velha'q19_11_v11865_11_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:11: Articula com a rede de serviços socioassistenciais'
q19_12_velha'q19_12_v11865_12_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:12: Articula com a rede dos serviços das políticas públicas setoriais'
q19_13_velha'q19_13_v11865_13_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:13: Articula com os órgãos do Sistema de Justiça'
q19_14_velha'q19_14_v11865_14_19. Execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:14: Articula com os órgãos de defesa de direitos (Defensoria Pública, MP, Conselho Tutelar, etc.)'
q19_0_velha'q19_0_v11865_0_19. No caso da execução do Serviço de Abordagem por unidade referenciada, indique as atividades realizadas por este Centro POP:0: Não realiza nenhuma das atividades acima'
q20_1_velha'q20_1_v10201_1_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?1: Identificação de situações de risco pessoal e social com direitos violados'
q20_2_velha'q20_2_v10201_2_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?2: Conhecimento/mapeamento do território'
q20_3_velha'q20_3_v10201_3_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?3: Informação, comunicação e defesa de direitos das(os) usuárias(os)'
q20_4_velha'q20_4_v10201_4_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?4: Escuta e orientação'
q20_5_velha'q20_5_v10201_5_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?5: Construção de vínculo entre a equipe de referência e usuárias(os)'
q20_6_velha'q20_6_v10201_6_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?6: Encaminhamentos para a rede de serviços locais'
q20_7_velha'q20_7_v10201_7_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?7: Articulação da rede de serviços socioassistenciais'
q20_8_velha'q20_8_v10201_8_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?8: Articulação com os serviços de políticas públicas setoriais'
q20_9_velha'q20_9_v10201_9_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?9: Articulação com os demais órgãos do Sistema de Garantia de Direitos'
q20_10_velha'q20_10_v10201_10_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?10: Articulação com os órgãos do Sistema de Justiça'
q20_11_velha'q20_11_v10201_11_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?11: Registro de atendimento das(os) usuárias(os)'
q20_12_velha'q20_12_v10201_12_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?12: Elaboração de relatórios'
q20_13_velha'q20_13_v10201_13_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?13: Ações de sensibilização para divulgação do trabalho realizado'
q20_14_velha'q20_14_v10201_14_20. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?14: Ações para fortalecimento de vínculos familiares e comunitários'
q21_velha'q21_v10204_21. Quantos dias por semana a abordagem social é realizada:'
q22_velha'q22_v10205_22. Em quais períodos do dia costuma ser realizada a abordagem social?'
q23_1_velha'q23_1_v10206_1_23. A abordagem social é realizada em parceria com:1: A Abordagem é realizada exclusivamente pela equipe do Centro Pop'
q23_2_velha'q23_2_v10206_2_23. A abordagem social é realizada em parceria com:2: Equipes da atenção básica de saúde'
q23_3_velha'q23_3_v10206_3_23. A abordagem social é realizada em parceria com:3: Equipes de saúde mental'
q23_4_velha'q23_4_v10206_4_23. A abordagem social é realizada em parceria com:4: Equipes de serviços de acolhimento'
q23_5_velha'q23_5_v10206_5_23. A abordagem social é realizada em parceria com:5: Equipes do CREAS'
q23_6_velha'q23_6_v10206_6_23. A abordagem social é realizada em parceria com:6: Equipes de outras unidades públicas da rede socioassistencial'
q23_7_velha'q23_7_v10206_7_23. A abordagem social é realizada em parceria com:7: Equipes de entidades da rede socioassistencial privada'
q23_8_velha'q23_8_v10206_8_23. A abordagem social é realizada em parceria com:8: Integrantes de movimentos sociais'
q23_9_velha'q23_9_v10206_9_23. A abordagem social é realizada em parceria com:9: Guarda municipal'
q23_10_velha'q23_10_v10206_10_23. A abordagem social é realizada em parceria com:10: Polícia militar'
q23_11_velha'q23_11_v10206_11_23. A abordagem social é realizada em parceria com:11: Órgãos de defesa de direitos'
q23_99_velha'q23_99_v10206_99_23. A abordagem social é realizada em parceria com:99: Outros'
q25_1_velha'q25_1_v10208_1_25. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?1: Benefício Eventual em situação de morte'
q25_2_velha'q25_2_v10208_2_25. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?2: Benefício Eventual em situação de natalidade'
q25_3_velha'q25_3_v10208_3_25. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?3: Benefício Eventual em situação de calamidade'
q25_4_velha'q25_4_v10208_4_25. Quais são os Benefícios Eventuais concedidos neste CENTRO POP?4: Benefício Eventual em situação de vulnerabilidade social'
q26_velha'q26_v10209_26. Este CENTRO POP realiza cadastramento ou atualização do CadÚnico?'
q28_1_velha'q28_1_v10222_1_28. Quais mecanismos de participação são utilizados nesta unidade?1: Convida as(os) usuárias(os) para as reuniões de planejamento desta unidade'
q28_2_velha'q28_2_v10222_2_28. Quais mecanismos de participação são utilizados nesta unidade?2: Apoio financeiro para a participação de reuniões de planejamento junto a esta unidade'
q28_3_velha'q28_3_v10222_3_28. Quais mecanismos de participação são utilizados nesta unidade?3: Existência de representante de usuárias(os) junto à unidade'
q28_4_velha'q28_4_v10222_4_28. Quais mecanismos de participação são utilizados nesta unidade?4: Eleição para representante de usuárias(os) junto à unidade'
q28_5_velha'q28_5_v10222_5_28. Quais mecanismos de participação são utilizados nesta unidade?5: Estimula a formação de coletivo/comitê de usuárias(os)'
q28_6_velha'q28_6_v10222_6_28. Quais mecanismos de participação são utilizados nesta unidade?6: Realiza questionário de satisfação/pesquisa de opinião (inclui urna de sugestões)'
q28_7_velha'q28_7_v10222_7_28. Quais mecanismos de participação são utilizados nesta unidade?7: Realiza reuniões/entrevistas especificas a fim de coletar a demanda das(os) usuárias(os)'
q28_8_velha'q28_8_v10222_8_28. Quais mecanismos de participação são utilizados nesta unidade?8: O Centro POP possui ouvidoria estruturada'
q28_9_velha'q28_9_v10222_9_28. Quais mecanismos de participação são utilizados nesta unidade?9: As(Os) usuárias(os) escolhem os temas a serem trabalhados nas ações coletivas da unidade'
q28_10_velha'q28_10_v10222_10_28. Quais mecanismos de participação são utilizados nesta unidade?10: Estimula a participação de usuárias(os) nos Conselhos de Assistência Social e/ou Conselho de Direitos'
q28_99_velha'q28_99_v10222_99_28. Quais mecanismos de participação são utilizados nesta unidade?99: Outros'
q29_1_1_velha'q29_1_1_v10224_1_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)1: Possui dados de localização (endereço, telefone, etc.)'
q29_1_2_velha'q29_1_2_v10224_2_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_1_3_velha'q29_1_3_v10224_3_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)3: Encaminha usuárias(os) para este Centro de Referência'
q29_1_4_velha'q29_1_4_v10224_4_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)4: Acompanha os encaminhamentos'
q29_1_5_velha'q29_1_5_v10224_5_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)5: Realiza reuniões periódicas'
q29_1_6_velha'q29_1_6_v10224_6_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)6: Troca Informações'
q29_1_7_velha'q29_1_7_v10224_7_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)7: Realiza estudos de caso em conjunto'
q29_1_8_velha'q29_1_8_v10224_8_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)8: Desenvolve atividades em parceria'
q29_1_9_velha'q29_1_9_v10224_9_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)9: Possui fluxo/protocolo de articulação'
q29_1_0_velha'q29_1_0_v10224_0_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)0: Não tem nenhuma articulação'
q29_1_97_velha'q29_1_97_v10224_97_29.1. Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)97: Serviço ou instituição não existente no Município/DF'
q29_2_1_velha'q29_2_1_v10225_1_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)1: Possui dados de localização (endereço, telefone, etc.)'
q29_2_2_velha'q29_2_2_v10225_2_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_2_3_velha'q29_2_3_v10225_3_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)3: Encaminha usuárias(os) para este Centro de Referência'
q29_2_4_velha'q29_2_4_v10225_4_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)4: Acompanha os encaminhamentos'
q29_2_5_velha'q29_2_5_v10225_5_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)5: Realiza reuniões periódicas'
q29_2_6_velha'q29_2_6_v10225_6_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)6: Troca Informações'
q29_2_7_velha'q29_2_7_v10225_7_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)7: Realiza estudos de caso em conjunto'
q29_2_8_velha'q29_2_8_v10225_8_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)8: Desenvolve atividades em parceria'
q29_2_9_velha'q29_2_9_v10225_9_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)9: Possui fluxo/protocolo de articulação'
q29_2_0_velha'q29_2_0_v10225_0_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)0: Não tem nenhuma articulação'
q29_2_97_velha'q29_2_97_v10225_97_29.2. Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas)97: Serviço ou instituição não existente no Município/DF'
q29_3_1_velha'q29_3_1_v10226_1_29.3. Centro de Referência de Assistência Social (CRAS)1: Possui dados de localização (endereço, telefone, etc.)'
q29_3_2_velha'q29_3_2_v10226_2_29.3. Centro de Referência de Assistência Social (CRAS)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_3_3_velha'q29_3_3_v10226_3_29.3. Centro de Referência de Assistência Social (CRAS)3: Encaminha usuárias(os) para este Centro de Referência'
q29_3_4_velha'q29_3_4_v10226_4_29.3. Centro de Referência de Assistência Social (CRAS)4: Acompanha os encaminhamentos'
q29_3_5_velha'q29_3_5_v10226_5_29.3. Centro de Referência de Assistência Social (CRAS)5: Realiza reuniões periódicas'
q29_3_6_velha'q29_3_6_v10226_6_29.3. Centro de Referência de Assistência Social (CRAS)6: Troca Informações'
q29_3_7_velha'q29_3_7_v10226_7_29.3. Centro de Referência de Assistência Social (CRAS)7: Realiza estudos de caso em conjunto'
q29_3_8_velha'q29_3_8_v10226_8_29.3. Centro de Referência de Assistência Social (CRAS)8: Desenvolve atividades em parceria'
q29_3_9_velha'q29_3_9_v10226_9_29.3. Centro de Referência de Assistência Social (CRAS)9: Possui fluxo/protocolo de articulação'
q29_3_0_velha'q29_3_0_v10226_0_29.3. Centro de Referência de Assistência Social (CRAS)0: Não tem nenhuma articulação'
q29_3_97_velha'q29_3_97_v10226_97_29.3. Centro de Referência de Assistência Social (CRAS)97: Serviço ou instituição não existente no Município/DF'
q29_4_1_velha'q29_4_1_v10227_1_29.4. Centro de Referência Especializado de Assistência Social (CREAS)1: Possui dados de localização (endereço, telefone, etc.)'
q29_4_2_velha'q29_4_2_v10227_2_29.4. Centro de Referência Especializado de Assistência Social (CREAS)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_4_3_velha'q29_4_3_v10227_3_29.4. Centro de Referência Especializado de Assistência Social (CREAS)3: Encaminha usuárias(os) para este Centro de Referência'
q29_4_4_velha'q29_4_4_v10227_4_29.4. Centro de Referência Especializado de Assistência Social (CREAS)4: Acompanha os encaminhamentos'
q29_4_5_velha'q29_4_5_v10227_5_29.4. Centro de Referência Especializado de Assistência Social (CREAS)5: Realiza reuniões periódicas'
q29_4_6_velha'q29_4_6_v10227_6_29.4. Centro de Referência Especializado de Assistência Social (CREAS)6: Troca Informações'
q29_4_7_velha'q29_4_7_v10227_7_29.4. Centro de Referência Especializado de Assistência Social (CREAS)7: Realiza estudos de caso em conjunto'
q29_4_8_velha'q29_4_8_v10227_8_29.4. Centro de Referência Especializado de Assistência Social (CREAS)8: Desenvolve atividades em parceria'
q29_4_9_velha'q29_4_9_v10227_9_29.4. Centro de Referência Especializado de Assistência Social (CREAS)9: Possui fluxo/protocolo de articulação'
q29_4_0_velha'q29_4_0_v10227_0_29.4. Centro de Referência Especializado de Assistência Social (CREAS)0: Não tem nenhuma articulação'
q29_4_97_velha'q29_4_97_v10227_97_29.4. Centro de Referência Especializado de Assistência Social (CREAS)97: Serviço ou instituição não existente no Município/DF'
q29_5_1_velha'q29_5_1_v10228_1_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)1: Possui dados de localização (endereço, telefone, etc.)'
q29_5_2_velha'q29_5_2_v10228_2_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_5_3_velha'q29_5_3_v10228_3_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)3: Encaminha usuárias(os) para este Centro de Referência'
q29_5_4_velha'q29_5_4_v10228_4_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)4: Acompanha os encaminhamentos'
q29_5_5_velha'q29_5_5_v10228_5_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)5: Realiza reuniões periódicas'
q29_5_6_velha'q29_5_6_v10228_6_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)6: Troca Informações'
q29_5_7_velha'q29_5_7_v10228_7_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)7: Realiza estudos de caso em conjunto'
q29_5_8_velha'q29_5_8_v10228_8_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)8: Desenvolve atividades em parceria'
q29_5_9_velha'q29_5_9_v10228_9_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)9: Possui fluxo/protocolo de articulação'
q29_5_0_velha'q29_5_0_v10228_0_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)0: Não tem nenhuma articulação'
q29_5_97_velha'q29_5_97_v10228_97_29.5. Serviços de Saúde Mental (CAPS, CAPS AD, etc.)97: Serviço ou instituição não existente no Município/DF'
q29_6_1_velha'q29_6_1_v10229_1_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)1: Possui dados de localização (endereço, telefone, etc.)'
q29_6_2_velha'q29_6_2_v10229_2_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_6_3_velha'q29_6_3_v10229_3_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)3: Encaminha usuárias(os) para este Centro de Referência'
q29_6_4_velha'q29_6_4_v10229_4_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)4: Acompanha os encaminhamentos'
q29_6_5_velha'q29_6_5_v10229_5_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)5: Realiza reuniões periódicas'
q29_6_6_velha'q29_6_6_v10229_6_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)6: Troca Informações'
q29_6_7_velha'q29_6_7_v10229_7_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)7: Realiza estudos de caso em conjunto'
q29_6_8_velha'q29_6_8_v10229_8_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)8: Desenvolve atividades em parceria'
q29_6_9_velha'q29_6_9_v10229_9_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)9: Possui fluxo/protocolo de articulação'
q29_6_0_velha'q29_6_0_v10229_0_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)0: Não tem nenhuma articulação'
q29_6_97_velha'q29_6_97_v10229_97_29.6. Equipes de Saúde que atuem no espaço da rua (Consultórios na Rua ou outros)97: Serviço ou instituição não existente no Município/DF'
q29_7_1_velha'q29_7_1_v10231_1_29.7. Serviços de saúde voltados à internação1: Possui dados de localização (endereço, telefone, etc.)'
q29_7_2_velha'q29_7_2_v10231_2_29.7. Serviços de saúde voltados à internação2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_7_3_velha'q29_7_3_v10231_3_29.7. Serviços de saúde voltados à internação3: Encaminha usuárias(os) para este Centro de Referência'
q29_7_4_velha'q29_7_4_v10231_4_29.7. Serviços de saúde voltados à internação4: Acompanha os encaminhamentos'
q29_7_5_velha'q29_7_5_v10231_5_29.7. Serviços de saúde voltados à internação5: Realiza reuniões periódicas'
q29_7_6_velha'q29_7_6_v10231_6_29.7. Serviços de saúde voltados à internação6: Troca Informações'
q29_7_7_velha'q29_7_7_v10231_7_29.7. Serviços de saúde voltados à internação7: Realiza estudos de caso em conjunto'
q29_7_8_velha'q29_7_8_v10231_8_29.7. Serviços de saúde voltados à internação8: Desenvolve atividades em parceria'
q29_7_9_velha'q29_7_9_v10231_9_29.7. Serviços de saúde voltados à internação9: Possui fluxo/protocolo de articulação'
q29_7_0_velha'q29_7_0_v10231_0_29.7. Serviços de saúde voltados à internação0: Não tem nenhuma articulação'
q29_7_97_velha'q29_7_97_v10231_97_29.7. Serviços de saúde voltados à internação97: Serviço ou instituição não existente no Município/DF'
q29_8_1_velha'q29_8_1_v10232_1_29.8. Serviços de educação1: Possui dados de localização (endereço, telefone, etc.)'
q29_8_2_velha'q29_8_2_v10232_2_29.8. Serviços de educação2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_8_3_velha'q29_8_3_v10232_3_29.8. Serviços de educação3: Encaminha usuárias(os) para este Centro de Referência'
q29_8_4_velha'q29_8_4_v10232_4_29.8. Serviços de educação4: Acompanha os encaminhamentos'
q29_8_5_velha'q29_8_5_v10232_5_29.8. Serviços de educação5: Realiza reuniões periódicas'
q29_8_6_velha'q29_8_6_v10232_6_29.8. Serviços de educação6: Troca Informações'
q29_8_7_velha'q29_8_7_v10232_7_29.8. Serviços de educação7: Realiza estudos de caso em conjunto'
q29_8_8_velha'q29_8_8_v10232_8_29.8. Serviços de educação8: Desenvolve atividades em parceria'
q29_8_9_velha'q29_8_9_v10232_9_29.8. Serviços de educação9: Possui fluxo/protocolo de articulação'
q29_8_0_velha'q29_8_0_v10232_0_29.8. Serviços de educação0: Não tem nenhuma articulação'
q29_8_97_velha'q29_8_97_v10232_97_29.8. Serviços de educação97: Serviço ou instituição não existente no Município/DF'
q29_9_1_velha'q29_9_1_v14444_1_29.9. Políticas Culturais (ponto de cultura, entre outros)1: Possui dados de localização (endereço, telefone, etc.)'
q29_9_2_velha'q29_9_2_v14444_2_29.9. Políticas Culturais (ponto de cultura, entre outros)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_9_3_velha'q29_9_3_v14444_3_29.9. Políticas Culturais (ponto de cultura, entre outros)3: Encaminha usuárias(os) para este Centro de Referência'
q29_9_4_velha'q29_9_4_v14444_4_29.9. Políticas Culturais (ponto de cultura, entre outros)4: Acompanha os encaminhamentos'
q29_9_5_velha'q29_9_5_v14444_5_29.9. Políticas Culturais (ponto de cultura, entre outros)5: Realiza reuniões periódicas'
q29_9_6_velha'q29_9_6_v14444_6_29.9. Políticas Culturais (ponto de cultura, entre outros)6: Troca Informações'
q29_9_7_velha'q29_9_7_v14444_7_29.9. Políticas Culturais (ponto de cultura, entre outros)7: Realiza estudos de caso em conjunto'
q29_9_8_velha'q29_9_8_v14444_8_29.9. Políticas Culturais (ponto de cultura, entre outros)8: Desenvolve atividades em parceria'
q29_9_9_velha'q29_9_9_v14444_9_29.9. Políticas Culturais (ponto de cultura, entre outros)9: Possui fluxo/protocolo de articulação'
q29_9_0_velha'q29_9_0_v14444_0_29.9. Políticas Culturais (ponto de cultura, entre outros)0: Não tem nenhuma articulação'
q29_9_97_velha'q29_9_97_v14444_97_29.9. Políticas Culturais (ponto de cultura, entre outros)97: Serviço ou instituição não existente no Município/DF'
q29_10_1_velha'q29_10_1_v10234_1_29.10. Órgãos responsáveis pela emissão de documentação civil básica1: Possui dados de localização (endereço, telefone, etc.)'
q29_10_2_velha'q29_10_2_v10234_2_29.10. Órgãos responsáveis pela emissão de documentação civil básica2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_10_3_velha'q29_10_3_v10234_3_29.10. Órgãos responsáveis pela emissão de documentação civil básica3: Encaminha usuárias(os) para este Centro de Referência'
q29_10_4_velha'q29_10_4_v10234_4_29.10. Órgãos responsáveis pela emissão de documentação civil básica4: Acompanha os encaminhamentos'
q29_10_5_velha'q29_10_5_v10234_5_29.10. Órgãos responsáveis pela emissão de documentação civil básica5: Realiza reuniões periódicas'
q29_10_6_velha'q29_10_6_v10234_6_29.10. Órgãos responsáveis pela emissão de documentação civil básica6: Troca Informações'
q29_10_7_velha'q29_10_7_v10234_7_29.10. Órgãos responsáveis pela emissão de documentação civil básica7: Realiza estudos de caso em conjunto'
q29_10_8_velha'q29_10_8_v10234_8_29.10. Órgãos responsáveis pela emissão de documentação civil básica8: Desenvolve atividades em parceria'
q29_10_9_velha'q29_10_9_v10234_9_29.10. Órgãos responsáveis pela emissão de documentação civil básica9: Possui fluxo/protocolo de articulação'
q29_10_0_velha'q29_10_0_v10234_0_29.10. Órgãos responsáveis pela emissão de documentação civil básica0: Não tem nenhuma articulação'
q29_10_97_velha'q29_10_97_v10234_97_29.10. Órgãos responsáveis pela emissão de documentação civil básica97: Serviço ou instituição não existente no Município/DF'
q29_11_1_velha'q29_11_1_v10235_1_29.11. Serviços/Programas de Segurança Alimentar1: Possui dados de localização (endereço, telefone, etc.)'
q29_11_2_velha'q29_11_2_v10235_2_29.11. Serviços/Programas de Segurança Alimentar2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_11_3_velha'q29_11_3_v10235_3_29.11. Serviços/Programas de Segurança Alimentar3: Encaminha usuárias(os) para este Centro de Referência'
q29_11_4_velha'q29_11_4_v10235_4_29.11. Serviços/Programas de Segurança Alimentar4: Acompanha os encaminhamentos'
q29_11_5_velha'q29_11_5_v10235_5_29.11. Serviços/Programas de Segurança Alimentar5: Realiza reuniões periódicas'
q29_11_6_velha'q29_11_6_v10235_6_29.11. Serviços/Programas de Segurança Alimentar6: Troca Informações'
q29_11_7_velha'q29_11_7_v10235_7_29.11. Serviços/Programas de Segurança Alimentar7: Realiza estudos de caso em conjunto'
q29_11_8_velha'q29_11_8_v10235_8_29.11. Serviços/Programas de Segurança Alimentar8: Desenvolve atividades em parceria'
q29_11_9_velha'q29_11_9_v10235_9_29.11. Serviços/Programas de Segurança Alimentar9: Possui fluxo/protocolo de articulação'
q29_11_0_velha'q29_11_0_v10235_0_29.11. Serviços/Programas de Segurança Alimentar0: Não tem nenhuma articulação'
q29_11_97_velha'q29_11_97_v10235_97_29.11. Serviços/Programas de Segurança Alimentar97: Serviço ou instituição não existente no Município/DF'
q29_12_1_velha'q29_12_1_v10236_1_29.12. Serviços/Programas de Habitação1: Possui dados de localização (endereço, telefone, etc.)'
q29_12_2_velha'q29_12_2_v10236_2_29.12. Serviços/Programas de Habitação2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_12_3_velha'q29_12_3_v10236_3_29.12. Serviços/Programas de Habitação3: Encaminha usuárias(os) para este Centro de Referência'
q29_12_4_velha'q29_12_4_v10236_4_29.12. Serviços/Programas de Habitação4: Acompanha os encaminhamentos'
q29_12_5_velha'q29_12_5_v10236_5_29.12. Serviços/Programas de Habitação5: Realiza reuniões periódicas'
q29_12_6_velha'q29_12_6_v10236_6_29.12. Serviços/Programas de Habitação6: Troca Informações'
q29_12_7_velha'q29_12_7_v10236_7_29.12. Serviços/Programas de Habitação7: Realiza estudos de caso em conjunto'
q29_12_8_velha'q29_12_8_v10236_8_29.12. Serviços/Programas de Habitação8: Desenvolve atividades em parceria'
q29_12_9_velha'q29_12_9_v10236_9_29.12. Serviços/Programas de Habitação9: Possui fluxo/protocolo de articulação'
q29_12_0_velha'q29_12_0_v10236_0_29.12. Serviços/Programas de Habitação0: Não tem nenhuma articulação'
q29_12_97_velha'q29_12_97_v10236_97_29.12. Serviços/Programas de Habitação97: Serviço ou instituição não existente no Município/DF'
q29_13_1_velha'q29_13_1_v10237_1_29.13. Serviços/Programas de Geração de Trabalho e Renda1: Possui dados de localização (endereço, telefone, etc.)'
q29_13_2_velha'q29_13_2_v10237_2_29.13. Serviços/Programas de Geração de Trabalho e Renda2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_13_3_velha'q29_13_3_v10237_3_29.13. Serviços/Programas de Geração de Trabalho e Renda3: Encaminha usuárias(os) para este Centro de Referência'
q29_13_4_velha'q29_13_4_v10237_4_29.13. Serviços/Programas de Geração de Trabalho e Renda4: Acompanha os encaminhamentos'
q29_13_5_velha'q29_13_5_v10237_5_29.13. Serviços/Programas de Geração de Trabalho e Renda5: Realiza reuniões periódicas'
q29_13_6_velha'q29_13_6_v10237_6_29.13. Serviços/Programas de Geração de Trabalho e Renda6: Troca Informações'
q29_13_7_velha'q29_13_7_v10237_7_29.13. Serviços/Programas de Geração de Trabalho e Renda7: Realiza estudos de caso em conjunto'
q29_13_8_velha'q29_13_8_v10237_8_29.13. Serviços/Programas de Geração de Trabalho e Renda8: Desenvolve atividades em parceria'
q29_13_9_velha'q29_13_9_v10237_9_29.13. Serviços/Programas de Geração de Trabalho e Renda9: Possui fluxo/protocolo de articulação'
q29_13_0_velha'q29_13_0_v10237_0_29.13. Serviços/Programas de Geração de Trabalho e Renda0: Não tem nenhuma articulação'
q29_13_97_velha'q29_13_97_v10237_97_29.13. Serviços/Programas de Geração de Trabalho e Renda97: Serviço ou instituição não existente no Município/DF'
q29_14_1_velha'q29_14_1_v10240_1_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)1: Possui dados de localização (endereço, telefone, etc.)'
q29_14_2_velha'q29_14_2_v10240_2_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_14_3_velha'q29_14_3_v10240_3_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)3: Encaminha usuárias(os) para este Centro de Referência'
q29_14_4_velha'q29_14_4_v10240_4_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)4: Acompanha os encaminhamentos'
q29_14_5_velha'q29_14_5_v10240_5_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)5: Realiza reuniões periódicas'
q29_14_6_velha'q29_14_6_v10240_6_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)6: Troca Informações'
q29_14_7_velha'q29_14_7_v10240_7_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)7: Realiza estudos de caso em conjunto'
q29_14_8_velha'q29_14_8_v10240_8_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)8: Desenvolve atividades em parceria'
q29_14_9_velha'q29_14_9_v10240_9_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)9: Possui fluxo/protocolo de articulação'
q29_14_0_velha'q29_14_0_v10240_0_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)0: Não tem nenhuma articulação'
q29_14_97_velha'q29_14_97_v10240_97_29.14. Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)97: Serviço ou instituição não existente no Município/DF'
q29_15_1_velha'q29_15_1_v10241_1_29.15. Movimentos organizados da população em situação de rua1: Possui dados de localização (endereço, telefone, etc.)'
q29_15_2_velha'q29_15_2_v10241_2_29.15. Movimentos organizados da população em situação de rua2: Recebe usuárias(os) encaminhadas(os) por este Centro de Referência'
q29_15_3_velha'q29_15_3_v10241_3_29.15. Movimentos organizados da população em situação de rua3: Encaminha usuárias(os) para este Centro de Referência'
q29_15_4_velha'q29_15_4_v10241_4_29.15. Movimentos organizados da população em situação de rua4: Acompanha os encaminhamentos'
q29_15_5_velha'q29_15_5_v10241_5_29.15. Movimentos organizados da população em situação de rua5: Realiza reuniões periódicas'
q29_15_6_velha'q29_15_6_v10241_6_29.15. Movimentos organizados da população em situação de rua6: Troca Informações'
q29_15_7_velha'q29_15_7_v10241_7_29.15. Movimentos organizados da população em situação de rua7: Realiza estudos de caso em conjunto'
q29_15_8_velha'q29_15_8_v10241_8_29.15. Movimentos organizados da população em situação de rua8: Desenvolve atividades em parceria'
q29_15_9_velha'q29_15_9_v10241_9_29.15. Movimentos organizados da população em situação de rua9: Possui fluxo/protocolo de articulação'
q29_15_0_velha'q29_15_0_v10241_0_29.15. Movimentos organizados da população em situação de rua0: Não tem nenhuma articulação'
q29_15_97_velha'q29_15_97_v10241_97_29.15. Movimentos organizados da população em situação de rua97: Serviço ou instituição não existente no Município/DF'
q30_1_velha'q30_1_v12759_1_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?1: Deficiência'
q30_2_velha'q30_2_v12759_2_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?2: Gênero'
q30_3_velha'q30_3_v12759_3_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?3: População em situação de rua'
q30_4_velha'q30_4_v12759_4_30. Nos últimos 12 meses, a Unidade proporcionou/facilitou a participação de capacitação sobre?4: População LGBT, orientação sexual e identidade de gênero (Lésbicas, gays, bissexuais, transgêneros e intersexuais)'
q30_5_velha'q30_5_v12759_5_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?5: Álcool e outras drogas'
q30_6_velha'q30_6_v12759_6_30. últimos 12 meses, a Unidade proporcionou/facilitou a participação de seus profissionais em capacitação sobre?6: Diversidade étnico-racial (questão racial, comunidades indígenas, povos e comunidades tradicionais etc.)'
q30_7_velha'q30_7_v12759_7_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?7: Violências e violações de direitos'
q30_8_velha'q30_8_v12759_8_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?8: Trabalho Infantil'
q30_9_velha'q30_9_v12759_9_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?9: Criança e adolescente'
q30_10_velha'q30_10_v12759_10_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?10: Juventude'
q30_11_velha'q30_11_v12759_11_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?11: Envelhecimento'
q30_12_velha'q30_12_v12759_12_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?12: Sistema Socioeducativo/ Medida Socioeducativa/ SINASE'
q30_13_velha'q30_13_v12759_13_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?13: Migração'
q30_14_velha'q30_14_v12759_14_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?14: Mundo do trabalho'
q30_99_velha'q30_99_v12759_99_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?99: Outros'
q30_0_velha'q30_0_v12759_0_30. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?0: Não proporcionou/facilitou a participação das(os) profissionais'
.