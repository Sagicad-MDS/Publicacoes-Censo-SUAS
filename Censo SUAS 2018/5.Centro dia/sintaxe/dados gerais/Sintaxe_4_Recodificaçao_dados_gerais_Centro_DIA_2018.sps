
*****recodificar
*q4*********************************


compute q_6_velha  =  q_6.
compute q_7_velha  =   q_7 .
compute q_8_1_velha  = q_8_1.
compute q_8_2_velha   = q_8_2.
compute q_8_3_velha  =  q_8_3.
compute q_8_0_velha  =  q_8_0.
compute q_9_1_velha  =  q_9_1.
compute q_9_2_velha  =  q_9_2.
compute q_9_3_velha  =  q_9_3.
compute q_9_0_velha  = q_9_0.
compute q_10_0_velha  =  q_10_0.
compute q_10_1_velha  =  q_10_1.
compute q_10_2_velha  =  q_10_2 .
compute q_10_3_velha  =  q_10_3.
compute q_10_4_velha  =  q_10_4.
compute q_10_5_velha  =  q_10_5.
compute q_10_6_velha  =  q_10_6.
compute q_10_7_velha  =  q_10_7.
compute q_10_8_velha  =  q_10_8.
compute q_10_9_velha  =  q_10_9.
compute q_10_10_velha  =  q_10_10.
compute q_10_99_velha  =  q_10_99.
compute q_11_1_velha  = q_11_1. 
compute q_11_2_velha  = q_11_2. 
compute q_11_3_velha  =  q_11_3.
compute q_11_4_velha  =  q_11_4.
compute q_11_99_velha  = q_11_99.
compute q_11_0_velha  = q_11_0.
execute. 



DO IF (q_4=1).
RECODE q_6 (ELSE=SYSMIS).
RECODE q_7 (ELSE=SYSMIS).
RECODE q_8_1 (ELSE=SYSMIS).
RECODE q_8_2 (ELSE=SYSMIS).
RECODE q_8_3 (ELSE=SYSMIS).
RECODE q_8_0 (ELSE=SYSMIS).
RECODE q_9_1 (ELSE=SYSMIS).
RECODE q_9_2 (ELSE=SYSMIS).
RECODE q_9_3 (ELSE=SYSMIS).
RECODE q_9_0 (ELSE=SYSMIS).
RECODE q_10_0 (ELSE=SYSMIS).
RECODE q_10_1 (ELSE=SYSMIS).
RECODE q_10_2 (ELSE=SYSMIS).
RECODE q_10_3 (ELSE=SYSMIS).
RECODE q_10_4 (ELSE=SYSMIS).
RECODE q_10_5 (ELSE=SYSMIS).
RECODE  q_10_6 (ELSE=SYSMIS).
RECODE q_10_7  (ELSE=SYSMIS).
RECODE q_10_8 (ELSE=SYSMIS).
RECODE  q_10_9 (ELSE=SYSMIS).
RECODE q_10_10  (ELSE=SYSMIS).
RECODE q_10_99  (ELSE=SYSMIS).
RECODE q_11_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q6*********************************

DO IF (q_6=0).
RECODE q_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q8*********************************

DO IF (q_8_0=1).
RECODE q_8_1 (ELSE=SYSMIS).
RECODE q_8_2 (ELSE=SYSMIS).
RECODE q_8_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


****************q9

DO IF (q_9_0=1).
RECODE q_9_1 (ELSE=SYSMIS).
RECODE q_9_2 (ELSE=SYSMIS).
RECODE q_9_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q10*****************

DO IF (q_10_0=1).
RECODE q_10_1 (ELSE=SYSMIS).
RECODE q_10_2 (ELSE=SYSMIS).
RECODE q_10_3 (ELSE=SYSMIS).
RECODE q_10_4 (ELSE=SYSMIS).
RECODE q_10_5 (ELSE=SYSMIS).
RECODE  q_10_6 (ELSE=SYSMIS).
RECODE q_10_7  (ELSE=SYSMIS).
RECODE q_10_8 (ELSE=SYSMIS).
RECODE  q_10_9 (ELSE=SYSMIS).
RECODE q_10_10  (ELSE=SYSMIS).
RECODE q_10_99  (ELSE=SYSMIS).
END IF.
EXECUTE.




**q11*****************


DO IF (q_11_0=1).
RECODE q_11_1 (ELSE=SYSMIS).
RECODE q_11_2 (ELSE=SYSMIS).
RECODE q_11_3 (ELSE=SYSMIS).
RECODE q_11_4 (ELSE=SYSMIS).
RECODE q_11_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q12**************

compute q_13_1_velha = q_13_1. 
compute q_13_2_velha = q_13_2.
compute q_13_3_velha = q_13_3.
compute q_13_4_velha = q_13_4.
compute q_13_5_velha = q_13_5.
compute q_13_6_velha = q_13_6.
compute q_13_7_velha = q_13_7.
compute q_13_8_velha = q_13_8. 
compute q_13_9_velha = q_13_9.
compute q_13_10_velha = q_13_10.
compute q_13_11_velha = q_13_11.
compute q_13_12_velha = q_13_12.
compute q_13_0_velha = q_13_0.
compute q_14_velha = q_14.
execute. 


