
*****recodificar

*q5*********************************

compute q6_1_velha = q6_1. 
compute q6_2_velha = q6_2. 
compute q6_3_velha = q6_3. 
compute q6_4_velha = q6_4. 
compute q6_5_velha = q6_5. 
compute q6_6_velha = q6_6. 
compute q6_7_velha = q6_7. 
compute q6_8_velha = q6_8. 
compute q6_9_velha = q6_9. 
compute q6_10_velha = q6_10. 
compute q6_11_velha = q6_11. 
compute q6_12_velha = q6_12. 
compute q6_13_velha = q6_13. 
compute q6_99_velha = q6_99. 
compute q7_1_velha = q7_1. 
compute q7_2_velha = q7_2. 
compute q7_3_velha = q7_3. 
compute q7_4_velha = q7_4. 
compute q7_5_velha = q7_5. 
compute q7_6_velha = q7_6. 
compute q7_7_velha = q7_7. 
compute q7_8_velha = q7_8. 
compute q7_9_velha = q7_9. 
compute q7_10_velha = q7_10. 
compute q7_11_velha = q7_11. 
compute q7_12_velha = q7_12. 
execute.
 


DO IF (q5=0).
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
RECODE q6_99 (ELSE=SYSMIS).
RECODE q7_1  (ELSE=SYSMIS).
RECODE q7_2  (ELSE=SYSMIS).
RECODE q7_3  (ELSE=SYSMIS).
RECODE q7_4 (ELSE=SYSMIS).
RECODE q7_5 (ELSE=SYSMIS).
RECODE q7_6 (ELSE=SYSMIS).
RECODE q7_7 (ELSE=SYSMIS).
RECODE q7_8 (ELSE=SYSMIS).
RECODE q7_9 (ELSE=SYSMIS).
RECODE q7_10 (ELSE=SYSMIS).
RECODE q7_11 (ELSE=SYSMIS).
RECODE q7_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q7*****************

DO IF (q7_1=1).
RECODE q7_2 (ELSE=SYSMIS).
RECODE q7_3 (ELSE=SYSMIS).
RECODE q7_4 (ELSE=SYSMIS).
RECODE q7_5 (ELSE=SYSMIS).
RECODE q7_6 (ELSE=SYSMIS).
RECODE q7_7 (ELSE=SYSMIS).
RECODE q7_8 (ELSE=SYSMIS).
RECODE q7_9 (ELSE=SYSMIS).
RECODE q7_10(ELSE=SYSMIS).
RECODE q7_11 (ELSE=SYSMIS).
RECODE q7_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q13***************************************************************************************************************

RECODE q13_98 (1=1) (0=SYSMIS) (SYSMIS=SYSMIS).
EXECUTE.

compute q13_velha = q13 .
compute q13_1_1_velha = q13_1_1.
compute q13_1_2_velha = q13_1_2.
compute q13_1_3_velha = q13_1_3.
compute q13_2_1_velha = q13_2_1.
compute q13_2_2_velha = q13_2_2.
compute q13_2_3_velha = q13_2_3.
execute. 

DO IF (q13_98=1).
RECODE q13 (ELSE=SYSMIS).
RECODE q13_1_1 (ELSE=SYSMIS).
RECODE q13_1_2 (ELSE=SYSMIS).
RECODE q13_1_3 (ELSE=SYSMIS).
RECODE q13_2_1 (ELSE=SYSMIS).
RECODE q13_2_2 (ELSE=SYSMIS).
RECODE q13_2_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

compute q13_testesoma=  SUM (q13_1_1,q13_1_2,q13_1_3,q13_2_1,q13_2_2,q13_2_3).
execute. 

compute q13= q13_testesoma.
execute. 

DO IF (MISSING(q14)).
RECODE q13_98 (1=1).
END IF.
EXECUTE.

DELETE VARIABLES q13_testesoma.

****q14*******************************************

compute q14_1_velha = q14_1. 
compute q14_2_velha = q14_2. 
compute q14_3_velha = q14_3. 
compute q14_4_velha = q14_4. 
compute q14_5_velha = q14_5. 
compute q14_6_velha = q14_6. 
compute q14_7_velha = q14_7. 
compute q14_8_velha = q14_8. 
compute q14_9_velha = q14_9. 
compute q14_10_velha = q14_10. 
compute q14_11_velha = q14_11. 
compute q14_12_velha = q14_12. 
compute q14_13_velha = q14_13. 
compute q14_14_velha = q14_14. 
compute q14_15_velha = q14_15. 
compute q14_16_velha = q14_16. 
compute q14_17_velha = q14_17. 
compute q14_18_velha = q14_18. 
compute q14_19_velha = q14_19. 
compute q14_20_velha = q14_20. 
compute q14_21_velha = q14_21. 
compute q14_22_velha = q14_22. 
compute q14_23_velha = q14_23. 
compute q14_24_velha = q14_24. 
compute q14_25_velha = q14_25. 
compute q14_26_velha = q14_26. 
compute q14_27_velha = q14_27. 
compute q14_99_velha = q14_99. 
execute. 


DO IF (q14_1=1).
RECODE q14_2 (ELSE=SYSMIS).
RECODE q14_3 (ELSE=SYSMIS).
RECODE q14_4 (ELSE=SYSMIS).
RECODE q14_5 (ELSE=SYSMIS).
RECODE q14_6 (ELSE=SYSMIS).
RECODE q14_7 (ELSE=SYSMIS).
RECODE q14_8 (ELSE=SYSMIS).
RECODE q14_9 (ELSE=SYSMIS).
RECODE q14_10 (ELSE=SYSMIS).
RECODE q14_11 (ELSE=SYSMIS).
RECODE q14_12 (ELSE=SYSMIS).
RECODE q14_13 (ELSE=SYSMIS).
RECODE q14_14 (ELSE=SYSMIS).
RECODE q14_15 (ELSE=SYSMIS).
RECODE q14_16 (ELSE=SYSMIS).
RECODE q14_17 (ELSE=SYSMIS).
RECODE q14_18 (ELSE=SYSMIS).
RECODE q14_19 (ELSE=SYSMIS).
RECODE q14_20 (ELSE=SYSMIS).
RECODE q14_21 (ELSE=SYSMIS).
RECODE q14_22 (ELSE=SYSMIS).
RECODE q14_23 (ELSE=SYSMIS).
RECODE q14_24 (ELSE=SYSMIS).
RECODE q14_25 (ELSE=SYSMIS).
RECODE q14_26 (ELSE=SYSMIS).
RECODE q14_27 (ELSE=SYSMIS).
RECODE q14_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q15*******************************************

compute q16_1_velha = q16_1. 
compute q16_2_velha = q16_2. 
compute q16_3_velha =q16_3. 
compute q16_4_velha = q16_4. 
compute q16_5_velha = q16_5. 
compute q16_6_velha = q16_6. 
execute. 

DO IF (q15=0).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_5 (ELSE=SYSMIS).
RECODE q16_6 (ELSE=SYSMIS).
END IF.
EXECUTE.



*****q17**************

compute q17_1_velha = q17_1. 
compute q17_2_velha = q17_2. 
compute q17_3_velha =q17_3. 
compute q17_0_velha = q17_0. 
execute. 


