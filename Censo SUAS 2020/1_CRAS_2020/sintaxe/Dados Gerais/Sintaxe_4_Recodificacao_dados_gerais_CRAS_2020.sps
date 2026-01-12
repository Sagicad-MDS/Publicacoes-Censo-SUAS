
*****recodificar

*q4*********************************

compute q5_1_velha = q5_1. 
compute q5_2_velha = q5_2. 
compute q5_3_velha = q5_3. 
compute q5_4_velha = q5_4. 
compute q5_5_velha = q5_5. 
compute q5_6_velha = q5_6. 
compute q5_7_velha = q5_7. 
compute q5_8_velha = q5_8. 
compute q5_9_velha = q5_9. 
compute q5_10_velha = q5_10. 
compute q5_11_velha = q5_11. 
compute q5_12_velha = q5_12. 
compute q5_13_velha = q5_13. 
compute q5_99_velha = q5_99. 
execute. 


DO IF (q4=0).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_4 (ELSE=SYSMIS).
RECODE q5_5 (ELSE=SYSMIS).
RECODE q5_6 (ELSE=SYSMIS).
RECODE q5_7 (ELSE=SYSMIS).
RECODE q5_8 (ELSE=SYSMIS).
RECODE q5_9 (ELSE=SYSMIS).
RECODE q5_10 (ELSE=SYSMIS).
RECODE q5_11 (ELSE=SYSMIS).
RECODE q5_12 (ELSE=SYSMIS).
RECODE q5_13 (ELSE=SYSMIS).
RECODE q5_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q6*****************

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
execute. 



DO IF (q6_1=1).
RECODE q6_2 (ELSE=SYSMIS).
RECODE q6_3 (ELSE=SYSMIS).
RECODE q6_4 (ELSE=SYSMIS).
RECODE q6_5 (ELSE=SYSMIS).
RECODE q6_6 (ELSE=SYSMIS).
RECODE q6_7 (ELSE=SYSMIS).
RECODE q6_8 (ELSE=SYSMIS).
RECODE q6_9 (ELSE=SYSMIS).
RECODE q6_10(ELSE=SYSMIS).
RECODE q6_11 (ELSE=SYSMIS).
RECODE q6_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q4=0).
RECODE q6_1  (ELSE=SYSMIS).
RECODE q6_2  (ELSE=SYSMIS).
RECODE q6_3  (ELSE=SYSMIS).
RECODE q6_4 (ELSE=SYSMIS).
RECODE q6_5 (ELSE=SYSMIS).
RECODE q6_6 (ELSE=SYSMIS).
RECODE q6_7 (ELSE=SYSMIS).
RECODE q6_8 (ELSE=SYSMIS).
RECODE q6_9 (ELSE=SYSMIS).
RECODE q6_10 (ELSE=SYSMIS).
RECODE q6_11 (ELSE=SYSMIS).
RECODE q6_12 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q9*****************

compute q9_1_velha = q9_1. 
compute q9_2_velha = q9_2. 
compute q9_3_velha = q9_3. 
compute q9_4_velha = q9_4. 
compute q9_5_velha = q9_5. 
compute q9_6_velha = q9_6. 
compute q9_7_velha = q9_6. 
compute q9_0_velha = q9_0. 
execute. 


DO IF (q9_0=1).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
RECODE q9_5 (ELSE=SYSMIS).
RECODE q9_6 (ELSE=SYSMIS).
RECODE q9_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q14***************************************************************************************************************


RECODE q14_98 (1=1) (0=SYSMIS) (SYSMIS=SYSMIS).
EXECUTE.

compute q14_velha = q14 .
compute q14_1_1_velha = q14_1_1.
compute q14_1_2_velha = q14_1_2.
compute q14_1_3_velha = q14_1_3.
compute q14_2_1_velha = q14_2_1.
compute q14_2_2_velha = q14_2_2.
compute q14_2_3_velha = q14_2_3.
execute. 

DO IF (q14_98=1).
RECODE q14 (ELSE=SYSMIS).
RECODE q14_1_1 (ELSE=SYSMIS).
RECODE q14_1_2 (ELSE=SYSMIS).
RECODE q14_1_3 (ELSE=SYSMIS).
RECODE q14_2_1 (ELSE=SYSMIS).
RECODE q14_2_2 (ELSE=SYSMIS).
RECODE q14_2_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

compute q14_testesoma=  SUM (q14_1_1,q14_1_2,q14_1_3,q14_2_1,q14_2_2,q14_2_3).
execute. 

compute q14= q14_testesoma.
execute. 

RECODE q14 (0=SYSMIS).
EXECUTE.


DO IF (MISSING(q14)).
RECODE q14_98 (1=1) (ELSE=1).
END IF.
EXECUTE.



DELETE VARIABLES q14_testesoma.

****q15*******************************************

compute q15_1_velha = q15_1. 
compute q15_2_velha = q15_2. 
compute q15_3_velha =q15_3. 
compute q15_4_velha = q15_4. 
compute q15_5_velha = q15_5. 
compute q15_6_velha = q15_6. 
compute q15_7_velha = q15_7. 
compute q15_8_velha = q15_8. 
compute q15_9_velha = q15_9. 
compute q15_10_velha =q15_10. 
compute q15_11_velha = q15_11. 
compute q15_12_velha = q15_12. 
compute q15_13_velha = q15_13.
compute q15_14_velha = q15_14. 
compute q15_15_velha = q15_15.
compute q15_16_velha = q15_16. 
compute q15_17_velha = q15_17. 
compute q15_18_velha =q15_18. 
compute q15_19_velha = q15_19. 
compute q15_20_velha = q15_20. 
compute q15_21_velha = q15_21. 
compute q15_22_velha = q15_22. 
compute q15_23_velha = q15_23. 
compute q15_24_velha = q15_24. 
compute q15_25_velha =q15_25. 
compute q15_26_velha = q15_26. 
compute q15_27_velha = q15_27. 
compute q15_99_velha = q15_99.
execute. 

DO IF (q15_1=1).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_3 (ELSE=SYSMIS).
RECODE q15_4 (ELSE=SYSMIS).
RECODE q15_5 (ELSE=SYSMIS).
RECODE q15_6 (ELSE=SYSMIS).
RECODE q15_7 (ELSE=SYSMIS).
RECODE q15_8 (ELSE=SYSMIS).
RECODE q15_9 (ELSE=SYSMIS).
RECODE q15_10(ELSE=SYSMIS).
RECODE q15_11 (ELSE=SYSMIS).
RECODE q15_12 (ELSE=SYSMIS).
RECODE q15_13 (ELSE=SYSMIS).
RECODE q15_14 (ELSE=SYSMIS).
RECODE q15_15 (ELSE=SYSMIS).
RECODE q15_16 (ELSE=SYSMIS).
RECODE q15_17 (ELSE=SYSMIS).
RECODE q15_18 (ELSE=SYSMIS).
RECODE q15_19 (ELSE=SYSMIS).
RECODE q15_20 (ELSE=SYSMIS).
RECODE q15_21 (ELSE=SYSMIS).
RECODE q15_22 (ELSE=SYSMIS).
RECODE q15_23 (ELSE=SYSMIS).
RECODE q15_24 (ELSE=SYSMIS).
RECODE q15_25 (ELSE=SYSMIS).
RECODE q15_26 (ELSE=SYSMIS).
RECODE q15_27 (ELSE=SYSMIS).
RECODE q15_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



*****q16**************

compute q16_0_velha = q16_0. 
compute q16_1_velha = q16_1. 
compute q16_2_velha = q16_2. 
compute q16_3_velha =q16_3. 
compute q16_4_velha = q16_4. 
compute q16_5_velha = q16_5. 
compute q16_6_velha = q16_6. 
compute q16_7_velha = q16_7. 
compute q16_8_velha = q16_8. 
compute q16_9_velha = q16_9. 
compute q16_10_velha =q16_10. 
compute q16_11_velha = q16_11. 
compute q16_12_velha = q16_12. 
compute q16_13_velha = q16_13.
compute q16_99_velha = q16_99. 
execute. 