DO IF (q_12=0).
RECODE q_13_1 (ELSE=SYSMIS).
RECODE q_13_2 (ELSE=SYSMIS).
RECODE q_13_3 (ELSE=SYSMIS).
RECODE q_13_4 (ELSE=SYSMIS).
RECODE q_13_5 (ELSE=SYSMIS).
RECODE q_13_6 (ELSE=SYSMIS).
RECODE q_13_7 (ELSE=SYSMIS).
RECODE q_13_8 (ELSE=SYSMIS).
RECODE q_13_9 (ELSE=SYSMIS).
RECODE q_13_10 (ELSE=SYSMIS).
RECODE q_13_11 (ELSE=SYSMIS).
RECODE q_13_12 (ELSE=SYSMIS).
RECODE q_13_0  (ELSE=SYSMIS).
RECODE q_14 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_13_0 =1).
RECODE q_13_1 (ELSE=SYSMIS).
RECODE q_13_2 (ELSE=SYSMIS).
RECODE q_13_3 (ELSE=SYSMIS).
RECODE q_13_4 (ELSE=SYSMIS).
RECODE q_13_5 (ELSE=SYSMIS).
RECODE q_13_6 (ELSE=SYSMIS).
RECODE q_13_7 (ELSE=SYSMIS).
RECODE q_13_8 (ELSE=SYSMIS).
RECODE q_13_9 (ELSE=SYSMIS).
RECODE q_13_10 (ELSE=SYSMIS).
RECODE q_13_11 (ELSE=SYSMIS).
RECODE q_13_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q15***

compute q_15_1_velha = q_15_1.
compute q_15_2_velha = q_15_2.
compute q_15_3_velha = q_15_3. 
compute q_15_4_velha = q_15_4.
compute q_15_5_velha = q_15_5.
compute q_15_6_velha = q_15_6.
execute. 


DO IF (q_15_6= 1).
RECODE q_15_1 (ELSE=SYSMIS).
RECODE q_15_2 (ELSE=SYSMIS).
RECODE q_15_3 (ELSE=SYSMIS).
RECODE q_15_4 (ELSE=SYSMIS).
RECODE q_15_5 (ELSE=SYSMIS).
RECODE q_15_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q16**************************

compute q_17_1_velha = q_17_1. 
compute q_17_2_velha = q_17_2.
compute q_17_3_velha = q_17_3.
compute q_17_4_velha = q_17_4.
compute q_17_5_velha = q_17_5.
compute q_17_99_velha = q_17_99.
execute. 



DO IF (q_16= 0).
RECODE q_17_1 (ELSE=SYSMIS).
RECODE q_17_2 (ELSE=SYSMIS).
RECODE q_17_3 (ELSE=SYSMIS).
RECODE q_17_4 (ELSE=SYSMIS).
RECODE q_17_5 (ELSE=SYSMIS).
RECODE q_17_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


*20*********************************

compute q_20_1_velha = q_20_1. 
compute q_20_2_velha = q_20_2.
compute q_20_3_velha = q_20_3.
compute q_20_4_velha = q_20_4.
compute q_20_5_velha = q_20_5.
compute q_20_6_velha = q_20_6.
compute q_20_0_velha = q_20_0.
execute. 


DO IF (q_20_0= 1).
RECODE q_20_1 (ELSE=SYSMIS).
RECODE q_20_2 (ELSE=SYSMIS).
RECODE q_20_3 (ELSE=SYSMIS).
RECODE q_20_4 (ELSE=SYSMIS).
RECODE q_20_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q23********************************************************************


compute q_23_1_velha = q_23_1. 
compute q_23_2_velha = q_23_2.
compute q_23_3_velha = q_23_3.
compute q_23_4_velha = q_23_4.
compute q_23_5_velha = q_23_5.
compute q_23_6_velha = q_23_6.
compute q_23_7_velha = q_23_7.
compute q_23_8_velha = q_23_8. 
compute q_23_9_velha = q_23_9.
compute q_23_10_velha = q_23_10.
compute q_23_11_velha = q_23_11.
compute q_23_12_velha = q_23_12.
compute q_23_13_velha = q_23_13.
compute q_23_14_velha = q_23_14.
compute q_23_15_velha = q_23_15. 
compute q_23_16_velha = q_23_16.
compute q_23_17_velha = q_23_17.
compute q_23_18_velha = q_23_18.
compute q_23_19_velha = q_23_19.
compute q_23_20_velha = q_23_20.
compute q_23_21_velha = q_23_21.
compute q_23_22_velha = q_23_22.
compute q_23_99_velha = q_23_99.
compute q_23_0_velha = q_23_0.
execute. 


DO IF (q_23_0= 1).
RECODE q_23_1 (ELSE=SYSMIS).
RECODE q_23_2 (ELSE=SYSMIS).
RECODE q_23_3 (ELSE=SYSMIS).
RECODE q_23_4 (ELSE=SYSMIS).
RECODE q_23_5 (ELSE=SYSMIS).
RECODE q_23_6 (ELSE=SYSMIS).
RECODE q_23_7 (ELSE=SYSMIS).
RECODE q_23_8 (ELSE=SYSMIS).
RECODE q_23_9 (ELSE=SYSMIS).
RECODE q_23_10(ELSE=SYSMIS).
RECODE q_23_11 (ELSE=SYSMIS).
RECODE q_23_12 (ELSE=SYSMIS).
RECODE q_23_13 (ELSE=SYSMIS).
RECODE q_23_14 (ELSE=SYSMIS).
RECODE q_23_15 (ELSE=SYSMIS).
RECODE q_23_16 (ELSE=SYSMIS).
RECODE q_23_17 (ELSE=SYSMIS).
RECODE q_23_18 (ELSE=SYSMIS).
RECODE q_23_19 (ELSE=SYSMIS).
RECODE q_23_20 (ELSE=SYSMIS).
RECODE q_23_21 (ELSE=SYSMIS).
RECODE q_23_22 (ELSE=SYSMIS).
RECODE q_23_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q24***********************************************************************

compute q_25_1_velha = q_25_1. 
compute q_25_2_velha = q_25_2.
compute q_25_3_velha = q_25_3.
compute q_25_4_velha = q_25_4.
compute q_25_5_velha = q_25_5.
compute q_25_6_velha = q_25_6.
compute q_25_7_velha = q_25_7.
compute q_25_8_velha = q_25_8. 
compute q_25_9_velha = q_25_9.
compute q_25_10_velha = q_25_10.
compute q_25_11_velha = q_25_11.
compute q_26_1_velha = q_26_1. 
compute q_26_2_velha = q_26_2.
compute q_26_3_velha = q_26_3.
compute q_26_4_velha = q_26_4.
compute q_26_5_velha = q_26_5.
compute q_26_99_velha = q_26_99.
execute. 