DO IF (q17_0=1).
RECODE q17_1 (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q22*************************************************

compute q23_1_velha = q23_1. 
compute q23_2_velha = q23_2. 
compute q23_3_velha =q23_3. 
compute q23_4_velha = q23_4. 
execute. 

DO IF (q22=0).
RECODE q23_1 (ELSE=SYSMIS).
RECODE q23_2(ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


****24*************************************************

compute q24_1_velha = q24_1. 
compute q24_2_velha = q24_2. 
compute q24_3_velha =q24_3. 
compute q24_0_velha = q24_0. 
compute q25_velha = q25. 
execute. 

DO IF (q24_0=1).
RECODE q24_1 (ELSE=SYSMIS).
RECODE q24_2(ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q25 (ELSE=SYSMIS).
END IF.
EXECUTE.

****26*************************************************

compute q27_velha = q27. 
compute q28_1_velha =q28_1. 
compute q28_2_velha = q28_2. 
compute q28_3_velha = q28_3. 
compute q28_4_velha =q28_4. 
compute q28_5_velha =q28_5. 
compute q28_6_velha = q28_6. 
compute q28_7_velha =q28_7. 
compute q28_99_velha = q28_99. 
compute q29_velha = q29. 
compute q30_1_velha =q30_1. 
compute q30_2_velha = q30_2. 
compute q30_3_velha = q30_3. 
compute q30_4_velha =q30_4. 
compute q30_5_velha =q30_5. 
compute q30_6_velha = q30_6. 
compute q30_7_velha =q30_7. 
compute q30_8_velha = q30_8. 
compute q30_99_velha = q30_99. 
execute.

DO IF (q26=0).
RECODE q27 (ELSE=SYSMIS).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
RECODE q28_6 (ELSE=SYSMIS).
RECODE q28_7 (ELSE=SYSMIS).
RECODE q28_99 (ELSE=SYSMIS).
RECODE q29 (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_6 (ELSE=SYSMIS).
RECODE q30_7 (ELSE=SYSMIS).
RECODE q30_8 (ELSE=SYSMIS).
RECODE q30_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****31*************************************************

compute q32_1_velha =q32_1. 
compute q32_2_velha = q32_2. 
compute q32_3_velha = q32_3. 
compute q32_4_velha =q32_4. 
compute q33_1_velha =q33_1. 
compute q33_2_velha = q33_2. 
compute q33_3_velha = q33_3. 
compute q33_4_velha =q33_4. 
compute q33_5_velha =q33_5. 
compute q33_6_velha = q33_6. 
compute q33_7_velha =q33_7. 
compute q33_8_velha = q33_8. 
compute q33_9_velha = q33_9. 
compute q33_99_velha = q33_99. 
execute.

DO IF (q31=0).
RECODE q32_1 (ELSE=SYSMIS).
RECODE q32_2 (ELSE=SYSMIS).
RECODE q32_3 (ELSE=SYSMIS).
RECODE q32_4 (ELSE=SYSMIS).
RECODE q33_1 (ELSE=SYSMIS).
RECODE q33_2 (ELSE=SYSMIS).
RECODE q33_3 (ELSE=SYSMIS).
RECODE q33_4 (ELSE=SYSMIS).
RECODE q33_5 (ELSE=SYSMIS).
RECODE q33_6 (ELSE=SYSMIS).
RECODE q33_7 (ELSE=SYSMIS).
RECODE q33_8 (ELSE=SYSMIS).
RECODE q33_9 (ELSE=SYSMIS).
RECODE q33_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



****34*************************************************

compute q34_1_velha =q34_1. 
compute q34_2_velha = q34_2. 
compute q34_3_velha = q34_3. 
compute q34_4_velha =q34_4. 
compute q34_5_velha =q34_5. 
compute q34_6_velha = q34_6. 
compute q34_99_velha =q34_99. 
compute q34_0_velha = q34_0. 
execute.

DO IF (q34_0=1   ).
RECODE q34_1 (ELSE=SYSMIS).
RECODE q34_2 (ELSE=SYSMIS).
RECODE q34_3 (ELSE=SYSMIS).
RECODE q34_4 (ELSE=SYSMIS).
RECODE q34_5 (ELSE=SYSMIS).
RECODE q34_6 (ELSE=SYSMIS).
RECODE q34_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****35*************************************************

compute q36_98_velha =q36_98. 
compute q36_1_velha =q36_1. 
compute q36_2_velha = q36_2. 
compute q36_3_velha = q36_3. 
compute q37_1_velha =q37_1. 
compute q37_1_1_velha =q37_1_1. 
compute q37_2_velha = q37_2. 
compute q37_2_1_velha = q37_2_1. 
compute q38_1_velha =q38_1. 
compute q38_2_velha = q38_2. 
compute q38_3_velha = q38_3. 
compute q38_99_velha = q38_99. 
compute q38_0_velha = q38_0. 
compute q39_1_velha =q39_1. 
compute q39_2_velha = q39_2. 
compute q39_3_velha = q39_3. 
compute q39_4_velha = q39_4. 
compute q39_5_velha = q39_5. 
compute q39_99_velha = q39_99. 
execute.

DO IF (q35=0   ).
RECODE q36_98 (ELSE=SYSMIS).
RECODE  q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE  q36_3 (ELSE=SYSMIS).
RECODE q37_1 (ELSE=SYSMIS).
RECODE q37_1_1 (ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_2_1 (ELSE=SYSMIS).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2 (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_99 (ELSE=SYSMIS).
RECODE q38_0 (ELSE=SYSMIS).
RECODE q39_1 (ELSE=SYSMIS).
RECODE q39_2 (ELSE=SYSMIS).
RECODE q39_3 (ELSE=SYSMIS).
RECODE q39_4 (ELSE=SYSMIS).
RECODE q39_5 (ELSE=SYSMIS).
RECODE q39_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


****38*************************************************

DO IF (q38_0=1  ).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2 (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****40*************************************************

compute q40_0_velha = q40_0. 
compute q40_1_velha =q40_1. 
compute q40_2_velha = q40_2. 
compute q40_3_velha = q40_3. 
compute q40_4_velha = q40_4. 
compute q40_5_velha = q40_5. 
compute q40_6_velha = q40_6. 
compute q40_7_velha =q40_7. 
compute q40_8_velha = q40_8. 
compute q40_9_velha = q40_9. 
compute q40_10_velha = q40_10. 
compute q40_11_velha = q40_11. 
execute.

DO IF (q40_0=1  ).
RECODE q40_1 (ELSE=SYSMIS).
RECODE q40_2 (ELSE=SYSMIS).
RECODE q40_3 (ELSE=SYSMIS).
RECODE q40_4 (ELSE=SYSMIS).
RECODE q40_5 (ELSE=SYSMIS).
RECODE q40_6 (ELSE=SYSMIS).
RECODE q40_7 (ELSE=SYSMIS).
RECODE q40_8 (ELSE=SYSMIS).
RECODE q40_9 (ELSE=SYSMIS).
RECODE q40_10 (ELSE=SYSMIS).
RECODE q40_11 (ELSE=SYSMIS).
END IF.
EXECUTE.

****41*************************************************

compute q41_0_velha = q41_0. 
compute q41_1_velha =q41_1. 
compute q41_2_velha = q41_2. 
compute q41_3_velha = q41_3. 
compute q41_4_velha = q41_4. 
compute q41_5_velha = q41_5. 
compute q41_6_velha = q41_6. 
compute q41_7_velha =q41_7. 
compute q41_8_velha = q41_8. 
compute q41_9_velha = q41_9. 
compute q41_10_velha = q41_10. 
compute q41_99_velha = q41_99. 
execute.

DO IF (q41_0=1  ).
RECODE q41_1 (ELSE=SYSMIS).
RECODE q41_2 (ELSE=SYSMIS).
RECODE q41_3 (ELSE=SYSMIS).
RECODE q41_4 (ELSE=SYSMIS).
RECODE q41_5 (ELSE=SYSMIS).
RECODE q41_6 (ELSE=SYSMIS).
RECODE q41_7 (ELSE=SYSMIS).
RECODE q41_8 (ELSE=SYSMIS).
RECODE q41_9 (ELSE=SYSMIS).
RECODE q41_10 (ELSE=SYSMIS).
RECODE q41_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****45*************************************************

compute q46_1_velha =q46_1. 
compute q46_2_velha = q46_2. 
compute q46_3_velha = q46_3. 
compute q46_4_velha = q46_4. 
compute q46_5_velha = q46_5. 
compute q46_6_velha = q46_6. 
compute q46_99_velha = q46_99. 
execute.

DO IF (q45=0  ).
RECODE q46_1 (ELSE=SYSMIS).
RECODE q46_2 (ELSE=SYSMIS).
RECODE q46_3 (ELSE=SYSMIS).
RECODE q46_4 (ELSE=SYSMIS).
RECODE q46_5 (ELSE=SYSMIS).
RECODE q46_6 (ELSE=SYSMIS).
RECODE q46_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****47*************************************************

compute q47_0_velha = q47_0. 
compute q47_1_velha =q47_1. 
compute q47_2_velha = q47_2. 
compute q47_3_velha = q47_3. 
compute q47_4_velha = q47_4. 
compute q47_5_velha = q47_5. 
compute q47_6_velha = q47_6. 
compute q48_1_velha =q48_1. 
compute q48_2_velha = q48_2. 
compute q48_3_velha = q48_3. 
compute q48_99_velha = q48_99. 
compute q49_1_velha =q49_1. 
compute q49_2_velha = q49_2. 
compute q49_3_velha = q49_3. 
compute q49_4_velha = q49_4. 
compute q49_5_velha = q49_5. 
compute q49_6_velha = q49_6. 
compute q49_7_velha = q49_7. 
execute.

DO IF (q47_0=1  ).
RECODE q47_1 (ELSE=SYSMIS).
RECODE q47_2 (ELSE=SYSMIS).
RECODE q47_3 (ELSE=SYSMIS).
RECODE q47_4 (ELSE=SYSMIS).
RECODE q47_5 (ELSE=SYSMIS).
RECODE q47_6 (ELSE=SYSMIS).
RECODE q48_1 (ELSE=SYSMIS).
RECODE q48_2 (ELSE=SYSMIS).
RECODE q48_3 (ELSE=SYSMIS).
RECODE q48_99 (ELSE=SYSMIS).
RECODE q49_1 (ELSE=SYSMIS).
RECODE q49_2 (ELSE=SYSMIS).
RECODE q49_3 (ELSE=SYSMIS).
RECODE q49_4 (ELSE=SYSMIS).
RECODE q49_5 (ELSE=SYSMIS).
RECODE q49_6 (ELSE=SYSMIS).
RECODE q49_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

********q50*******************************************************************************************************************************************

compute q50_1_0_velha =q50_1_0. 
compute q50_1_1_velha =q50_1_1. 
compute q50_1_2_velha = q50_1_2. 
compute q50_1_3_velha = q50_1_3. 
compute q50_1_4_velha =q50_1_4. 
compute q50_1_5_velha =q50_1_5. 
compute q50_1_6_velha = q50_1_6. 
compute q50_1_7_velha =q50_1_7. 
compute q50_1_8_velha =q50_1_8. 
compute q50_1_9_velha =q50_1_9. 
compute q50_2_0_velha =q50_2_0. 
compute q50_2_1_velha =q50_2_1. 
compute q50_2_2_velha = q50_2_2. 
compute q50_2_3_velha = q50_2_3. 
compute q50_2_4_velha =q50_2_4. 
compute q50_2_5_velha =q50_2_5. 
compute q50_2_6_velha = q50_2_6. 
compute q50_2_7_velha =q50_2_7. 
compute q50_2_8_velha =q50_2_8. 
compute q50_2_9_velha =q50_2_9. 
compute q50_3_0_velha =q50_3_0. 
compute q50_3_1_velha =q50_3_1. 
compute q50_3_2_velha = q50_3_2. 
compute q50_3_3_velha = q50_3_3. 
compute q50_3_4_velha =q50_3_4. 
compute q50_3_5_velha =q50_3_5. 
compute q50_3_6_velha = q50_3_6. 
compute q50_3_7_velha =q50_3_7. 
compute q50_3_8_velha =q50_3_8. 
compute q50_3_9_velha =q50_3_9. 
compute q50_4_0_velha =q50_4_0. 
compute q50_4_1_velha =q50_4_1. 
compute q50_4_2_velha = q50_4_2. 
compute q50_4_3_velha = q50_4_3. 
compute q50_4_4_velha =q50_4_4. 
compute q50_4_5_velha =q50_4_5. 
compute q50_4_6_velha = q50_4_6. 
compute q50_4_7_velha =q50_4_7. 
compute q50_4_8_velha =q50_4_8. 
compute q50_4_9_velha =q50_4_9. 
compute q50_5_0_velha =q50_5_0. 
compute q50_5_1_velha =q50_5_1. 
compute q50_5_2_velha = q50_5_2. 
compute q50_5_3_velha = q50_5_3. 
compute q50_5_4_velha =q50_5_4. 
compute q50_5_5_velha =q50_5_5. 
compute q50_5_6_velha = q50_5_6. 
compute q50_5_7_velha =q50_5_7. 
compute q50_5_8_velha =q50_5_8. 
compute q50_5_9_velha =q50_5_9. 
compute q50_6_0_velha =q50_6_0. 
compute q50_6_1_velha =q50_6_1. 
compute q50_6_2_velha = q50_6_2. 
compute q50_6_3_velha = q50_6_3. 
compute q50_6_4_velha =q50_6_4. 
compute q50_6_5_velha =q50_6_5. 
compute q50_6_6_velha = q50_6_6. 
compute q50_6_7_velha =q50_6_7. 
compute q50_6_8_velha =q50_6_8. 
compute q50_6_9_velha =q50_6_9. 
compute q50_7_0_velha =q50_7_0. 
compute q50_7_1_velha =q50_7_1. 
compute q50_7_2_velha = q50_7_2. 
compute q50_7_3_velha = q50_7_3. 
compute q50_7_4_velha =q50_7_4. 
compute q50_7_5_velha =q50_7_5. 
compute q50_7_6_velha = q50_7_6. 
compute q50_7_7_velha =q50_7_7. 
compute q50_7_8_velha =q50_7_8. 
compute q50_7_9_velha =q50_7_9. 
compute q50_8_0_velha =q50_8_0. 
compute q50_8_1_velha =q50_8_1. 
compute q50_8_2_velha = q50_8_2. 
compute q50_8_3_velha = q50_8_3. 
compute q50_8_4_velha =q50_8_4. 
compute q50_8_5_velha =q50_8_5. 
compute q50_8_6_velha = q50_8_6. 
compute q50_8_7_velha =q50_8_7. 
compute q50_8_8_velha =q50_8_8. 
compute q50_8_9_velha =q50_8_9. 
compute q50_9_0_velha =q50_9_0. 
compute q50_9_1_velha =q50_9_1. 
compute q50_9_2_velha = q50_9_2. 
compute q50_9_3_velha = q50_9_3. 
compute q50_9_4_velha =q50_9_4. 
compute q50_9_5_velha =q50_9_5. 
compute q50_9_6_velha = q50_9_6. 
compute q50_9_7_velha =q50_9_7. 
compute q50_9_8_velha =q50_9_8. 
compute q50_9_9_velha =q50_9_9. 
compute q50_10_0_velha =q50_10_0. 
compute q50_10_1_velha =q50_10_1. 
compute q50_10_2_velha = q50_10_2. 
compute q50_10_3_velha = q50_10_3. 
compute q50_10_4_velha =q50_10_4. 
compute q50_10_5_velha =q50_10_5. 
compute q50_10_6_velha = q50_10_6. 
compute q50_10_7_velha =q50_10_7. 
compute q50_10_8_velha =q50_10_8. 
compute q50_10_9_velha =q50_10_9. 
execute. 


DO IF (q50_1_0=1 | q50_1_9=1).
RECODE q50_1_1 (ELSE=SYSMIS).
RECODE q50_1_2 (ELSE=SYSMIS).
RECODE q50_1_3 (ELSE=SYSMIS).
RECODE q50_1_4 (ELSE=SYSMIS).
RECODE q50_1_5 (ELSE=SYSMIS).
RECODE q50_1_6(ELSE=SYSMIS).
RECODE q50_1_7 (ELSE=SYSMIS).
RECODE q50_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q50_2_0=1 | q50_2_9=1).
RECODE q50_2_1 (ELSE=SYSMIS).
RECODE q50_2_2 (ELSE=SYSMIS).
RECODE q50_2_3 (ELSE=SYSMIS).
RECODE q50_2_4 (ELSE=SYSMIS).
RECODE q50_2_5 (ELSE=SYSMIS).
RECODE q50_2_6(ELSE=SYSMIS).
RECODE q50_2_7 (ELSE=SYSMIS).
RECODE q50_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q50_3_0=1 | q50_3_9=1).
RECODE q50_3_1 (ELSE=SYSMIS).
RECODE q50_3_2 (ELSE=SYSMIS).
RECODE q50_3_3 (ELSE=SYSMIS).
RECODE q50_3_4 (ELSE=SYSMIS).
RECODE q50_3_5 (ELSE=SYSMIS).
RECODE q50_3_6(ELSE=SYSMIS).
RECODE q50_3_7 (ELSE=SYSMIS).
RECODE q50_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q50_4_0=1 | q50_4_9=1).
RECODE q50_4_1 (ELSE=SYSMIS).
RECODE q50_4_2 (ELSE=SYSMIS).
RECODE q50_4_3 (ELSE=SYSMIS).
RECODE q50_4_4 (ELSE=SYSMIS).
RECODE q50_4_5 (ELSE=SYSMIS).
RECODE q50_4_6(ELSE=SYSMIS).
RECODE q50_4_7 (ELSE=SYSMIS).
RECODE q50_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q50_5_0=1 | q50_5_9=1).
RECODE q50_5_1 (ELSE=SYSMIS).
RECODE q50_5_2 (ELSE=SYSMIS).
RECODE q50_5_3 (ELSE=SYSMIS).
RECODE q50_5_4 (ELSE=SYSMIS).
RECODE q50_5_5 (ELSE=SYSMIS).
RECODE q50_5_6(ELSE=SYSMIS).
RECODE q50_5_7 (ELSE=SYSMIS).
RECODE q50_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q50_6_0=1 | q50_6_9=1).
RECODE q50_6_1 (ELSE=SYSMIS).
RECODE q50_6_2 (ELSE=SYSMIS).
RECODE q50_6_3 (ELSE=SYSMIS).
RECODE q50_6_4 (ELSE=SYSMIS).
RECODE q50_6_5 (ELSE=SYSMIS).
RECODE q50_6_6(ELSE=SYSMIS).
RECODE q50_6_7 (ELSE=SYSMIS).
RECODE q50_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q50_7_0=1 | q50_7_9=1).
RECODE q50_7_1 (ELSE=SYSMIS).
RECODE q50_7_2 (ELSE=SYSMIS).
RECODE q50_7_3 (ELSE=SYSMIS).
RECODE q50_7_4 (ELSE=SYSMIS).
RECODE q50_7_5 (ELSE=SYSMIS).
RECODE q50_7_6(ELSE=SYSMIS).
RECODE q50_7_7 (ELSE=SYSMIS).
RECODE q50_7_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q50_8_0=1 | q50_8_9=1).
RECODE q50_8_1 (ELSE=SYSMIS).
RECODE q50_8_2 (ELSE=SYSMIS).
RECODE q50_8_3 (ELSE=SYSMIS).
RECODE q50_8_4 (ELSE=SYSMIS).
RECODE q50_8_5 (ELSE=SYSMIS).
RECODE q50_8_6(ELSE=SYSMIS).
RECODE q50_8_7 (ELSE=SYSMIS).
RECODE q50_8_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q50_9_0=1 | q50_9_9=1).
RECODE q50_9_1 (ELSE=SYSMIS).
RECODE q50_9_2 (ELSE=SYSMIS).
RECODE q50_9_3 (ELSE=SYSMIS).
RECODE q50_9_4 (ELSE=SYSMIS).
RECODE q50_9_5 (ELSE=SYSMIS).
RECODE q50_9_6(ELSE=SYSMIS).
RECODE q50_9_7 (ELSE=SYSMIS).
RECODE q50_9_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q50_10_0=1 | q50_10_9=1).
RECODE q50_10_1 (ELSE=SYSMIS).
RECODE q50_10_2 (ELSE=SYSMIS).
RECODE q50_10_3 (ELSE=SYSMIS).
RECODE q50_10_4 (ELSE=SYSMIS).
RECODE q50_10_5 (ELSE=SYSMIS).
RECODE q50_10_6(ELSE=SYSMIS).
RECODE q50_10_7 (ELSE=SYSMIS).
RECODE q50_10_8 (ELSE=SYSMIS).
END IF.
EXECUTE.









