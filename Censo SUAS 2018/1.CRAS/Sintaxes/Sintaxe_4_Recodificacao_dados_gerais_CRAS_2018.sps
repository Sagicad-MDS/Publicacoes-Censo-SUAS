
*****recodificar

*q5*********************************

compute q_5_1_velha = q_5_1. 
compute q_5_2_velha = q_5_2. 
compute q_5_3_velha = q_5_3. 
compute q_5_4_velha = q_5_4. 
compute q_5_5_velha = q_5_5. 
compute q_5_6_velha = q_5_6. 
compute q_5_7_velha = q_5_7. 
compute q_5_8_velha = q_5_8. 
compute q_5_9_velha = q_5_9. 
compute q_5_10_velha = q_5_10. 
compute q_5_11_velha = q_5_11. 
compute q_5_12_velha = q_5_12. 
compute q_5_99_velha = q_5_99. 
execute. 

DO IF (q_4=0).
RECODE q_5_1 (0=SYSMIS).
RECODE q_5_2 (0=SYSMIS).
RECODE q_5_3 (0=SYSMIS).
RECODE q_5_4 (0=SYSMIS).
RECODE q_5_5 (0=SYSMIS).
RECODE q_5_6 (0=SYSMIS).
RECODE q_5_7 (0=SYSMIS).
RECODE q_5_8 (0=SYSMIS).
RECODE q_5_9 (0=SYSMIS).
RECODE q_5_10(0=SYSMIS).
RECODE q_5_11 (0=SYSMIS).
RECODE q_5_12 (0=SYSMIS).
RECODE q_5_99 (0=SYSMIS).
END IF.
EXECUTE.


**q6*****************

compute q_6_1_velha = q_6_1. 
compute q_6_2_velha = q_6_2. 
compute q_6_3_velha = q_6_3. 
compute q_6_4_velha = q_6_4. 
compute q_6_5_velha = q_6_5. 
compute q_6_6_velha = q_6_6. 
compute q_6_7_velha = q_6_7. 
compute q_6_8_velha = q_6_8. 
compute q_6_9_velha = q_6_9. 
compute q_6_10_velha = q_6_10. 
compute q_6_11_velha = q_6_11. 
compute q_6_12_velha = q_6_12. 
execute. 



DO IF (q_6_1=1).
RECODE q_6_2 (ELSE=SYSMIS).
RECODE q_6_3 (ELSE=SYSMIS).
RECODE q_6_4 (ELSE=SYSMIS).
RECODE q_6_5 (ELSE=SYSMIS).
RECODE q_6_6 (ELSE=SYSMIS).
RECODE q_6_7 (ELSE=SYSMIS).
RECODE q_6_8 (ELSE=SYSMIS).
RECODE q_6_9 (ELSE=SYSMIS).
RECODE q_6_10(ELSE=SYSMIS).
RECODE q_6_11 (ELSE=SYSMIS).
RECODE q_6_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_4=0).
RECODE q_6_1 (0=SYSMIS).
RECODE q_6_2 (0=SYSMIS).
RECODE q_6_3 (0=SYSMIS).
RECODE q_6_4 (0=SYSMIS).
RECODE q_6_5 (0=SYSMIS).
RECODE q_6_6 (0=SYSMIS).
RECODE q_6_7 (0=SYSMIS).
RECODE q_6_8 (0=SYSMIS).
RECODE q_6_9 (0=SYSMIS).
RECODE q_6_10(0=SYSMIS).
RECODE q_6_11 (0=SYSMIS).
RECODE q_6_12 (0=SYSMIS).
END IF.
EXECUTE.

**q9*****************

compute q_9_1_velha = q_9_1. 
compute q_9_2_velha = q_9_2. 
compute q_9_3_velha = q_9_3. 
compute q_9_4_velha = q_9_4. 
compute q_9_5_velha = q_9_5. 
compute q_9_6_velha = q_9_6. 
compute q_9_0_velha = q_9_0. 
execute. 


DO IF (q_9_0=1).
RECODE q_9_1 (ELSE=SYSMIS).
RECODE q_9_2 (ELSE=SYSMIS).
RECODE q_9_3 (ELSE=SYSMIS).
RECODE q_9_4 (ELSE=SYSMIS).
RECODE q_9_5 (ELSE=SYSMIS).
RECODE q_9_6 (ELSE=SYSMIS).
RECODE q_9_4_1 (ELSE=SYSMIS).
RECODE q_9_5_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q14**************

compute q_14_0_velha = q_14_0. 
compute q_14_1_velha = q_14_1 .
compute q_14_2_1_velha = q_14_2_1.
compute q_14_2_2_velha = q_14_2_2.
compute q_14_2_3_velha = q_14_2_3.
compute q_14_3_1_velha = q_14_3_1.
compute q_14_3_2_velha = q_14_3_2.
compute q_14_3_3_velha = q_14_3_3.
execute. 



DO IF (q_14_0=1).
RECODE q_14_1 (ELSE=SYSMIS).
RECODE q_14_2_1 (ELSE=SYSMIS).
RECODE q_14_2_2 (ELSE=SYSMIS).
RECODE q_14_2_3 (ELSE=SYSMIS).
RECODE q_14_3_1 (ELSE=SYSMIS).
RECODE q_14_3_2 (ELSE=SYSMIS).
RECODE q_14_3_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


compute q_14_1= q_14_2_1+q_14_2_2+q_14_2_3+q_14_3_1+q_14_3_2+q_14_3_3.
execute. 

RECODE q_14_1 (0=SYSMIS).
EXECUTE.
RECODE q_14_0 (0=SYSMIS).
EXECUTE.

DO IF (MISSING(q_14_1)).
RECODE q_14_0 (1=1) (ELSE=1).
END IF.
EXECUTE.



*****q15**************

compute q_15_1_velha = q_15_1. 
compute q_15_2_velha = q_15_2. 
compute q_15_3_velha =q_15_3. 
compute q_15_4_velha = q_15_4. 
compute q_15_5_velha = q_15_5. 
compute q_15_6_velha = q_15_6. 
compute q_15_7_velha = q_15_7. 
compute q_15_8_velha = q_15_8. 
compute q_15_9_velha = q_15_9. 
compute q_15_10_velha =q_15_10. 
compute q_15_11_velha = q_15_11. 
compute q_15_12_velha = q_15_12. 
compute q_15_13_velha = q_15_13. 
compute q_15_99_velha = q_15_99. 
execute. 


DO IF (q_15_1=1).
RECODE q_15_2 (ELSE=SYSMIS).
RECODE q_15_3 (ELSE=SYSMIS).
RECODE q_15_4 (ELSE=SYSMIS).
RECODE q_15_5 (ELSE=SYSMIS).
RECODE q_15_6 (ELSE=SYSMIS).
RECODE q_15_7 (ELSE=SYSMIS).
RECODE q_15_8 (ELSE=SYSMIS).
RECODE q_15_9 (ELSE=SYSMIS).
RECODE q_15_10(ELSE=SYSMIS).
RECODE q_15_11 (ELSE=SYSMIS).
RECODE q_15_12 (ELSE=SYSMIS).
RECODE q_15_13 (ELSE=SYSMIS).
RECODE q_15_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q16*************************************************

compute q_17_1_velha = q_17_1. 
compute q_17_2_velha = q_17_2. 
compute q_17_3_velha =q_17_3. 
compute q_17_4_velha = q_17_4. 
compute q_17_5_velha = q_17_5. 
compute q_17_6_velha = q_17_6. 
execute. 

DO IF (q_16=0).
RECODE q_17_1 (ELSE=SYSMIS).
RECODE q_17_2(ELSE=SYSMIS).
RECODE q_17_3 (ELSE=SYSMIS).
RECODE q_17_4 (ELSE=SYSMIS).
RECODE q_17_5 (ELSE=SYSMIS).
RECODE q_17_6 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q18*************************************************

compute q_18_1_velha = q_18_1. 
compute q_18_2_velha = q_18_2. 
compute q_18_3_velha =q_18_3. 
compute q_18_4_velha = q_18_4. 
execute. 


DO IF (q_18_4=1).
RECODE q_18_1 (ELSE=SYSMIS).
RECODE q_18_2(ELSE=SYSMIS).
RECODE q_18_3 (ELSE=SYSMIS).
END IF.
EXECUTE.



compute q_19_1_velha = q_19_1. 
compute q_19_2_velha = q_19_2. 
compute q_19_3_velha =q_19_3. 
compute q_19_4_velha = q_19_4. 
compute q_19_5_velha =q_19_5. 
compute q_19_6_velha = q_19_6. 
compute q_20_velha = q_20. 
compute q_21_1_velha = q_21_1. 
compute q_21_2_velha =q_21_2 .
compute q_21_3_velha = q_21_3. 
compute q_21_4_velha =q_21_4. 
compute q_21_5_velha = q_21_5. 
compute q_21_6_velha = q_21_6. 
compute q_21_7_velha =q_21_7 .
compute q_21_8_velha = q_21_8. 
compute q_21_9_velha =q_21_9. 
compute q_21_0_velha = q_21_0. 
execute. 