DO IF (q_24= 0).
RECODE q_25_1 (ELSE=SYSMIS).
RECODE q_25_2 (ELSE=SYSMIS).
RECODE q_25_3 (ELSE=SYSMIS).
RECODE q_25_4 (ELSE=SYSMIS).
RECODE q_25_5 (ELSE=SYSMIS).
RECODE q_25_6 (ELSE=SYSMIS).
RECODE q_25_7 (ELSE=SYSMIS).
RECODE q_25_8 (ELSE=SYSMIS).
RECODE q_25_9 (ELSE=SYSMIS).
RECODE q_25_10 (ELSE=SYSMIS).
RECODE q_25_11 (ELSE=SYSMIS).
RECODE q_26_1 (ELSE=SYSMIS).
RECODE q_26_2 (ELSE=SYSMIS).
RECODE q_26_3 (ELSE=SYSMIS).
RECODE q_26_4 (ELSE=SYSMIS).
RECODE q_26_5 (ELSE=SYSMIS).
RECODE q_26_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q27**********************************************************************************

compute q_28_1_velha = q_28_1.
compute q_28_2_velha = q_28_2.
compute q_28_3_velha = q_28_3.
compute q_28_4_velha = q_28_4.
compute q_28_5_velha = q_28_5.
compute q_28_99_velha = q_28_99.
execute. 


DO IF (q_27= 0).
RECODE q_28_1 (ELSE=SYSMIS).
RECODE q_28_2 (ELSE=SYSMIS).
RECODE q_28_3 (ELSE=SYSMIS).
RECODE q_28_4 (ELSE=SYSMIS).
RECODE q_28_5 (ELSE=SYSMIS).
RECODE q_28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q32************************************************************************************************


COMPUTE q_32_7_total=SUM(q_32_1, q_32_2, q_32_3, q_32_4, q_32_5, q_32_6).
EXECUTE.


DO IF (q_33_1> q_32_7_total).
RECODE q_33_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_33_2> q_32_7_total).
RECODE q_33_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_33_3> q_32_7_total).
RECODE q_33_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_33_4> q_32_7_total).
RECODE q_33_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_33_5> q_32_7_total).
RECODE q_33_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_33_6> q_32_7_total).
RECODE q_33_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q36******************************************************************************************


compute q_36_1_1_velha = q_36_1_1.
compute q_36_1_2_velha = q_36_1_2.
compute q_36_1_3_velha = q_36_1_3.
compute q_36_1_4_velha = q_36_1_4.
compute q_36_1_5_velha = q_36_1_5.
compute q_36_1_6_velha = q_36_1_6.
compute q_36_1_7_velha = q_36_1_7.
compute q_36_1_8_velha = q_36_1_8.
compute q_36_1_9_velha = q_36_1_9.
compute q_36_1_10_velha = q_36_1_10.
compute q_36_2_1_velha = q_36_2_1.
compute q_36_2_2_velha = q_36_2_2.
compute q_36_2_3_velha = q_36_2_3.
compute q_36_2_4_velha = q_36_2_4.
compute q_36_2_5_velha = q_36_2_5.
compute q_36_2_6_velha = q_36_2_6.
compute q_36_2_7_velha = q_36_2_7.
compute q_36_2_8_velha = q_36_2_8.
compute q_36_2_9_velha = q_36_2_9.
compute q_36_2_10_velha = q_36_2_10.
compute q_36_3_1_velha = q_36_3_1.
compute q_36_3_2_velha = q_36_3_2.
compute q_36_3_3_velha = q_36_3_3.
compute q_36_3_4_velha = q_36_3_4.
compute q_36_3_5_velha = q_36_3_5.
compute q_36_3_6_velha = q_36_3_6.
compute q_36_3_7_velha = q_36_3_7.
compute q_36_3_8_velha = q_36_3_8.
compute q_36_3_9_velha = q_36_3_9.
compute q_36_3_10_velha = q_36_3_10.
compute q_36_4_1_velha = q_36_4_1.
compute q_36_4_2_velha = q_36_4_2.
compute q_36_4_3_velha = q_36_4_3.
compute q_36_4_4_velha = q_36_4_4.
compute q_36_4_5_velha = q_36_4_5.
compute q_36_4_6_velha = q_36_4_6.
compute q_36_4_7_velha = q_36_4_7.
compute q_36_4_8_velha = q_36_4_8.
compute q_36_4_9_velha = q_36_4_9.
compute q_36_4_10_velha = q_36_4_10.
compute q_36_5_1_velha = q_36_5_1.
compute q_36_5_2_velha = q_36_5_2.
compute q_36_5_3_velha = q_36_5_3.
compute q_36_5_4_velha = q_36_5_4.
compute q_36_5_5_velha = q_36_5_5.
compute q_36_5_6_velha = q_36_5_6.
compute q_36_5_7_velha = q_36_5_7.
compute q_36_5_8_velha = q_36_5_8.
compute q_36_5_9_velha = q_36_5_9.
compute q_36_5_10_velha = q_36_5_10.
compute q_36_6_1_velha = q_36_6_1.
compute q_36_6_2_velha = q_36_6_2.
compute q_36_6_3_velha = q_36_6_3.
compute q_36_6_4_velha = q_36_6_4.
compute q_36_6_5_velha = q_36_6_5.
compute q_36_6_6_velha = q_36_6_6.
compute q_36_6_7_velha = q_36_6_7.
compute q_36_6_8_velha = q_36_6_8.
compute q_36_6_9_velha = q_36_6_9.
compute q_36_6_10_velha = q_36_6_10.
execute. 