DO IF (q16_0=1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_5 (ELSE=SYSMIS).
RECODE q16_6 (ELSE=SYSMIS).
RECODE q16_7 (ELSE=SYSMIS).
RECODE q16_8 (ELSE=SYSMIS).
RECODE q16_9 (ELSE=SYSMIS).
RECODE q16_10(ELSE=SYSMIS).
RECODE q16_11 (ELSE=SYSMIS).
RECODE q16_12 (ELSE=SYSMIS).
RECODE q16_13 (ELSE=SYSMIS).
RECODE q16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q17*************************************************

compute q18_1_velha = q18_1. 
compute q18_2_velha = q18_2. 
compute q18_3_velha =q18_3. 
compute q18_4_velha = q18_4. 
compute q18_5_velha = q18_5. 
compute q18_6_velha = q18_6. 
execute. 

DO IF (q17=0).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2(ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_4 (ELSE=SYSMIS).
RECODE q18_5 (ELSE=SYSMIS).
RECODE q18_6 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q19*************************************************

compute q19_1_velha = q19_1. 
compute q19_2_velha = q19_2. 
compute q19_3_velha =q19_3. 
compute q19_0_velha = q19_0. 
execute. 


DO IF (q19_0=1).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2(ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
END IF.
EXECUTE.



compute q20_1_velha = q20_1. 
compute q20_2_velha = q20_2. 
compute q20_3_velha =q20_3. 
compute q20_4_velha = q20_4. 
compute q20_5_velha =q20_5. 
compute q20_6_velha = q20_6. 
compute q21_velha = q21. 
compute q22_velha = q22. 
execute. 


DO IF (q19_0=1).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2(ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
RECODE q20_6 (ELSE=SYSMIS).
RECODE q21 (ELSE=SYSMIS).
RECODE q22 (ELSE=SYSMIS).
END IF.
EXECUTE.




***q24******************************************************************************************

compute q25_1_velha = q25_1. 
compute q25_2_velha = q25_2. 
compute q25_3_velha =q25_3. 
compute q25_4_velha = q25_4. 
execute. 


DO IF (q24=0).
RECODE q25_1 (ELSE=SYSMIS).
RECODE q25_2(ELSE=SYSMIS).
RECODE q25_3 (ELSE=SYSMIS).
RECODE q25_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q26***********************************************************

compute q26_1_velha = q26_1. 
compute q26_2_velha = q26_2. 
compute q26_3_velha =q26_3. 
compute q26_0_velha = q26_0. 
execute. 

DO IF (q26_0=1).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2(ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


compute q27_1_velha = q27_1. 
compute q27_2_velha = q27_2. 
compute q27_3_velha =q27_3. 
compute q27_4_velha = q27_4. 
execute. 


DO IF (q26_0=1).
RECODE q27_1 (ELSE=SYSMIS).
RECODE q27_2(ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q28***********************************************************

compute q28_1_velha = q28_1. 
compute q28_2_velha = q28_2. 
compute q28_3_velha =q28_3. 
compute q28_4_velha = q28_4. 
compute q28_5_velha = q28_5. 
compute q28_6_velha =q28_6. 
compute q28_7_velha =q28_7. 
compute q28_8_velha =q28_8. 
compute q28_9_velha = q28_9. 
compute q28_0_velha = q28_0. 
compute q28_99_velha = q28_99. 
execute. 



DO IF (q28_0=1).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2(ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
RECODE q28_6 (ELSE=SYSMIS).
RECODE q28_7 (ELSE=SYSMIS).
RECODE q28_8 (ELSE=SYSMIS).
RECODE q28_9 (ELSE=SYSMIS).
RECODE q28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



**q30*************************************************************************************************

compute q31_velha = q31. 
compute q32_1_velha =q32_1. 
compute q32_2_velha = q32_2. 
compute q32_3_velha = q32_3. 
compute q32_4_velha =q32_4. 
compute q32_5_velha =q32_5. 
compute q32_6_velha = q32_6. 
compute q32_7_velha = q32_7. 
compute q32_99_velha =q32_99. 
compute q33_1_velha =q33_1. 
compute q33_2_velha = q33_2. 
compute q33_3_velha = q33_3. 
compute q33_4_velha =q33_4. 
compute q33_5_velha =q33_5. 
compute q33_6_velha = q33_6. 
compute q33_7_velha = q33_7. 
compute q33_8_velha =q33_8. 
compute q33_9_velha = q33_9. 
compute q33_10_velha = q33_10. 
compute q33_11_velha = q33_11. 
compute q33_12_velha = q33_12. 
compute q33_99_velha =q33_99.
execute. 


DO IF (q30=0).
RECODE q31 (ELSE=SYSMIS).
RECODE q32_1 (ELSE=SYSMIS).
RECODE q32_2 (ELSE=SYSMIS).
RECODE q32_3 (ELSE=SYSMIS).
RECODE q32_4 (ELSE=SYSMIS).
RECODE q32_5 (ELSE=SYSMIS).
RECODE q32_6 (ELSE=SYSMIS).
RECODE q32_7 (ELSE=SYSMIS).
RECODE q32_99 (ELSE=SYSMIS).
RECODE q33_1 (ELSE=SYSMIS).
RECODE q33_2 (ELSE=SYSMIS).
RECODE q33_3 (ELSE=SYSMIS).
RECODE q33_4 (ELSE=SYSMIS).
RECODE q33_5 (ELSE=SYSMIS).
RECODE q33_6 (ELSE=SYSMIS).
RECODE q33_7 (ELSE=SYSMIS).
RECODE q33_8 (ELSE=SYSMIS).
RECODE q33_9 (ELSE=SYSMIS).
RECODE q33_10 (ELSE=SYSMIS).
RECODE q33_11 (ELSE=SYSMIS).
RECODE q33_12 (ELSE=SYSMIS).
RECODE q33_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q33_99 =1).
RECODE q33_1 (ELSE=SYSMIS).
RECODE q33_2 (ELSE=SYSMIS).
RECODE q33_3 (ELSE=SYSMIS).
RECODE q33_4 (ELSE=SYSMIS).
RECODE q33_5 (ELSE=SYSMIS).
RECODE q33_6 (ELSE=SYSMIS).
RECODE q33_7 (ELSE=SYSMIS).
RECODE q33_8 (ELSE=SYSMIS).
RECODE q33_9 (ELSE=SYSMIS).
RECODE q33_10 (ELSE=SYSMIS).
RECODE q33_11 (ELSE=SYSMIS).
RECODE q33_12 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q34*************************************************************************************************

compute q35_1_velha =q35_1. 
compute q35_2_velha = q35_2. 
compute q35_3_velha = q35_3. 
compute q35_4_velha =q35_4. 
compute q36_1_velha =q36_1. 
compute q36_2_velha = q36_2. 
compute q36_3_velha = q36_3. 
compute q36_4_velha =q36_4. 
compute q36_5_velha =q36_5. 
compute q36_6_velha = q36_6. 
compute q36_7_velha =q36_7. 
compute q36_8_velha =q36_8. 
compute q36_9_velha = q36_9. 
compute q36_10_velha = q36_10. 
compute q36_11_velha =q36_11. 
compute q36_12_velha =q36_12. 
compute q36_99_velha =q36_99. 
compute q37_1_velha =q37_1. 
compute q37_2_velha = q37_2. 
compute q37_3_velha = q37_3. 
compute q37_4_velha =q37_4. 
compute q37_5_velha =q37_5. 
compute q37_6_velha = q37_6. 
compute q37_7_velha =q37_7. 
compute q37_8_velha =q37_8. 
compute q37_9_velha = q37_9. 
compute q37_99_velha =q37_99. 
execute. 


DO IF (q34=0).
RECODE q35_1 (ELSE=SYSMIS).
RECODE q35_2 (ELSE=SYSMIS).
RECODE q35_3 (ELSE=SYSMIS).
RECODE q35_4 (ELSE=SYSMIS).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
RECODE q36_5 (ELSE=SYSMIS).
RECODE q36_6 (ELSE=SYSMIS).
RECODE q36_7 (ELSE=SYSMIS).
RECODE q36_8 (ELSE=SYSMIS).
RECODE q36_9 (ELSE=SYSMIS).
RECODE q36_10 (ELSE=SYSMIS).
RECODE q36_11 (ELSE=SYSMIS).
RECODE q36_12 (ELSE=SYSMIS).
RECODE q36_99 (ELSE=SYSMIS).
RECODE q37_1 (ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_3 (ELSE=SYSMIS).
RECODE q37_4 (ELSE=SYSMIS).
RECODE q37_5 (ELSE=SYSMIS).
RECODE q37_6 (ELSE=SYSMIS).
RECODE q37_7 (ELSE=SYSMIS).
RECODE q37_8 (ELSE=SYSMIS).
RECODE q37_9 (ELSE=SYSMIS).
RECODE q37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q38**********************************************************************************************************

DO IF (q38_0=1).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2 (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_4 (ELSE=SYSMIS).
RECODE q38_5 (ELSE=SYSMIS).
RECODE q38_6 (ELSE=SYSMIS).
RECODE q38_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q39**********************************************************************************************************

compute q40_1_velha =q40_1. 
compute q40_2_velha = q40_2. 
compute q40_3_velha = q40_3. 
compute q40_4_velha =q40_4. 
compute q40_5_velha =q40_5. 
compute q40_6_velha = q40_6. 
compute q40_7_velha =q40_7. 
compute q40_8_velha = q40_8. 
compute q40_9_velha = q40_9. 
compute q40_10_velha =q40_10. 
compute q40_11_velha =q40_11. 
compute q40_12_velha = q40_12. 
compute q40_13_velha =q40_13. 
compute q40_14_velha =q40_14. 
compute q40_15_velha = q40_15. 
compute q40_16_velha =q40_16. 
compute q40_17_velha =q40_17. 
compute q40_18_velha = q40_18. 
compute q40_99_velha =q40_99. 
compute q41_1_velha =q41_1. 
compute q41_2_velha = q41_2. 
compute q41_3_velha = q41_3. 
compute q41_98_velha = q41_98. 
compute q42_1_velha =q42_1. 
compute q42_1_0_velha = q42_1_0. 
compute q42_2_velha =q42_2. 
compute q42_2_0_velha = q42_2_0. 
compute q42_3_velha =q42_3. 
compute q42_3_0_velha = q42_3_0. 
compute q42_4_velha =q42_4. 
compute q42_4_0_velha = q42_4_0. 
compute q42_5_velha =q42_5. 
compute q42_5_0_velha = q42_5_0. 
compute q43_0_velha =q43_0. 
compute q43_1_velha =q43_1. 
compute q43_2_velha = q43_2. 
compute q43_3_velha = q43_3. 
compute q43_99_velha =q43_99. 
compute q44_1_velha =q44_1. 
compute q44_2_velha = q44_2. 
compute q44_3_velha = q44_3. 
compute q44_4_velha =q44_4. 
compute q44_5_velha =q44_5. 
compute q44_6_velha = q44_6. 
execute. 

DO IF (q39=0).
RECODE q40_0 (ELSE=SYSMIS).
RECODE q40_1 (ELSE=SYSMIS).
RECODE q40_2 (ELSE=SYSMIS).
RECODE q40_3 (ELSE=SYSMIS).
RECODE q40_4 (ELSE=SYSMIS).
RECODE q40_5 (ELSE=SYSMIS).
RECODE q40_6 (ELSE=SYSMIS).
RECODE q40_7 (ELSE=SYSMIS).
RECODE q40_8 (ELSE=SYSMIS).
RECODE q40_8 (ELSE=SYSMIS).
RECODE q40_10 (ELSE=SYSMIS).
RECODE q40_11 (ELSE=SYSMIS).
RECODE q40_12 (ELSE=SYSMIS).
RECODE q40_13 (ELSE=SYSMIS).
RECODE q40_14 (ELSE=SYSMIS).
RECODE q40_15 (ELSE=SYSMIS).
RECODE q40_16 (ELSE=SYSMIS).
RECODE q40_17 (ELSE=SYSMIS).
RECODE q40_18 (ELSE=SYSMIS).
RECODE q40_99 (ELSE=SYSMIS).
RECODE q41_1 (ELSE=SYSMIS).
RECODE q41_2 (ELSE=SYSMIS).
RECODE q41_3 (ELSE=SYSMIS).
RECODE q41_98 (ELSE=SYSMIS).
RECODE q42_1 (ELSE=SYSMIS).
RECODE q42_1_0 (ELSE=SYSMIS).
RECODE q42_2 (ELSE=SYSMIS).
RECODE q42_2_0 (ELSE=SYSMIS).
RECODE q42_3 (ELSE=SYSMIS).
RECODE q42_3_0 (ELSE=SYSMIS).
RECODE q42_4 (ELSE=SYSMIS).
RECODE q42_4_0 (ELSE=SYSMIS).
RECODE q42_5 (ELSE=SYSMIS).
RECODE q42_5_0 (ELSE=SYSMIS).
RECODE q43_0 (ELSE=SYSMIS).
RECODE q43_1 (ELSE=SYSMIS).
RECODE q43_2 (ELSE=SYSMIS).
RECODE q43_3 (ELSE=SYSMIS).
RECODE q43_99 (ELSE=SYSMIS).
RECODE q44_1 (ELSE=SYSMIS).
RECODE q44_2 (ELSE=SYSMIS).
RECODE q44_3 (ELSE=SYSMIS).
RECODE q44_4 (ELSE=SYSMIS).
RECODE q44_5 (ELSE=SYSMIS).
RECODE q44_6 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q43************************************************************************************

DO IF (q43_0=1).
RECODE q43_1 (ELSE=SYSMIS).
RECODE q43_2 (ELSE=SYSMIS).
RECODE q43_3 (ELSE=SYSMIS).
RECODE q43_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q45************************************************************************************

compute q45_0_velha = q45_0. 
compute q45_1_velha =q45_1. 
compute q45_2_velha = q45_2. 
compute q45_3_velha = q45_3. 
compute q45_4_velha =q45_4. 
compute q45_5_velha =q45_5. 
compute q45_6_velha = q45_6. 
compute q45_7_velha =q45_7. 
compute q45_8_velha = q45_8. 
compute q45_9_velha = q45_9. 
compute q45_10_velha =q45_10. 
compute q45_11_velha =q45_11. 
compute q45_12_velha = q45_12. 
compute q45_13_velha =q45_13. 
compute q45_99_velha =q45_99. 
execute. 


DO IF (q45_0=1).
RECODE q45_1 (ELSE=SYSMIS).
RECODE q45_2 (ELSE=SYSMIS).
RECODE q45_3 (ELSE=SYSMIS).
RECODE q45_4 (ELSE=SYSMIS).
RECODE q45_5 (ELSE=SYSMIS).
RECODE q45_6 (ELSE=SYSMIS).
RECODE q45_7 (ELSE=SYSMIS).
RECODE q45_8 (ELSE=SYSMIS).
RECODE q45_9 (ELSE=SYSMIS).
RECODE q45_10 (ELSE=SYSMIS).
RECODE q45_11 (ELSE=SYSMIS).
RECODE q45_12 (ELSE=SYSMIS).
RECODE q45_13 (ELSE=SYSMIS).
RECODE q45_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q46*******************************************************************************************

compute q46_1_velha =q46_1. 
compute q46_2_velha = q46_2. 
compute q46_3_velha = q46_3. 
compute q46_4_velha =q46_4. 
compute q46_5_velha =q46_5. 
compute q46_6_velha = q46_6. 
compute q46_7_velha =q46_7. 
compute q46_8_velha = q46_8. 
compute q46_9_velha = q46_9. 
compute q46_10_velha =q46_10. 
compute q46_11_velha =q46_11. 
compute q46_12_velha = q46_12. 
compute q46_13_velha =q46_13. 
compute q46_14_velha =q46_14. 
compute q46_15_velha =q46_15. 
compute q46_16_velha =q46_16. 
compute q46_99_velha =q46_99. 
execute. 


DO IF (q46_1=1).
RECODE q46_2 (ELSE=SYSMIS).
RECODE q46_3 (ELSE=SYSMIS).
RECODE q46_4 (ELSE=SYSMIS).
RECODE q46_5 (ELSE=SYSMIS).
RECODE q46_6 (ELSE=SYSMIS).
RECODE q46_7 (ELSE=SYSMIS).
RECODE q46_8 (ELSE=SYSMIS).
RECODE q46_9 (ELSE=SYSMIS).
RECODE q46_10 (ELSE=SYSMIS).
RECODE q46_11 (ELSE=SYSMIS).
RECODE q46_12 (ELSE=SYSMIS).
RECODE q46_13 (ELSE=SYSMIS).
RECODE q46_14 (ELSE=SYSMIS).
RECODE q46_15 (ELSE=SYSMIS).
RECODE q46_16 (ELSE=SYSMIS).
RECODE q46_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q48*******************************************************************************************

compute q48_0_velha = q48_0. 
compute q48_1_velha =q48_1. 
compute q48_2_velha = q48_2. 
compute q48_3_velha = q48_3. 
compute q48_4_velha =q48_4. 
compute q48_5_velha =q48_5. 
compute q48_6_velha = q48_6. 
compute q48_7_velha =q48_7. 
compute q48_8_velha = q48_8. 
compute q48_9_velha = q48_9. 
compute q48_10_velha =q48_10. 
compute q48_11_velha =q48_11. 
compute q48_12_velha = q48_12. 
compute q48_13_velha =q48_13. 
compute q48_14_velha =q48_14. 
compute q48_15_velha =q48_15. 
compute q48_99_velha =q48_99. 
execute. 


DO IF (q48_0=1).
RECODE q48_1 (ELSE=SYSMIS).
RECODE q48_2 (ELSE=SYSMIS).
RECODE q48_3 (ELSE=SYSMIS).
RECODE q48_4 (ELSE=SYSMIS).
RECODE q48_5 (ELSE=SYSMIS).
RECODE q48_6 (ELSE=SYSMIS).
RECODE q48_7 (ELSE=SYSMIS).
RECODE q48_8 (ELSE=SYSMIS).
RECODE q48_9 (ELSE=SYSMIS).
RECODE q48_10 (ELSE=SYSMIS).
RECODE q48_11 (ELSE=SYSMIS).
RECODE q48_12 (ELSE=SYSMIS).
RECODE q48_13 (ELSE=SYSMIS).
RECODE q48_14 (ELSE=SYSMIS).
RECODE q48_15 (ELSE=SYSMIS).
RECODE q48_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q51****************************************************************************************************


compute q51_1_velha =q51_1. 
compute q51_2_velha = q51_2. 
compute q51_3_velha = q51_3. 
compute q51_4_velha =q51_4. 
compute q51_5_velha =q51_5. 
compute q51_6_velha = q51_6. 
compute q51_7_velha =q51_7. 
compute q51_8_velha = q51_8. 
compute q51_9_velha = q51_9. 
compute q51_10_velha =q51_10. 
compute q51_11_velha =q51_11. 
compute q51_99_velha =q51_99. 
compute q52_1_velha =q52_1. 
compute q52_2_velha = q52_2. 
compute q52_3_velha = q52_3. 
compute q52_99_velha =q52_99. 
compute q53_velha =q53. 
compute q54_1_velha =q54_1. 
compute q54_2_velha = q54_2. 
compute q54_3_velha = q54_3. 
compute q54_4_velha =q54_4. 
compute q54_5_velha =q54_5. 
compute q54_99_velha = q54_99. 
execute. 



DO IF (q51_1=1).
RECODE q51_2 (ELSE=SYSMIS).
RECODE q51_3 (ELSE=SYSMIS).
RECODE q51_4 (ELSE=SYSMIS).
RECODE q51_5 (ELSE=SYSMIS).
RECODE q51_6 (ELSE=SYSMIS).
RECODE q51_7 (ELSE=SYSMIS).
RECODE q51_8 (ELSE=SYSMIS).
RECODE q51_9 (ELSE=SYSMIS).
RECODE q51_10 (ELSE=SYSMIS).
RECODE q51_11 (ELSE=SYSMIS).
RECODE q51_99 (ELSE=SYSMIS).
RECODE q52_1 (ELSE=SYSMIS).
RECODE q52_2 (ELSE=SYSMIS).
RECODE q52_3 (ELSE=SYSMIS).
RECODE q52_99 (ELSE=SYSMIS).
RECODE q53 (ELSE=SYSMIS).
RECODE q54_1 (ELSE=SYSMIS).
RECODE q54_2 (ELSE=SYSMIS).
RECODE q54_3 (ELSE=SYSMIS).
RECODE q54_4 (ELSE=SYSMIS).
RECODE q54_5 (ELSE=SYSMIS).
RECODE q54_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q54_1=1).
RECODE q54_1 (ELSE=SYSMIS).
RECODE q54_2 (ELSE=SYSMIS).
RECODE q54_3 (ELSE=SYSMIS).
RECODE q54_4 (ELSE=SYSMIS).
RECODE q54_5 (ELSE=SYSMIS).
RECODE q54_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q55**********programa criança feliz***********bloco 11*******************************************************

compute q56_1_velha =q56_1. 
compute q56_2_velha =q56_2. 
compute q56_3_velha =q56_3. 
compute q56_4_velha =q56_4. 
compute q56_5_velha =q56_5. 
compute q56_0_velha =q56_0. 
compute q57_velha =q57. 
compute q58_1_velha =q58_1. 
compute q58_2_velha =q58_2. 
compute q58_3_velha =q58_3. 
compute q58_4_velha =q58_4. 
compute q58_5_velha =q58_5. 
compute q59_0_velha =q59_0. 
compute q59_1_velha =q59_1. 
compute q59_2_velha =q59_2. 
compute q59_3_velha =q59_3. 
compute q59_4_velha =q59_4. 
compute q59_5_velha =q59_5. 
compute q59_6_velha =q59_6. 
compute q59_7_velha =q59_7. 
compute q59_8_velha =q59_8. 
compute q59_9_velha =q59_9. 
compute q59_10_velha =q59_10. 
compute q59_11_velha =q59_11. 
compute q59_99_velha = q59_99. 
execute. 


DO IF (q55=0).
RECODE q56_1 (ELSE=SYSMIS).
RECODE q56_2 (ELSE=SYSMIS).
RECODE q56_3 (ELSE=SYSMIS).
RECODE q56_4 (ELSE=SYSMIS).
RECODE q56_5 (ELSE=SYSMIS).
RECODE q56_0 (ELSE=SYSMIS).
RECODE q57 (ELSE=SYSMIS).
RECODE q58_1 (ELSE=SYSMIS).
RECODE q58_2 (ELSE=SYSMIS).
RECODE q58_3 (ELSE=SYSMIS).
RECODE q58_4 (ELSE=SYSMIS).
RECODE q58_5 (ELSE=SYSMIS).
RECODE q59_0 (ELSE=SYSMIS).
RECODE q59_1 (ELSE=SYSMIS).
RECODE q59_2 (ELSE=SYSMIS).
RECODE q59_3 (ELSE=SYSMIS).
RECODE q59_4 (ELSE=SYSMIS).
RECODE q59_5 (ELSE=SYSMIS).
RECODE q59_6 (ELSE=SYSMIS).
RECODE q59_7 (ELSE=SYSMIS).
RECODE q59_8 (ELSE=SYSMIS).
RECODE q59_9 (ELSE=SYSMIS).
RECODE q59_10 (ELSE=SYSMIS).
RECODE q59_11 (ELSE=SYSMIS).
RECODE q59_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

********q62**************gestão e territorio******bloco 12***********************************************************************************************************************

compute q63_1_velha =q63_1. 
compute q63_2_velha =q63_2. 
compute q63_3_velha =q63_3. 
compute q63_4_velha =q63_4. 
compute q63_99_velha =q63_99. 
execute. 



DO IF (q62=0).
RECODE q63_1 (ELSE=SYSMIS).
RECODE q63_2 (ELSE=SYSMIS).
RECODE q63_3 (ELSE=SYSMIS).
RECODE q63_4 (ELSE=SYSMIS).
RECODE q63_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

********q65***********************************************************************************************************

compute q65_1_0_velha = q65_1_0. 
compute q65_1_1_velha =q65_1_1. 
compute q65_1_2_velha = q65_1_2. 
compute q65_1_3_velha = q65_1_3. 
compute q65_1_4_velha =q65_1_4. 
compute q65_1_5_velha =q65_1_5. 
compute q65_1_99_velha =q65_1_99. 
compute q65_2_0_velha = q65_2_0. 
compute q65_2_1_velha =q65_2_1. 
compute q65_2_2_velha = q65_2_2. 
compute q65_2_3_velha = q65_2_3. 
compute q65_2_4_velha =q65_2_4. 
compute q65_2_5_velha =q65_2_5. 
compute q65_2_99_velha =q65_2_99. 
 compute q65_3_0_velha = q65_3_0. 
compute q65_3_1_velha =q65_3_1. 
compute q65_3_2_velha = q65_3_2. 
compute q65_3_3_velha = q65_3_3. 
compute q65_3_4_velha =q65_3_4. 
compute q65_3_5_velha =q65_3_5. 
compute q65_3_99_velha =q65_3_99. 
compute q65_4_0_velha = q65_4_0. 
compute q65_4_1_velha =q65_4_1. 
compute q65_4_2_velha = q65_4_2. 
compute q65_4_3_velha = q65_4_3. 
compute q65_4_4_velha =q65_4_4. 
compute q65_4_5_velha =q65_4_5. 
compute q65_4_99_velha =q65_4_99. 
compute q65_5_0_velha = q65_5_0. 
compute q65_5_1_velha =q65_5_1. 
compute q65_5_2_velha = q65_5_2. 
compute q65_5_3_velha = q65_5_3. 
compute q65_5_4_velha =q65_5_4. 
compute q65_5_5_velha =q65_5_5. 
compute q65_5_99_velha =q65_5_99. 
compute q65_6_0_velha = q65_6_0. 
compute q65_6_1_velha =q65_6_1. 
compute q65_6_2_velha = q65_6_2. 
compute q65_6_3_velha = q65_6_3. 
compute q65_6_4_velha =q65_6_4. 
compute q65_6_5_velha =q65_6_5. 
compute q65_6_99_velha =q65_6_99. 
compute q65_7_0_velha = q65_7_0. 
compute q65_7_1_velha =q65_7_1. 
compute q65_7_2_velha = q65_7_2. 
compute q65_7_3_velha = q65_7_3. 
compute q65_7_4_velha =q65_7_4. 
compute q65_7_5_velha =q65_7_5. 
compute q65_7_99_velha =q65_7_99. 
compute q65_8_0_velha = q65_8_0. 
compute q65_8_1_velha =q65_8_1. 
compute q65_8_2_velha = q65_8_2. 
compute q65_8_3_velha = q65_8_3. 
compute q65_8_4_velha =q65_8_4. 
compute q65_8_5_velha =q65_8_5. 
compute q65_8_99_velha =q65_8_99. 
compute q65_9_0_velha = q65_9_0. 
compute q65_9_1_velha =q65_9_1. 
compute q65_9_2_velha = q65_9_2. 
compute q65_9_3_velha = q65_9_3. 
compute q65_9_4_velha =q65_9_4. 
compute q65_9_5_velha =q65_9_5. 
compute q65_9_99_velha =q65_9_99. 
compute q65_10_0_velha = q65_10_0. 
compute q65_10_1_velha =q65_10_1. 
compute q65_10_2_velha = q65_10_2. 
compute q65_10_3_velha = q65_10_3. 
compute q65_10_4_velha =q65_10_4. 
compute q65_10_5_velha =q65_10_5. 
compute q65_10_99_velha =q65_10_99. 
compute q65_11_0_velha = q65_11_0. 
compute q65_11_1_velha =q65_11_1. 
compute q65_11_2_velha = q65_11_2. 
compute q65_11_3_velha = q65_11_3. 
compute q65_11_4_velha =q65_11_4. 
compute q65_11_5_velha =q65_11_5. 
compute q65_11_99_velha =q65_11_99. 
compute q65_12_0_velha = q65_12_0. 
compute q65_12_1_velha =q65_12_1. 
compute q65_12_2_velha = q65_12_2. 
compute q65_12_3_velha = q65_12_3. 
compute q65_12_4_velha =q65_12_4. 
compute q65_12_5_velha =q65_12_5. 
compute q65_12_99_velha =q65_12_99. 
compute q65_13_0_velha = q65_13_0. 
compute q65_13_1_velha =q65_13_1. 
compute q65_13_2_velha = q65_13_2. 
compute q65_13_3_velha = q65_13_3. 
compute q65_13_4_velha =q65_13_4. 
compute q65_13_5_velha =q65_13_5. 
compute q65_13_99_velha =q65_13_99. 
compute q65_14_0_velha = q65_14_0. 
compute q65_14_1_velha =q65_14_1. 
compute q65_14_2_velha = q65_14_2. 
compute q65_14_3_velha = q65_14_3. 
compute q65_14_4_velha =q65_14_4. 
compute q65_14_5_velha =q65_14_5. 
compute q65_14_99_velha =q65_14_99. 
compute q65_15_0_velha = q65_15_0. 
compute q65_15_1_velha =q65_15_1. 
compute q65_15_2_velha = q65_15_2. 
compute q65_15_3_velha = q65_15_3. 
compute q65_15_4_velha =q65_15_4. 
compute q65_15_5_velha =q65_15_5. 
compute q65_15_99_velha =q65_15_99. 
compute q65_16_0_velha = q65_16_0. 
compute q65_16_1_velha =q65_16_1. 
compute q65_16_2_velha = q65_16_2. 
compute q65_16_3_velha = q65_16_3. 
compute q65_16_4_velha =q65_16_4. 
compute q65_16_5_velha =q65_16_5. 
compute q65_16_99_velha =q65_16_99. 
execute. 


DO IF (q65_1_0=1 | q65_1_5=1).
RECODE q65_1_1 (ELSE=SYSMIS).
RECODE q65_1_2 (ELSE=SYSMIS).
RECODE q65_1_3 (ELSE=SYSMIS).
RECODE q65_1_4 (ELSE=SYSMIS).
RECODE q65_1_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q65_2_0=1 | q65_2_5=1).
RECODE q65_2_1 (ELSE=SYSMIS).
RECODE q65_2_2 (ELSE=SYSMIS).
RECODE q65_2_3 (ELSE=SYSMIS).
RECODE q65_2_4 (ELSE=SYSMIS).
RECODE q65_2_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_3_0=1 | q65_3_5=1).
RECODE q65_3_1 (ELSE=SYSMIS).
RECODE q65_3_2 (ELSE=SYSMIS).
RECODE q65_3_3 (ELSE=SYSMIS).
RECODE q65_3_4 (ELSE=SYSMIS).
RECODE q65_3_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_4_0=1 | q65_4_5=1).
RECODE q65_4_1 (ELSE=SYSMIS).
RECODE q65_4_2 (ELSE=SYSMIS).
RECODE q65_4_3 (ELSE=SYSMIS).
RECODE q65_4_4 (ELSE=SYSMIS).
RECODE q65_4_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_5_0=1 | q65_5_5=1).
RECODE q65_5_1 (ELSE=SYSMIS).
RECODE q65_5_2 (ELSE=SYSMIS).
RECODE q65_5_3 (ELSE=SYSMIS).
RECODE q65_5_4 (ELSE=SYSMIS).
RECODE q65_5_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_6_0=1 | q65_6_5=1).
RECODE q65_6_1 (ELSE=SYSMIS).
RECODE q65_6_2 (ELSE=SYSMIS).
RECODE q65_6_3 (ELSE=SYSMIS).
RECODE q65_6_4 (ELSE=SYSMIS).
RECODE q65_6_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q65_7_0=1 | q65_7_5=1).
RECODE q65_7_1 (ELSE=SYSMIS).
RECODE q65_7_2 (ELSE=SYSMIS).
RECODE q65_7_3 (ELSE=SYSMIS).
RECODE q65_7_4 (ELSE=SYSMIS).
RECODE q65_7_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_8_0=1 | q65_8_5=1).
RECODE q65_8_1 (ELSE=SYSMIS).
RECODE q65_8_2 (ELSE=SYSMIS).
RECODE q65_8_3 (ELSE=SYSMIS).
RECODE q65_8_4 (ELSE=SYSMIS).
RECODE q65_8_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_9_0=1 | q65_9_5=1).
RECODE q65_9_1 (ELSE=SYSMIS).
RECODE q65_9_2 (ELSE=SYSMIS).
RECODE q65_9_3 (ELSE=SYSMIS).
RECODE q65_9_4 (ELSE=SYSMIS).
RECODE q65_9_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_10_0=1 | q65_10_5=1).
RECODE q65_10_1 (ELSE=SYSMIS).
RECODE q65_10_2 (ELSE=SYSMIS).
RECODE q65_10_3 (ELSE=SYSMIS).
RECODE q65_10_4 (ELSE=SYSMIS).
RECODE q65_10_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_11_0=1 | q65_11_5=1).
RECODE q65_11_1 (ELSE=SYSMIS).
RECODE q65_11_2 (ELSE=SYSMIS).
RECODE q65_11_3 (ELSE=SYSMIS).
RECODE q65_11_4 (ELSE=SYSMIS).
RECODE q65_11_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_12_0=1 | q65_12_5=1).
RECODE q65_12_1 (ELSE=SYSMIS).
RECODE q65_12_2 (ELSE=SYSMIS).
RECODE q65_12_3 (ELSE=SYSMIS).
RECODE q65_12_4 (ELSE=SYSMIS).
RECODE q65_12_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q65_13_0=1 | q65_13_5=1).
RECODE q65_13_1 (ELSE=SYSMIS).
RECODE q65_13_2 (ELSE=SYSMIS).
RECODE q65_13_3 (ELSE=SYSMIS).
RECODE q65_13_4 (ELSE=SYSMIS).
RECODE q65_13_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_14_0=1 | q65_14_5=1).
RECODE q65_14_1 (ELSE=SYSMIS).
RECODE q65_14_2 (ELSE=SYSMIS).
RECODE q65_14_3 (ELSE=SYSMIS).
RECODE q65_14_4 (ELSE=SYSMIS).
RECODE q65_14_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_15_0=1 | q65_15_5=1).
RECODE q65_15_1 (ELSE=SYSMIS).
RECODE q65_15_2 (ELSE=SYSMIS).
RECODE q65_15_3 (ELSE=SYSMIS).
RECODE q65_15_4 (ELSE=SYSMIS).
RECODE q65_15_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q65_16_0=1 | q65_16_5=1).
RECODE q65_16_1 (ELSE=SYSMIS).
RECODE q65_16_2 (ELSE=SYSMIS).
RECODE q65_16_3 (ELSE=SYSMIS).
RECODE q65_16_4 (ELSE=SYSMIS).
RECODE q65_16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.