DO IF (q_18_4=1).
RECODE q_19_1 (ELSE=SYSMIS).
RECODE q_19_2(ELSE=SYSMIS).
RECODE q_19_3 (ELSE=SYSMIS).
RECODE q_19_4 (ELSE=SYSMIS).
RECODE q_19_5 (ELSE=SYSMIS).
RECODE q_19_6 (ELSE=SYSMIS).
RECODE q_20 (ELSE=SYSMIS).
RECODE q_21_1 (ELSE=SYSMIS).
RECODE q_21_2(ELSE=SYSMIS).
RECODE q_21_3 (ELSE=SYSMIS).
RECODE q_21_4 (ELSE=SYSMIS).
RECODE q_21_5 (ELSE=SYSMIS).
RECODE q_21_6 (ELSE=SYSMIS).
RECODE q_21_7 (ELSE=SYSMIS).
RECODE q_21_8 (ELSE=SYSMIS).
RECODE q_21_9 (ELSE=SYSMIS).
RECODE q_21_0 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q16 e q18**********************************************************************************

DO IF (q_16=0  & q_18_4=1).
RECODE q_17_1 (ELSE=SYSMIS).
RECODE q_17_2(ELSE=SYSMIS).
RECODE q_17_3 (ELSE=SYSMIS).
RECODE q_17_4 (ELSE=SYSMIS).
RECODE q_17_5 (ELSE=SYSMIS).
RECODE q_17_6 (ELSE=SYSMIS).
RECODE q_19_1 (ELSE=SYSMIS).
RECODE q_19_2(ELSE=SYSMIS).
RECODE q_19_3 (ELSE=SYSMIS).
RECODE q_19_4 (ELSE=SYSMIS).
RECODE q_19_5 (ELSE=SYSMIS).
RECODE q_19_6 (ELSE=SYSMIS).
RECODE q_20 (ELSE=SYSMIS).
RECODE q_21_1 (ELSE=SYSMIS).
RECODE q_21_2(ELSE=SYSMIS).
RECODE q_21_3 (ELSE=SYSMIS).
RECODE q_21_4 (ELSE=SYSMIS).
RECODE q_21_5 (ELSE=SYSMIS).
RECODE q_21_6 (ELSE=SYSMIS).
RECODE q_21_7 (ELSE=SYSMIS).
RECODE q_21_8 (ELSE=SYSMIS).
RECODE q_21_9 (ELSE=SYSMIS).
RECODE q_21_0 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q21**********************************************************************************

DO IF (q_21_0=1).
RECODE q_21_1 (ELSE=SYSMIS).
RECODE q_21_2(ELSE=SYSMIS).
RECODE q_21_3 (ELSE=SYSMIS).
RECODE q_21_4 (ELSE=SYSMIS).
RECODE q_21_5 (ELSE=SYSMIS).
RECODE q_21_6 (ELSE=SYSMIS).
RECODE q_21_7 (ELSE=SYSMIS).
RECODE q_21_8 (ELSE=SYSMIS).
RECODE q_21_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q22******************************************************************************************

compute q_23_1_velha = q_23_1. 
compute q_23_2_velha = q_23_2. 
compute q_23_3_velha =q_23_3. 
compute q_23_4_velha = q_23_4. 
execute. 


DO IF (q_22=0).
RECODE q_23_1 (ELSE=SYSMIS).
RECODE q_23_2(ELSE=SYSMIS).
RECODE q_23_3 (ELSE=SYSMIS).
RECODE q_23_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q24***********************************************************

compute q_25_1_velha = q_25_1. 
compute q_25_2_velha = q_25_2. 
compute q_25_3_velha =q_25_3. 
compute q_25_4_velha = q_25_4. 
execute. 


DO IF (q_24=0).
RECODE q_25_1 (ELSE=SYSMIS).
RECODE q_25_2(ELSE=SYSMIS).
RECODE q_25_3 (ELSE=SYSMIS).
RECODE q_25_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q26***********************************************************

compute q_26_1_velha = q_26_1. 
compute q_26_2_velha = q_26_2. 
compute q_26_3_velha =q_26_3. 
compute q_27_1_velha = q_27_1. 
compute q_27_2_velha = q_27_2. 
compute q_27_3_velha =q_27_3. 
compute q_27_4_velha =q_27_4. 
execute. 


DO IF (q_26_0=1).
RECODE q_26_1 (ELSE=SYSMIS).
RECODE q_26_2(ELSE=SYSMIS).
RECODE q_26_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_26_0=1).
RECODE q_27_1 (ELSE=SYSMIS).
RECODE q_27_2(ELSE=SYSMIS).
RECODE q_27_3 (ELSE=SYSMIS).
RECODE q_27_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q28*************************************************************************************

compute q_28_1_velha = q_28_1. 
compute q_28_2_velha = q_28_2. 
compute q_28_3_velha =q_28_3. 
compute q_28_4_velha = q_28_4. 
compute q_28_5_velha = q_28_5. 
compute q_28_6_velha =q_28_6. 
compute q_28_7_velha =q_28_7. 
compute q_28_8_velha =q_28_8. 
compute q_28_9_velha = q_28_9. 
compute q_28_99_velha = q_28_99. 
execute. 



DO IF (q_28_0=1).
RECODE q_28_1 (ELSE=SYSMIS).
RECODE q_28_2(ELSE=SYSMIS).
RECODE q_28_3 (ELSE=SYSMIS).
RECODE q_28_4 (ELSE=SYSMIS).
RECODE q_28_5 (ELSE=SYSMIS).
RECODE q_28_6 (ELSE=SYSMIS).
RECODE q_28_7 (ELSE=SYSMIS).
RECODE q_28_8 (ELSE=SYSMIS).
RECODE q_28_9 (ELSE=SYSMIS).
RECODE q_28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q30*************************************************************************************************

compute q_31_velha = q_31. 
compute q_32_velha = q_32. 
compute q_33_1_velha =q_33_1. 
compute q_33_2_velha = q_33_2. 
compute q_33_3_velha = q_33_3. 
compute q_33_4_velha =q_33_4. 
compute q_33_5_velha =q_33_5. 
compute q_33_6_velha = q_33_6. 
compute q_33_7_velha = q_33_7. 
compute q_33_8_velha =q_33_8. 
compute q_33_9_velha = q_33_9. 
compute q_33_10_velha = q_33_10. 
compute q_33_11_velha =q_33_11. 
compute q_33_99_velha =q_33_99. 
compute q_34_velha = q_34. 
compute q_35_1_velha =q_35_1. 
compute q_35_2_velha = q_35_2. 
compute q_35_3_velha = q_35_3. 
compute q_35_4_velha =q_35_4. 
compute q_35_5_velha =q_35_5. 
compute q_35_6_velha = q_35_6. 
compute q_35_7_velha = q_35_7. 
compute q_35_8_velha =q_35_8. 
compute q_35_9_velha = q_35_9. 
compute q_35_99_velha =q_35_99. 
compute q_35_0_velha = q_35_0. 
execute. 


DO IF (q_30=0).
RECODE q_31 (ELSE=SYSMIS).
RECODE q_32 (ELSE=SYSMIS).
RECODE q_33_1 (ELSE=SYSMIS).
RECODE q_33_2 (ELSE=SYSMIS).
RECODE q_33_3 (ELSE=SYSMIS).
RECODE q_33_4 (ELSE=SYSMIS).
RECODE q_33_5 (ELSE=SYSMIS).
RECODE q_33_6 (ELSE=SYSMIS).
RECODE q_33_7 (ELSE=SYSMIS).
RECODE q_33_8 (ELSE=SYSMIS).
RECODE q_33_9 (ELSE=SYSMIS).
RECODE q_33_10 (ELSE=SYSMIS).
RECODE q_33_11 (ELSE=SYSMIS).
RECODE q_33_99 (ELSE=SYSMIS).
RECODE q_34 (ELSE=SYSMIS).
RECODE q_35_1 (ELSE=SYSMIS).
RECODE q_35_2 (ELSE=SYSMIS).
RECODE q_35_3 (ELSE=SYSMIS).
RECODE q_35_4 (ELSE=SYSMIS).
RECODE q_35_5 (ELSE=SYSMIS).
RECODE q_35_6 (ELSE=SYSMIS).
RECODE q_35_7 (ELSE=SYSMIS).
RECODE q_35_8 (ELSE=SYSMIS).
RECODE q_35_9 (ELSE=SYSMIS).
RECODE q_35_99 (ELSE=SYSMIS).
RECODE q_35_0 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q35***************************************************************************************************

DO IF (q_35_0=1).
RECODE q_35_1 (ELSE=SYSMIS).
RECODE q_35_2 (ELSE=SYSMIS).
RECODE q_35_3 (ELSE=SYSMIS).
RECODE q_35_4 (ELSE=SYSMIS).
RECODE q_35_5 (ELSE=SYSMIS).
RECODE q_35_6 (ELSE=SYSMIS).
RECODE q_35_7 (ELSE=SYSMIS).
RECODE q_35_8 (ELSE=SYSMIS).
RECODE q_35_9 (ELSE=SYSMIS).
RECODE q_35_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q36*************************************************************************************************