VARIABLE LABELS
q6_1_velha'q6_1:compartilha imovel com: Secretaria da Assistência Social ou congênere'
q6_2_velha'q6_2:compartilha imovel com:  Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-prefeitura, etc)'
q6_3_velha'q6_3:compartilha imovel com: Conselho Municipal de Assistência Social'
q6_4_velha'q6_4:compartilha imovel com:  Conselho Tutelar'
q6_5_velha'q6_5:compartilha imovel com:  CREAS – Centro de Referência Especializado de Assistência Social'
q6_6_velha'q6_6:compartilha imovel com:  Outra unidade pública de serviços da Assistência Social'
q6_7_velha'q6_7:compartilha imovel com:  Unidade de Saúde'
q6_8_velha'q6_8:compartilha imovel com:  Escola'
q6_9_velha'q6_9:compartilha imovel com:  Associação Comunitária'
q6_10_velha'q6_10:compartilha imovel com:  Entidades ou Organização da Sociedade Civil de Assistência Social'
q6_11_velha'q6_11:compartilha imovel com:  Organizações da sociedade civil de outras áreas'
q6_12_velha'q6_12:compartilha imovel com:  Estação Cidadania/Praça do CEU (esporte e/ou cultura)'
q6_13_velha'q6_13:compartilha imovel com:  Conselho Municipal de Direitos da Criança e do Adolescente – CMDCA'
q6_99_velha'q6_99:compartilha imovel com:  Outros'
q7_1_velha'q7_1:Espaços compartilhados: Apenas o endereço é o mesmo, mas todos os espaços do CRAS são independentes e de uso exclusivo, inclusive a entrada '
q7_2_velha'q7_2:Espaços compartilhados: Entrada / Porta de Acesso'
q7_3_velha'q7_3:Espaços compartilhados: Recepção'
q7_4_velha'q7_4:Espaços compartilhados: Cozinha'
q7_5_velha'q7_5:Espaços compartilhados:Algumas salas de atendimento particularizado'
q7_6_velha'q7_6:Espaços compartilhados:Todas as salas de atendimento particularizado'
q7_7_velha'q7_7:Espaços compartilhados: Algumas salas de atendimento coletivo'
q7_8_velha'q7_8:Espaços compartilhados:Todas as salas de atendimento coletivo'
q7_9_velha'q7_9:Espaços compartilhados:Salas administrativas'
q7_10_velha'q7_10:Espaços compartilhados: Banheiros'
q7_11_velha'q7_11:Espaços compartilhados:Área Externa'
q7_12_velha'q7_12:Espaços compartilhados: Almoxarifado ou similar'
q13_velha'q13:Quantidade de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF - Total'
q13_1_1_velha'q13_1_1:Masculino 0 a 18 anos - participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q13_1_2_velha'q13_1_2:Masculino 19 a 59 anos - participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q13_1_3_velha'q13_1_3:Masculino 60 anos ou mais - participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q13_2_1_velha'q13_2_1:Feminino 0 a 18 anos - participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q13_2_2_velha'q13_2_2:Feminino 19 a 59 anos - participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q13_2_3_velha'q13_2_3:Feminino 60 anos ou mais - participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q14_1_velha'q14_1:Temáticas  frequentemente abordadas pelo PAIF: Não há atendimento coletivo no PAIF'
q14_2_velha'q14_2:Temáticas  frequentemente abordadas pelo PAIF: Direito à transferência de renda e benefícios assistenciais'
q14_3_velha'q14_3:Temáticas  frequentemente abordadas pelo PAIF: Direito a Documentação Civil Básica (certidão de nascimento, CPF, RG, título eleitoral)'
q14_4_velha'q14_4:Temáticas  frequentemente abordadas pelo PAIF: Direito a cultura e lazer'
q14_5_velha'q14_5:Temáticas  frequentemente abordadas pelo PAIF: Direito das Mulheres'
q14_6_velha'q14_6:Temáticas  frequentemente abordadas pelo PAIF: Direitos das pessoas com deficiência'
q14_7_velha'q14_7:Temáticas  frequentemente abordadas pelo PAIF: Direito à Alimentação'
q14_8_velha'q14_8:Temáticas  frequentemente abordadas pelo PAIF: Os direitos das famílias'
q14_9_velha'q14_9:Temáticas  frequentemente abordadas pelo PAIF: Primeira infância – direitos e cuidados'
q14_10_velha'q14_10:Temáticas  frequentemente abordadas pelo PAIF:  Adolescência e gravidez'
q14_11_velha'q14_11:Temáticas  frequentemente abordadas pelo PAIF: Direito das pessoas idosas'
q14_12_velha'q14_12:Temáticas  frequentemente abordadas pelo PAIF: PBF e Condicionalidades'
q14_13_velha'q14_13:Temáticas  frequentemente abordadas pelo PAIF: Prevenção ao Trabalho escravo e tráfico de pessoas'
q14_14_velha'q14_14:Temáticas  frequentemente abordadas pelo PAIF: Prevenção ao trabalho infantil;'
q14_15_velha'q14_15:Temáticas  frequentemente abordadas pelo PAIF: Convivência familiar filhos com mães encarceradas'
q14_16_velha'q14_16:Temáticas  frequentemente abordadas pelo PAIF: Cuidar de quem cuida'
q14_17_velha'q14_17:Temáticas  frequentemente abordadas pelo PAIF: O uso de álcool e/ou outras drogas na família'
q14_18_velha'q14_18:Temáticas  frequentemente abordadas pelo PAIF: Problemas e soluções do território'
q14_19_velha'q14_19:Temáticas  frequentemente abordadas pelo PAIF: Diversidade cultural, étnica e social'
q14_20_velha'q14_20:Temáticas  frequentemente abordadas pelo PAIF: Violência doméstica contra mulheres'
q14_21_velha'q14_21:Temáticas  frequentemente abordadas pelo PAIF: Violência doméstica contra crianças e adolescentes'
q14_22_velha'q14_22:Temáticas  frequentemente abordadas pelo PAIF: Violência doméstica contra pessoas idosas'
q14_23_velha'q14_23:Temáticas  frequentemente abordadas pelo PAIF: Saúde mental e prevenção ao suicídio'
q14_24_velha'q14_24:Temáticas  frequentemente abordadas pelo PAIF: Sexualidade'
q14_25_velha'q14_25:Temáticas  frequentemente abordadas pelo PAIF: Planejamento familiar/gravidez na adolescência'
q14_26_velha'q14_26:Temáticas  frequentemente abordadas pelo PAIF: Suicídio'
q14_27_velha'q14_27:Temáticas  frequentemente abordadas pelo PAIF: Educação Financeira'
q14_99_velha'q14_99:Temáticas  frequentemente abordadas pelo PAIF: Outro'
q16_1_velha'q16_1:Crianças de 0 a 6 anos de idade - Esta unidade oferta diretamente SCFV'
q16_2_velha'q16_2:Crianças e adolescentes de 7 a 14 anos de idade - Esta unidade oferta diretamente SCFV'
q16_3_velha'q16_3:Adolescentes e jovens de 15 a 17 anos de idade - Esta unidade oferta diretamente SCFV'
q16_4_velha'q16_4:Jovens de 18 a 29 anos de idade - Esta unidade oferta diretamente SCFV'
q16_5_velha'q16_5:Adultas(os) de 30 a 59 anos de idade - Esta unidade oferta diretamente SCFV'
q16_6_velha'q16_6:Idosas(os) (60 anos ou mais) - Esta unidade oferta diretamente SCFV'
q17_1_velha'q17_1:Este CRAS possui rede referenciada de SCFV: Sim, realizado por outra unidade pública'
q17_2_velha'q17_2:Este CRAS possui rede referenciada de SCFV: Sim, realizado por entidade conveniada'
q17_3_velha'q17_3:Este CRAS possui rede referenciada de SCFV: Sim, realizado por entidade não conveniada'
q17_0_velha'q17_0:Este CRAS possui rede referenciada de SCFV: Não'
q23_1_velha'q23_1:Total de indivíduos atendidos - Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas'
q23_2_velha'q23_2:Total de IDOSAS(OS) atendidas(os) - Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas'
q23_3_velha'q23_3:Total de PESSOAS COM DEFICIÊNCIA - Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas'
q23_4_velha'q23_4:Total de PESSOAS COM DEFICIÊNCIA entre 0 e 6 anos de idade - Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas'
q24_1_velha'q24_1:Este CRAS possui rede referenciada para oferta do PSB Domicílio para Pessoas com deficiência e idosas: Sim, realizado por outra unidade pública'
q24_2_velha'q24_2:Este CRAS possui rede referenciada para oferta do PSB Domicílio para Pessoas com deficiência e idosas: Sim, realizado por entidade conveniada'
q24_3_velha'q24_3:Este CRAS possui rede referenciada para oferta do PSB Domicílio para Pessoas com deficiência e idosas: Sim, realizado por entidade não conveniada'
q24_0_velha'q24_0:Este CRAS possui rede referenciada para oferta do PSB Domicílio para Pessoas com deficiência e idosas: Não'
q25_velha'q25:Com que frequência se dá o atendimento no domicílio de cada indivíduo atendido pelo Serviço de Proteção Social Básica no Domicílio?'
q27_velha'q27:O(s) território(s) atendido(s) por esta equipe volante estão localizados em:'
q28_1_velha'q28_1:Territórios atendidos pela equipe volante : Favelas ou periferias urbanas'
q28_2_velha'q28_2:Territórios atendidos pela equipe volante : Comunidades rurais'
q28_3_velha'q28_3:Territórios atendidos pela equipe volante : Aldeia/comunidade Indígena'
q28_4_velha'q28_4:Territórios atendidos pela equipe volante :Comunidade Quilombola'
q28_5_velha'q28_5:Territórios atendidos pela equipe volante : Comunidade Ribeirinha'
q28_6_velha'q28_6:Territórios atendidos pela equipe volante : Acampamento/comunidade Cigana'
q28_7_velha'q28_7:Territórios atendidos pela equipe volante : Comunidade de Terreiro'
q28_99_velha'q28_99:Territórios atendidos pela equipe volante : Outros'
q29_velha'q29:Normalmente, com que frequência a equipe volante se desloca para realizar atendimento nestas áreas/comunidades?'
q30_1_velha'q30_1:Deslocamento da equipe volante: Em automóvel exclusivo do CRAS (ex: carro, van, etc. )'
q30_2_velha'q30_2:Deslocamento da equipe volante: Em automóvel compartilhado entre o CRAS e outras unidades (ex: carro, van, etc.)'
q30_3_velha'q30_3:Deslocamento da equipe volante: Em automóvel particular de algum membro da equipe do CRAS'
q30_4_velha'q30_4:Deslocamento da equipe volante: Em embarcação (barco ou lancha) exclusiva da área de Assistência Social'
q30_5_velha'q30_5:Deslocamento da equipe volante: Em embarcação (barco ou lancha) não-exclusiva da área de Assistência Social'
q30_6_velha'q30_6:Deslocamento da equipe volante: Em transporte público'
q30_7_velha'q30_7:Deslocamento da equipe volante: A pé'
q30_8_velha'q30_8:Deslocamento da equipe volante: A cavalo ou outro animal'
q30_99_velha'q30_99:Deslocamento da equipe volante: Outro'
q32_1_velha'q32_1:Quais são os Benefícios Eventuais ofertados: Benefício Eventual em situação de morte'
q32_2_velha'q32_2:Quais são os Benefícios Eventuais ofertados: Benefício Eventual por nascimento'
q32_3_velha'q32_3:Quais são os Benefícios Eventuais ofertados: Benefício Eventual em situação de calamidade (inclui desastres e emergências)'
q32_4_velha'q32_4:Quais são os Benefícios Eventuais ofertados: Benefício Eventual em situação de vulnerabilidade social temporária'
q33_1_velha'q33_1:Beneficio Eventual em situação de vulnerabilidade social temporária:Auxílio relacionado à alimentação(cesta básica, leite, entre outros)'
q33_2_velha'q33_2:Beneficio Eventual em situação de vulnerabilidade social temporária: Auxílio para deslocamento / passagens (vale-transporte)'
q33_3_velha'q33_3:Beneficio Eventual em situação de vulnerabilidade social temporária:Auxílio/Isenção para retirada de documentação (inclui auxílio para retirada de fotos)'
q33_4_velha'q33_4:Beneficio Eventual em situação de vulnerabilidade social temporária: Material de construção'
q33_5_velha'q33_5:Beneficio Eventual em situação de vulnerabilidade social temporária: Pagamento/ Isenção de contas de água e luz'
q33_6_velha'q33_6:Beneficio Eventual em situação de vulnerabilidade social temporária: Auxílio gás'
q33_7_velha'q33_7:Beneficio Eventual em situação de vulnerabilidade social temporária: Pagamento de aluguel'
q33_8_velha'q33_8:Beneficio Eventual em situação de vulnerabilidade social temporária: Vestimentas/ Roupas'
q33_9_velha'q33_9:Beneficio Eventual em situação de vulnerabilidade social temporária:Móveis e Eletrodomésticos'
q33_99_velha'q33_99:Beneficio Eventual em situação de vulnerabilidade social temporária: Outros'
q34_1_velha'q34_1:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Identificação de possíveis beneficiárias(os) do BPC'
q34_2_velha'q34_2:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Busca ativa de beneficiárias(os) do BPC para inclusão no CadÚnico'
q34_3_velha'q34_3:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Orientação/acompanhamento para inserção no BPC/ Encaminhamento ao INSS'
q34_4_velha'q34_4:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Atendimento e Acompanhamento das pessoas com deficiência do BPC com idade escolar que estejam fora da escola (incluindo BPC escola)'
q34_5_velha'q34_5:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Atendimento e acompanhamento das pessoas com deficiência do BPC em idade produtiva para o mundo do trabalho (incluindo BPC trabalho)'
q34_6_velha'q34_6:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Inserção das(os) Beneficiárias(os) nos serviços socioassistenciais (PAIF, SCFV, entre outros)'
q34_99_velha'q34_99:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Outros'
q34_0_velha'q34_0:Com relação ao Benefício de Prestação Continuada, este CRAS faz: Nenhuma das atividades acima'
q36_98_velha'q36_98:Não sabe informar: pessoas atendidas para o Cadastro Único nesta Unidade durante o mês de referência'
q36_1_velha'q36_1:Total de pessoas atendidos para o Cadastro Único'
q36_2_velha'q36_2:Destes, qual o total de pessoas realizaram entrevista para inclusão cadastral'
q36_3_velha'q36_3:Destes, qual o total de pessoas realizaram entrevista para atualização cadastral'
q37_1_velha'q37_1:Em média, quanto tempo dura - Entre o agendamento e a realização do atendimento'
q37_1_1_velha'q37_1_1:Não realiza - agendamento e a realização do atendimento'
q37_2_velha'q37_2:Em média, quanto tempo dura - Após a entrevista, para que os dados coletados em formulário em papel sejam inseridos no sistema'
q37_2_1_velha'q37_2_1:Não realiza - Após a entrevista, para que os dados coletados em formulário em papel sejam inseridos no sistema'
q38_1_velha'q38_1:Ações específicas: Sim, as famílias de averiguação e revisão cadastral são alvo de busca ativa'
q38_2_velha'q38_2:Ações específicas: Sim, as famílias de averiguação e revisão cadastral fazem parte do público prioritário de atendimento na unidade'
q38_3_velha'q38_3:Ações específicas: Sim, há mutirões em dias específicos para atender o público de averiguação e revisão cadastral'
q38_99_velha'q38_99:Ações específicas: Sim, outros'
q38_0_velha'q38_0:Ações específicas: Não há ações específicas para atender o público de averiguação e revisão cadastral'
q39_1_velha'q39_1:Para apurar denúncias - entrevistas domiciliares'
q39_2_velha'q39_2:Para famílias incluídas em Averiguação Cadastral - entrevistas domiciliares'
q39_3_velha'q39_3:Para inclusão ou atualização de dados de famílias com beneficiários do Benefício de Prestação Continuada (BPC)- entrevistas domiciliares'
q39_4_velha'q39_4:Para inclusão ou atualização de dados de famílias pertencentes à Grupos Populacionais Tradicionais ou Específicos (GPTEs) - entrevistas domiciliares'
q39_5_velha'q39_5:Para inclusão ou atualização de dados de famílias que moram em locais de difícil acesso - entrevistas domiciliares'
q39_99_velha'q39_99:Outros - entrevistas domiciliares'
q40_0_velha'q40_0:Ações e atividades realizadas PBF: Não realiza ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família'
q40_1_velha'q40_1:Ações e atividades realizadas PBF:Informação individualizada sobre regras do Programa (valores de benefícios, regras de concessão, bloqueio, suspensão e cancelamento de benefícios e condicionalidades)'
q40_2_velha'q40_2:Ações e atividades realizadas PBF: Informação coletiva às famílias sobre regras do Programa (Reuniões de acolhida, palestra etc'
q40_3_velha'q40_3:Ações e atividades realizadas PBF: Emissão de declaração de troca de responsável familiar para recebimento do benefício'
q40_4_velha'q40_4:Ações e atividades realizadas PBF: Esclarecimentos sobre o conteúdo de mensagens no extrato de pagamentos, recebida pelo beneficiário'
q40_5_velha'q40_5:Ações e atividades realizadas PBF: Esclarecimentos sobre informações de pagamento do Programa: entrega, desbloqueio e ativação do Cartão Bolsa Família e calendário de pagamentos'
q40_6_velha'q40_6:Ações e atividades realizadas PBF: Realiza manutenção de benefícios diretamente no SIBEC'
q40_7_velha'q40_7:Ações e atividades realizadas PBF: Registro no Formulário Padrão de Gestão de Benefícios (FPGB) e seu arquivamento'
q40_8_velha'q40_8:Ações e atividades realizadas PBF: Solicitação de manutenção de benefícios pelo módulo de Administração Off-line do SigPBF'
q40_9_velha'q40_9:Ações e atividades realizadas PBF: Orientação sobre como denunciar irregularidades no pagamento e no atendimento dos canais da CAIXA'
q40_10_velha'q40_10:Ações e atividades realizadas PBF: Registro de denúncias de recebimento indevido de benefícios'
q40_11_velha'q40_11:Ações e atividades realizadas PBF: Apuração de denúncias de recebimento indevido de benefícios'
q41_0_velha'q41_0:Famílias em descumprimento de condicionalidades: Não realiza atividades referente ao descumprimento de condicionalidades'
q41_1_velha'q41_1:Famílias em descumprimento de condicionalidades: Esclarecimentos às famílias sobre as regras de condicionalidades durante o atendimento particularizado'
q41_2_velha'q41_2:Famílias em descumprimento de condicionalidades: Interação com as escolas dos beneficiários em descumprimento'
q41_3_velha'q41_3:Famílias em descumprimento de condicionalidades: Interação com a equipe de saúde no município responsável pelo acompanhamento das condicionalidades de saúde'
q41_4_velha'q41_4:Famílias em descumprimento de condicionalidades: Ação para prestar informações às famílias sobre as condicionalidades (Reuniões de acolhida, palestras, oficinas em grupo, etc)'
q41_5_velha'q41_5:Famílias em descumprimento de condicionalidades:  Fornecimento de comprovante do registro de recurso para as famílias'
q41_6_velha'q41_6:Famílias em descumprimento de condicionalidades:  Busca ativa das famílias (visita domiciliar e ações itinerantes) para inclusão nos serviços socioassistencias ou para apresentar o recurso'
q41_7_velha'q41_7:Famílias em descumprimento de condicionalidades:  Priorização das famílias em fase de suspensão por descumprimento de condicionalidades nas ações do PAIF'
q41_8_velha'q41_8:Famílias em descumprimento de condicionalidades:  Registro no Sicon dos atendimentos/acompanhamentos realizados com as famílias PBF'
q41_9_velha'q41_9:Famílias em descumprimento de condicionalidades:  Encaminhamento de famílias ou indivíduos em descumprimento de condicionalidades para outros serviços, programas ou benefícios socioassistenciais'
q41_10_velha'q41_10:Famílias em descumprimento de condicionalidades:  Encaminhamento de famílias ou indivíduos em descumprimento de condicionalidades para outras políticas públicas (educação, saúde, habitação, trabalho, etc.)'
q41_99_velha'q41_99:Famílias em descumprimento de condicionalidades:  Outros'
q46_1_velha'q46_1:Povos e comunidades tradicionais existentes no território: Aldeia/comunidade Indígena'
q46_2_velha'q46_2:Povos e comunidades tradicionais existentes no território: Comunidade Quilombola'
q46_3_velha'q46_3:Povos e comunidades tradicionais existentes no território: Comunidade Ribeirinha'
q46_4_velha'q46_4:Povos e comunidades tradicionais existentes no território: Acampamento/comunidade Cigana'
q46_5_velha'q46_5:Povos e comunidades tradicionais existentes no território: Comunidade de Terreiro'
q46_6_velha'q46_6:Povos e comunidades tradicionais existentes no território: Extrativistas'
q46_99_velha'q46_99:Povos e comunidades tradicionais existentes no território:  Outros povos e comunidades tradicionais'
q47_0_velha'q47_0:Este CRAS atendeu: Não atendeu '
q47_1_velha'q47_1:Este CRAS atendeu: Sim, atendeu Povos Indígenas'
q47_2_velha'q47_2:Este CRAS atendeu: Sim, atendeu Comunidade Quilombola'
q47_3_velha'q47_3:Este CRAS atendeu: Sim, atendeu Comunidade Ribeirinha'
q47_4_velha'q47_4:Este CRAS atendeu: Sim, atendeu Povos Ciganos'
q47_5_velha'q47_5:Este CRAS atendeu: Sim, atendeu Comunidade de Terreiro'
q47_6_velha'q47_6:Este CRAS atendeu: Sim, atendeu Extrativistas'
q48_1_velha'q48_1:Como foi realizado o atendimento: Por meio de visitas domiciliares da equipe técnica'
q48_2_velha'q48_2:Como foi realizado o atendimento: Por meio de ação realizada na comunidade'
q48_3_velha'q48_3:Como foi realizado o atendimento: Os usuários se deslocaram até o CRAS'
q48_99_velha'q48_99:Como foi realizado o atendimento: Outros'
q49_1_velha'q49_1:Capacitação específica - equipe de referência deste CRAS possui'
q49_2_velha'q49_2:Estratégias/Metodologias especificas de atendimento - equipe de referência deste CRAS possui'
q49_3_velha'q49_3:Diagnóstico específico sobre as vulnerabilidades das comunidades atendidas - equipe de referência deste CRAS possui'
q49_4_velha'q49_4:Profissionais com vivência e/ou experiências específicas junto às comunidades atendidas - equipe de referência deste CRAS possui'
q49_5_velha'q49_5:Profissionais que sejam membros da comunidade/grupo tradicional - equipe de referência deste CRAS possui'
q49_6_velha'q49_6:Articulação com órgãos públicos que possuem atuação específica junto às comunidades atendidas (Ex.: FUNAI; INCRA etc.) - equipe de referência deste CRAS possui'
q49_7_velha'q49_7:Articulação com entidades ou organizações da sociedade civil de representação ou defesa de direitos das comunidades atendidas - equipe de referência deste CRAS possui'
q50_1_0_velha'q50_1_0: Proteção Social Básica: Não tem nenhuma articulação'
q50_1_1_velha'q50_1_1: Proteção Social Básica: Possui dados de localização (endereço, telefone, etc.)'
q50_1_2_velha'q50_1_2: Proteção Social Básica: Recebe usuárias(os) encaminhados por este CRAS'
q50_1_3_velha'q50_1_3: Proteção Social Básica: Encaminha usuárias(os) para este CRAS'
q50_1_4_velha'q50_1_4: Proteção Social Básica: Acompanha os encaminhamentos'
q50_1_5_velha'q50_1_5: Proteção Social Básica: Realiza reuniões periódicas'
q50_1_6_velha'q50_1_6: Proteção Social Básica: Troca informações'
q50_1_7_velha'q50_1_7: Proteção Social Básica: Realiza estudos de caso em conjunto'
q50_1_8_velha'q50_1_8: Proteção Social Básica: Desenvolve ativiades em parceria'
q50_1_9_velha'q50_1_9: Proteção Social Básica: Serviço ou instituição não existente no Município ou no DF'
q50_2_0_velha'q50_2_0:Conveniadas da Rede de Proteção Social Básica: Não tem nenhuma articulação'
q50_2_1_velha'q50_2_1:Conveniadas da Rede de Proteção Social Básica: Possui dados de localização (endereço, telefone, etc.)'
q50_2_2_velha'q50_2_2:Conveniadas da Rede de Proteção Social Básica: Recebe usuárias(os) encaminhados por este CRAS'
q50_2_3_velha'q50_2_3:Conveniadas da Rede de Proteção Social Básica: Encaminha usuárias(os) para este CRAS'
q50_2_4_velha'q50_2_4:Conveniadas da Rede de Proteção Social Básica: Acompanha os encaminhamentos'
q50_2_5_velha'q50_2_5:Conveniadas da Rede de Proteção Social Básica: Realiza reuniões periódicas'
q50_2_6_velha'q50_2_6:Conveniadas da Rede de Proteção Social Básica: Troca informações'
q50_2_7_velha'q50_2_7:Conveniadas da Rede de Proteção Social Básica: Realiza estudos de caso em conjunto'
q50_2_8_velha'q50_2_8:Conveniadas da Rede de Proteção Social Básica: Desenvolve ativiades em parceria'
q50_2_9_velha'q50_2_9:Conveniadas da Rede de Proteção Social Básica: Serviço ou instituição não existente no Município ou no DF'
q50_3_0_velha'q50_3_0:CREAS: Não tem nenhuma articulação'
q50_3_1_velha'q50_3_1:CREAS: Possui dados de localização (endereço, telefone, etc.)'
q50_3_2_velha'q50_3_2:CREAS: Recebe usuárias(os) encaminhados por este CRAS'
q50_3_3_velha'q50_3_3:CREAS: Encaminha usuárias(os) para este CRAS'
q50_3_4_velha'q50_3_4:CREAS: Acompanha os encaminhamentos'
q50_3_5_velha'q50_3_5:CREAS: Realiza reuniões periódicas'
q50_3_6_velha'q50_3_6:CREAS: Troca informações'
q50_3_7_velha'q50_3_7:CREAS: Realiza estudos de caso em conjunto'
q50_3_8_velha'q50_3_8:CREAS: Desenvolve ativiades em parceria'
q50_3_9_velha'q50_3_9:CREAS: Serviço ou instituição não existente no Município ou no DF'
q50_4_0_velha'q50_4_0:Outras Unidades da rede de proteção social especial: Não tem nenhuma articulação'
q50_4_1_velha'q50_4_1:Outras Unidades da rede de proteção social especial: Possui dados de localização (endereço, telefone, etc.)'
q50_4_2_velha'q50_4_2:Outras Unidades da rede de proteção social especial: Recebe usuárias(os) encaminhados por este CRAS'
q50_4_3_velha'q50_4_3:Outras Unidades da rede de proteção social especial: Encaminha usuárias(os) para este CRAS'
q50_4_4_velha'q50_4_4:Outras Unidades da rede de proteção social especial: Acompanha os encaminhamentos'
q50_4_5_velha'q50_4_5:Outras Unidades da rede de proteção social especial: Realiza reuniões periódicas'
q50_4_6_velha'q50_4_6:Outras Unidades da rede de proteção social especial: Troca informações'
q50_4_7_velha'q50_4_7:Outras Unidades da rede de proteção social especial: Realiza estudos de caso em conjunto'
q50_4_8_velha'q50_4_8:Outras Unidades da rede de proteção social especial: Desenvolve ativiades em parceria'
q50_4_9_velha'q50_4_9:Outras Unidades da rede de proteção social especial: Serviço ou instituição não existente no Município ou no DF'
q50_5_0_velha'q50_5_0:Serviços de Saúde: Não tem nenhuma articulação'
q50_5_1_velha'q50_5_1:Serviços de Saúde: Possui dados de localização (endereço, telefone, etc.)'
q50_5_2_velha'q50_5_2:Serviços de Saúde: Recebe usuárias(os) encaminhados por este CRAS'
q50_5_3_velha'q50_5_3:Serviços de Saúde: Encaminha usuárias(os) para este CRAS'
q50_5_4_velha'q50_5_4:Serviços de Saúde: Acompanha os encaminhamentos'
q50_5_5_velha'q50_5_5:Serviços de Saúde: Realiza reuniões periódicas'
q50_5_6_velha'q50_5_6:Serviços de Saúde: Troca informações'
q50_5_7_velha'q50_5_7:Serviços de Saúde: Realiza estudos de caso em conjunto'
q50_5_8_velha'q50_5_8:Serviços de Saúde: Desenvolve ativiades em parceria'
q50_5_9_velha'q50_5_9:Serviços de Saúde: Serviço ou instituição não existente no Município ou no DF'
q50_6_0_velha'q50_6_0:Serviços de Educação: Não tem nenhuma articulação'
q50_6_1_velha'q50_6_1:Serviços de Educação: Possui dados de localização (endereço, telefone, etc.)'
q50_6_2_velha'q50_6_2:Serviços de Educação: Recebe usuárias(os) encaminhados por este CRAS'
q50_6_3_velha'q50_6_3:Serviços de Educação: Encaminha usuárias(os) para este CRAS'
q50_6_4_velha'q50_6_4:Serviços de Educação: Acompanha os encaminhamentos'
q50_6_5_velha'q50_6_5:Serviços de Educação: Realiza reuniões periódicas'
q50_6_6_velha'q50_6_6:Serviços de Educação: Troca informações'
q50_6_7_velha'q50_6_7:Serviços de Educação: Realiza estudos de caso em conjunto'
q50_6_8_velha'q50_6_8:Serviços de Educação: Desenvolve ativiades em parceria'
q50_6_9_velha'q50_6_9:Serviços de Educação: Serviço ou instituição não existente no Município ou no DF'
q50_7_0_velha'q50_7_0:Órgãos/Serviços relacionados a Trabalho e Emprego: Não tem nenhuma articulação'
q50_7_1_velha'q50_7_1:Órgãos/Serviços relacionados a Trabalho e Emprego: Possui dados de localização (endereço, telefone, etc.)'
q50_7_2_velha'q50_7_2:Órgãos/Serviços relacionados a Trabalho e Emprego: Recebe usuárias(os) encaminhados por este CRAS'
q50_7_3_velha'q50_7_3:Órgãos/Serviços relacionados a Trabalho e Emprego: Encaminha usuárias(os) para este CRAS'
q50_7_4_velha'q50_7_4:Órgãos/Serviços relacionados a Trabalho e Emprego: Acompanha os encaminhamentos'
q50_7_5_velha'q50_7_5:Órgãos/Serviços relacionados a Trabalho e Emprego: Realiza reuniões periódicas'
q50_7_6_velha'q50_7_6:Órgãos/Serviços relacionados a Trabalho e Emprego: Troca informações'
q50_7_7_velha'q50_7_7:Órgãos/Serviços relacionados a Trabalho e Emprego: Realiza estudos de caso em conjunto'
q50_7_8_velha'q50_7_8:Órgãos/Serviços relacionados a Trabalho e Emprego: Desenvolve ativiades em parceria'
q50_7_9_velha'q50_7_9:Órgãos/Serviços relacionados a Trabalho e Emprego: Serviço ou instituição não existente no Município ou no DF'
q50_8_0_velha'q50_8_0:Movimentos Sociais locais/Associações Comunitárias: Não tem nenhuma articulação'
q50_8_1_velha'q50_8_1:Movimentos Sociais locais/Associações Comunitárias: Possui dados de localização (endereço, telefone, etc.)'
q50_8_2_velha'q50_8_2:Movimentos Sociais locais/Associações Comunitárias: Recebe usuárias(os) encaminhados por este CRAS'
q50_8_3_velha'q50_8_3:Movimentos Sociais locais/Associações Comunitárias: Encaminha usuárias(os) para este CRAS'
q50_8_4_velha'q50_8_4:Movimentos Sociais locais/Associações Comunitárias: Acompanha os encaminhamentos'
q50_8_5_velha'q50_8_5:Movimentos Sociais locais/Associações Comunitárias: Realiza reuniões periódicas'
q50_8_6_velha'q50_8_6:Movimentos Sociais locais/Associações Comunitárias: Troca informações'
q50_8_7_velha'q50_8_7:Movimentos Sociais locais/Associações Comunitárias: Realiza estudos de caso em conjunto'
q50_8_8_velha'q50_8_8:Movimentos Sociais locais/Associações Comunitárias: Desenvolve ativiades em parceria'
q50_8_9_velha'q50_8_9:Movimentos Sociais locais/Associações Comunitárias: Serviço ou instituição não existente no Município ou no DF'
q50_9_0_velha'q50_9_0:Conselho Tutelar: Não tem nenhuma articulação'
q50_9_1_velha'q50_9_1:Conselho Tutelar: Possui dados de localização (endereço, telefone, etc.)'
q50_9_2_velha'q50_9_2:Conselho Tutelar: Recebe usuárias(os) encaminhados por este CRAS'
q50_9_3_velha'q50_9_3:Conselho Tutelar: Encaminha usuárias(os) para este CRAS'
q50_9_4_velha'q50_9_4:Conselho Tutelar: Acompanha os encaminhamentos'
q50_9_5_velha'q50_9_5:Conselho Tutelar: Realiza reuniões periódicas'
q50_9_6_velha'q50_9_6:Conselho Tutelar: Troca informações'
q50_9_7_velha'q50_9_7:Conselho Tutelar: Realiza estudos de caso em conjunto'
q50_9_8_velha'q50_9_8:Conselho Tutelar: Desenvolve ativiades em parceria'
q50_9_9_velha'q50_9_9:Conselho Tutelar: Serviço ou instituição não existente no Município ou no DF'
q50_10_0_velha'q50_10_0:Judiciário: Não tem nenhuma articulação'
q50_10_1_velha'q50_10_1:Judiciário: Possui dados de localização (endereço, telefone, etc.)'
q50_10_2_velha'q50_10_2:Judiciário: Recebe usuárias(os) encaminhados por este CRAS'
q50_10_3_velha'q50_10_3:Judiciário: Encaminha usuárias(os) para este CRAS'
q50_10_4_velha'q50_10_4:Judiciário: Acompanha os encaminhamentos'
q50_10_5_velha'q50_10_5:Judiciário: Realiza reuniões periódicas'
q50_10_6_velha'q50_10_6:Judiciário: Troca informações'
q50_10_7_velha'q50_10_7:Judiciário: Realiza estudos de caso em conjunto'
q50_10_8_velha'q50_10_8:Judiciário: Desenvolve ativiades em parceria'
q50_10_9_velha'q50_10_9:Judiciário: Serviço ou instituição não existente no Município ou no DF'
.