********q67*******************************************************************************************************************************************

compute q67_1_0_velha =q67_1_0. 
compute q67_1_1_velha =q67_1_1. 
compute q67_1_2_velha = q67_1_2. 
compute q67_1_3_velha = q67_1_3. 
compute q67_1_4_velha =q67_1_4. 
compute q67_1_5_velha =q67_1_5. 
compute q67_1_6_velha = q67_1_6. 
compute q67_1_7_velha =q67_1_7. 
compute q67_1_8_velha =q67_1_8. 
compute q67_1_9_velha =q67_1_9. 
compute q67_2_0_velha =q67_2_0. 
compute q67_2_1_velha =q67_2_1. 
compute q67_2_2_velha = q67_2_2. 
compute q67_2_3_velha = q67_2_3. 
compute q67_2_4_velha =q67_2_4. 
compute q67_2_5_velha =q67_2_5. 
compute q67_2_6_velha = q67_2_6. 
compute q67_2_7_velha =q67_2_7. 
compute q67_2_8_velha =q67_2_8. 
compute q67_12_9_velha =q67_2_9. 
compute q67_3_0_velha =q67_3_0. 
compute q67_3_1_velha =q67_3_1. 
compute q67_3_2_velha = q67_3_2. 
compute q67_3_3_velha = q67_3_3. 
compute q67_3_4_velha =q67_3_4. 
compute q67_3_5_velha =q67_3_5. 
compute q67_3_6_velha = q67_3_6. 
compute q67_3_7_velha =q67_3_7. 
compute q67_3_8_velha =q67_3_8. 
compute q67_3_9_velha =q67_3_9. 
compute q67_4_0_velha =q67_4_0. 
compute q67_4_1_velha =q67_4_1. 
compute q67_4_2_velha = q67_4_2. 
compute q67_4_3_velha = q67_4_3. 
compute q67_4_4_velha =q67_4_4. 
compute q67_4_5_velha =q67_4_5. 
compute q67_4_6_velha = q67_4_6. 
compute q67_4_7_velha =q67_4_7. 
compute q67_4_8_velha =q67_4_8. 
compute q67_4_9_velha =q67_4_9. 
compute q67_1_0_velha =q67_1_0. 
compute q67_1_1_velha =q67_1_1. 
compute q67_1_2_velha = q67_1_2. 
compute q67_1_3_velha = q67_1_3. 
compute q67_1_4_velha =q67_1_4. 
compute q67_1_5_velha =q67_1_5. 
compute q67_1_6_velha = q67_1_6. 
compute q67_1_7_velha =q67_1_7. 
compute q67_1_8_velha =q67_1_8. 
compute q67_1_9_velha =q67_1_9. 
compute q67_5_0_velha =q67_5_0. 
compute q67_5_1_velha =q67_5_1. 
compute q67_5_2_velha = q67_5_2. 
compute q67_5_3_velha = q67_5_3. 
compute q67_5_4_velha =q67_5_4. 
compute q67_5_5_velha =q67_5_5. 
compute q67_5_6_velha = q67_5_6. 
compute q67_5_7_velha =q67_5_7. 
compute q67_5_8_velha =q67_5_8. 
compute q67_5_9_velha =q67_5_9. 
compute q67_6_0_velha =q67_6_0. 
compute q67_6_1_velha =q67_6_1. 
compute q67_6_2_velha = q67_6_2. 
compute q67_6_3_velha = q67_6_3. 
compute q67_6_4_velha =q67_6_4. 
compute q67_6_5_velha =q67_6_5. 
compute q67_6_6_velha = q67_6_6. 
compute q67_6_7_velha =q67_6_7. 
compute q67_6_8_velha =q67_6_8. 
compute q67_6_9_velha =q67_6_9. 
compute q67_7_0_velha =q67_7_0. 
compute q67_7_1_velha =q67_7_1. 
compute q67_7_2_velha = q67_7_2. 
compute q67_7_3_velha = q67_7_3. 
compute q67_7_4_velha =q67_7_4. 
compute q67_7_5_velha =q67_7_5. 
compute q67_7_6_velha = q67_7_6. 
compute q67_7_7_velha =q67_7_7. 
compute q67_7_8_velha =q67_7_8. 
compute q67_7_9_velha =q67_7_9. 
compute q67_8_0_velha =q67_8_0. 
compute q67_8_1_velha =q67_8_1. 
compute q67_8_2_velha = q67_8_2. 
compute q67_8_3_velha = q67_8_3. 
compute q67_8_4_velha =q67_8_4. 
compute q67_8_5_velha =q67_8_5. 
compute q67_8_6_velha = q67_8_6. 
compute q67_8_7_velha =q67_8_7. 
compute q67_8_8_velha =q67_8_8. 
compute q67_8_9_velha =q67_8_9. 
compute q67_9_0_velha =q67_9_0. 
compute q67_9_1_velha =q67_9_1. 
compute q67_9_2_velha = q67_9_2. 
compute q67_9_3_velha = q67_9_3. 
compute q67_9_4_velha =q67_9_4. 
compute q67_9_5_velha =q67_9_5. 
compute q67_9_6_velha = q67_9_6. 
compute q67_9_7_velha =q67_9_7. 
compute q67_9_8_velha =q67_9_8. 
compute q67_9_9_velha =q67_9_9. 
compute q67_10_0_velha =q67_10_0. 
compute q67_10_1_velha =q67_10_1. 
compute q67_10_2_velha = q67_10_2. 
compute q67_10_3_velha = q67_10_3. 
compute q67_10_4_velha =q67_10_4. 
compute q67_10_5_velha =q67_10_5. 
compute q67_10_6_velha = q67_10_6. 
compute q67_10_7_velha =q67_10_7. 
compute q67_10_8_velha =q67_10_8. 
compute q67_10_9_velha =q67_10_9. 
execute. 