compute q_37_1_velha =q_37_1. 
compute q_37_2_velha = q_37_2. 
compute q_37_3_velha = q_37_3. 
compute q_37_4_velha =q_37_4. 
compute q_38_1_velha =q_38_1. 
compute q_38_2_velha = q_38_2. 
compute q_38_3_velha = q_38_3. 
compute q_38_4_velha =q_38_4. 
compute q_38_5_velha =q_38_5. 
compute q_38_6_velha = q_38_6. 
compute q_38_7_velha =q_38_7. 
compute q_38_8_velha =q_38_8. 
compute q_38_9_velha = q_38_9. 
compute q_38_99_velha =q_38_99. 
execute. 


DO IF (q_36=0).
RECODE q_37_1 (ELSE=SYSMIS).
RECODE q_37_2 (ELSE=SYSMIS).
RECODE q_37_3 (ELSE=SYSMIS).
RECODE q_37_4 (ELSE=SYSMIS).
RECODE q_38_1 (ELSE=SYSMIS).
RECODE q_38_2 (ELSE=SYSMIS).
RECODE q_38_3 (ELSE=SYSMIS).
RECODE q_38_4 (ELSE=SYSMIS).
RECODE q_38_5 (ELSE=SYSMIS).
RECODE q_38_6 (ELSE=SYSMIS).
RECODE q_38_7 (ELSE=SYSMIS).
RECODE q_38_8 (ELSE=SYSMIS).
RECODE q_38_9 (ELSE=SYSMIS).
RECODE q_38_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q39**********************************************************************************************************

compute q_39_1_velha =q_39_1. 
compute q_39_2_velha = q_39_2. 
compute q_39_3_velha = q_39_3. 
compute q_39_4_velha =q_39_4. 
compute q_39_5_velha =q_39_5. 
compute q_39_6_velha = q_39_6. 
compute q_39_99_velha =q_39_99. 
execute. 


DO IF (q_39_0=1).
RECODE q_39_1 (ELSE=SYSMIS).
RECODE q_39_2 (ELSE=SYSMIS).
RECODE q_39_3 (ELSE=SYSMIS).
RECODE q_39_4 (ELSE=SYSMIS).
RECODE q_39_5 (ELSE=SYSMIS).
RECODE q_39_6 (ELSE=SYSMIS).
RECODE q_39_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q40**********************************************************************************************************

compute q_41_velha =q_41. 
execute. 

DO IF (q_40=0).
RECODE q_41 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q44************************************************************************************

compute q_45_1_velha =q_45_1. 
compute q_45_2_velha = q_45_2. 
compute q_45_3_velha = q_45_3. 
compute q_45_4_velha =q_45_4. 
compute q_45_5_velha =q_45_5. 
compute q_45_6_velha = q_45_6. 
compute q_45_7_velha = q_45_7. 
compute q_45_8_velha = q_45_8. 
compute q_45_9_velha =q_45_9. 
compute q_45_10_velha =q_45_10. 
compute q_45_99_velha =q_45_99. 
execute. 


DO IF (q_44=0).
RECODE q_45_1 (ELSE=SYSMIS).
RECODE q_45_2 (ELSE=SYSMIS).
RECODE q_45_3 (ELSE=SYSMIS).
RECODE q_45_4 (ELSE=SYSMIS).
RECODE q_45_5 (ELSE=SYSMIS).
RECODE q_45_6 (ELSE=SYSMIS).
RECODE q_45_7 (ELSE=SYSMIS).
RECODE q_45_8 (ELSE=SYSMIS).
RECODE q_45_9 (ELSE=SYSMIS).
RECODE q_45_10 (ELSE=SYSMIS).
RECODE q_45_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q47************************************************************************************

compute q_48_1_velha =q_48_1. 
compute q_48_2_velha = q_48_2. 
compute q_48_3_velha = q_48_3. 
compute q_48_4_velha =q_48_4. 
compute q_48_5_velha =q_48_5. 
compute q_48_6_velha = q_48_6. 
compute q_48_99_velha =q_48_99. 
compute q_49_0_velha =q_49_0. 
compute q_49_1_velha =q_49_1. 
compute q_49_2_velha = q_49_2. 
compute q_49_3_velha = q_49_3. 
compute q_49_4_velha =q_49_4. 
compute q_49_5_velha =q_49_5. 
compute q_49_6_velha = q_49_6. 
compute q_49_99_velha =q_49_99. 
compute q_50_1_velha =q_50_1. 
compute q_50_2_velha = q_50_2. 
compute q_50_3_velha = q_50_3. 
compute q_50_4_velha =q_50_4. 
compute q_50_5_velha =q_50_5. 
compute q_50_6_velha = q_50_6. 
compute q_50_7_velha =q_50_7. 
execute. 


DO IF (q_47=0).
RECODE q_48_1 (ELSE=SYSMIS).
RECODE q_48_2 (ELSE=SYSMIS).
RECODE q_48_3 (ELSE=SYSMIS).
RECODE q_48_4 (ELSE=SYSMIS).
RECODE q_48_5 (ELSE=SYSMIS).
RECODE q_48_6 (ELSE=SYSMIS).
RECODE q_48_99 (ELSE=SYSMIS).
RECODE q_49_0 (ELSE=SYSMIS).
RECODE q_49_1 (ELSE=SYSMIS).
RECODE q_49_2 (ELSE=SYSMIS).
RECODE q_49_3 (ELSE=SYSMIS).
RECODE q_49_4 (ELSE=SYSMIS).
RECODE q_49_5 (ELSE=SYSMIS).
RECODE q_49_6 (ELSE=SYSMIS).
RECODE q_49_99 (ELSE=SYSMIS).
RECODE q_50_1 (ELSE=SYSMIS).
RECODE q_50_2 (ELSE=SYSMIS).
RECODE q_50_3 (ELSE=SYSMIS).
RECODE q_50_4 (ELSE=SYSMIS).
RECODE q_50_5 (ELSE=SYSMIS).
RECODE q_50_6 (ELSE=SYSMIS).
RECODE q_50_7 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q49*******************************************************************************************

DO IF (q_49_0=1).
RECODE q_49_1 (ELSE=SYSMIS).
RECODE q_49_2 (ELSE=SYSMIS).
RECODE q_49_3 (ELSE=SYSMIS).
RECODE q_49_4 (ELSE=SYSMIS).
RECODE q_49_5 (ELSE=SYSMIS).
RECODE q_49_6 (ELSE=SYSMIS).
RECODE q_49_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q53****************************************************************************************************

compute q_53_1_1_velha =q_53_1_1. 
compute q_53_1_2_velha = q_53_1_2. 
compute q_53_1_3_velha = q_53_1_3. 
compute q_53_1_4_velha =q_53_1_4. 
compute q_53_1_5_velha =q_53_1_5. 
compute q_53_1_6_velha = q_53_1_6. 
compute q_53_1_7_velha =q_53_1_7. 
compute q_53_1_8_velha =q_53_1_8. 
compute q_53_2_1_velha =q_53_2_1. 
compute q_53_2_2_velha = q_53_2_2. 
compute q_53_2_3_velha = q_53_2_3. 
compute q_53_2_4_velha =q_53_2_4. 
compute q_53_2_5_velha =q_53_2_5. 
compute q_53_2_6_velha = q_53_2_6. 
compute q_53_2_7_velha =q_53_2_7. 
compute q_53_2_8_velha =q_53_2_8. 
compute q_53_3_1_velha =q_53_3_1. 
compute q_53_3_2_velha = q_53_3_2. 
compute q_53_3_3_velha = q_53_3_3. 
compute q_53_3_4_velha =q_53_3_4. 
compute q_53_3_5_velha =q_53_3_5. 
compute q_53_3_6_velha = q_53_3_6. 
compute q_53_3_7_velha =q_53_3_7. 
compute q_53_3_8_velha =q_53_3_8. 
compute q_53_4_1_velha =q_53_4_1. 
compute q_53_4_2_velha = q_53_4_2. 
compute q_53_4_3_velha = q_53_4_3. 
compute q_53_4_4_velha =q_53_4_4. 
compute q_53_4_5_velha =q_53_4_5. 
compute q_53_4_6_velha = q_53_4_6. 
compute q_53_4_7_velha =q_53_4_7. 
compute q_53_4_8_velha =q_53_4_8. 
compute q_53_5_1_velha =q_53_5_1. 
compute q_53_5_2_velha = q_53_5_2. 
compute q_53_5_3_velha = q_53_5_3. 
compute q_53_5_4_velha =q_53_5_4. 
compute q_53_5_5_velha =q_53_5_5. 
compute q_53_5_6_velha = q_53_5_6. 
compute q_53_5_7_velha =q_53_5_7. 
compute q_53_5_8_velha =q_53_5_8. 
compute q_53_6_1_velha =q_53_6_1. 
compute q_53_6_2_velha = q_53_6_2. 
compute q_53_6_3_velha = q_53_6_3. 
compute q_53_6_4_velha =q_53_6_4. 
compute q_53_6_5_velha =q_53_6_5. 
compute q_53_6_6_velha = q_53_6_6. 
compute q_53_6_7_velha =q_53_6_7. 
compute q_53_6_8_velha =q_53_6_8. 
compute q_53_7_1_velha =q_53_7_1. 
compute q_53_7_2_velha = q_53_7_2. 
compute q_53_7_3_velha = q_53_7_3. 
compute q_53_7_4_velha =q_53_7_4. 
compute q_53_7_5_velha =q_53_7_5. 
compute q_53_7_6_velha = q_53_7_6. 
compute q_53_7_7_velha =q_53_7_7. 
compute q_53_7_8_velha =q_53_7_8. 
compute q_53_8_1_velha =q_53_8_1. 
compute q_53_8_2_velha = q_53_8_2. 
compute q_53_8_3_velha = q_53_8_3. 
compute q_53_8_4_velha =q_53_8_4. 
compute q_53_8_5_velha =q_53_8_5. 
compute q_53_8_6_velha = q_53_8_6. 
compute q_53_8_7_velha =q_53_8_7. 
compute q_53_8_8_velha =q_53_8_8. 
compute q_53_9_1_velha =q_53_9_1. 
compute q_53_9_2_velha = q_53_9_2. 
compute q_53_9_3_velha = q_53_9_3. 
compute q_53_9_4_velha =q_53_9_4. 
compute q_53_9_5_velha =q_53_9_5. 
compute q_53_9_6_velha = q_53_9_6. 
compute q_53_9_7_velha =q_53_9_7. 
compute q_53_9_8_velha =q_53_9_8. 
execute. 