DO IF (q_36_1_9=1 | q_36_1_10=1).
RECODE q_36_1_1 (ELSE=SYSMIS).
RECODE q_36_1_2 (ELSE=SYSMIS).
RECODE q_36_1_3 (ELSE=SYSMIS).
RECODE q_36_1_4 (ELSE=SYSMIS).
RECODE q_36_1_5 (ELSE=SYSMIS).
RECODE q_36_1_6 (ELSE=SYSMIS).
RECODE q_36_1_7 (ELSE=SYSMIS).
RECODE q_36_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_36_2_9=1 | q_36_2_10 =1).
RECODE q_36_2_1 (ELSE=SYSMIS).
RECODE q_36_2_2 (ELSE=SYSMIS).
RECODE q_36_2_3 (ELSE=SYSMIS).
RECODE q_36_2_4 (ELSE=SYSMIS).
RECODE q_36_2_5 (ELSE=SYSMIS).
RECODE q_36_2_6 (ELSE=SYSMIS).
RECODE q_36_2_7 (ELSE=SYSMIS).
RECODE q_36_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_36_3_9=1 | q_36_3_10).
RECODE q_36_3_1 (ELSE=SYSMIS).
RECODE q_36_3_2 (ELSE=SYSMIS).
RECODE q_36_3_3 (ELSE=SYSMIS).
RECODE q_36_3_4 (ELSE=SYSMIS).
RECODE q_36_3_5 (ELSE=SYSMIS).
RECODE q_36_3_6 (ELSE=SYSMIS).
RECODE q_36_3_7 (ELSE=SYSMIS).
RECODE q_36_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_36_4_9=1 | q_36_4_10 =1).
RECODE q_36_4_1 (ELSE=SYSMIS).
RECODE q_36_4_2 (ELSE=SYSMIS).
RECODE q_36_4_3 (ELSE=SYSMIS).
RECODE q_36_4_4 (ELSE=SYSMIS).
RECODE q_36_4_5 (ELSE=SYSMIS).
RECODE q_36_4_6 (ELSE=SYSMIS).
RECODE q_36_4_7 (ELSE=SYSMIS).
RECODE q_36_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_36_5_9=1 | q_36_5_10 = 1).
RECODE q_36_5_1 (ELSE=SYSMIS).
RECODE q_36_5_2 (ELSE=SYSMIS).
RECODE q_36_5_3 (ELSE=SYSMIS).
RECODE q_36_5_4 (ELSE=SYSMIS).
RECODE q_36_5_5 (ELSE=SYSMIS).
RECODE q_36_5_6 (ELSE=SYSMIS).
RECODE q_36_5_7 (ELSE=SYSMIS).
RECODE q_36_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_36_6_9=1 | q_36_6_10=1).
RECODE q_36_6_1 (ELSE=SYSMIS).
RECODE q_36_6_2 (ELSE=SYSMIS).
RECODE q_36_6_3 (ELSE=SYSMIS).
RECODE q_36_6_4 (ELSE=SYSMIS).
RECODE q_36_6_5 (ELSE=SYSMIS).
RECODE q_36_6_6 (ELSE=SYSMIS).
RECODE q_36_6_7 (ELSE=SYSMIS).
RECODE q_36_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q37******************************************************************************************

compute q_37_1_velha =  q_37_1.
compute q_37_2_velha =  q_37_2.
compute q_37_3_velha =  q_37_3.
compute q_37_4_velha =  q_37_4.
compute q_37_5_velha =  q_37_5.
compute q_37_6_velha =  q_37_6.
compute q_37_7_velha =  q_37_7.
compute q_37_8_velha =  q_37_8.
compute q_37_9_velha =  q_37_9.
compute q_37_10_velha =  q_37_10.
compute q_37_11_velha =  q_37_11.
compute q_37_12_velha =  q_37_12.
compute q_37_13_velha =  q_37_13.
compute q_37_14_velha =  q_37_14.
compute q_37_99_velha =  q_37_99.
compute q_37_0_velha =  q_37_0.
execute. 


DO IF (q_37_0=1).
RECODE q_37_1(ELSE=SYSMIS).
RECODE q_37_2 (ELSE=SYSMIS).
RECODE q_37_3 (ELSE=SYSMIS).
RECODE q_37_4 (ELSE=SYSMIS).
RECODE q_37_5 (ELSE=SYSMIS).
RECODE q_37_6 (ELSE=SYSMIS).
RECODE q_37_7 (ELSE=SYSMIS).
RECODE q_37_8 (ELSE=SYSMIS).
RECODE q_37_9 (ELSE=SYSMIS).
RECODE q_37_10 (ELSE=SYSMIS).
RECODE q_37_11 (ELSE=SYSMIS).
RECODE q_37_12 (ELSE=SYSMIS).
RECODE q_37_13 (ELSE=SYSMIS).
RECODE q_37_14 (ELSE=SYSMIS).
RECODE q_37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.