DO IF (q67_1_0=1 | q67_1_9=1).
RECODE q67_1_1 (ELSE=SYSMIS).
RECODE q67_1_2 (ELSE=SYSMIS).
RECODE q67_1_3 (ELSE=SYSMIS).
RECODE q67_1_4 (ELSE=SYSMIS).
RECODE q67_1_5 (ELSE=SYSMIS).
RECODE q67_1_6(ELSE=SYSMIS).
RECODE q67_1_7 (ELSE=SYSMIS).
RECODE q67_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q67_2_0=1 | q67_2_9=1).
RECODE q67_2_1 (ELSE=SYSMIS).
RECODE q67_2_2 (ELSE=SYSMIS).
RECODE q67_2_3 (ELSE=SYSMIS).
RECODE q67_2_4 (ELSE=SYSMIS).
RECODE q67_2_5 (ELSE=SYSMIS).
RECODE q67_2_6(ELSE=SYSMIS).
RECODE q67_2_7 (ELSE=SYSMIS).
RECODE q67_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q67_3_0=1 | q67_3_9=1).
RECODE q67_3_1 (ELSE=SYSMIS).
RECODE q67_3_2 (ELSE=SYSMIS).
RECODE q67_3_3 (ELSE=SYSMIS).
RECODE q67_3_4 (ELSE=SYSMIS).
RECODE q67_3_5 (ELSE=SYSMIS).
RECODE q67_3_6(ELSE=SYSMIS).
RECODE q67_3_7 (ELSE=SYSMIS).
RECODE q67_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q67_4_0=1 | q67_4_9=1).
RECODE q67_4_1 (ELSE=SYSMIS).
RECODE q67_4_2 (ELSE=SYSMIS).
RECODE q67_4_3 (ELSE=SYSMIS).
RECODE q67_4_4 (ELSE=SYSMIS).
RECODE q67_4_5 (ELSE=SYSMIS).
RECODE q67_4_6(ELSE=SYSMIS).
RECODE q67_4_7 (ELSE=SYSMIS).
RECODE q67_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q67_5_0=1 | q67_5_9=1).
RECODE q67_5_1 (ELSE=SYSMIS).
RECODE q67_5_2 (ELSE=SYSMIS).
RECODE q67_5_3 (ELSE=SYSMIS).
RECODE q67_5_4 (ELSE=SYSMIS).
RECODE q67_5_5 (ELSE=SYSMIS).
RECODE q67_5_6(ELSE=SYSMIS).
RECODE q67_5_7 (ELSE=SYSMIS).
RECODE q67_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q67_6_0=1 | q67_6_9=1).
RECODE q67_6_1 (ELSE=SYSMIS).
RECODE q67_6_2 (ELSE=SYSMIS).
RECODE q67_6_3 (ELSE=SYSMIS).
RECODE q67_6_4 (ELSE=SYSMIS).
RECODE q67_6_5 (ELSE=SYSMIS).
RECODE q67_6_6(ELSE=SYSMIS).
RECODE q67_6_7 (ELSE=SYSMIS).
RECODE q67_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q67_7_0=1 | q67_7_9=1).
RECODE q67_7_1 (ELSE=SYSMIS).
RECODE q67_7_2 (ELSE=SYSMIS).
RECODE q67_7_3 (ELSE=SYSMIS).
RECODE q67_7_4 (ELSE=SYSMIS).
RECODE q67_7_5 (ELSE=SYSMIS).
RECODE q67_7_6(ELSE=SYSMIS).
RECODE q67_7_7 (ELSE=SYSMIS).
RECODE q67_7_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q67_8_0=1 | q67_8_9=1).
RECODE q67_8_1 (ELSE=SYSMIS).
RECODE q67_8_2 (ELSE=SYSMIS).
RECODE q67_8_3 (ELSE=SYSMIS).
RECODE q67_8_4 (ELSE=SYSMIS).
RECODE q67_8_5 (ELSE=SYSMIS).
RECODE q67_8_6(ELSE=SYSMIS).
RECODE q67_8_7 (ELSE=SYSMIS).
RECODE q67_8_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q67_9_0=1 | q67_9_9=1).
RECODE q67_9_1 (ELSE=SYSMIS).
RECODE q67_9_2 (ELSE=SYSMIS).
RECODE q67_9_3 (ELSE=SYSMIS).
RECODE q67_9_4 (ELSE=SYSMIS).
RECODE q67_9_5 (ELSE=SYSMIS).
RECODE q67_9_6(ELSE=SYSMIS).
RECODE q67_9_7 (ELSE=SYSMIS).
RECODE q67_9_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q67_10_0=1 | q67_10_9=1).
RECODE q67_10_1 (ELSE=SYSMIS).
RECODE q67_10_2 (ELSE=SYSMIS).
RECODE q67_10_3 (ELSE=SYSMIS).
RECODE q67_10_4 (ELSE=SYSMIS).
RECODE q67_10_5 (ELSE=SYSMIS).
RECODE q67_10_6(ELSE=SYSMIS).
RECODE q67_10_7 (ELSE=SYSMIS).
RECODE q67_10_8 (ELSE=SYSMIS).
END IF.
EXECUTE.