DATASET ACTIVATE DataSet1.
DO IF (q_53_1_0=1 | q_53_1_9=1).
RECODE q_53_1_1 (ELSE=SYSMIS).
RECODE q_53_1_2 (ELSE=SYSMIS).
RECODE q_53_1_3 (ELSE=SYSMIS).
RECODE q_53_1_4 (ELSE=SYSMIS).
RECODE q_53_1_5 (ELSE=SYSMIS).
RECODE q_53_1_6(ELSE=SYSMIS).
RECODE q_53_1_7 (ELSE=SYSMIS).
RECODE q_53_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q_53_2_0=1 | q_53_2_9=1).
RECODE q_53_2_1 (ELSE=SYSMIS).
RECODE q_53_2_2 (ELSE=SYSMIS).
RECODE q_53_2_3 (ELSE=SYSMIS).
RECODE q_53_2_4 (ELSE=SYSMIS).
RECODE q_53_2_5 (ELSE=SYSMIS).
RECODE q_53_2_6(ELSE=SYSMIS).
RECODE q_53_2_7 (ELSE=SYSMIS).
RECODE q_53_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_53_3_0=1 | q_53_3_9=1).
RECODE q_53_3_1 (ELSE=SYSMIS).
RECODE q_53_3_2 (ELSE=SYSMIS).
RECODE q_53_3_3 (ELSE=SYSMIS).
RECODE q_53_3_4 (ELSE=SYSMIS).
RECODE q_53_3_5 (ELSE=SYSMIS).
RECODE q_53_3_6(ELSE=SYSMIS).
RECODE q_53_3_7 (ELSE=SYSMIS).
RECODE q_53_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_53_4_0=1 | q_53_4_9=1).
RECODE q_53_4_1 (ELSE=SYSMIS).
RECODE q_53_4_2 (ELSE=SYSMIS).
RECODE q_53_4_3 (ELSE=SYSMIS).
RECODE q_53_4_4 (ELSE=SYSMIS).
RECODE q_53_4_5 (ELSE=SYSMIS).
RECODE q_53_4_6(ELSE=SYSMIS).
RECODE q_53_4_7 (ELSE=SYSMIS).
RECODE q_53_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_53_5_0=1 | q_53_5_9=1).
RECODE q_53_5_1 (ELSE=SYSMIS).
RECODE q_53_5_2 (ELSE=SYSMIS).
RECODE q_53_5_3 (ELSE=SYSMIS).
RECODE q_53_5_4 (ELSE=SYSMIS).
RECODE q_53_5_5 (ELSE=SYSMIS).
RECODE q_53_5_6(ELSE=SYSMIS).
RECODE q_53_5_7 (ELSE=SYSMIS).
RECODE q_53_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_53_6_0=1 | q_53_6_9=1).
RECODE q_53_6_1 (ELSE=SYSMIS).
RECODE q_53_6_2 (ELSE=SYSMIS).
RECODE q_53_6_3 (ELSE=SYSMIS).
RECODE q_53_6_4 (ELSE=SYSMIS).
RECODE q_53_6_5 (ELSE=SYSMIS).
RECODE q_53_6_6(ELSE=SYSMIS).
RECODE q_53_6_7 (ELSE=SYSMIS).
RECODE q_53_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q_53_7_0=1 | q_53_7_9=1).
RECODE q_53_7_1 (ELSE=SYSMIS).
RECODE q_53_7_2 (ELSE=SYSMIS).
RECODE q_53_7_3 (ELSE=SYSMIS).
RECODE q_53_7_4 (ELSE=SYSMIS).
RECODE q_53_7_5 (ELSE=SYSMIS).
RECODE q_53_7_6(ELSE=SYSMIS).
RECODE q_53_7_7 (ELSE=SYSMIS).
RECODE q_53_7_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q_53_8_0=1 | q_53_8_9=1).
RECODE q_53_8_1 (ELSE=SYSMIS).
RECODE q_53_8_2 (ELSE=SYSMIS).
RECODE q_53_8_3 (ELSE=SYSMIS).
RECODE q_53_8_4 (ELSE=SYSMIS).
RECODE q_53_8_5 (ELSE=SYSMIS).
RECODE q_53_8_6(ELSE=SYSMIS).
RECODE q_53_8_7 (ELSE=SYSMIS).
RECODE q_53_8_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_53_9_0=1 | q_53_9_9=1).
RECODE q_53_9_1 (ELSE=SYSMIS).
RECODE q_53_9_2 (ELSE=SYSMIS).
RECODE q_53_9_3 (ELSE=SYSMIS).
RECODE q_53_9_4 (ELSE=SYSMIS).
RECODE q_53_9_5 (ELSE=SYSMIS).
RECODE q_53_9_6(ELSE=SYSMIS).
RECODE q_53_9_7 (ELSE=SYSMIS).
RECODE q_53_9_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q54*****************************************************

compute q_54_1_velha =q_54_1. 
compute q_54_2_velha =q_54_2. 
compute q_54_3_velha = q_54_3. 
compute q_54_4_velha =q_54_4. 
compute q_54_5_velha =q_54_5. 
compute q_54_6_velha =q_54_6. 
compute q_54_7_velha = q_54_7. 
compute q_54_8_velha = q_54_8. 
compute q_54_9_velha =q_54_9. 
compute q_54_10_velha =q_54_10. 
compute q_54_11_velha = q_54_11. 
compute q_54_12_velha =q_54_12. 
compute q_54_13_velha =q_54_13. 
compute q_54_14_velha =q_54_14. 
compute q_54_99_velha = q_54_99. 
compute q_54_0_velha = q_54_0. 
execute. 



DO IF (q_54_0=1).
RECODE q_54_1 (ELSE=SYSMIS).
RECODE q_54_2 (ELSE=SYSMIS).
RECODE q_54_3 (ELSE=SYSMIS).
RECODE q_54_4 (ELSE=SYSMIS).
RECODE q_54_5 (ELSE=SYSMIS).
RECODE q_54_6 (ELSE=SYSMIS).
RECODE q_54_7 (ELSE=SYSMIS).
RECODE q_54_8 (ELSE=SYSMIS).
RECODE q_54_9 (ELSE=SYSMIS).
RECODE q_54_10 (ELSE=SYSMIS).
RECODE q_54_11 (ELSE=SYSMIS).
RECODE q_54_12 (ELSE=SYSMIS).
RECODE q_54_13 (ELSE=SYSMIS).
RECODE q_54_14 (ELSE=SYSMIS).
RECODE q_54_99  (ELSE=SYSMIS).
END IF.
EXECUTE.
*******************