VARIABLE LABELS
q_6_velha	'q_6_Esta entidade faz parte de alguma rede/federa��o nacional, estadual ou regional de entidades de defesa e apoio �s pessoas com defici�ncia e suas fam�lias?'
q_7_velha	'q_7_Caso sim, informe a principal rede/federa��o de que faz parte:'
q_8_1_velha	 'q_8_1_A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o desse Centro Dia?1 - Sim, municipal ou do Distrito Federal'
q_8_2_velha	 'q_8_2_A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o desse Centro Dia?2 - Sim, estadual'
q_8_3_velha	 'q_8_3_A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o desse Centro Dia?3 - Sim, federal'
q_8_0_velha	 'q_8_0_A entidade recebe recursos financeiros da Assist�ncia Social visando � manuten��o desse Centro Dia?0 - N�o'
q_9_1_velha 'q_9_1_Esta unidade recebe recursos financeiros de outras pol�ticas p�blicas visando � manuten��o desse Centro Dia?1 - Sim, da Sa�de'
q_9_2_velha	 'q_9_2_Esta unidade recebe recursos financeiros de outras pol�ticas p�blicas visando � manuten��o desse Centro Dia?2 - Sim, da Educa��o'
q_9_3_velha 'q_9_3_Esta unidade recebe recursos financeiros de outras pol�ticas p�blicas visando � manuten��o desse Centro Dia?3 - Outras'
q_9_0_velha	 'q_9_0_Esta unidade recebe recursos financeiros de outras pol�ticas p�blicas visando � manuten��o desse Centro Dia?0 - N�o'
q_10_0_velha 'q_10_0_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? :0 - N�o recebe nenhuma outra forma de apoio do poder p�blico municipal'
q_10_1_velha 'q_10_1_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 1 - Cess�o de recursos humanos'
q_10_2_velha 'q_10_2_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 2 - Cess�o imobili�ria'
q_10_3_velha 'q_10_3_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 3 - Pagamento de aluguel'
q_10_4_velha 'q_10_4_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?4 - Pagamento de contas de �gua'
q_10_5_velha 'q_10_5_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 5 - Pagamento de contas de luz ou telefone'
q_10_6_velha 'q_10_6_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal?6 - Fornecimento de g�neros aliment�cios'
q_10_7_velha 'q_10_7_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 7 - Fornecimento de materiais de higiene e limpeza'
q_10_8_velha 'q_10_8_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 8 - Fornecimento de materiais pedag�gicos, culturais, esportivos e outros'
q_10_9_velha 'q_10_9_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 9 - Isen��o de taxas ou tributos municipais'
q_10_10_velha 'q_10_10_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 10 - Treinamento e capacita��o de trabalhadores da entidade'
q_10_99_velha 'q_10_99_A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal? 99 - Outros'
q_11_1_velha 'q_11_1_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:1 - Conselho Municipal, Estadual ou do Distrito Federal de Assist�ncia Social'
q_11_2_velha 'q_11_2_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:2 - Conselho Municipal, Estadual ou do Distrito Federal de Direitos da Crian�a e Adolescente'
q_11_3_velha 'q_11_3_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:3 - Conselho Municipal, Estadual ou do Distrito Federal de Direitos do Idoso'
q_11_4_velha 'q_11_4_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:4 - Conselho Municipal, Estadual ou do Distrito Federal de Direitos da Pessoa com Defici�ncia'
q_11_99_velha 'q_11_99_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:99 - Outros'
q_11_0_velha 'q_11_0_Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro:0 - Em nenhum dos citados acima'
q_13_1_velha 'q_13_1_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:1 - Coleta/recebe periodicamente informa��es sobre dados de atendimento do Servi�o'
q_13_2_velha 'q_13_2_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:2 - Realiza reuni�es peri�dicas para avalia��o do Servi�o com o Centro Dia'
q_13_3_velha 'q_13_3_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:3 - Participa do processo de planejamento das atividades do Servi�o'
q_13_4_velha 'q_13_4_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:4 - Acompanha cotidianamente as atividades do Servi�o'
q_13_5_velha 'q_13_5_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:5 - Constr�i estrat�gias metodol�gicas do Servi�o'
q_13_6_velha 'q_13_6_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:6 - Elabora relat�rios t�cnicos espec�ficos sobre casos atendidos/acompanhados pelo Servi�o'
q_13_7_velha 'q_13_7_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:7 - Realiza estudos de caso em parceria com o Servi�o'
q_13_8_velha 'q_13_8_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:8 - Define procedimentos comuns e/ou complementares ao Servi�o'
q_13_9_velha 'q_13_9_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:9 - Possui fluxos de encaminhamentos e trocas de informa��es com o Servi�o'
q_13_10_velha 'q_13_10_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:10 - Articula com a rede de servi�os socioassistenciais'
q_13_11_velha 'q_13_11_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:11 - Articula com a rede dos servi�os das pol�ticas p�blicas setoriais'
q_13_12_velha 'q_13_12_O CREAS que referencia este Centro Dia realiza quais atividades de referenciamento:12 - Articula com os demais �rg�os do Sistema de Garantia de Direitos'
q_13_0_velha 'q_13_0_O CREAS  que referencia este Centro Dia realiza quais atividades de referenciamento:0 - N�o realiza nenhuma das atividades acima'
q_14_velha	'q_14_Em rela��o �s vagas do Servi�o de PSE para pessoas com defici�ncia, idosas(os) e suas fam�lias, informe se:'
q_15_1_velha 'q_15_1_Esta Unidade oferece alimenta��o �s(aos) usu�rias(os)?1 - Lanches/Caf� da manh�'
q_15_2_velha 'q_15_2_Esta Unidade oferece alimenta��o �s(aos) usu�rias(os)?2 - Almo�o'
q_15_3_velha 'q_15_3_Esta Unidade oferece alimenta��o �s(aos) usu�rias(os)?3 - Lanche/ Caf� da Tarde'
q_15_4_velha 'q_15_4_Esta Unidade oferece alimenta��o �s(aos) usu�rias(os)?4 - Jantar'
q_15_5_velha 'q_15_5_Esta Unidade oferece alimenta��o �s(aos) usu�rias(os)?5 - Lanche/Caf� da Noite'
q_15_6_velha 'q_15_6_Esta Unidade oferece alimenta��o �s(aos) usu�rias(os)?6 - N�o oferta alimenta��o'
q_17_1_velha 'q_17_1_Como se d� este apoio?1 - A unidade possui transporte especializado para o deslocamento das(os) usu�rias(os)'
q_17_2_velha 'q_17_2_Como se d� este apoio?2 - A unidade fornece ajuda de custo (passagens) para o deslocamento das(os) usu�rias(os)'
q_17_3_velha 'q_17_3_Como se d� este apoio?3 - O poder p�blico fornece gratuidade no transporte p�blico para pessoas com defici�ncia e idosas'
q_17_4_velha 'q_17_4_Como se d� este apoio?4 - O poder p�blico fornece passagens (vale-transporte, etc.)'
q_17_5_velha 'q_17_5_Como se d� este apoio?5 - O poder p�blico fornece transporte especializado para o deslocamento dos usu�rios'
q_17_99_velha 'q_17_99_Como se d� este apoio?99 - Outros'
q_20_1_velha 'q_20_1_H� outras adapta��es para assegurar a acessibilidade desta unidade?1 - Sim, suporte de profissional com conhecimento em LIBRAS'
q_20_2_velha 'q_20_2_H�  outras adapta��es para assegurar a acessibilidade desta unidade?2 - Sim, suporte de material em Braille'
q_20_3_velha 'q_20_3_H� outras adapta��es para assegurar a acessibilidade desta unidade?3 - Sim, suporte para leitores de telas de computador para pessoas com defici�ncia visual'
q_20_4_velha 'q_20_4_H� outras adapta��es para assegurar a acessibilidade desta unidade?4 - Sim, outras adapta��es e tecnologias assistivas para defici�ncia f�sica'
q_20_5_velha 'q_20_5_H�  outras adapta��es para assegurar a acessibilidade desta unidade?5 - Sim, outras adapta��es e tecnologias assistivas para defici�ncia intelectual e autismo'
q_20_6_velha 'q_20_6_H� outras adapta��es para assegurar a acessibilidade desta unidade?6 - Sim, pisos especiais com relevos para sinaliza��o voltados pessoa com  defici�ncia visual'
q_20_0_velha 'q_20_0_H�  outras adapta��es para assegurar a acessibilidade desta unidade?0 - N�o h� outras adapta��es'
q_23_1_velha 'q_23_1_Quais das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):1 - Alfabetiza��o'
q_23_2_velha 'q_23_2_Quais das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):2 - Escolariza��o Formal'
q_23_3_velha 'q_23_3_Quais  das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):3 - Refor�o Escolar'
q_23_4_velha 'q_23_4_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):4 - Ensino do m�todo Braille de leitura'
q_23_5_velha 'q_23_5_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):5 - Ensino de Libras'
q_23_6_velha 'q_23_6_Quais das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):6 - Atendimentos M�dicos'
q_23_7_velha 'q_23_7_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):7 - Atendimento Odontol�gico'
q_23_8_velha 'q_23_8_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):8 - Terapia Ocupacional'
q_23_9_velha 'q_23_9_Quais das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):9 - Fisioterapia'
q_23_10_velha 'q_23_10_Quais das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):10 - Fonoaudiologia'
q_23_11_velha 'q_23_11_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):11 - Atendimento Cl�nico em Psicologia'
q_23_12_velha 'q_23_12_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):12 - Provis�o em �rtese e pr�tese'
q_23_13_velha 'q_23_13_Quais  das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):13 - Atividades Esportivas'
q_23_14_velha 'q_23_14_Quais  das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):14 - Atividades Art�sticas e Culturais (musicaliza��o, dan�a, teatro, entre outros)'
q_23_15_velha 'q_23_15_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):15 - Musicalidade (cantar, tocar instrumentos, etc)'
q_23_16_velha 'q_23_16_Quais das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):16 - Artesanato (bijuterias, pintura em tecido, bordado, croch�, etc.)'
q_23_17_velha 'q_23_17_Quais  das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):17 - Atividades de inclus�o digital'
q_23_18_velha 'q_23_18_Quais  atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):18 - Atividades de linguagem (produ��o de texto, conta��o de hist�rias, roda de conversa, etc.)'
q_23_19_velha 'q_23_19_Quais das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):19 - Atividades que envolvam alimentos (oficinas de culin�ria, hortas, etc.)'
q_23_20_velha 'q_23_20_Quais atividades s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):20 - Jogos e Brincadeiras (jogos de tabuleiro, brincadeiras de roda, esconde-esconde, m�mica, etc.)'
q_23_21_velha 'q_23_21_Quais  das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):21 - Atividades de orienta��o para o mundo do trabalho'
q_23_22_velha 'q_23_22_Quais  das demais atividades  descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):22 - Passeios e/ou atividades externas'
q_23_99_velha 'q_23_99_Quais  das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):99 - Outras atividades'
q_23_0_velha 'q_23_0_Quais das demais atividades descritas s�o realizadas nesta Unidade (considerar apenas o que for realizado no pr�prio local desta Unidade):0 - Nenhuma das atividades acima'
q_25_1_velha 'q_25_1_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?1 - Identifica��o e perfil da(o) usu�ria(o)'
q_25_2_velha 'q_25_2_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?2 - Informa��es sobre as defici�ncias e grau de depend�ncia da(o) usu�ria(o)'
q_25_3_velha 'q_25_3_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?3 - Identifica��o e perfil da fam�lia'
q_25_4_velha 'q_25_4_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?4 - Carater�sticas socioecon�micas da(o) usu�ria(o) e sua fam�lia (renda, condi��es de moradia, trabalho, etc.)'
q_25_5_velha 'q_25_5_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?5 - Identifica��o e perfil das condi��es de cuidados familiares da(o) usu�ria(o)'
q_25_6_velha 'q_25_6_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?6 - Habilidades e capacidades para cuidar e ser cuidado'
q_25_7_velha 'q_25_7_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?7 - Servi�os frequentados pela(o) usu�ria(o) no territ�rio'
q_25_8_velha 'q_25_8_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?8 - Potencialidades e caracter�sticas da rede de aten��o e apoio no territ�rio'
q_25_9_velha 'q_25_9_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?9 - Pactua��es entre os servi�os, usu�rias(os) e/ou fam�lia sobre o per�odo de perman�ncia da(o) usu�ria(o) no servi�o (turno/dia/semana/m�s)'
q_25_10_velha 'q_25_10_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?10 - Plano de atividades a serem realizadas'
q_25_11_velha 'q_25_11_Quais s�o os itens que comp�em o Plano Individual e/ou Familiar de Atendimento?11 - Avalia��o peri�dica do alcance dos objetivos do Servi�o com a(o) usu�ria(o) e/ou suas fam�lias e proposi��o de adequa��es necess�rias'
q_26_1_velha 'q_26_1_Quem participa da constru��o do Plano Individual e/ou Familiar de Atendimento?1 - As(os) usu�rias(os) e/ou os membros da sua fam�lia'
q_26_2_velha 'q_26_2_Quem participa da constru��o do Plano Individual e/ou Familiar de Atendimento?2 - As(os) t�cnicas(os) de refer�ncia da(o) usu�ria(o)'
q_26_3_velha 'q_26_3_Quem participa da constru��o do Plano Individual e/ou Familiar de Atendimento?3 - O(a) coordenador(a) do Centro Dia'
q_26_4_velha 'q_26_4_Quem participa da constru��o do Plano Individual e/ou Familiar de Atendimento?4 - As(os) t�cnicas(os) do CREAS de refer�ncia'
q_26_5_velha 'q_26_5_Quem participa da constru��o do Plano Individual e/ou Familiar de Atendimento?5 - Equipes de outras �reas nas quais a(o) usu�ria(o) � atendido'
q_26_99_velha 'q_26_99_Quem participa da constru��o do Plano Individual e/ou Familiar de Atendimento?99 - Outros'
q_28_1_velha 'q_28_1_Quais mecanismos de participa��o s�o utilizados nesta unidade?1 - Convida as(os) usu�rias(os) e/ou familiares para as reuni�es de planejamento desta unidade'
q_28_2_velha 'q_28_2_Quais mecanismos de participa��o s�o utilizados nesta unidade?2 - Apoio financeiro para a participa��o de reuni�es de planejamento junto a esta unidade'
q_28_3_velha 'q_28_3_Quais mecanismos de participa��o s�o utilizados nesta unidade?3 - Exist�ncia de representante usu�rias(os) junto � unidade'
q_28_4_velha 'q_28_4_Quais mecanismos de participa��o s�o utilizados nesta unidade?4 - Realiza question�rio de satisfa��o/ pesquisa de opini�o (inclui urna de sugest�es)'
q_28_5_velha 'q_28_5_Quais mecanismos de participa��o s�o utilizados nesta unidade?5 - As(os) usu�rias(os) escolhem os temas a serem trabalhados nas a��es coletivas (oficinas/palestras) da unidade'
q_28_99_velha 'q_28_99_Quais mecanismos de participa��o s�o utilizados nesta unidade?99 - Outros.'
q_32_7_total 'q_32_7_Total de pessoas atendidas no Servi�o no  m�s de agosto de 2018'
q_36_1_1_velha 'q_36_1_1_Unidades de acolhimento1 - Possui localiza��o (endere�o, telefone, etc)'
q_36_1_2_velha 'q_36_1_2_Unidades de acolhimento2 - Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q_36_1_3_velha 'q_36_1_3_Unidades de acolhimento3 - Encaminha usu�rias(os) para este Centro-Dia'
q_36_1_4_velha 'q_36_1_4_Unidades de acolhimento4 - Acompanha os encaminhamentos'
q_36_1_5_velha 'q_36_1_5_Unidades de acolhimento5 - Realiza reuni�es peri�dicas'
q_36_1_6_velha 'q_36_1_6_Unidades de acolhimento6 - Troca Informa��es'
q_36_1_7_velha 'q_36_1_7_Unidades de acolhimento7 - Realiza estudos de caso em conjunto'
q_36_1_8_velha 'q_36_1_8_Unidades de acolhimento8 - Desenvolve atividades em parceria'
q_36_1_9_velha 'q_36_1_9_Unidades de acolhimento9 - N�o tem nenhuma articula��o'
q_36_1_10_velha 'q_36_1_10_Unidades de acolhimento10 - Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q_36_2_1_velha 'q_36_2_1_CRAS1 - Possui localiza��o (endere�o, telefone, etc)'
q_36_2_2_velha 'q_36_2_2_CRAS2 - Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q_36_2_3_velha 'q_36_2_3_CRAS3 - Encaminha usu�rias(os) para este Centro-Dia'
q_36_2_4_velha 'q_36_2_4_CRAS4 - Acompanha os encaminhamentos'
q_36_2_5_velha 'q_36_2_5_CRAS5 - Realiza reuni�es peri�dicas'
q_36_2_6_velha 'q_36_2_6_CRAS6 - Troca Informa��es'
q_36_2_7_velha 'q_36_2_7_CRAS7 - Realiza estudos de caso em conjunto'
q_36_2_8_velha 'q_36_2_8_CRAS8 - Desenvolve atividades em parceria'
q_36_2_9_velha 'q_36_2_9_CRAS9 - N�o tem nenhuma articula��o'
q_36_2_10_velha 'q_36_2_10_CRAS10 - Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q_36_3_1_velha 'q_36_3_1_CREAS1 - Possui localiza��o (endere�o, telefone, etc)'
q_36_3_2_velha 'q_36_3_2_CREAS2 - Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q_36_3_3_velha 'q_36_3_3_CREAS3 - Encaminha usu�rias(os) para este Centro-Dia'
q_36_3_4_velha 'q_36_3_4_CREAS4 - Acompanha os encaminhamentos'
q_36_3_5_velha 'q_36_3_5_CREAS5 - Realiza reuni�es peri�dicas'
q_36_3_6_velha 'q_36_3_6_CREAS6 - Troca Informa��es'
q_36_3_7_velha 'q_36_3_7_CREAS7 - Realiza estudos de caso em conjunto'
q_36_3_8_velha 'q_36_3_8_CREAS8 - Desenvolve atividades em parceria'
q_36_3_9_velha 'q_36_3_9_CREAS9 - N�o tem nenhuma articula��o'
q_36_3_10_velha  'q_36_3_10_CREAS10 - Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q_36_4_1_velha  'q_36_4_1_Servi�o de sa�de1 - Possui localiza��o (endere�o, telefone, etc)'
q_36_4_2_velha 'q_36_4_2_Servi�o de sa�de2 - Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q_36_4_3_velha 'q_36_4_3_Servi�o de sa�de3 - Encaminha usu�rias(os) para este Centro-Dia'
q_36_4_4_velha 'q_36_4_4_Servi�o de sa�de4 - Acompanha os encaminhamentos'
q_36_4_5_velha 'q_36_4_5_Servi�o de sa�de5 - Realiza reuni�es peri�dicas'
q_36_4_6_velha 'q_36_4_6_Servi�o de sa�de6 - Troca Informa��es'
q_36_4_7_velha 'q_36_4_7_Servi�o de sa�de7 - Realiza estudos de caso em conjunto'
q_36_4_8_velha 'q_36_4_8_Servi�o de sa�de8 - Desenvolve atividades em parceria'
q_36_4_9_velha 'q_36_4_9_Servi�o de sa�de9 - N�o tem nenhuma articula��o'
q_36_4_10_velha 'q_36_4_10_Servi�o de sa�de10 - Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q_36_5_1_velha 'q_36_5_1_Servi�o de educa��o1 - Possui localiza��o (endere�o, telefone, etc)'
q_36_5_2_velha 'q_36_5_2_Servi�o de educa��o2 - Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q_36_5_3_velha 'q_36_5_3_Servi�o de educa��o3 - Encaminha usu�rias(os) para este Centro-Dia'
q_36_5_4_velha 'q_36_5_4_Servi�o de educa��o4 - Acompanha os encaminhamentos'
q_36_5_5_velha 'q_36_5_5_Servi�o de educa��o5 - Realiza reuni�es peri�dicas'
q_36_5_6_velha 'q_36_5_6_Servi�o de educa��o6 - Troca Informa��es'
q_36_5_7_velha 'q_36_5_7_Servi�o de educa��o7 - Realiza estudos de caso em conjunto'
q_36_5_8_velha 'q_36_5_8_Servi�o de educa��o8 - Desenvolve atividades em parceria'
q_36_5_9_velha 'q_36_5_9_Servi�o de educa��o9 - N�o tem nenhuma articula��o'
q_36_5_10_velha 'q_36_5_10_Servi�o de educa��o10 - Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q_36_6_1_velha 'q_36_6_1_Sistema de justi�a/Judici�rio1 - Possui localiza��o (endere�o, telefone, etc)'
q_36_6_2_velha 'q_36_6_2_Sistema de justi�a/Judici�rio2 - Recebe usu�rias(os) encaminhadas(os) por este Centro-Dia'
q_36_6_3_velha 'q_36_6_3_Sistema de justi�a/Judici�rio3 - Encaminha usu�rias(os) para este Centro-Dia'
q_36_6_4_velha 'q_36_6_4_Sistema de justi�a/Judici�rio4 - Acompanha os encaminhamentos'
q_36_6_5_velha 'q_36_6_5_Sistema de justi�a/Judici�rio5 - Realiza reuni�es peri�dicas'
q_36_6_6_velha 'q_36_6_6_Sistema de justi�a/Judici�rio6 - Troca Informa��es'
q_36_6_7_velha 'q_36_6_7_Sistema de justi�a/Judici�rio7 - Realiza estudos de caso em conjunto'
q_36_6_8_velha 'q_36_6_8_Sistema de justi�a/Judici�rio8 - Desenvolve atividades em parceria'
q_36_6_9_velha 'q_36_6_9_Sistema de justi�a/Judici�rio9 - N�o tem nenhuma articula��o'
q_36_6_10_velha 'q_36_6_10_Sistema de justi�a/Judici�rio10 - Servi�o ou institui��o n�o existente no Munic�pio ou no DF'
q_37_1_velha 'q_37_1_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?1 - Defici�ncia'
q_37_2_velha 'q_37_2_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?2 - G�nero'
q_37_3_velha 'q_37_3_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?3 - Popula��o em situa��o de rua'
q_37_4_velha 'q_37_4_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?4 - Popula��o LGBT, orienta��o sexual e identidade de g�nero'
q_37_5_velha 'q_37_5_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?5 - �lcool e outras drogas'
q_37_6_velha 'q_37_6_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?6 - Diversidade �tnico-racial (quest�o racial, comunidades ind�genas, povos e comunidades tradicionais etc.)'
q_37_7_velha 'q_37_7_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?7 - Viol�ncias e viola��es de direitos'
q_37_8_velha 'q_37_8_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?8 - Trabalho Infantil'
q_37_9_velha 'q_37_9_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?9 - Crian�a e adolescente'
q_37_10_velha 'q_37_10_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?10 - Juventude'
q_37_11_velha 'q_37_11_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?11 - Envelhecimento'
q_37_12_velha 'q_37_12_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?12 - Sistema Socioeducativo/Medida Socioeducativa/SINASE'
q_37_13_velha 'q_37_13_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?13 - Migra��o'
q_37_14_velha 'q_37_14_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?14 - Mundo do trabalho'
q_37_99_velha 'q_37_99_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?99 - Outros'
q_37_0_velha 'q_37_0_Nos �ltimos 12 meses, a Unidade proporcionou/ facilitou a participa��o de seus profissionais em capacita��o sobre?0 - N�o proporcionou/facilitou a participa��o das(os) profissionais'
.