VARIABLE LABELS
q5_1_velha  'q5_1_v10367_1_1 - Secretaria da Assistência Social ou congênere_compartilha com'
q5_2_velha 'q5_2_v10367_2_2 - Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-prefeitura, etc)_compartilha com'
q5_3_velha 'q5_3_v10367_3_3 - Conselho Municipal de Assistência Social_compartilha com'
q5_4_velha 'q5_4_v10367_4_4 - Conselho Tutelar_compartilha com'
q5_5_velha 'q5_5_v10367_5_5 - CREAS – Centro de Referência Especializado de Assistência Social_compartilha com'
q5_6_velha 'q5_6_v10367_6_6 - Outra unidade pública de serviços da Assistência Social_compartilha com'
q5_7_velha 'q5_7_v10367_7_7 - Unidade de Saúde_compartilha com'
q5_8_velha 'q5_8_v10367_8_8 - Escola_compartilha com'
q5_9_velha 'q5_9_v10367_9_9 - Associação Comunitária_compartilha com'
q5_10_velha 'q5_10_v10367_10_10 - Entidades ou Organização da Sociedade Civil de Assistência Social_compartilha com'
q5_11_velha 'q5_11_v10367_11_11 - Organizações da sociedade civil de outras áreas_compartilha com'
q5_12_velha 'q5_12_v10367_12_12 - Estação Cidadania/Praça do CEU (esporte e/ou cultura)_compartilha com'
q5_13_velha 'q5_13_v10367_13_13 - Conselho Municipal de Direitos da Criança e do Adolescente – CMDCA_compartilha com'
q5_99_velha 'q5_99_v10367_99_99 - Outros_compartilha com'
q6_1_velha 'q6_1_v10369_1_1 - Apenas o endereço é o mesmo, mas todos os espaços do CRAS são independentes e de uso exclusivo, inclusive a entrada_quais espaços são compartilhados'
q6_2_velha 'q6_2_v10369_2_2 - Entrada / Porta de Acesso_quais espaços são compartilhados'
q6_3_velha 'q6_3_v10369_3_3 - Recepção_quais espaços são compartilhados'
q6_4_velha 'q6_4_v10369_4_4 - Cozinha_quais espaços são compartilhados'
q6_5_velha 'q6_5_v10369_5_5 - Algumas salas de atendimento particularizado_quais espaços são compartilhados'
q6_6_velha 'q6_6_v10369_6_6 - Todas as salas de atendimento particularizado_quais espaços são compartilhados'
q6_7_velha 'q6_7_v10369_7_7 - Algumas salas de atendimento coletivo_quais espaços são compartilhados'
q6_8_velha 'q6_8_v10369_8_8 - Todas as salas de atendimento coletivo_quais espaços são compartilhados'
q6_9_velha 'q6_9_v10369_9_9 - Salas administrativas_quais espaços são compartilhados'
q6_10_velha 'q6_10_v10369_10_10 - Banheiros_quais espaços são compartilhados'
q6_11_velha 'q6_11_v10369_11_11 - Área Externa_quais espaços são compartilhados'
q6_12_velha 'q6_12_v10369_12_12 - Almoxarifado ou similar_quais espaços são compartilhados'
q9_1_velha 'q9_1_v12572_1_1 - Sim, suporte de profissional com conhecimento em LIBRAS_outras adaptações para acessibilidade'
q9_2_velha 'q9_2_v12572_2_2 - Sim, suporte de material em braille_outras adaptações para acessibilidade'
q9_3_velha 'q9_3_v12572_3_3 - Sim, suporte para leitores de telas de computador para pessoas com deficiência visual_outras adaptações para acessibilidade'
q9_4_velha 'q9_4_v12572_4_4 - Sim, há outras adaptações ou estratégias para assegurar acessibilidade às pessoas com deficiência auditiva/surdas e pessoas com deficiência visual neste CRAS_outras adaptações para acessibilidade'
q9_5_velha 'q9_5_v12572_5_5 - Sim, outras adaptações e tecnologias assistivas para deficiência física_outras adaptações para acessibilidade'
q9_6_velha 'q9_6_v12572_6_6 - Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo_outras adaptações para acessibilidade'
q9_7_velha 'q9_7_v12572_7_7 - Sim, pisos especiais com relevos para sinalização voltados pessoa com deficiência visual_outras adaptações para acessibilidade'
q9_0_velha 'q9_0_v12572_0_0 - Não há outras adaptações_outras adaptações para acessibilidade'
q14_98_velha 'q14_98_v14790_98_Não sabe informar - quantidade de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q14_velha 'q14_v14349_Quantidade total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF'
q14_1_1_velha 'q14_1_1_v14350_Do total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF quantos são - Masculino 0 a 18 anos'
q14_1_2_velha 'q14_1_2_v14351_Do total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF quantos são - Masculino 19 a 59 anos'
q14_1_3_velha 'q14_1_3_v14348_Do total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF quantos são  - Masculino 60 anos ou mais'
q14_2_1_velha 'q14_2_1_v14353_Do total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF quantos são - Feminino 0 a 18 anos'
q14_2_2_velha 'q14_2_2_v14352_Do total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF quantos são - Feminino 19 a 59 anos'
q14_2_3_velha 'q14_2_3_v14354_Do total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF quantos são - Feminino 60 anos ou mais'
q15_1_velha 'q15_1_v15380_1_1 - Não há atendimento coletivo no PAIF'
q15_2_velha 'q15_2_v15380_2_2 - Direito à transferência de renda e benefícios assistenciais'
q15_3_velha 'q15_3_v15380_3_3 - Direito a Documentação Civil Básica (certidão de nascimento, CPF, RG, título eleitoral)'
q15_4_velha'q15_4_v15380_4_4 - Direito a cultura e lazer'
q15_5_velha 'q15_5_v15380_5_5 - Direito das Mulheres'
q15_6_velha 'q15_6_v15380_6_6 - Direitos das pessoas com deficiência'
q15_7_velha 'q15_7_v15380_7_7 - Direito à Alimentação'
q15_8_velha 'q15_8_v15380_8_8 - Os direitos das famílias'
q15_9_velha 'q15_9_v15380_9_9 - Primeira infância – direitos e cuidados'
q15_10_velha 'q15_10_v15380_10_10 - Adolescência e gravidez'
q15_11_velha 'q15_11_v15380_11_11 - Direito das pessoas idosas'
q15_12_velha 'q15_12_v15380_12_12 - PBF e Condicionalidades'
q15_13_velha 'q15_13_v15380_13_13 - Prevenção ao Trabalho escravo e tráfico de pessoas'
q15_14_velha 'q15_14_v15380_14_14 - Prevenção ao trabalho infantil;'
q15_15_velha 'q15_15_v15380_15_15 - Convivência familiar filhos com mães encarceradas'
q15_16_velha 'q15_16_v15380_16_16 - Cuidar de quem cuida'
q15_17_velha 'q15_17_v15380_17_17 - O uso de álcool e/ou outras drogas na família'
q15_18_velha 'q15_18_v15380_18_18 - Problemas e soluções do território'
q15_19_velha 'q15_19_v15380_19_19 - Diversidade cultural, étnica e social'
q15_20_velha 'q15_20_v15380_20_20 - Violência doméstica contra mulheres'
q15_21_velha 'q15_21_v15380_21_21 - Violência doméstica contra crianças e adolescentes'
q15_22_velha 'q15_22_v15380_22_22 - Violência doméstica contra pessoas idosas'
q15_23_velha 'q15_23_v15380_23_23 - Saúde mental e prevenção ao suicídio'
q15_24_velha 'q15_24_v15380_24_24 - Sexualidade'
q15_25_velha 'q15_25_v15380_25_25 - Planejamento familiar/gravidez na adolescência'
q15_26_velha 'q15_26_v15380_26_26 - Suicídio'
q15_27_velha 'q15_27_v15380_27_27 - Educação Financeira'
q15_99_velha 'q15_99_v15380_99_99 - Outro'
q16_0_velha 'q16_0_v15381_1_0 - Não realiza nenhuma ação e/ou atividade no território'
q16_1_velha 'q16_1_v15381_2_1 - Campanha de Prevenção e Combate ao Trabalho Escravo ( 28 de janeiro)'
q16_2_velha 'q16_2_v15381_3_2 - Campanha de Prevenção a Gravidez na Adolescência (1 de fevereiro)'
q16_3_velha 'q16_3_v15381_4_3 - Campanha de Prevenção e Eliminação da Discriminação Racial ( 21 de março)'
q16_4_velha 'q16_4_v15381_5_4 - Campanha de Prevenção e Combate à Exploração Sexual de Crianças e Adolescentes (18 de maio)'
q16_5_velha 'q16_5_v15381_6_5 - Campanha de Prevenção e enfrentamento do Trabalho Infantil ( 12 de junho)'
q16_6_velha 'q16_6_v15381_7_6 - Campanha de Prevenção e Combate ao Tráfico de Pessoas (30 de julho)'
q16_7_velha 'q16_7_v15381_8_7 - Campanha de Prevenção e Combate à Violência contra a pessoa idosa ( 16 de junho)'
q16_8_velha 'q16_8_v15381_9_8 - Campanha de Prevenção e Combate a Violência contra a mulher ( 25 de novembro)'
q16_9_velha 'q16_9_v15381_10_9 - Campanha de enfrentamento à discriminação e à intolerância às diversidades (de gênero, racial/étnica, de orientação sexual e identidade de gênero, de condições de deficiência, de religião ou crença, etc.)'
q16_10_velha 'q16_10_v15381_11_10 - Campanhas de prevenção ao suicídio e automutilação_'
q16_11_velha 'q16_11_v15381_12_11 - Campanha de sensibilização sobre a hanseníase_'
q16_12_velha 'q16_12_v15381_13_12 - Campanha de sensibilização sobre infecções sexualmente transmissíveis_'
q16_13_velha 'q16_13_v15381_14_13 - Mobilizações intrasetorial e intersetorial para idenficação de sinais e sintomas de turbeculose e enfrentamento de preconceito e estimas em relação as pessoas com a doença'
q16_99_velha 'q16_99_v15381_99_99 - Outro_'
q18_1_velha 'q18_1_v10394_Oferta SCFV- Crianças de 0 a 6 anos de idade'
q18_2_velha 'q18_2_v10395_Oferta SCFV- Crianças e adolescentes de 7 a 14 anos de idade'
q18_3_velha 'q18_3_v10396_Oferta SCFV- Adolescentes e jovens de 15 a 17 anos de idade'
q18_4_velha 'q18_4_v10397_Oferta SCFV- Jovens de 18 a 29 anos de idade'
q18_5_velha 'q18_5_v10398_Oferta SCFV- Adultas(os) de 30 a 59 anos de idade'
q18_6_velha 'q18_6_v10402_Oferta SCFV- Idosas(os) (60 anos ou mais)'
q19_1_velha 'q19_1_v10403_1_1 - Sim, realizado por outra unidade pública_Cras possui rede referenciada para SCFV'
q19_2_velha 'q19_2_v10403_2_2 - Sim, realizado por entidade conveniada_Cras possui rede referenciada para SCFV'
q19_3_velha 'q19_3_v10403_3_3 - Sim, realizado por entidade não conveniada_Cras possui rede referenciada para SCFV'
q19_0_velha 'q19_0_v10403_0_0 - Não_Cras possui rede referenciada para SCFV'
q20_1_velha 'q20_1_v10406_ rede referenciada oferta SCFV - Crianças de 0 a 6 anos de idade'
q20_2_velha 'q20_2_v10407_ rede referenciada oferta SCFV - Crianças e adolescentes de 7 a 14 anos de idade'
q20_3_velha 'q20_3_v10408_ rede referenciada oferta SCFV - Adolescentes e jovens de 15 a 17 anos de idade'
q20_4_velha 'q20_4_v10410_ rede referenciada oferta SCFV - Jovens de 18 a 29 anos de idade'
q20_5_velha 'q20_5_v10411_ rede referenciada oferta SCFV - Adultas(os) de 30 a 59 anos de idade'
q20_6_velha 'q20_6_v10412_ rede referenciada oferta SCFV - Idosas(os) (60 anos ou mais)'
q21_velha 'q21_v12576_Em relação às vagas de SCFV da rede referenciada, informe se:'
q22_velha 'q22_v15383_O PAIF realiza acompanhamento das famílias de usuários atendidos no SCFV da rede referenciada?'
q25_1_velha 'q25_1_v14314_Total de indivíduos atendidos pelo Serviço de PSB no Domicílio neste CRAS'
q25_2_velha 'q25_2_v14356_ Total de IDOSAS(OS) atendidas(os)_atendidos pelo Serviço de PSB no Domicílio neste CRAS no mês de agosto de 2020'
q25_3_velha 'q25_3_v14357_ Total de PESSOAS COM DEFICIÊNCIA _atendidos pelo Serviço de PSB no Domicílio neste CRAS no mês de agosto de 2020'
q25_4_velha 'q25_4_v14358_ Total de PESSOAS COM DEFICIÊNCIA entre 0 e 6 anos de idade _atendidos pelo Serviço de PSB no Domicílio neste CRAS no mês de agosto de 2020'
q26_1_velha 'q26_1_v14315_1_1 - Sim, realizado por outra unidade pública_Cras possui rede referenciada para serviço PSB no domicilio'
q26_2_velha 'q26_2_v14315_2_2 - Sim, realizado por entidade conveniada_Cras possui rede referenciada para serviço PSB no domicilio'
q26_3_velha 'q26_3_v14315_3_3 - Sim, realizado por entidade não conveniada_Cras possui rede referenciada para serviço PSB no domicilio'
q26_0_velha 'q26_0_v14315_0_0 - Não_Cras possui rede referenciada para serviço PSB no domicilio'
q27_1_velha 'q27_1_v14318_Serviço de PSB no Domicílio ofertado na rede referenciada  - Total de indivíduos atendidos'
q27_2_velha 'q27_2_v14361_Serviço de PSB no Domicílio ofertado na rede referenciada  - Total de IDOSAS(OS) atendidas(os)'
q27_3_velha 'q27_3_v14360_Serviço de PSB no Domicílio ofertado na rede referenciada - Total de PESSOAS COM DEFICIÊNCIA'
q27_4_velha 'q27_4_v14359_Serviço de PSB no Domicílio ofertado na rede referenciada - Total de PESSOAS COM DEFICIÊNCIA entre 0 e 6 anos de idade'
q28_1_velha 'q28_1_v14363_1_1 - Acolhida inicial no domicílio do usuário_Ações realizadas Serviço no Domicilio'
q28_2_velha 'q28_2_v14363_2_2 - Elaboração do Plano de Desenvolvimento do Usuário – PDU_Ações realizadas Serviço no Domicilio'
q28_3_velha 'q28_3_v14363_3_3 - Visita domiciliar para orientação e suporte aos cuidados familiares no domicílio_Ações realizadas Serviço no Domicilio'
q28_4_velha 'q28_4_v14363_4_4 - Rodas de diálogos periódicas com a família no domicílio_Ações realizadas Serviço no Domicilio'
q28_5_velha 'q28_5_v14363_5_5 - Encontros territoriais periódicos com grupos multifamiliares_Ações realizadas Serviço no Domicilio'
q28_6_velha 'q28_6_v14363_6_6 - Ações de mobilização para a cidadania no território_Ações realizadas Serviço no Domicilio'
q28_7_velha 'q28_7_v14363_7_7 - Difusão e estímulo à participação das(os) usuárias(os) e suas famílias em conselhos de controle social_Ações realizadas Serviço no Domicilio'
q28_8_velha 'q28_8_v14363_8_8 - Reuniões e encontros periódicos com a rede local para a discussão de casos/situações das(os) usuárias(os) do Serviço_Ações realizadas Serviço no Domicilio'
q28_9_velha 'q28_9_v14363_9_9 - Encaminhamentos monitorados de usuários à rede socioassistencial e intersetorial_Ações realizadas Serviço no Domicilio'
q28_0_velha 'q28_0_v14363_0_0 - Nenhum dos itens anteriores_Ações realizadas Serviço no Domicilio'
q28_99_velha 'q28_99_v14363_99_99 - Outras atividades_Ações realizadas Serviço no Domicilio'
q31_velha 'q31_v10423_O(s) território(s) atendido(s) por esta equipe volante estão localizados em:(resposta única)_'
q32_1_velha'q32_1_v15384_1_1 - Veículo utilizado pelo CRAS_Deslocamento equipe volante'
q32_2_velha 'q32_2_v15384_2_2 - Usa a Lancha da Assistente Social_Deslocamento equipe volante'
q32_3_velha 'q32_3_v15384_3_3 - Usa embarcações locais_Deslocamento equipe volante'
q32_4_velha'q32_4_v15384_4_4 - Transporte público terrestre de linha_Deslocamento equipe volante'
q32_5_velha'q32_5_v15384_5_5 - Compartilhamento de transporte fluvial_Deslocamento equipe volante'
q32_6_velha' q32_6_v15384_6_6 - Compartilhamento de transporte terrestre_Deslocamento equipe volante'
q32_7_velha' q32_7_v15384_7_7 - Deslocamentos complementares a pé para visitar famílias_Deslocamento equipe volante'
q32_99_velha' q32_99_v15384_99_99 - Outro_Deslocamento equipe volante'
q33_1_velha 'q33_1_v15386_1_1 - Atendimento particularizado de famílias ou indivíduos_atendimento realizado equipe volante'
q33_2_velha 'q33_2_v15386_2_2 - Atendimento em atividade coletiva de caráter continuado -Oficinas do PAIF)_atendimento realizado equipe volante'
q33_3_velha 'q33_3_v15386_3_3 - Oferta do SCFV por meio de atividade coletivas de caráter continuado_atendimento realizado equipe volante'
q33_4_velha 'q33_4_v15386_4_4 - Atendimento em atividade coletiva de caráter não-continuado (Palestras)_atendimento realizado equipe volante'
q33_5_velha 'q33_5_v15386_5_5 - Cadastramento/Atualização cadastral_atendimento realizado equipe volante'
q33_6_velha 'q33_6_v15386_6_6 - Gestão de benefícios do Programa Bolsa Família (esclarecimentos de dúvidas e ações de bloqueio, desbloqueios, cancelamentos e reversões de cancelamento de benefícios)_atendimento realizado equipe volante'
q33_7_velha 'q33_7_v15386_7_7 - Gestão de condicionalidades (recursos, acompanhamento de condicionalidades, etc)_atendimento realizado equipe volante'
q33_8_velha 'q33_8_v15386_8_8 - Concessão de benefício eventual_atendimento realizado equipe volante'
q33_9_velha 'q33_9_v15386_9_9 - Ações para obtenção de documentação pessoal_atendimento realizado equipe volante'
q33_10_velha 'q33_10_v15386_10_10 - Encaminhamento para o BPC_atendimento realizado equipe volante'
q33_11_velha'q33_11_v15386_11_11 - Encaminhamentos para rede socioassistencial e intersetorial_atendimento realizado equipe volante'
q33_12_velha 'q33_12_v15386_12_12 - Visitas domiciliares_atendimento realizado equipe volante'
q33_99_velha 'q33_99_v15386_99_99 - Outros_atendimento realizado equipe volante'
q35_1_velha 'q35_1_v15387_1_1 - Benefício Eventual em situação de morte_ofertado neste CRAS'
q35_2_velha 'q35_2_v15387_2_2 - Benefício Eventual por nascimento_ofertado neste CRAS'
q35_3_velha 'q35_3_v15387_3_3 - Benefício Eventual em situação de calamidade (inclui desastres e emergências)_ofertado neste CRAS'
q35_4_velha 'q35_4_v15387_4_4 - Benefício Eventual em situação de vulnerabilidade social temporária_ofertado neste CRAS'
q36_1_velha 'q36_1_v15388_1_1 - Colchões/colchonetes_Beneficio Eventual em situação de calamidade'
q36_2_velha 'q36_2_v15388_2_2 - Cobertores/lençois/roupas de cama_Beneficio Eventual em situação de calamidade'
q36_3_velha 'q36_3_v15388_3_3 - Vestimentas/Roupas_Beneficio Eventual em situação de calamidade'
q36_4_velha 'q36_4_v15388_4_4 - Material de limpeza e higiene_Beneficio Eventual em situação de calamidade'
q36_5_velha 'q36_5_v15388_5_5 - Àgua_Beneficio Eventual em situação de calamidade'
q36_6_velha  'q36_6_v15388_6_6 - Auxílio relacionado à alimentação (cesta básica, entre outros)_Beneficio Eventual em situação de calamidade'
q36_7_velha 'q36_7_v15388_7_7 - Auxílio para deslocamento/passagens_Beneficio Eventual em situação de calamidade'
q36_8_velha 'q36_8_v15388_8_8 - Auxílio/isenção para retirada de documentação_Beneficio Eventual em situação de calamidade'
q36_9_velha 'q36_9_v15388_9_9 - Pagamento de Aluguel_Beneficio Eventual em situação de calamidade'
q36_10_velha 'q36_10_v15388_10_10 - Material de construção_Beneficio Eventual em situação de calamidade'
q36_11_velha 'q36_11_v15388_11_11 - Pagamento/isenção de contas de água e luz_Beneficio Eventual em situação de calamidade'
q36_12_velha 'q36_12_v15388_12_12 - Auxílio gás_Beneficio Eventual em situação de calamidade'
q36_99_velha 'q36_99_v15388_99_99 - Outros_Beneficio Eventual em situação de calamidade'
q37_1_velha 'q37_1_v12582_1_1 - Auxílio relacionado à alimentação (cesta básica, leite, entre outros)_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_2_velha 'q37_2_v12582_2_2 - Auxílio para deslocamento/passagens (vale-transporte)_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_3_velha 'q37_3_v12582_3_3 - Auxílio/Inseção para retirada de documentação (inclui auxílio para retirada de fotos)_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_4_velha 'q37_4_v12582_4_4 - Pagamento de aluguel_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_5_velha 'q37_5_v12582_5_5 - Material de Construção_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_6_velha 'q37_6_v12582_6_6 - Pagamento/Isenção de contas de água e luz_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_7_velha 'q37_7_v12582_7_7 - Auxílio gás_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_8_velha 'q37_8_v12582_8_8 - Vestimentas/ Roupas_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_9_velha 'q37_9_v12582_9_9 - Móveis e Eletrodomésticos_Beneficio Eventual em situação de vulnerabilidade social temporária'
q37_99_velha 'q37_99_v12582_99_99 - Outros_Beneficio Eventual em situação de vulnerabilidade social temporária'
q40_1_velha 'q40_1_v15390_1_1 - Divulgação das ações de cadastramento_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_2_velha 'q40_2_v15390_2_2 - Realização de parcerias com outros órgãos_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_3_velha' q40_3_v15390_3_3 - Busca ativa (entrevista domiciliar, mutirão e ações itinerantes) com a finalidade de inclusão e atualização cadastral_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_4_velha 'q40_4_v15390_4_4 - Ação para prestar informações às famílias sobre o Cadastro Único (Reuniões de acolhida, palestra etc)_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_5_velha 'q40_5_v15390_5_5 - Agendamento prévio para a realização da entrevista para inclusão/atualização cadastral_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_6_velha 'q40_6_v15390_6_6 - Triagem de atendimento – identificação de demandas e/ou documentação civil antes da entrevista_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_7_velha 'q40_7_v15390_7_7 - Entrevista para inclusão cadastral_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_8_velha 'q40_8_v15390_8_8 - Entrevista para atualização cadastral_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_9_velha 'q40_9_v15390_9_9 - Fornecimento de comprovante de cadastramento por demanda das famílias_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_10_velha 'q40_10_v15390_10_10 - Esclarecimento de dúvidas da população sobre o Cadastro Único e os programas, serviços e benefícios que as famílias participam ou buscam participar_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_11_velha  'q40_11_v15390_11_11 - Encaminhamento para obtenção de Documentação pessoal_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_12_velha'q40_12_v15390_12_12 - Encaminhamento de famílias ou indivíduos para a rede de serviço socioassistencial_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_13_velha 'q40_13_v15390_13_13 - Encaminhamento de famílias/indivíduos para programas usuários do CadÚnico, para acesso a benefícios ou outras políticas públicas (educação, habitação, trabalho, etc.)_Ações  desenvolvidas no âmbito do Cadunico'
q40_14_velha 'q40_14_v15390_14_14 - Emissão de registro técnico (parecer, relatório, formulário etc) no processo de averiguação cadastral ou apuração de denúncias_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_15_velha'q40_15_v15390_15_15 - Conferência/ crítica dos formulários preenchidos no papel_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_16_velha 'q40_16_v15390_16_16 - Verificação, correção ou encaminhamento de pendências no cadastro das famílias e pessoas apontadas pelo Sistema de Cadastro Único_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_17_velha 'q40_17_v15390_17_17 - Arquivamento de formulários_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_18_velha 'q40_18_v15390_18_18 - Recebimento e tratamento de denúncias de prestação de informação inverídica_Ações  desenvolvidas no âmbito do Cadastro Único'
q40_99_velha 'q40_99_v15390_99_99 - Outras_Ações  desenvolvidas no âmbito do Cadastro Único'
q41_1_velha 'q41_1_v15392_Total de pessoas atendidas para o Cadastro Único'
q41_2_velha 'q41_2_v15393_ total de pessoas realizaram entrevista para inclusão cadastral'
q41_3_velha 'q41_3_v15394_ total de pessoas realizaram entrevista para atualização cadastral'
q41_98_velha 'q41_98_v15395_98_Não sabe informar o Total de pessoas atendidas para o Cadastro Único'
q42_1_velha 'q42_1_v15396_Entre o agendamento e a realização do atendimento - Em média, quanto tempo dura'
q42_1_0_velha 'q42_1_0_v15397_1_Não realiza  agendamento e  realização do atendimento'
q42_2_velha 'q42_2_v15398_Após a entrevista, para que os dados coletados em formulário em papel sejam inseridos no sistema'
q42_2_0_velha 'q42_2_0_v15402_1_Não realiza  entrevista, para que os dados coletados em formulário em papel sejam inseridos no sistema'
q42_3_velha 'q42_3_v15399_A espera de uma família nesta Unidade até que o atendimento seja iniciado _'
q42_3_0_velha 'q42_3_0_v15403_1_Não sabe quantos minutos a  família espera para que o atendimento seja iniciado'
q42_4_velha 'q42_4_v15400_A primeira entrevista de uma família para o Cadastro Único (inclusão cadastral)'
q42_4_0_velha 'q42_4_0_v15404_1_Não sabe quantos minutos dura a primeira entrevista de uma família para o Cadastro Único (inclusão cadastral)'
q42_5_velha 'q42_5_v15401_A atualização cadastral de uma família no Cadastro Único'
q42_5_0_velha 'q42_5_0_v15405_1_Não sabe quantos minutos dura a atualização cadastral de uma família no Cadastro Único'
q43_0_velha 'q43_0_v15406_0_0 - Não há ações específicas para atender o público de averiguação e revisão cadastral_Ações específicas são feitas para atender demandas de averiguação e revisão cadastral'
q43_1_velha 'q43_1_v15406_1_1 - Sim, as famílias de averiguação e revisão cadastral são alvo de busca ativa_Ações específicas são feitas para atender demandas de averiguação e revisão cadastral'
q43_2_velha 'q43_2_v15406_2_2 - Sim, as famílias de averiguação e revisão cadastral fazem parte do público prioritário de atendimento na unidade_Ações específicas são feitas para atender demandas de averiguação e revisão cadastral'
q43_3_velha' q43_3_v15406_3_3 - Sim, há mutirões em dias específicos para atender o público de averiguação e revisão cadastral_Ações específicas são feitas para atender demandas de averiguação e revisão cadastral'
q43_99_velha 'q43_99_v15406_99_99 - Sim, outros_Ações específicas são feitas para atender demandas de averiguação e revisão cadastral'
q44_1_velha 'q44_1_v15408_Para apurar denúncias _Equipe faz entrevistas domiciliares'
q44_2_velha 'q44_2_v15409_Para famílias incluídas em Averiguação Cadastral_Equipe faz entrevistas domiciliares'
q44_3_velha 'q44_3_v15410_Para inclusão ou atualização de dados de famílias com beneficiários do Benefício de Prestação Continuada (BPC) _Equipe faz entrevistas domiciliares'
q44_4_velha 'q44_4_v15411_Para inclusão ou atualização de dados de famílias pertencentes à Grupos Populacionais Tradicionais ou Específicos (GPTEs)_Equipe faz entrevistas domiciliares'
q44_5_velha 'q44_5_v15412_Para inclusão ou atualização de dados de famílias que moram em locais de difícil acesso _Equipe faz entrevistas domiciliares'
q44_6_velha 'q44_6_v15413_Outros _Equipe faz entrevistas domiciliares'
q45_0_velha 'q45_0_v15414_0_0 - Não realiza ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_1_velha 'q45_1_v15414_1_1 - Informação individualizada sobre regras do Programa (valores de benefícios, regras de concessão, bloqueio, suspensão e cancelamento de benefícios e condicionalidades)_Ações em relação à gestão de benefícios do PBF'
q45_2_velha 'q45_2_v15414_2_2 - Informação coletiva às famílias sobre regras do Programa (Reuniões de acolhida, palestra etc)_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_3_velha 'q45_3_v15414_3_3 - Emissão de declaração de troca de responsável familiar para recebimento do benefício_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_4_velha 'q45_4_v15414_4_4 - Emissão de declaração especial para recebimento do benefício (quando em situações de emergência e estado de calamidade público)_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_5_velha 'q45_5_v15414_5_5 - Esclarecimentos sobre o conteúdo de mensagens no extrato de pagamentos, recebida pelo beneficiário_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_6_velha 'q45_6_v15414_6_6 - Esclarecimentos sobre informações de pagamento do Programa: entrega, desbloqueio e ativação do Cartão Bolsa Família e calendário de pagamentos_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_7_velha 'q45_7_v15414_7_7 - Realiza manutenção de benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) diretamente no SIBEC_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_8_velha 'q45_8_v15414_8_8 - Registro no Formulário Padrão de Gestão de Benefícios (FPGB) e seu arquivamento_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_9_velha 'q45_9_v15414_9_9 - Solicitação de manutenção de benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) pelo módulo de Administração Off-line do SigPBF_Ações em relação à gestão de benefícios do PBF'
q45_10_velha 'q45_10_v15414_10_10 - Elaboração de ofícios à Secretaria Nacional de Renda de Cidadania solicitando a manutenção de benefícios_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_11_velha 'q45_11_v15414_11_11 - Orientação sobre como denunciar irregularidades no pagamento e no atendimento dos canais da CAIXA_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_12_velha 'q45_12_v15414_12_12 - Registro de denúncias de recebimento indevido de benefícios_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_13_velha 'q45_13_v15414_13_13 - Apuração de denúncias de recebimento indevido de benefícios_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q45_99_velha 'q45_99_v15414_99_99 - Outros_Ações em relação à gestão de benefícios do Programa Bolsa Família'
q46_1_velha 'q46_1_v15416_1_1 - Não há dificuldades_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_2_velha 'q46_2_v15416_2_2 - Falta de capacitação da equipe do CRAS sobre as regras do Programa_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_3_velha 'q46_3_v15416_3_3 - As informações disponibilizadas pelo Ministério da Cidadania são de difícil compreensão (Instruções Operacionais, Informes, Comunicados)_Dificuldades enfrentadas em relação à gestão de benefícios do PBF'
q46_4_velha 'q46_4_v15416_4_4 - As informações disponibilizadas pelo Ministério da Cidadania são de difícil acesso_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_5_velha 'q46_5_v15416_5_5 - Falta de informações sobre as regras do Programa_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_6_velha 'q46_6_v15416_6_6 - Falta de material informativo para disponibilizar no CRAS (cartazes, folders, filipetas)_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_7_velha 'q46_7_v15416_7_7 - Baixa qualidade da internet_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_8_velha 'q46_8_v15416_8_8 - Falta de acesso à internet_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_9_velha 'q46_9_v15416_9_9 - Equipe do CRAS não tem acesso ao SIBEC_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_10_velha 'q46_10_v15416_10_10 - Instabilidade do SIBEC_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_11_velha 'q46_11_v15416_11_11 - Equipe do CRAS não tem acesso ao SigPBF_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_12_velha 'q46_12_v15416_12_12 - Instabilidade do SigPBF_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_13_velha 'q46_13_v15416_13_13 - Grande volume de atendimentos devido à averiguação e revisão cadastral_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_14_velha'q46_14_v15416_14_14 - Grande volume de atendimentos devido às operações de bloqueios e suspensões de condicionalidades e de não localizados no sistema de ensino_Dificuldades enfrentadas em relação à gestão de benefícios do PBF'
q46_15_velha 'q46_15_v15416_15_15 - Grande volume de atendimentos em decorrência das suspensões pelo recebimento do seguro-defeso_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_16_velha 'q46_16_v15416_16_16 - Número reduzido de pessoas na equipe para suprir a demanda de atendimento_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q46_99_velha 'q46_99_v15416_99_99 - Outros_Dificuldades enfrentadas em relação à gestão de benefícios do Programa Bolsa Família'
q48_0_velha 'q48_0_v15419_0_0 - Não realiza atividades referente ao descumprimento de condicionalidades_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_1_velha 'q48_1_v15419_1_1 - Esclarecimentos às famílias sobre as regras de condicionalidades durante o atendimento particularizado_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_2_velha 'q48_2_v15419_2_2 - Interação com as escolas dos beneficiários em descumprimento_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_3_velha 'q48_3_v15419_3_3 - Interação com a equipe de saúde no município responsável pelo acompanhamento das condicionalidades de saúde_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_4_velha 'q48_4_v15419_4_4 - Ação para prestar informações às famílias sobre as condicionalidades (Reuniões de acolhida, palestras, oficinas em grupo, etc)_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_5_velha 'q48_5_v15419_5_5 - Busca ativa com a finalidade de facilitar a apresentação de recurso pelas famílias_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_6_velha 'q48_6_v15419_6_6 - Emissão de laudo ou relatório social para subsidiar a família atendida/acompanhada pelo CRAS na apresentação do recurso_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_7_velha 'q48_7_v15419_7_7 - Fornecimento de comprovante do registro de recurso para as famílias_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_8_velha 'q48_8_v15419_8_8 - Arquivamento da documentação comprobatória apresentada pela família no registro do recurso_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_9_velha 'q48_9_v15419_9_9 - Acesso à lista de famílias em fase de suspensão por descumprimento de condicionalidades no território abrangido pelo CRAS_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_10_velha 'q48_10_v15419_10_10 - Busca ativa das famílias com a finalidade de inclusão nos serviços socioassistencias para superação da situação que gerou o descumprimento_Ações em relação às famílias em descumprimento de condicionalidades'
q48_11_velha 'q48_11_v15419_11_11 - Priorização das famílias em fase de suspensão por descumprimento de condicionalidades nas ações do PAIF_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_12_velha 'q48_12_v15419_12_12 - Registro no Sicon dos atendimentos/acompanhamentos realizados no âmbito do PAIF com as famílias PBF em descumprimento de condicionalidades_Ações em relação às famílias em descumprimento de condicionalidades'
q48_13_velha 'q48_13_v15419_13_13 - Ativação da interrupção temporária dos efeitos do descumprimento no Sicon_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_14_velha 'q48_14_v15419_14_14 - Encaminhamento de famílias/indivíduos em descumprimento de condicionalidades para outros serviços/programas/benefícios socioassistenciais_Ações em relação às famílias em descumprimento de condicionalidades'
q48_15_velha 'q48_15_v15419_15_15 - Encaminhamento de famílias ou indivíduos em descumprimento de condicionalidades para outras políticas públicas_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q48_99_velha 'q48_99_v15419_99_99 - Outros_Ações desenvolvidas em relação às famílias em descumprimento de condicionalidades'
q51_1_velha 'q51_1_v15425_Este CRAS ficou fechado em todo tempo da pandemia'
q51_2_velha 'q51_2_v15426_Ofertou atendimento presencial ao público em geral durante a pandemia'
q51_3_velha 'q51_3_v15427_Ofertou apenas os atendimentos presenciais agendados durante a pandemia'
q51_4_velha 'q51_4_v15428_Ofertou atendimentos/acompanhamento apenas para o público prioritário  durante a pandemia'
q51_5_velha 'q51_5_v15429_Ofertou os atendimento das demandas de benefícios eventuais durante a pandemia'
q51_6_velha 'q51_6_v15430_Ofertou os atendimento das demandas do Cadastro Único  durante a pandemia'
q51_7_velha 'q51_7_v15431_Ofertou os atendimento das demandas do Auxílio Emergencialdurante a pandemia'
q51_8_velha 'q51_8_v15432_Ofertou os atendimentos das demandas do Programa Bolsa Família durante a pandemia'
q51_9_velha 'q51_9_v15433_Ofertou teleatendimento por telefone e aplicativos de videoconferência  durante a pandemia'
q51_10_velha 'q51_10_v15434_Ofertou atividades coletivas ( oficinas, grupo, ações comunitárias) durante a pandemia'
q51_11_velha 'q51_11_v15435_Realizou visitas domiciliares  durante a pandemia'
q51_99_velha 'q51_99_v15436_Outro - funcionamento durante a pandemia do Coronavírus'
q52_1_velha 'q52_1_v15438_1_1 - Teve que ampliar o número de profissionais_jornada de trabalho das(os) profissionais durante a pandemia'
q52_2_velha 'q52_2_v15438_2_2 - Com jornada de trabalho normal (semelhante a jornada anterior a pandemia)_jornada de trabalho das(os) profissionais durante a pandemia'
q52_3_velha 'q52_3_v15438_3_3 - Com jornada de trabalho reduzida_jornada de trabalho das(os) profissionais durante a pandemia'
q52_99_velha 'q52_99_v15438_99_99 - Outros._jornada de trabalho das(os) profissionais durante a pandemia'
q53_velha 'q53_v15441_Os trabalhadores deste CRAS tiveram acesso a Equipamentos de Proteção Individual?'
q54_1_velha 'q54_1_v15442_1_1 - Não realizou nenhuma atividade em relação ao Auxílio Emergencial_Atividades em relação ao Auxílio Emergencial'
q54_2_velha 'q54_2_v15442_2_2 - Prestou orientação às famílias já atendidas/acompanhadas por este CRAS_Atividades em relação ao Auxílio Emergencial'
q54_3_velha 'q54_3_v15442_3_3 - Prestou orientações às famílias da comunidades em geral_Atividades em relação ao Auxílio Emergencial'
q54_4_velha'q54_4_v15442_4_4 - Auxiliou as famílias no preenchimento das solicitações_Atividades em relação ao Auxílio Emergencial'
q54_5_velha 'q54_5_v15442_5_5 - Realizou busca ativa de famílias para preenchimento das solicitações_Atividades em relação ao Auxílio Emergencial'
q54_99_velha 'q54_99_v15442_99_99 - Outros_Atividades em relação ao Auxílio Emergencial'
q56_1_velha 'q56_1_v15444_1_1 - Computadores_PCF tem acesso'
q56_2_velha 'q56_2_v15444_2_2 - Veículos_PCF tem acesso'
q56_3_velha  'q56_3_v15444_3_3 - Arquivos_PCF tem acesso'
q56_4_velha 'q56_4_v15444_4_4 - Brinquedos, materiais pedagógicos, culturais e esportivos_PCF tem acesso'	
q56_5_velha 'q56_5_v15444_5_5 - Biblioteca_PCF tem acesso'
q56_0_velha 'q56_0_v15444_0_0 - Não tem acesso a equipamentos do CRAS_PCF tem acesso'
q57_velha 'q57_v15446_Com que frequência são realizadas as reuniões entre os visitadores e os supervisores deste CRAS? (resposta única)_'
q58_1_velha 'q58_1_v15447_Reuniões de planejamento entre a equipe do Programa Criança Feliz e a coordenação do CRAS _Periodicidade realização ação PCF'
q58_2_velha 'q58_2_v15448_A equipe do Programa Criança Feliz realiza reunião com a equipe do PAIF para discussão de casos _Periodicidade realização ação PCF'
q58_3_velha 'q58_3_v15449_Realiza o planejamento das visitas domiciliares _Periodicidade realização ação PCF'
q58_4_velha 'q58_4_v15450_Os visitadores/supervisores do PCF encaminham as famílias para os serviços socioassistencias deste CRAS_Periodicidade realização ação PCF'
q58_5_velha 'q58_5_v15451_Os visitados/supervisores do PCF encaminham as famílias para cadastramento/atualização cadastral _Periodicidade realização ação PCF'
q59_0_velha 'q59_0_v15452_0_0 - Nenhuma_Dificuldades em realizar as visitas domiciliares'
q59_1_velha'q59_1_v15452_1_1 - Dificuldade de locomoção da equipe para realizar as visitas_Dificuldades em realizar as visitas domiciliares'
q59_2_velha 'q59_2_v15452_2_2 - Equipe PCF não contratada ou contratada parcialmente_Dificuldades em realizar as visitas domiciliares'
q59_3_velha 'q59_3_v15452_3_3 - Equipe não capacitada_Dificuldades em realizar as visitas domiciliares'
q59_4_velha 'q59_4_v15452_4_4 - Equipe capacitada parcialmente_Dificuldades em realizar as visitas domiciliares'
q59_5_velha 'q59_5_v15452_5_5 - Não consegue encontrar a quantidade de indivíduos para atingir a meta pactuada_Dificuldades em realizar as visitas domiciliares'
q59_6_velha 'q59_6_v15452_6_6 - Não consegue realizar o número mínimo de visitas preconizado_Dificuldades em realizar as visitas domiciliares'
q59_7_velha 'q59_7_v15452_7_7 - Não consegue aplicar método CDC nas visitas para o público BPC_Dificuldades em realizar as visitas domiciliares'
q59_8_velha 'q59_8_v15452_8_8 - Não consegue aplicar método CDC nas visitas para o público 0 a 3 anos_Dificuldades em realizar as visitas domiciliares'
q59_9_velha 'q59_9_v15452_9_9 - Não consegue realizar atividade voltada ao recém nascido_Dificuldades em realizar as visitas domiciliares'
q59_10_velha 'q59_10_v15452_10_10 - Desconhece a quantidade de visitas necessária para o público alvo_Dificuldades em realizar as visitas domiciliares'
q59_11_velha 'q59_11_v15452_11_11 - Resistência das famílias em aceitar a Visita Domiciliar_Dificuldades em realizar as visitas domiciliares'
q59_99_velha 'q59_99_v15452_99_99 - Outra_Dificuldades em realizar as visitas domiciliares'
q63_1_velha 'q63_1_v15462_1_1 - As(os) usuárias(os) e/ou familiares participam das reuniões de planejamento desta unidade_Mecanismos de participação'
q63_2_velha 'q63_2_v15462_2_2 - As(os) usuárias(os) contam com representante que participa do planejamento desta unidade_Mecanismos de participação'
q63_3_velha 'q63_3_v15462_3_3 - As(Os) usuárias(os) escolhem os temas a serem trabalhados nas atividades coletivas (oficinas/palestras) da unidade_Mecanismos de participação'
q63_4_velha 'q63_4_v15462_4_4 - A equipe técnica disponibiliza outros meios para avaliação da oferta (questionário de satisfação, pesquisa de opinião, urna de sugestões)_Mecanismos de participação'
q63_99_velha 'q63_99_v15462_99_99 - Outros._Mecanismos de participação'
q65_1_0_velha 'q65_1_0_v15466_0_0 - Não atende_Atendimentos a povos indigenas'
q65_1_1_velha 'q65_1_1_v15466_1_1 - Atendimentos do PAIF_Atendimentos a povos indigenas'
q65_1_2_velha 'q65_1_2_v15466_2_2 - Atendimentos da Equipe Volante_Atendimentos a povos indigenas'
q65_1_3_velha 'q65_1_3_v15466_3_3 - Atendimento do Cadastro Único_Atendimentos a povos indigenas'
q65_1_4_velha 'q65_1_4_v15466_4_4 - Visitas da equipe do PCF_Atendimentos a povos indigenas'
q65_1_5_velha 'q65_1_5_v15466_5_5 - Não há presença deste grupo no território_Atendimentos a povos indigenas'
q65_1_99_velha 'q65_1_99_v15466_99_99 - Outros Atendimentos_Atendimentos a povos indigenas'
q65_2_0_velha 'q65_2_0_v15467_0_0 - Não atende_Atendimentos a comunidade Quilombola'
q65_2_1_velha 'q65_2_1_v15467_1_1 - Atendimentos do PAIF_Atendimentos a comunidade Quilombola'
q65_2_2_velha 'q65_2_2_v15467_2_2 - Atendimentos da Equipe Volante_Atendimentos a comunidade Quilombola'
q65_2_3_velha 'q65_2_3_v15467_3_3 - Atendimento do Cadastro Único_Atendimentos a comunidade Quilombola'
q65_2_4_velha 'q65_2_4_v15467_4_4 - Visitas da equipe do PCF_Atendimentos a comunidade Quilombola'
q65_2_5_velha 'q65_2_5_v15467_5_5 - Não há presença deste grupo no território_Atendimentos a comunidade Quilombola'
q65_2_99_velha 'q65_2_99_v15467_99_99 - Outros Atendimentos_Atendimentos a comunidade Quilombola'
q65_3_0_velha' q65_3_0_v15469_0_0 - Não atende_Atendimentos a comunidade Ribeirinha'
q65_3_1_velha   'q65_3_1_v15469_1_1 - Atendimentos do PAIF_Atendimentos a comunidade Ribeirinha'
q65_3_2_velha 'q65_3_2_v15469_2_2 - Atendimentos da Equipe Volante_Atendimentos a comunidade Ribeirinha'
q65_3_3_velha 'q65_3_3_v15469_3_3 - Atendimento do Cadastro Único_Atendimentos a comunidade Ribeirinha'
q65_3_4_velha 'q65_3_4_v15469_4_4 - Visitas da equipe do PCF_Atendimentos a comunidade Ribeirinha'
q65_3_5_velha 'q65_3_5_v15469_5_5 - Não há presença deste grupo no território_Atendimentos a comunidade Ribeirinha'
q65_3_99_velha 'q65_3_99_v15469_99_99 - Outros Atendimentos_Atendimentos a comunidade Ribeirinha'
q65_4_0_velha 'q65_4_0_v15470_0_0 - Não atende_Atendimentos a Povos ciganos'
q65_4_1_velha 'q65_4_1_v15470_1_1 - Atendimentos do PAIF_Atendimentos a Povos ciganos'
q65_4_2_velha'q65_4_2_v15470_2_2 - Atendimentos da Equipe Volante_Atendimentos a Povos ciganos'
q65_4_3_velha 'q65_4_3_v15470_3_3 - Atendimento do Cadastro Único_Atendimentos a Povos ciganos'
q65_4_4_velha 'q65_4_4_v15470_4_4 - Visitas da equipe do PCF_Atendimentos a Povos ciganos'
q65_4_5_velha 'q65_4_5_v15470_5_5 - Não há presença deste grupo no território_Atendimentos a Povos ciganos'
q65_4_99_velha 'q65_4_99_v15470_99_99 - Outros Atendimentos_Atendimentos a Povos ciganos'
q65_5_0_velha 'q65_5_0_v15471_0_0 - Não atende_Atendimentos a Povos Matriz africana e de terreiro'
q65_5_1_velha 'q65_5_1_v15471_1_1 - Atendimentos do PAIF_Atendimentos a Povos Matriz africana e de terreiro'
q65_5_2_velha 'q65_5_2_v15471_2_2 - Atendimentos da Equipe Volante_Atendimentos a Povos Matriz africana e de terreiro'
q65_5_3_velha 'q65_5_3_v15471_3_3 - Atendimento do Cadastro Único_Atendimentos a Povos Matriz africana e de terreiro'
q65_5_4_velha 'q65_5_4_v15471_4_4 - Visitas da equipe do PCF_Atendimentos a Povos Matriz africana e de terreiro'
q65_5_5_velha 'q65_5_5_v15471_5_5 - Não há presença deste grupo no território_Atendimentos a Povos Matriz africana e de terreiro'
q65_5_99_velha 'q65_5_99_v15471_99_99 - Outros Atendimentos_Atendimentos a Povos Matriz africana e de terreiro'
q65_6_0_velha 'q65_6_0_v15472_0_0 - Não atende_Atendimentos a extrativistas'
q65_6_1_velha 'q65_6_1_v15472_1_1 - Atendimentos do PAIF_Atendimentos a extrativistas'
q65_6_2_velha 'q65_6_2_v15472_2_2 - Atendimentos da Equipe Volante_Atendimentos a extrativistas'
q65_6_3_velha'q65_6_3_v15472_3_3 - Atendimento do Cadastro Único_Atendimentos a extrativistas'
q65_6_4_velha 'q65_6_4_v15472_4_4 - Visitas da equipe do PCF_Atendimentos a extrativistas'
q65_6_5_velha 'q65_6_5_v15472_5_5 - Não há presença deste grupo no território_Atendimentos a extrativistas'
q65_6_99_velha 'q65_6_99_v15472_99_99 - Outros Atendimentos_Atendimentos a extrativistas'
q65_7_0_velha 'q65_7_0_v15473_0_0 - Não atende_Atendimentos a pescadores artesanais'
q65_7_1_velha 'q65_7_1_v15473_1_1 - Atendimentos do PAIF_Atendimentos a pescadores artesanais'
q65_7_2_velha 'q65_7_2_v15473_2_2 - Atendimentos da Equipe Volante_Atendimentos a pescadores artesanais'
q65_7_3_velha 'q65_7_3_v15473_3_3 - Atendimento do Cadastro Único_Atendimentos a pescadores artesanais'
q65_7_4_velha 'q65_7_4_v15473_4_4 - Visitas da equipe do PCF_Atendimentos a pescadores artesanais'
q65_7_5_velha 'q65_7_5_v15473_5_5 - Não há presença deste grupo no território_Atendimentos a pescadores artesanais'
q65_7_99_velha 'q65_7_99_v15473_99_99 - Outros Atendimentos_Atendimentos a pescadores artesanais'
q65_8_0_velha 'q65_8_0_v15474_0_0 - Não atende_Atendimentos a Ribeirinhas (familias em calhas de rios)'
q65_8_1_velha 'q65_8_1_v15474_1_1 - Atendimentos do PAIF_Atendimentos a Ribeirinhas (familias em calhas de rios)'
q65_8_2_velha 'q65_8_2_v15474_2_2 - Atendimentos da Equipe Volante_Atendimentos a Ribeirinhas (familias em calhas de rios)'
q65_8_3_velha 'q65_8_3_v15474_3_3 - Atendimento do Cadastro Único_Atendimentos a Ribeirinhas (familias em calhas de rios)'
q65_8_4_velha 'q65_8_4_v15474_4_4 - Visitas da equipe do PCF_Atendimentos a Ribeirinhas (familias em calhas de rios)'
q65_8_5_velha 'q65_8_5_v15474_5_5 - Não há presença deste grupo no território_Atendimentos a Ribeirinhas (familias em calhas de rios)'
q65_8_99_velha 'q65_8_99_v15474_99_99 - Outros Atendimentos_Atendimentos a Ribeirinhas (familias em calhas de rios)'
q65_9_0_velha 'q65_9_0_v15475_0_0 - Não atende_Atendimentos a outros grupos tradicionais e especificos'
q65_9_1_velha 'q65_9_1_v15475_1_1 - Atendimentos do PAIF_Atendimentos a outros grupos tradicionais e especificos'
q65_9_2_velha  'q65_9_2_v15475_2_2 - Atendimentos da Equipe Volante_Atendimentos a outros grupos tradicionais e especificos'
q65_9_3_velha 'q65_9_3_v15475_3_3 - Atendimento do Cadastro Único_Atendimentos a outros grupos tradicionais e especificos'
q65_9_4_velha 'q65_9_4_v15475_4_4 - Visitas da equipe do PCF_Atendimentos a outros grupos tradicionais e especificos'
q65_9_5_velha 'q65_9_5_v15475_5_5 - Não há presença deste grupo no território_Atendimentos a outros grupos tradicionais e especificos'
q65_9_99_velha 'q65_9_99_v15475_99_99 - Outros Atendimentos_Atendimentos a outros grupos tradicionais e especificos'
q65_10_0_velha 'q65_10_0_v15476_0_0 - Não atende_Atendimentos a trabalho infantil'
q65_10_1_velha 'q65_10_1_v15476_1_1 - Atendimentos do PAIF_Atendimentos a trabalho infantil'
q65_10_2_velha 'q65_10_2_v15476_2_2 - Atendimentos da Equipe Volante_Atendimentos a trabalho infantil'
q65_10_3_velha 'q65_10_3_v15476_3_3 - Atendimento do Cadastro Único_Atendimentos a trabalho infantil'
q65_10_4_velha 'q65_10_4_v15476_4_4 - Visitas da equipe do PCF_Atendimentos a trabalho infantil'
q65_10_5_velha 'q65_10_5_v15476_5_5 - Não há presença deste grupo no território_Atendimentos a trabalho infantil'
q65_10_99_velha 'q65_10_99_v15476_99_99 - Outros Atendimentos_Atendimentos a trabalho infantil'
q65_11_0_velha 'q65_11_0_v15477_0_0 - Não atende_Atendimentos atingidos por desastre'
q65_11_1_velha 'q65_11_1_v15477_1_1 - Atendimentos do PAIF_Atendimentos atingidos por desastre'
q65_11_2_velha 'q65_11_2_v15477_2_2 - Atendimentos da Equipe Volante_Atendimentos atingidos por desastre'
q65_11_3_velha 'q65_11_3_v15477_3_3 - Atendimento do Cadastro Único_Atendimentos atingidos por desastre'
q65_11_4_velha 'q65_11_4_v15477_4_4 - Visitas da equipe do PCF_Atendimentos atingidos por desastre'
q65_11_5_velha 'q65_11_5_v15477_5_5 - Não há presença deste grupo no território_Atendimentos atingidos por desastre'
q65_11_99_velha 'q65_11_99_v15477_99_99 - Outros Atendimentos_Atendimentos atingidos por desastre'
q65_12_0_velha 'q65_12_0_v15478_0_0 - Não atende_Atendimentos familiares presos e egressos do sistema carcerario'
q65_12_1_velha 'q65_12_1_v15478_1_1 - Atendimentos do PAIF_Atendimentos familiares presos e egressos do sistema carcerario'
q65_12_2_velha 'q65_12_2_v15478_2_2 - Atendimentos da Equipe Volante_Atendimentos familiares presos e egressos do sistema carcerario'
q65_12_3_velha 'q65_12_3_v15478_3_3 - Atendimento do Cadastro Único_Atendimentos familiares presos e egressos do sistema carcerario'
q65_12_4_velha 'q65_12_4_v15478_4_4 - Visitas da equipe do PCF_Atendimentos familiares presos e egressos do sistema carcerario'
q65_12_5_velha 'q65_12_5_v15478_5_5 - Não há presença deste grupo no território_Atendimentos familiares presos e egressos do sistema carcerario'
q65_12_99_velha 'q65_12_99_v15478_99_99 - Outros Atendimentos_Atendimentos familiares presos e egressos do sistema carcerario'
q65_13_0_velha 'q65_13_0_v15479_0_0 - Não atende_Atendimentos medidas socioeducativas'
q65_13_1_velha 'q65_13_1_v15479_1_1 - Atendimentos do PAIF_Atendimentos medidas socioeducativas'
q65_13_2_velha 'q65_13_2_v15479_2_2 - Atendimentos da Equipe Volante_Atendimentos medidas socioeducativas'
q65_13_3_velha  '  q65_13_3_v15479_3_3 - Atendimento do Cadastro Único_Atendimentos medidas socioeducativas'         
q65_13_4_velha 'q65_13_4_v15479_4_4 - Visitas da equipe do PCF_Atendimentos medidas socioeducativas'
q65_13_5_velha 'q65_13_5_v15479_5_5 - Não há presença deste grupo no território_Atendimentos medidas socioeducativas'
q65_13_99_velha 'q65_13_99_v15479_99_99 - Outros Atendimentos_Atendimentos medidas socioeducativas'
q65_14_0_velha 'q65_14_0_v15480_0_0 - Não atende_Atendimentos pessoa situação de rua e/ou sem teto'
q65_14_1_velha 'q65_14_1_v15480_1_1 - Atendimentos do PAIF_Atendimentos pessoa situação de rua e/ou sem teto'
q65_14_2_velha 'q65_14_2_v15480_2_2 - Atendimentos da Equipe Volante_Atendimentos pessoa situação de rua e/ou sem teto'
q65_14_3_velha 'q65_14_3_v15480_3_3 - Atendimento do Cadastro Único_Atendimentos pessoa situação de rua e/ou sem teto'
q65_14_4_velha 'q65_14_4_v15480_4_4 - Visitas da equipe do PCF_Atendimentos pessoa situação de rua e/ou sem teto'
q65_14_5_velha 'q65_14_5_v15480_5_5 - Não há presença deste grupo no território_Atendimentos pessoa situação de rua e/ou sem teto'
q65_14_99_velha 'q65_14_99_v15480_99_99 - Outros Atendimentos_Atendimentos pessoa situação de rua e/ou sem teto'
q65_15_0_velha 'q65_15_0_v15481_0_0 - Não atende_Atendimentos pessoas imigrantes e ou refugiados'
q65_15_1_velha 'q65_15_1_v15481_1_1 - Atendimentos do PAIF_Atendimentos pessoas imigrantes e ou refugiados'
q65_15_2_velha 'q65_15_2_v15481_2_2 - Atendimentos da Equipe Volante_Atendimentos pessoas imigrantes e ou refugiados'
q65_15_3_velha 'q65_15_3_v15481_3_3 - Atendimento do Cadastro Único_Atendimentos pessoas imigrantes e ou refugiados'
q65_15_4_velha 'q65_15_4_v15481_4_4 - Visitas da equipe do PCF_Atendimentos pessoas imigrantes e ou refugiados'
q65_15_5_velha 'q65_15_5_v15481_5_5 - Não há presença deste grupo no território_Atendimentos pessoas imigrantes e ou refugiados'
q65_15_99_velha 'q65_15_99_v15481_99_99 - Outros Atendimentos_Atendimentos pessoas imigrantes e ou refugiados'
q65_16_0_velha 'q65_16_0_v15482_0_0 - Não atende_Atendimentos transexuais/transgenero/travestis/lesbicas/gays/bissexuais/intersexuais'
q65_16_1_velha 'q65_16_1_v15482_1_1 - Atendimentos do PAIF_Atendimentos transexuais/transgenero/travestis/lesbicas/gays/bissexuais/intersexuais'
q65_16_2_velha 'q65_16_2_v15482_2_2 - Atendimentos da Equipe Volante_Atendimentos transexuais/transgenero/travestis/lesbicas/gays/bissexuais/intersexuais'
q65_16_3_velha 'q65_16_3_v15482_3_3 - Atendimento do Cadastro Único_Atendimentos transexuais/transgenero/travestis/lesbicas/gays/bissexuais/intersexuais'
q65_16_4_velha 'q65_16_4_v15482_4_4 - Visitas da equipe do PCF_Atendimentos transexuais/transgenero/travestis/lesbicas/gays/bissexuais/intersexuais'
q65_16_5_velha 'q65_16_5_v15482_5_5 - Não há presença deste grupo no território_Atendimentos transexuais/transgenero/travestis/lesbicas/gays/bissexuais/intersexuais'
q65_16_99_velha 'q65_16_99_v15482_99_99 - Outros Atendimentos_Atendimentos transexuais/transgenero/travestis/lesbicas/gays/bissexuais/intersexuais'
q67_1_0_velha 'q67_1_0_v10463_0_0 - Não tem nenhuma articulação_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_1_velha 'q67_1_1_v10463_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_2_velha 'q67_1_2_v10463_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_3_velha 'q67_1_3_v10463_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_4_velha 'q67_1_4_v10463_4_4 - Acompanha os encaminhamentos_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_5_velha 'q67_1_5_v10463_5_5 - Realiza reuniões periódicas_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_6_velha 'q67_1_6_v10463_6_6 - Troca informações_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_7_velha 'q67_1_7_v10463_7_7 - Realiza estudos de caso em conjunto_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_8_velha 'q67_1_8_v10463_8_8 - Desenvolve ativiades em parceria_Articulação com Unidades públicas da rede de proteção social basica'
q67_1_9_velha 'q67_1_9_v10463_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com Unidades públicas da rede de proteção social basica'
q67_2_0_velha 'q67_2_0_v10464_0_0 - Não tem nenhuma articulação_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_1_velha 'q67_2_1_v10464_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_2_velha' q67_2_2_v10464_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_3_velha 'q67_2_3_v10464_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_4_velha 'q67_2_4_v10464_4_4 - Acompanha os encaminhamentos_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_5_velha 'q67_2_5_v10464_5_5 - Realiza reuniões periódicas_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_6_velha 'q67_2_6_v10464_6_6 - Troca informações_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_7_velha 'q67_2_7_v10464_7_7 - Realiza estudos de caso em conjunto_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_2_8_velha 'q67_2_8_v10464_8_8 - Desenvolve ativiades em parceria_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_12_9_velha 'q67_2_9_v10464_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com Unidades conveniadas da rede de proteção social basica'
q67_3_0_velha 'q67_3_0_v15493_0_0 - Não tem nenhuma articulação_Articulação com CREAS'
q67_3_1_velha 'q67_3_1_v15493_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com CREAS'
q67_3_2_velha 'q67_3_2_v15493_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com CREAS'
q67_3_3_velha 'q67_3_3_v15493_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com CREAS'
q67_3_4_velha 'q67_3_4_v15493_4_4 - Acompanha os encaminhamentos_Articulação com CREAS'
q67_3_5_velha 'q67_3_5_v15493_5_5 - Realiza reuniões periódicas_Articulação com CREAS'
q67_3_6_velha 'q67_3_6_v15493_6_6 - Troca informações_Articulação com CREAS'
q67_3_7_velha 'q67_3_7_v15493_7_7 - Realiza estudos de caso em conjunto_Articulação com CREAS'
q67_3_8_velha 'q67_3_8_v15493_8_8 - Desenvolve ativiades em parceria_Articulação com CREAS'
q67_3_9_velha'q67_3_9_v15493_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com CREAS'
q67_4_0_velha 'q67_4_0_v15503_0_0 - Não tem nenhuma articulação_Articulação com outras unidades da rede de proteção social especial'
q67_4_1_velha 'q67_4_1_v15503_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com outras unidades da rede de proteção social especial'
q67_4_2_velha 'q67_4_2_v15503_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com outras unidades da rede de proteção social especial'
q67_4_3_velha 'q67_4_3_v15503_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com outras unidades da rede de proteção social especial'
q67_4_4_velha 'q67_4_4_v15503_4_4 - Acompanha os encaminhamentos_Articulação com outras unidades da rede de proteção social especial'
q67_4_5_velha 'q67_4_5_v15503_5_5 - Realiza reuniões periódicas_Articulação com outras unidades da rede de proteção social especial'
q67_4_6_velha 'q67_4_6_v15503_6_6 - Troca informações_Articulação com outras unidades da rede de proteção social especial'
q67_4_7_velha 'q67_4_7_v15503_7_7 - Realiza estudos de caso em conjunto_Articulação com outras unidades da rede de proteção social especial'
q67_4_8_velha 'q67_4_8_v15503_8_8 - Desenvolve ativiades em parceria_Articulação com outras unidades da rede de proteção social especial'
q67_4_9_velha 'q67_4_9_v15503_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com outras unidades da rede de proteção social especial'
q67_5_0_velha 'q67_5_0_v10466_0_0 - Não tem nenhuma articulação_Articulação com serviços de saude'
q67_5_1_velha 'q67_5_1_v10466_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com serviços de saude'
q67_5_2_velha 'q67_5_2_v10466_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com serviços de saude'
q67_5_3_velha 'q67_5_3_v10466_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com serviços de saude'
q67_5_4_velha 'q67_5_4_v10466_4_4 - Acompanha os encaminhamentos_Articulação com serviços de saude'
q67_5_5_velha 'q67_5_5_v10466_5_5 - Realiza reuniões periódicas_Articulação com serviços de saude'
q67_5_6_velha 'q67_5_6_v10466_6_6 - Troca informações_Articulação com serviços de saude'
q67_5_7_velha 'q67_5_7_v10466_7_7 - Realiza estudos de caso em conjunto_Articulação com serviços de saude'
q67_5_8_velha 'q67_5_8_v10466_8_8 - Desenvolve ativiades em parceria_Articulação com serviços de saude'
q67_5_9_velha 'q67_5_9_v10466_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com serviços de saude'
q67_6_0_velha 'q67_6_0_v10467_0_0 - Não tem nenhuma articulação_Articulação com serviços de educação'
q67_6_1_velha 'q67_6_1_v10467_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com serviços de educação'
q67_6_2_velha 'q67_6_2_v10467_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com serviços de educação'
q67_6_3_velha 'q67_6_3_v10467_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com serviços de educação'
q67_6_4_velha 'q67_6_4_v10467_4_4 - Acompanha os encaminhamentos_Articulação com serviços de educação'
q67_6_5_velha 'q67_6_5_v10467_5_5 - Realiza reuniões periódicas_Articulação com serviços de educação'
q67_6_6_velha 'q67_6_6_v10467_6_6 - Troca informações_Articulação com serviços de educação'
q67_6_7_velha 'q67_6_7_v10467_7_7 - Realiza estudos de caso em conjunto_Articulação com serviços de educação'
q67_6_8_velha 'q67_6_8_v10467_8_8 - Desenvolve ativiades em parceria_Articulação com serviços de educação'
q67_6_9_velha 'q67_6_9_v10467_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com serviços de educação'
q67_7_0_velha 'q67_7_0_v10468_0_0 - Não tem nenhuma articulação_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_1_velha 'q67_7_1_v10468_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_2_velha 'q67_7_2_v10468_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_3_velha 'q67_7_3_v10468_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_4_velha 'q67_7_4_v10468_4_4 - Acompanha os encaminhamentos_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_5_velha 'q67_7_5_v10468_5_5 - Realiza reuniões periódicas_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_6_velha'q67_7_6_v10468_6_6 - Troca informações_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_7_velha 'q67_7_7_v10468_7_7 - Realiza estudos de caso em conjunto_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_8_velha 'q67_7_8_v10468_8_8 - Desenvolve ativiades em parceria_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_7_9_velha 'q67_7_9_v10468_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com órgãos/serviços relacionados a trabalho e emprego'
q67_8_0_velha 'q67_8_0_v10477_0_0 - Não tem nenhuma articulação_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_1_velha 'q67_8_1_v10477_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_2_velha 'q67_8_2_v10477_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_3_velha 'q67_8_3_v10477_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_4_velha 'q67_8_4_v10477_4_4 - Acompanha os encaminhamentos_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_5_velha 'q67_8_5_v10477_5_5 - Realiza reuniões periódicas_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_6_velha'q67_8_6_v10477_6_6 - Troca informações_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_7_velha 'q67_8_7_v10477_7_7 - Realiza estudos de caso em conjunto_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_8_velha 'q67_8_8_v10477_8_8 - Desenvolve ativiades em parceria_Articulação com movimentos sociais locais/associações comunitarias'
q67_8_9_velha' q67_8_9_v10477_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com movimentos sociais locais/associações comunitarias'
q67_9_0_velha 'q67_9_0_v12605_0_0 - Não tem nenhuma articulação_Articulação com conselho tutelar'
q67_9_1_velha 'q67_9_1_v12605_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com conselho tutelar'
q67_9_2_velha 'q67_9_2_v12605_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com conselho tutelar'
q67_9_3_velha 'q67_9_3_v12605_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com conselho tutelar'
q67_9_4_velha 'q67_9_4_v12605_4_4 - Acompanha os encaminhamentos_Articulação com conselho tutelar'
q67_9_5_velha 'q67_9_5_v12605_5_5 - Realiza reuniões periódicas_Articulação com conselho tutelar'
q67_9_6_velha 'q67_9_6_v12605_6_6 - Troca informações_Articulação com conselho tutelar'
q67_9_7_velha 'q67_9_7_v12605_7_7 - Realiza estudos de caso em conjunto_Articulação com conselho tutelar'
q67_9_8_velha 'q67_9_8_v12605_8_8 - Desenvolve ativiades em parceria_Articulação com conselho tutelar'
q67_9_9_velha 'q67_9_9_v12605_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com conselho tutelar'
q67_10_0_velha 'q67_10_0_v12606_0_0 - Não tem nenhuma articulação_Articulação com judiciario'
q67_10_1_velha 'q67_10_1_v12606_1_1 - Possui dados de localização (endereço, telefone, etc.)_Articulação com judiciario'
q67_10_2_velha 'q67_10_2_v12606_2_2 - Recebe usuárias(os) encaminhados por este CRAS_Articulação com judiciario'
q67_10_3_velha 'q67_10_3_v12606_3_3 - Encaminha usuárias(os) para este CRAS_Articulação com judiciario'
q67_10_4_velha 'q67_10_4_v12606_4_4 - Acompanha os encaminhamentos_Articulação com judiciario'
q67_10_5_velha 'q67_10_5_v12606_5_5 - Realiza reuniões periódicas_Articulação com judiciario'
q67_10_6_velha 'q67_10_6_v12606_6_6 - Troca informações_Articulação com judiciario'
q67_10_7_velha 'q67_10_7_v12606_7_7 - Realiza estudos de caso em conjunto_Articulação com judiciario'
q67_10_8_velha 'q67_10_8_v12606_8_8 - Desenvolve ativiades em parceria_Articulação com judiciario'
q67_10_9_velha 'q67_10_9_v12606_9_9 - Serviço ou instituição não existente no Município ou no DF_Articulação com judiciario'
.









 