VARIABLE LABELS
q_5_1_velha'q_5_1_v10367_1_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.1 - Secretaria da Assistência Social ou congênere'
q_5_2_velha'q_5_2_v10367_2_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.2 - Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-prefeitura, etc)'
q_5_3_velha'q_5_3_v10367_3_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.3 - Conselho Municipal de Assistência Social'
q_5_4_velha'q_5_4_v10367_4_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.4 - Conselho Tutelar'
q_5_5_velha'q_5_5_v10367_5_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.5 - CREAS ? Centro de Referência Especializado de Assistência Social'
q_5_6_velha'q_5_6_v10367_6_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.6 - Outra unidade pública de serviços da Assistência Social'
q_5_7_velha'q_5_7_v10367_7_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.7 - Unidade de Saúde'
q_5_8_velha'q_5_8_v10367_8_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.8 - Escola'
q_5_9_velha'q_5_9_v10367_9_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.9 - Associação Comunitária'
q_5_10_velha'q_5_10_v10367_10_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.10 - Entidades ou Organização da Sociedade Civil'
q_5_11_velha'q_5_11_v10367_11_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.11 - Praça do CEU (esporte e/ou cultura)'
q_5_12_velha'q_5_12_v10367_12_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.12 - Conselho Municipal de Direitos da Criança e do Adolescente ? CMDCA'
q_5_99_velha'q_5_99_v10367_99_Especifique o tipo de unidade com a qual este CRAS compartilha seu imóvel.99 - Outros'
q_6_1_velha'q_6_1_v10369_1_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):1 - Apenas o endereço é o mesmo, mas todos os espaços do CRAS são independentes e de uso exclusivo, inclusive a entrada'
q_6_2_velha'q_6_2_v10369_2_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):2 - Entrada / Porta de Acesso'
q_6_3_velha'q_6_3_v10369_3_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):3 - Recepção'
q_6_4_velha'q_6_4_v10369_4_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):4 - Cozinha'
q_6_5_velha'q_6_5_v10369_5_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):5 - Algumas salas de atendimento particularizado'
q_6_6_velha'q_6_6_v10369_6_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):6 - Todas as salas de atendimento particularizado'
q_6_7_velha'q_6_7_v10369_7_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):7 - Algumas salas de atendimento coletivo'
q_6_8_velha'q_6_8_v10369_8_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):8 - Todas as salas de atendimento coletivo'
q_6_9_velha'q_6_9_v10369_9_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):9 - Salas administrativas'
q_6_10_velha'q_6_10_v10369_10_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):10 - Banheiros'
q_6_11_velha'q_6_11_v10369_11_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):11 - Área Externa'
q_6_12_velha'q_6_12_v10369_12_Especifique quais espaços do imóvel são compartilhados entre o CRAS e a(s) outra(s) Unidade(s):12 - Almoxarifado ou similar'
q_9_1_velha'q_9_1_v12572_1_Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?1 - Sim, suporte de profissional com conhecimento em LIBRAS'
q_9_2_velha'q_9_2_v12572_2_Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?2 - Sim, suporte de material em braille'
q_9_3_velha'q_9_3_v12572_3_Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?3 - Sim, suporte para leitores de telas de computador para pessoas com deficiência visual'
q_9_4_velha'q_9_4_v12572_4_Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?4 - Sim, outras adaptações e tecnologias assistivas para deficiência física'
q_9_5_velha'q_9_5_v12572_5_Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?5 - Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo'
q_9_6_velha'q_9_6_v12572_6_Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?6 - Sim, pisos especiais com relevos para sinalização voltados pessoa com deficiência visual'
q_9_0_velha'q_9_0_v12572_0_Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?0 - Não há outras adaptações'
q_14_0_velha'q_14_0_v14790_0_Não sabe informar'
q_14_1_velha'q_14_1_v14349_Quantidade de indivíduos que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Total'
q_14_2_1_velha'q_14_2_1_v14350_Quantidade de indivíduos que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Masculino 0 a 18 anos'
q_14_2_2_velha'q_14_2_2_v14351_Quantidade de indivíduos que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Masculino 19 a 59 anos'
q_14_2_3_velha'q_14_2_3_v14348_Quantidade de indivíduos que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Masculino 60 anos ou mais'
q_14_3_1_velha'q_14_3_1_v14353_Quantidade de indivíduos que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Feminino 0 a 18 anos'
q_14_3_2_velha'q_14_3_2_v14352_Quantidade de indivíduos que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Feminino 19 a 59 anos'
q_14_3_3_velha'q_14_3_3_v14354_Quantidade de indivíduos que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Feminino 60 anos ou mais'
q_15_1_velha'q_15_1_v14311_1_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:1 - Não há grupos do PAIF'
q_15_2_velha'q_15_2_v14311_2_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:2 - Direito à transferência de renda e benefícios assistenciais'
q_15_3_velha'q_15_3_v14311_3_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:3 - Direito a Documentação Civil Básica (certidão de nascimento, CPF, RG, título eleitoral)'
q_15_4_velha'q_15_4_v14311_4_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:4 - Direito a cultura e lazer'
q_15_5_velha'q_15_5_v14311_5_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:5 - Direito das Mulheres'
q_15_6_velha'q_15_6_v14311_6_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:6 - Direitos das pessoas com deficiência'
q_15_7_velha'q_15_7_v14311_7_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:7 - Direito à Alimentação'
q_15_8_velha'q_15_8_v14311_8_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:8 - Os direitos das famílias'
q_15_9_velha'q_15_9_v14311_9_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:9 - As especificidades do ciclo vital dos membros das famílias'
q_15_10_velha'q_15_10_v14311_10_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:10 - Cuidar de quem cuida'
q_15_11_velha'q_15_11_v14311_11_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:11 - O uso de álcool e/ou outras drogas na família'
q_15_12_velha'q_15_12_v14311_12_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:12 - Problemas e soluções do território'
q_15_13_velha'q_15_13_v14311_13_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:13 - Diversidade cultural, étnica e social'
q_15_99_velha'q_15_99_v14311_99_Em 2018, quais as cinco principas temáticas abordadas nos atendimentos coletivos realizados pelo PAIF:99 - Outro'
q_17_1_velha'q_17_1_v10394_Crianças de 0 a 6 anos de idade'
q_17_2_velha'q_17_2_v10395_Crianças e adolescentes de 7 a 14 anos de idade'
q_17_3_velha'q_17_3_v10396_Adolescentes e jovens de 15 a 17 anos de idade'
q_17_4_velha'q_17_4_v10397_Jovens de 18 a 29 anos de idade'
q_17_5_velha'q_17_5_v10398_Adultas(os) de 30 a 59 anos de idade'
q_17_6_velha'q_17_6_v10402_Idosas(os) (60 anos ou mais)'
q_18_1_velha'q_18_1_v10403_1_Este CRAS possui rede referenciada para oferta do Serviço de Convivência e Fortalecimento de Vínculos?1 - Sim, realizado por outra unidade pública'
q_18_2_velha'q_18_2_v10403_2_Este CRAS possui rede referenciada para oferta do Serviço de Convivência e Fortalecimento de Vínculos?2 - Sim, realizado por entidade conveniada'
q_18_3_velha'q_18_3_v10403_3_Este CRAS possui rede referenciada para oferta do Serviço de Convivência e Fortalecimento de Vínculos?3 - Sim, realizado por entidade não conveniada'
q_18_4_velha'q_18_4_v10403_0_Este CRAS possui rede referenciada para oferta do Serviço de Convivência e Fortalecimento de Vínculos?0 - Não'
q_19_1_velha'q_19_1_v10406_Crianças de 0 a 6 anos de idade'
q_19_2_velha'q_19_2_v10407_Crianças e adolescentes de 7 a 14 anos de idade'
q_19_3_velha'q_19_3_v10408_Adolescentes e jovens de 15 a 17 anos de idade'
q_19_4_velha'q_19_4_v10410_Jovens de 18 a 29 anos de idade'
q_19_5_velha'q_19_5_v10411_Adultas(os) de 30 a 59 anos de idade'
q_19_6_velha'q_19_6_v10412_Idosas(os) (60 anos ou mais)'
q_20_velha'q_20_v12576_Em relação às vagas de SCFV da rede referenciada, informe se:'
q_21_1_velha'q_21_1_v10415_1_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?1 - Participação no planejamento das atividades que serão desenvolvidas'
q_21_2_velha'q_21_2_v10415_2_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?2 - Reuniões periódicas com a equipe técnica da rede referenciada'
q_21_3_velha'q_21_3_v10415_3_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?3 - Supervisão das(os) orientadoras(es) sociais'
q_21_4_velha'q_21_4_v10415_4_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?4 - Capacitação às(aos) orientadoras(es) sociais'
q_21_5_velha'q_21_5_v10415_5_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?5 - Acompanhamento periódico dos grupos'
q_21_6_velha'q_21_6_v10415_6_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?6 - Verificação da inclusão das(os) usuárias(os) no SCFV encaminhados pelo CRAS'
q_21_7_velha'q_21_7_v10415_7_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?7 - Encaminhamento das(os) usuárias(os) para o SCFV'
q_21_8_velha'q_21_8_v10415_8_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?8 - Avaliação e monitoramento das atividades realizadas'
q_21_9_velha'q_21_9_v10415_9_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?9 - Discussão conjunta dos casos em acompanhamento'
q_21_0_velha'q_21_0_v10415_0_Qual(is) dessas estratégias a(o) profissional de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada ?0 - Nenhum dos itens anteriores'
q_23_1_velha'q_23_1_v10417_1_Quais atividades são realizadas com familiares/responsáveis dos participantes dos grupos do SCFV?1 - Atendimentos coletivos periódicos'
q_23_2_velha'q_23_2_v10417_2_Quais atividades são realizadas com familiares/responsáveis dos participantes dos grupos do SCFV?2 - Atendimentos coletivos eventuais'
q_23_3_velha'q_23_3_v10417_3_Quais atividades são realizadas com familiares/responsáveis dos participantes dos grupos do SCFV?3 - Atendimentos individualizados periódicos'
q_23_4_velha'q_23_4_v10417_4_Quais atividades são realizadas com familiares/responsáveis dos participantes dos grupos do SCFV?4 - Atendimentos individualizados eventuais'
q_25_1_velha'q_25_1_v14314_volume mensal de indivíduos atendidos pelo Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas neste CRAS, no mês de agosto de 2018 - Total de indivíduos atendidos'
q_25_2_velha'q_25_2_v14356_volume mensal de indivíduos atendidos pelo Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas neste CRAS, no mês de agosto de 2018 - Total de IDOSAS(OS) atendidas(os)'
q_25_3_velha'q_25_3_v14357_volume mensal de indivíduos atendidos pelo Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas neste CRAS, no mês de agosto de 2018 - Total de PESSOAS COM DEFICIÊNCIA'
q_25_4_velha'q_25_4_v14358_ volume mensal de indivíduos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas neste CRAS, no mês de agosto de 2018 - Total de PESSOAS COM DEFICIÊNCIA entre 0 e 6 anos de idade'
q_26_1_velha'q_26_1_v14315_1_Este CRAS possui rede referenciada para oferta do Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas?1 - Sim, realizado por outra unidade pública'
q_26_2_velha'q_26_2_v14315_2_Este CRAS possui rede referenciada para oferta do Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas?2 - Sim, realizado por entidade conveniada'
q_26_3_velha'q_26_3_v14315_3_Este CRAS possui rede referenciada para oferta do Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas?3 - Sim, realizado por entidade não conveniada'
q_27_1_velha'q_27_1_v14318_volume mensal de indivíduos atendidos pelo Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas na rede referenciada a este CRAS, no mês de agosto de 2018  - TOTAL de indivíduos'
q_27_2_velha'q_27_2_v14361_ volume mensal de indivíduos atendidos pelo Serviço PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada a esse CRAS, no mês de agosto de 2018 - Total de IDOSAS(OS) atendidas(os)'
q_27_3_velha'q_27_3_v14360_ volume mensal de indivíduos atendidos pelo Serviço PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada a esse CRAS, no mês de agosto de 2018 - Total de PESSOAS COM DEFICIÊNCIA'
q_27_4_velha'q_27_4_v14359_volume mensal de atendidos pelo Serviço PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada a esse CRAS, no mês de agosto de 2018 - Total de PESSOAS COM DEFICIÊNCIA entre 0 e 6 anos de idade'
q_28_1_velha'q_28_1_v14363_1_ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:1 - Acolhida inicial no domicílio do usuário'
q_28_2_velha'q_28_2_v14363_2_ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:2 - Elaboração do Plano de Desenvolvimento do Usuário ? PDU'
q_28_3_velha'q_28_3_v14363_3_ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:3 - Visita domiciliar para orientação e suporte aos cuidados familiares no domicílio'
q_28_4_velha'q_28_4_v14363_4_ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:4 - Rodas de diálogos periódicas com a família no domicílio'
q_28_5_velha'q_28_5_v14363_5_ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:5 - Encontros territoriais periódicos com grupos multifamiliares'
q_28_6_velha'q_28_6_v14363_6_ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:6 - Ações de mobilização para a cidadania no território'
q_28_7_velha'q_28_7_v14363_7_ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:7 - Difusão e estímulo à participação das(os) usuárias(os) e suas famílias em conselhos de controle social'
q_28_8_velha'q_28_8_v14363_8_ações e atividades realizadas Serviço no Domicílio, oferta direta ou referenciada ao CRAS:8 - Reuniões e encontros periódicos com a rede local para a discussão de casos/situações das(os) usuárias(os) do Serviço'
q_28_9_velha'q_28_9_v14363_9_Informe as ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:9 - Encaminhamentos monitorados de usuários à rede socioassistencial e intersetorial'
q_28_99_velha'q_28_99_v14363_99_Informe as ações e atividades realizadas no âmbito do Serviço no Domicílio, oferta direta ou referenciada ao CRAS:10 - Outras atividades'
q_31_velha'q_31_v10422_Normalmente, com que frequência a equipe volante se desloca para realizar atendimento nestas áreas/comunidades?'
q_32_velha'q_32_v10423_O(s) território(s) atendido(s) por esta equipe volante estão localizados em:'
q_33_1_velha'q_33_1_v14321_1_Quais os públicos atendidos pela equipe volante?1 - Comunidades Rurais'
q_33_2_velha'q_33_2_v14321_2_Quais os públicos atendidos pela equipe volante?2 - Povos Indígenas'
q_33_3_velha'q_33_3_v14321_3_Quais os públicos atendidos pela equipe volante?3 - Comunidade quilombola'
q_33_4_velha'q_33_4_v14321_4_Quais os públicos atendidos pela equipe volante?4 - Comunidade ribeirinha'
q_33_5_velha'q_33_5_v14321_5_Quais os públicos atendidos pela equipe volante?5 - Povos ciganos'
q_33_6_velha'q_33_6_v14321_6_Quais os públicos atendidos pela equipe volante?6 - Povos de matriz africana e de terreiro'
q_33_7_velha'q_33_7_v14321_7_Quais os públicos atendidos pela equipe volante?7 - Assentamentos'
q_33_8_velha'q_33_8_v14321_8_Quais os públicos atendidos pela equipe volante?8 - Famílias beneficiárias do Programa Bolsa Família'
q_33_9_velha'q_33_9_v14321_9_Quais os públicos atendidos pela equipe volante?9 - Famílias beneficiárias do BPC'
q_33_10_velha'q_33_10_v14321_10_Quais os públicos atendidos pela equipe volante?10 - Famílias em descumprimento de condicionalidades do Programa Bolsa Família'
q_33_11_velha'q_33_11_v14321_11_Quais os públicos atendidos pela equipe volante?11 - Famílias com pessoas com deficiência'
q_33_99_velha'q_33_99_v14321_99_Quais os públicos atendidos pela equipe volante?99 - Outros'
q_34_velha'q_34_v10428_Nos territórios atendidos pela equipe volante, quantas famílias estão em acompanhamento familiar sistemático pelo PAIF (mês de referência ? agosto 2018)?'
q_35_1_velha'q_35_1_v12577_1_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:1 - Atendimento particularizado de famílias ou indivíduos'
q_35_2_velha'q_35_2_v12577_2_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:2 - Atendimento em atividade coletiva de caráter continuado (Oficinas do PAIF, SCFV)'
q_35_3_velha'q_35_3_v12577_3_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:3 - Atendimento em atividade coletiva de caráter não-continuado (Palestras)'
q_35_4_velha'q_35_4_v12577_4_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:4 - Cadastramento/Atualização cadastral'
q_35_5_velha'q_35_5_v12577_5_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:5 - Concessão de benefício eventual'
q_35_6_velha'q_35_6_v12577_6_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:6 - Ações para obtenção de Documentação Pessoal'
q_35_7_velha'q_35_7_v12577_7_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:7 - Encaminhamento para o BPC'
q_35_8_velha'q_35_8_v12577_8_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:8 - Encaminhamentos para rede setorial e intersetorial'
q_35_9_velha'q_35_9_v12577_9_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:9 - Visitas Domiciliares'
q_35_99_velha'q_35_99_v12577_99_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:99 - Outros'
q_35_0_velha'q_35_0_v12577_0_Indique os tipos de atendimento realizados pela equipe volante nas comunidades:0 - Nenhum dos itens acima'
q_37_1_velha'q_37_1_v10430_1_Quais são os Benefícios Eventuais concedidos neste CRAS?1 - Benefício Eventual em situação de morte'
q_37_2_velha'q_37_2_v10430_2_Quais são os Benefícios Eventuais concedidos neste CRAS?2 - Benefício Eventual em situação de natalidade'
q_37_3_velha'q_37_3_v10430_3_Quais são os Benefícios Eventuais concedidos neste CRAS?3 - Benefício Eventual em situação de calamidade'
q_37_4_velha'q_37_4_v10430_4_Quais são os Benefícios Eventuais concedidos neste CRAS?4 - Benefício Eventual em situação de vulnerabilidade social'
q_38_1_velha'q_38_1_v12582_1_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:1 - Auxílio relacionado à segurança alimentar (cesta básica, entre outros)'
q_38_2_velha'q_38_2_v12582_2_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:2 - Auxílio para deslocamento/passagens (vale-transporte)'
q_38_3_velha'q_38_3_v12582_3_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:3 - Auxílio/Inseção para retirada de documentação (inclui auxílio para retirada de fotos)'
q_38_4_velha'q_38_4_v12582_4_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:4 - Aluguel Social'
q_38_5_velha'q_38_5_v12582_5_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:5 - Material de Construção'
q_38_6_velha'q_38_6_v12582_6_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:6 - Pagamento/Isenção de contas de água e luz'
q_38_7_velha'q_38_7_v12582_7_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:7 - Auxílio gás'
q_38_8_velha'q_38_8_v12582_8_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:8 - Vestimentas/ Roupas'
q_38_9_velha'q_38_9_v12582_9_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:9 - Móveis e Eletrodomésticos'
q_38_99_velha'q_38_99_v12582_99_Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:99 - Outros'
q_39_1_velha'q_39_1_v12592_1_Com relação ao Benefício de Prestação Continuada, este CRAS faz:1 - Identificação de possíveis beneficiárias(os) do BPC'
q_39_2_velha'q_39_2_v12592_2_Com relação ao Benefício de Prestação Continuada, este CRAS faz:2 - Busca ativa de beneficiárias(os) do BPC para inclusão no CadÚnico'
q_39_3_velha'q_39_3_v12592_3_Com relação ao Benefício de Prestação Continuada, este CRAS faz:3 - Orientação/acompanhamento para inserção no BPC/ Encaminhamento ao INSS'
q_39_4_velha'q_39_4_v12592_4_Com relação ao Benefício de Prestação Continuada, este CRAS faz:4 - Acompanhamento das pessoas com deficiência do BPC com idade escolar que esteja fora da escola (incluindo BPC escola)'
q_39_5_velha'q_39_5_v12592_5_Com relação ao Benefício de Prestação Continuada, este CRAS faz:5 - Acompanhamento das pessoas com deficiência do BPC em idade produtiva para o mundo do trabalho'
q_39_6_velha'q_39_6_v12592_6_Com relação ao Benefício de Prestação Continuada, este CRAS faz:6 - Inserção das(os) Beneficiárias(os) nos serviços socioassistenciais (PAIF, SCFV, entre outros)'
q_39_99_velha'q_39_99_v12592_99_Com relação ao Benefício de Prestação Continuada, este CRAS faz:99 - Outros'
q_41_velha'q_41_v11891_Como é feito o registro das informações da entrevista no sistema do Cadastro Único?'
q_45_1_velha'q_45_1_v10439_1_Quais mecanismos de participação são utilizados nesta unidade?1 - Convida as(os) usuárias(os) para as reuniões de planejamento desta unidade'
q_45_2_velha'q_45_2_v10439_2_Quais mecanismos de participação são utilizados nesta unidade?2 - Apoio financeiro para a participação de reuniões de planejamento junto a esta unidade'
q_45_3_velha'q_45_3_v10439_3_Quais mecanismos de participação são utilizados nesta unidade?3 - Existência de representante de usuárias(os) junto à unidade'
q_45_4_velha'q_45_4_v10439_4_Quais mecanismos de participação são utilizados nesta unidade?4 - Eleição para representante de usuárias(os) junto à unidade'
q_45_5_velha'q_45_5_v10439_5_Quais mecanismos de participação são utilizados nesta unidade?5 - Estimula a formação de coletivo/comitê de usuárias(os)'
q_45_6_velha'q_45_6_v10439_6_Quais mecanismos de participação são utilizados nesta unidade?6 - Realiza questionário de satisfação/pesquisa de opinião (inclui urna de sugestões)'
q_45_7_velha'q_45_7_v10439_7_Quais mecanismos de participação são utilizados nesta unidade?7 - Realiza reuniões/entrevistas específicas a fim de coletar a demanda das(os) usuárias(os)'
q_45_8_velha'q_45_8_v10439_8_Quais mecanismos de participação são utilizados nesta unidade?8 - O CRAS possui ouvidoria estruturada'
q_45_9_velha'q_45_9_v10439_9_Quais mecanismos de participação são utilizados nesta unidade?9 - Os usuários escolhem os temas a serem trabalhados nas ações coletivas da unidade'
q_45_10_velha'q_45_10_v10439_10_Quais mecanismos de participação são utilizados nesta unidade?10 - Estimula a participação de usuárias(os) nos Conselhos de Assistência Social e/ou Conselho de Direitos'
q_45_99_velha'q_45_99_v10439_99_Quais mecanismos de participação são utilizados nesta unidade?99 - Outros'
q_48_1_velha'q_48_1_v10445_1_Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:1 - Povos Indígenas'
q_48_2_velha'q_48_2_v10445_2_Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:2 - Comunidade Quilombola'
q_48_3_velha'q_48_3_v10445_3_Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:3 - Comunidade Ribeirinha'
q_48_4_velha'q_48_4_v10445_4_Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:4 - Povos Ciganos'
q_48_5_velha'q_48_5_v10445_5_Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:5 - Povos de Matriz Africana e de terreiro'
q_48_6_velha'q_48_6_v10445_6_Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:6 - Extrativistas'
q_48_99_velha'q_48_99_v10445_99_Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:99 - Outros povos e comunidades tradicionais'
q_49_0_velha'q_49_0_v10448_0_Em 2018, este CRAS atendeu povos e comunidades tradicionais?0 - Não atendeu'
q_49_1_velha'q_49_1_v10448_1_Em 2018, este CRAS atendeu povos e comunidades tradicionais?1 - Sim, atendeu Povos Indígenas'
q_49_2_velha'q_49_2_v10448_2_Em 2018, este CRAS atendeu povos e comunidades tradicionais?2 - Sim, atendeu Comunidade Quilombola'
q_49_3_velha'q_49_3_v10448_3_Em 2018, este CRAS atendeu povos e comunidades tradicionais?3 - Sim, atendeu Comunidade Ribeirinha'
q_49_4_velha'q_49_4_v10448_4_Em 2018, este CRAS atendeu povos e comunidades tradicionais?4 - Sim, atendeu Povos Ciganos'
q_49_5_velha'q_49_5_v10448_5_Em 2018, este CRAS atendeu povos e comunidades tradicionais?5 - Sim, atendeu Povos de Matriz Africana e de terreiro'
q_49_6_velha'q_49_6_v10448_6_Em 2018, este CRAS atendeu povos e comunidades tradicionais?6 - Sim, atendeu extrativistas'
q_49_99_velha'q_49_99_v10448_99_Em 2018, este CRAS atendeu povos e comunidades tradicionais?99 - Sim, atendeu outros povos e comunidades tradicionais'
q_50_1_velha'q_50_1_v14325_Capacitação específica'
q_50_2_velha'q_50_2_v14328_Estratégias/Metodologias especificas de atendimento'
q_50_3_velha'q_50_3_v14329_Diagnóstico específico sobre as vulnerabilidades das comunidades atendidas'
q_50_4_velha'q_50_4_v14330_Profissionais com vivência e/ou experiências específicas junto às comunidades atendidas'
q_50_5_velha'q_50_5_v14331_Profissionais que sejam membros da comunidade/grupo tradicional'
q_50_6_velha'q_50_6_v14332_Articulação com órgãos públicos que possuem atuação específica junto às comunidade atendidas (Ex.: FUNAI; INCRA etc)'
q_50_7_velha'q_50_7_v14333_Articulação com entidades ou organizações da sociedade civil de representação ou defesa de direitos das comunidades atendidas'
q_53_1_1_velha'q_53_1_1_v10463_1_Unidades Públicas da Rede de Proteção Social Básica1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_1_2_velha'q_53_1_2_v10463_2_Unidades Públicas da Rede de Proteção Social Básica2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_1_3_velha'q_53_1_3_v10463_3_Unidades Públicas da Rede de Proteção Social Básica3 - Encaminha usuárias(os) para este CRAS'
q_53_1_4_velha'q_53_1_4_v10463_4_Unidades Públicas da Rede de Proteção Social Básica4 - Acompanha os encaminhamentos'
q_53_1_5_velha'q_53_1_5_v10463_5_Unidades Públicas da Rede de Proteção Social Básica5 - Realiza reuniões periódicas'
q_53_1_6_velha'q_53_1_6_v10463_6_Unidades Públicas da Rede de Proteção Social Básica6 - Troca informações'
q_53_1_7_velha'q_53_1_7_v10463_7_Unidades Públicas da Rede de Proteção Social Básica7 - Realiza estudos de caso em conjunto'
q_53_1_8_velha'q_53_1_8_v10463_8_Unidades Públicas da Rede de Proteção Social Básica8 - Desenvolve ativiades em parceria'
q_53_2_1_velha'q_53_2_1_v10464_1_Unidades Conveniadas da Rede de Proteção Social Básica1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_2_2_velha'q_53_2_2_v10464_2_Unidades Conveniadas da Rede de Proteção Social Básica2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_2_3_velha'q_53_2_3_v10464_3_Unidades Conveniadas da Rede de Proteção Social Básica3 - Encaminha usuárias(os) para este CRAS'
q_53_2_4_velha'q_53_2_4_v10464_4_Unidades Conveniadas da Rede de Proteção Social Básica4 - Acompanha os encaminhamentos'
q_53_2_5_velha'q_53_2_5_v10464_5_Unidades Conveniadas da Rede de Proteção Social Básica5 - Realiza reuniões periódicas'
q_53_2_6_velha'q_53_2_6_v10464_6_Unidades Conveniadas da Rede de Proteção Social Básica6 - Troca informações'
q_53_2_7_velha'q_53_2_7_v10464_7_Unidades Conveniadas da Rede de Proteção Social Básica7 - Realiza estudos de caso em conjunto'
q_53_2_8_velha'q_53_2_8_v10464_8_Unidades Conveniadas da Rede de Proteção Social Básica8 - Desenvolve ativiades em parceria'
q_53_3_1_velha'q_53_3_1_v10465_1_Unidades da Rede de Proteção Social Especial1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_3_2_velha'q_53_3_2_v10465_2_Unidades da Rede de Proteção Social Especial2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_3_3_velha'q_53_3_3_v10465_3_Unidades da Rede de Proteção Social Especial3 - Encaminha usuárias(os) para este CRAS'
q_53_3_4_velha'q_53_3_4_v10465_4_Unidades da Rede de Proteção Social Especial4 - Acompanha os encaminhamentos'
q_53_3_5_velha'q_53_3_5_v10465_5_Unidades da Rede de Proteção Social Especial5 - Realiza reuniões periódicas'
q_53_3_6_velha'q_53_3_6_v10465_6_Unidades da Rede de Proteção Social Especial6 - Troca informações'
q_53_3_7_velha'q_53_3_7_v10465_7_Unidades da Rede de Proteção Social Especial7 - Realiza estudos de caso em conjunto'
q_53_3_8_velha'q_53_3_8_v10465_8_Unidades da Rede de Proteção Social Especial8 - Desenvolve ativiades em parceria'
q_53_4_1_velha'q_53_4_1_v10466_1_Serviços de Saúde1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_4_2_velha'q_53_4_2_v10466_2_Serviços de Saúde2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_4_3_velha'q_53_4_3_v10466_3_Serviços de Saúde3 - Encaminha usuárias(os) para este CRAS'
q_53_4_4_velha'q_53_4_4_v10466_4_Serviços de Saúde4 - Acompanha os encaminhamentos'
q_53_4_5_velha'q_53_4_5_v10466_5_Serviços de Saúde5 - Realiza reuniões periódicas'
q_53_4_6_velha'q_53_4_6_v10466_6_Serviços de Saúde6 - Troca informações'
q_53_4_7_velha'q_53_4_7_v10466_7_Serviços de Saúde7 - Realiza estudos de caso em conjunto'
q_53_4_8_velha'q_53_4_8_v10466_8_Serviços de Saúde8 - Desenvolve ativiades em parceria'
q_53_5_1_velha'q_53_5_1_v10467_1_Serviços de Educação1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_5_2_velha'q_53_5_2_v10467_2_Serviços de Educação2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_5_3_velha'q_53_5_3_v10467_3_Serviços de Educação3 - Encaminha usuárias(os) para este CRAS'
q_53_5_4_velha'q_53_5_4_v10467_4_Serviços de Educação4 - Acompanha os encaminhamentos'
q_53_5_5_velha'q_53_5_5_v10467_5_Serviços de Educação5 - Realiza reuniões periódicas'
q_53_5_6_velha'q_53_5_6_v10467_6_Serviços de Educação6 - Troca informações'
q_53_5_7_velha'q_53_5_7_v10467_7_Serviços de Educação7 - Realiza estudos de caso em conjunto'
q_53_5_8_velha'q_53_5_8_v10467_8_Serviços de Educação8 - Desenvolve ativiades em parceria'
q_53_6_1_velha'q_53_6_1_v10468_1_Órgãos/Serviços relacionados a Trabalho e Emprego1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_6_2_velha'q_53_6_2_v10468_2_Órgãos/Serviços relacionados a Trabalho e Emprego2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_6_3_velha'q_53_6_3_v10468_3_Órgãos/Serviços relacionados a Trabalho e Emprego3 - Encaminha usuárias(os) para este CRAS'
q_53_6_4_velha'q_53_6_4_v10468_4_Órgãos/Serviços relacionados a Trabalho e Emprego4 - Acompanha os encaminhamentos'
q_53_6_5_velha'q_53_6_5_v10468_5_Órgãos/Serviços relacionados a Trabalho e Emprego5 - Realiza reuniões periódicas'
q_53_6_6_velha'q_53_6_6_v10468_6_Órgãos/Serviços relacionados a Trabalho e Emprego6 - Troca informações'
q_53_6_7_velha'q_53_6_7_v10468_7_Órgãos/Serviços relacionados a Trabalho e Emprego7 - Realiza estudos de caso em conjunto'
q_53_6_8_velha'q_53_6_8_v10468_8_Órgãos/Serviços relacionados a Trabalho e Emprego8 - Desenvolve ativiades em parceria'
q_53_7_1_velha'q_53_7_1_v10477_1_Movimentos Sociais locais/Associações Comunitárias1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_7_2_velha'q_53_7_2_v10477_2_Movimentos Sociais locais/Associações Comunitárias2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_7_3_velha'q_53_7_3_v10477_3_Movimentos Sociais locais/Associações Comunitárias3 - Encaminha usuárias(os) para este CRAS'
q_53_7_4_velha'q_53_7_4_v10477_4_Movimentos Sociais locais/Associações Comunitárias4 - Acompanha os encaminhamentos'
q_53_7_5_velha'q_53_7_5_v10477_5_Movimentos Sociais locais/Associações Comunitárias5 - Realiza reuniões periódicas'
q_53_7_6_velha'q_53_7_6_v10477_6_Movimentos Sociais locais/Associações Comunitárias6 - Troca informações'
q_53_7_7_velha'q_53_7_7_v10477_7_Movimentos Sociais locais/Associações Comunitárias7 - Realiza estudos de caso em conjunto'
q_53_7_8_velha'q_53_7_8_v10477_8_Movimentos Sociais locais/Associações Comunitárias8 - Desenvolve ativiades em parceria'
q_53_8_1_velha'q_53_8_1_v12605_1_Conselho Tutelar1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_8_2_velha'q_53_8_2_v12605_2_Conselho Tutelar2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_8_3_velha'q_53_8_3_v12605_3_Conselho Tutelar3 - Encaminha usuárias(os) para este CRAS'
q_53_8_4_velha'q_53_8_4_v12605_4_Conselho Tutelar4 - Acompanha os encaminhamentos'
q_53_8_5_velha'q_53_8_5_v12605_5_Conselho Tutelar5 - Realiza reuniões periódicas'
q_53_8_6_velha'q_53_8_6_v12605_6_Conselho Tutelar6 - Troca informações'
q_53_8_7_velha'q_53_8_7_v12605_7_Conselho Tutelar7 - Realiza estudos de caso em conjunto'
q_53_8_8_velha'q_53_8_8_v12605_8_Conselho Tutelar8 - Desenvolve ativiades em parceria'
q_53_9_1_velha'q_53_9_1_v12606_1_Judiciário1 - Possui dados de localização (endereço, telefone, etc.)'
q_53_9_2_velha'q_53_9_2_v12606_2_Judiciário2 - Recebe usuárias(os) encaminhados por este CRAS'
q_53_9_3_velha'q_53_9_3_v12606_3_Judiciário3 - Encaminha usuárias(os) para este CRAS'
q_53_9_4_velha'q_53_9_4_v12606_4_Judiciário4 - Acompanha os encaminhamentos'
q_53_9_5_velha'q_53_9_5_v12606_5_Judiciário5 - Realiza reuniões periódicas'
q_53_9_6_velha'q_53_9_6_v12606_6_Judiciário6 - Troca informações'
q_53_9_7_velha'q_53_9_7_v12606_7_Judiciário7 - Realiza estudos de caso em conjunto'
q_53_9_8_velha'q_53_9_8_v12606_8_Judiciário8 - Desenvolve ativiades em parceria'
q_54_1_velha'q_54_1_v12609_1_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?1 - Deficiência'
q_54_2_velha'q_54_2_v12609_2_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?2 - Gênero'
q_54_3_velha'q_54_3_v12609_3_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?3 - População em situação de rua'
q_54_4_velha'q_54_4_v12609_4_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?4 - População LGBT, orientação sexual e identidade de gênero'
q_54_5_velha'q_54_5_v12609_5_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?5 - Álcool e outras drogas'
q_54_6_velha'q_54_6_v12609_6_Nos últimos 12 meses, a Unidade proporcionou/facilitou a participação dos seus profissionais em capacitação?6 - Diversidade étnico-racial (questão racial, comunidades indígenas, povos e comunidades tradicionais etc)'
q_54_7_velha'q_54_7_v12609_7_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?7 - Violências e violações de direitos'
q_54_8_velha'q_54_8_v12609_8_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?8 - Trabalho Infantil'
q_54_9_velha'q_54_9_v12609_9_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?9 - Criança e adolescente'
q_54_10_velha'q_54_10_v12609_10_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?10 - Juventude'
q_54_11_velha'q_54_11_v12609_11_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?11 - Envelhecimento'
q_54_12_velha'q_54_12_v12609_12_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?12 - Sistema Socioeducativo/Medida Socioeducativa/SINASE'
q_54_13_velha'q_54_13_v12609_13_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?13 - Migração'
q_54_14_velha'q_54_14_v12609_14_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?14 - Mundo do Trabalho'
q_54_99_velha'q_54_99_v12609_99_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?99 - Outros'
q_54_0_velha'q_54_0_v12609_0_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas?0 - Não proporcionou/facilitou a participação dos profissionais'
.	










 
















