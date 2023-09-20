* Encoding: UTF-8.

*****recodificar




*q1*********************************

compute q1_1_1_1_velha =q1_1_1_1.
compute q1_1_1_2_velha =q1_1_1_2.
compute q1_1_1_3_velha =q1_1_1_3.
compute q1_1_1_0_velha =q1_1_1_0.
compute q1_1_2_1_velha =q1_1_2_1.
compute q1_1_2_2_velha =q1_1_2_2.
compute q1_1_2_3_velha =q1_1_2_3.
compute q1_1_2_0_velha =q1_1_2_0.
compute q1_1_3_1_velha =q1_1_3_1.
compute q1_1_3_2_velha =q1_1_3_2.
compute q1_1_3_3_velha =q1_1_3_3.
compute q1_1_3_0_velha =q1_1_3_0.
compute q1_1_4_1_velha =q1_1_4_1.
compute q1_1_4_2_velha =q1_1_4_2.
compute q1_1_4_3_velha =q1_1_4_3.
compute q1_1_4_0_velha =q1_1_4_0.
compute q1_2_velha =q1_2.
compute q1_3_1_velha =q1_3_1.
compute q1_3_2_velha =q1_3_2.
compute q1_4_1_velha =q1_4_1.
compute q1_4_2_velha =q1_4_2.
compute q1_4_3_velha =q1_4_3.
compute q1_4_4_velha =q1_4_4.
compute q1_4_5_velha =q1_4_5.
compute q1_4_6_velha =q1_4_6.
compute q1_4_7_velha =q1_4_7.
compute q1_4_99_velha =q1_4_99.
compute q1_5_velha =q1_5.



DO IF (q1=1).
RECODE q1_1_1_1 (ELSE=SYSMIS).
RECODE q1_1_1_2 (ELSE=SYSMIS).
RECODE q1_1_1_3 (ELSE=SYSMIS).
RECODE q1_1_1_0 (ELSE=SYSMIS).
RECODE q1_1_2_1 (ELSE=SYSMIS).
RECODE q1_1_2_2 (ELSE=SYSMIS).
RECODE q1_1_2_3 (ELSE=SYSMIS).
RECODE q1_1_2_0 (ELSE=SYSMIS).
RECODE q1_1_3_1 (ELSE=SYSMIS).
RECODE q1_1_3_2 (ELSE=SYSMIS).
RECODE q1_1_3_3 (ELSE=SYSMIS).
RECODE q1_1_3_0 (ELSE=SYSMIS).
RECODE q1_1_4_1 (ELSE=SYSMIS).
RECODE q1_1_4_2 (ELSE=SYSMIS).
RECODE q1_1_4_3 (ELSE=SYSMIS).
RECODE q1_1_4_0 (ELSE=SYSMIS).
RECODE q1_2 (ELSE=SYSMIS).
RECODE q1_3_1 (ELSE=SYSMIS).
RECODE q1_3_2 (ELSE=SYSMIS).
RECODE q1_4_1 (ELSE=SYSMIS).
RECODE q1_4_2 (ELSE=SYSMIS).
RECODE q1_4_3 (ELSE=SYSMIS).
RECODE q1_4_4 (ELSE=SYSMIS).
RECODE q1_4_5 (ELSE=SYSMIS).
RECODE q1_4_6 (ELSE=SYSMIS).
RECODE q1_4_7 (ELSE=SYSMIS).
RECODE q1_4_99 (ELSE=SYSMIS).
RECODE q1_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q1_2=0).
RECODE q1_3_1 (ELSE=SYSMIS).
RECODE q1_3_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q5*****************


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
compute q6_14_velha = q6_14. 
compute q6_15_velha = q6_15. 
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
RECODE q6_10(ELSE=SYSMIS).
RECODE q6_11 (ELSE=SYSMIS).
RECODE q6_12 (ELSE=SYSMIS).
RECODE q6_13 (ELSE=SYSMIS).
RECODE q6_14(ELSE=SYSMIS).
RECODE q6_15  (ELSE=SYSMIS).
RECODE q6_99 (ELSE=SYSMIS).
RECODE q7_1 (ELSE=SYSMIS).
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


DO IF (q7_1=1).
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

**q10*****************

compute q10_1_velha = q10_1. 
compute q10_2_velha = q10_2. 
compute q10_3_velha = q10_3. 
compute q10_4_velha = q10_4. 
compute q10_5_velha = q10_5. 
compute q10_6_velha = q10_6. 
compute q10_7_velha = q10_7. 
compute q10_0_velha = q10_0. 
execute. 


DO IF (q10_0=1).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE q10_6 (ELSE=SYSMIS).
RECODE q10_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q17**************

compute q17_1_1_velha = q17_1_1. 
compute q17_1_2_velha = q17_1_2 .
compute q17_1_3_velha = q17_1_3. 
compute q17_1_4_velha = q17_1_4 .
compute q17_1_5_velha = q17_1_5. 
compute q17_1_0_velha = q17_1_0 .
compute q17_2_1_velha = q17_2_1. 
compute q17_2_2_velha = q17_2_2 .
compute q17_2_3_velha = q17_2_3. 
compute q17_2_4_velha = q17_2_4 .
compute q17_2_5_velha = q17_2_5. 
compute q17_2_0_velha = q17_2_0 .
compute q17_3_1_velha = q17_3_1. 
compute q17_3_2_velha = q17_3_2 .
compute q17_3_3_velha = q17_3_3. 
compute q17_3_4_velha = q17_3_4 .
compute q17_3_5_velha = q17_3_5. 
compute q17_3_0_velha = q17_3_0 .
compute q17_4_1_velha = q17_4_1. 
compute q17_4_2_velha = q17_4_2 .
compute q17_4_3_velha = q17_4_3. 
compute q17_4_4_velha = q17_4_4 .
compute q17_4_5_velha = q17_4_5. 
compute q17_4_0_velha = q17_4_0 .
compute q17_5_1_velha = q17_5_1. 
compute q17_5_2_velha = q17_5_2 .
compute q17_5_3_velha = q17_5_3. 
compute q17_5_4_velha = q17_5_4 .
compute q17_5_5_velha = q17_5_5. 
compute q17_5_0_velha = q17_5_0 .
compute q17_6_1_velha = q17_6_1. 
compute q17_6_2_velha = q17_6_2 .
compute q17_6_3_velha = q17_6_3. 
compute q17_6_4_velha = q17_6_4 .
compute q17_6_5_velha = q17_6_5. 
compute q17_6_0_velha = q17_6_0 .
compute q17_7_1_velha = q17_7_1. 
compute q17_7_2_velha = q17_7_2 .
compute q17_7_3_velha = q17_7_3. 
compute q17_7_4_velha = q17_7_4 .
compute q17_7_5_velha = q17_7_5. 
compute q17_7_0_velha = q17_7_0 .
compute q17_8_1_velha = q17_8_1. 
compute q17_8_2_velha = q17_8_2 .
compute q17_8_3_velha = q17_8_3. 
compute q17_8_4_velha = q17_8_4 .
compute q17_8_5_velha = q17_8_5. 
compute q17_8_0_velha = q17_8_0 .
compute q17_9_1_velha = q17_9_1. 
compute q17_9_2_velha = q17_9_2 .
compute q17_9_3_velha = q17_9_3. 
compute q17_9_4_velha = q17_9_4 .
compute q17_9_5_velha = q17_9_5. 
compute q17_9_0_velha = q17_9_0 .
compute q17_10_1_velha = q17_10_1. 
compute q17_10_2_velha = q17_10_2 .
compute q17_10_3_velha = q17_10_3. 
compute q17_10_4_velha = q17_10_4 .
compute q17_10_5_velha = q17_10_5. 
compute q17_10_0_velha = q17_10_0 .
compute q17_11_1_velha = q17_11_1. 
compute q17_11_2_velha = q17_11_2 .
compute q17_11_3_velha = q17_11_3. 
compute q17_11_4_velha = q17_11_4 .
compute q17_11_5_velha = q17_11_5. 
compute q17_11_0_velha = q17_11_0 .
execute. 



DO IF (q17_1_0=1).
RECODE q17_1_1 (ELSE=SYSMIS).
RECODE  q17_1_2 (ELSE=SYSMIS).
RECODE  q17_1_3 (ELSE=SYSMIS).
RECODE  q17_1_4  (ELSE=SYSMIS).
RECODE  q17_1_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_2_0=1).
RECODE q17_2_1 (ELSE=SYSMIS).
RECODE  q17_2_2 (ELSE=SYSMIS).
RECODE  q17_2_3 (ELSE=SYSMIS).
RECODE  q17_2_4  (ELSE=SYSMIS).
RECODE  q17_2_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_3_0=1).
RECODE q17_3_1 (ELSE=SYSMIS).
RECODE  q17_3_2 (ELSE=SYSMIS).
RECODE  q17_3_3 (ELSE=SYSMIS).
RECODE  q17_3_4  (ELSE=SYSMIS).
RECODE  q17_3_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_4_0=1).
RECODE q17_4_1 (ELSE=SYSMIS).
RECODE  q17_4_2 (ELSE=SYSMIS).
RECODE  q17_4_3 (ELSE=SYSMIS).
RECODE  q17_4_4  (ELSE=SYSMIS).
RECODE  q17_4_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_5_0=1).
RECODE q17_5_1 (ELSE=SYSMIS).
RECODE  q17_5_2 (ELSE=SYSMIS).
RECODE  q17_5_3 (ELSE=SYSMIS).
RECODE  q17_5_4  (ELSE=SYSMIS).
RECODE  q17_5_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q17_6_0=1).
RECODE q17_6_1 (ELSE=SYSMIS).
RECODE  q17_6_2 (ELSE=SYSMIS).
RECODE  q17_6_3 (ELSE=SYSMIS).
RECODE  q17_6_4  (ELSE=SYSMIS).
RECODE  q17_6_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q17_7_0=1).
RECODE q17_7_1 (ELSE=SYSMIS).
RECODE  q17_7_2 (ELSE=SYSMIS).
RECODE  q17_7_3 (ELSE=SYSMIS).
RECODE  q17_7_4  (ELSE=SYSMIS).
RECODE  q17_7_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_8_0=1).
RECODE q17_8_1 (ELSE=SYSMIS).
RECODE  q17_8_2 (ELSE=SYSMIS).
RECODE  q17_8_3 (ELSE=SYSMIS).
RECODE  q17_8_4  (ELSE=SYSMIS).
RECODE  q17_8_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_9_0=1).
RECODE q17_9_1 (ELSE=SYSMIS).
RECODE  q17_9_2 (ELSE=SYSMIS).
RECODE  q17_9_3 (ELSE=SYSMIS).
RECODE  q17_9_4  (ELSE=SYSMIS).
RECODE  q17_9_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q17_10_0=1).
RECODE q17_10_1 (ELSE=SYSMIS).
RECODE  q17_10_2 (ELSE=SYSMIS).
RECODE  q17_10_3 (ELSE=SYSMIS).
RECODE  q17_10_4  (ELSE=SYSMIS).
RECODE  q17_10_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q17_11_0=1).
RECODE q17_11_1 (ELSE=SYSMIS).
RECODE  q17_11_2 (ELSE=SYSMIS).
RECODE  q17_11_3 (ELSE=SYSMIS).
RECODE  q17_11_4  (ELSE=SYSMIS).
RECODE  q17_11_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


****q18*************************************************


compute q18_1_1_velha = q18_1_1. 
compute q18_1_2_velha = q18_1_2 .
compute q18_1_3_velha = q18_1_3. 
compute q18_1_99_velha = q18_1_99 .
compute q18_1_0_velha = q18_1_0. 
compute q18_2_1_velha = q18_2_1. 
compute q18_2_2_velha = q18_2_2 .
compute q18_2_3_velha = q18_2_3. 
compute q18_2_99_velha = q18_2_99 .
compute q18_2_0_velha = q18_2_0. 
compute q18_3_1_velha = q18_3_1. 
compute q18_3_2_velha = q18_3_2 .
compute q18_3_3_velha = q18_3_3. 
compute q18_3_99_velha = q18_3_99 .
compute q18_3_0_velha = q18_3_0. 
execute. 

DO IF (q18_1_0=1).
RECODE q18_1_1 (ELSE=SYSMIS).
RECODE  q18_1_2 (ELSE=SYSMIS).
RECODE  q18_1_3 (ELSE=SYSMIS).
RECODE  q18_1_99   (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q18_2_0=1).
RECODE q18_2_1 (ELSE=SYSMIS).
RECODE  q18_2_2 (ELSE=SYSMIS).
RECODE  q18_2_3 (ELSE=SYSMIS).
RECODE  q18_2_99   (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q18_3_0=1).
RECODE q18_3_1 (ELSE=SYSMIS).
RECODE  q18_3_2 (ELSE=SYSMIS).
RECODE  q18_3_3 (ELSE=SYSMIS).
RECODE  q18_3_99   (ELSE=SYSMIS).
END IF.
EXECUTE.


****q19*************************************************

compute q19_1_velha = q19_1.
compute q19_2_velha = q19_2. 
compute q19_3_velha = q19_3.
compute q19_4_velha = q19_4. 
compute q19_5_velha = q19_5.
compute q19_6_velha = q19_6. 
compute q19_7_velha = q19_7.
compute q19_8_velha = q19_8.
compute q19_9_velha = q19_9. 
compute q19_10_velha = q19_10.
compute q19_11_velha = q19_11. 
compute q19_12_velha = q19_12.
compute q19_13_velha = q19_13. 
compute q19_14_velha = q19_14.
compute q19_99_velha = q19_99.
compute q19_0_velha = q19_0.

DO IF (q19_0=1).
RECODE  q19_1 (ELSE=SYSMIS).
RECODE  q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS). 
RECODE q19_6 (ELSE=SYSMIS).
RECODE  q19_7 (ELSE=SYSMIS).
RECODE  q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
RECODE q19_10 (ELSE=SYSMIS).
RECODE q19_11 (ELSE=SYSMIS). 
RECODE q19_12 (ELSE=SYSMIS).
RECODE q19_13 (ELSE=SYSMIS).
RECODE q19_14 (ELSE=SYSMIS).
RECODE q19_99 (ELSE=SYSMIS). 
END IF.
EXECUTE.


****q20*************************************************

compute q21_1_velha = q21_1.
compute q21_2_velha = q21_2. 
compute q21_3_velha = q21_3.
compute q21_4_velha = q21_4. 
compute q21_5_velha = q21_5.
compute q21_6_velha = q21_6. 
compute q21_99_velha = q21_99.
compute q22_1_velha = q22_1.
compute q22_2_velha = q22_2. 
compute q23_velha = q23.
compute q24_1_velha = q24_1.
compute q24_2_velha = q24_2. 
compute q24_3_velha = q24_3.
compute q24_4_velha = q24_4. 
compute q24_5_velha = q24_5.
compute q24_6_velha = q24_6. 
compute q24_7_velha = q24_7.
compute q24_8_velha = q24_8.
compute q24_9_velha = q24_9. 
compute q24_10_velha = q24_10.
compute q24_11_velha = q24_11. 
compute q24_12_velha = q24_12.
compute q24_13_velha = q24_13. 
compute q24_14_velha = q24_14.
compute q24_15_velha = q24_15.
compute q24_16_velha = q24_16. 
compute q24_17_velha = q24_17.
compute q24_18_velha = q24_18.
compute q24_19_velha = q24_19. 
compute q24_20_velha = q24_20.
compute q25_velha = q25.
compute q26_1_velha = q26_1.
compute q26_2_velha = q26_2. 
compute q26_3_velha = q26_3.
compute q26_4_velha = q26_4. 
compute q26_5_velha = q26_5.
compute q26_6_velha = q26_6. 
compute q26_7_velha = q26_7.
compute q26_8_velha = q26_8.
compute q26_9_velha = q26_9. 
compute q26_10_velha = q26_10.
compute q26_11_velha = q26_11. 
compute q26_12_velha = q26_12.
compute q26_13_velha = q26_13. 
compute q26_99_velha = q26_99.
compute q27_velha = q27.
compute q28_1_velha = q28_1.
compute q28_2_velha = q28_2. 
compute q28_3_velha = q28_3.
compute q28_4_velha = q28_4. 
compute q28_5_velha = q28_5.
compute q28_99_velha = q28_99. 
compute q29_1_velha = q29_1.
compute q29_2_velha = q29_2. 
compute q29_3_velha = q29_3.
compute q29_4_velha = q29_4. 
compute q29_5_velha = q29_5.
compute q29_6_velha = q29_6. 
compute q29_7_velha = q29_7.
compute q29_8_velha = q29_8.
compute q29_9_velha = q29_9. 
compute q29_10_velha = q29_10.
compute q29_11_velha = q29_11. 
compute q29_12_velha = q29_12.
compute q29_13_velha = q29_13. 
compute q29_14_velha = q29_14.
compute q29_15_velha = q29_15.
compute q29_16_velha = q29_16. 
compute q29_17_velha = q29_17.
compute q29_18_velha = q29_18.
compute q29_19_velha = q29_19. 
compute q29_20_velha = q29_20.
compute q29_21_velha = q29_21.
execute. 


DO IF (q20=0).
RECODE  q21_1 (ELSE=SYSMIS).
RECODE  q21_2 (ELSE=SYSMIS).
RECODE q21_3 (ELSE=SYSMIS).
RECODE q21_4 (ELSE=SYSMIS).
RECODE q21_5 (ELSE=SYSMIS). 
RECODE q21_6 (ELSE=SYSMIS).
RECODE q21_99 (ELSE=SYSMIS).
RECODE  q22_1 (ELSE=SYSMIS).
RECODE  q22_1_98 (ELSE=SYSMIS).
RECODE  q22_2 (ELSE=SYSMIS).
RECODE  q22_2_98 (ELSE=SYSMIS).
RECODE  q23 (ELSE=SYSMIS).
RECODE  q24_1 (ELSE=SYSMIS).
RECODE  q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_5 (ELSE=SYSMIS). 
RECODE q24_6 (ELSE=SYSMIS).
RECODE  q24_7 (ELSE=SYSMIS).
RECODE  q24_8 (ELSE=SYSMIS).
RECODE q24_9 (ELSE=SYSMIS).
RECODE q24_10 (ELSE=SYSMIS).
RECODE q24_11 (ELSE=SYSMIS). 
RECODE q24_12 (ELSE=SYSMIS).
RECODE q24_13 (ELSE=SYSMIS).
RECODE q24_14 (ELSE=SYSMIS).
RECODE q24_15 (ELSE=SYSMIS). 
RECODE q24_16 (ELSE=SYSMIS).
RECODE q24_17 (ELSE=SYSMIS).
RECODE q24_18 (ELSE=SYSMIS). 
RECODE q24_19 (ELSE=SYSMIS).
RECODE q24_20 (ELSE=SYSMIS).
RECODE  q25 (ELSE=SYSMIS).
RECODE  q26_1 (ELSE=SYSMIS).
RECODE  q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS). 
RECODE q26_6 (ELSE=SYSMIS).
RECODE  q26_7 (ELSE=SYSMIS).
RECODE  q26_8 (ELSE=SYSMIS).
RECODE q26_9 (ELSE=SYSMIS).
RECODE q26_10 (ELSE=SYSMIS).
RECODE q26_11 (ELSE=SYSMIS). 
RECODE q26_12 (ELSE=SYSMIS).
RECODE q26_13 (ELSE=SYSMIS).
RECODE q26_99 (ELSE=SYSMIS).
RECODE  q27 (ELSE=SYSMIS).
RECODE  q28_1 (ELSE=SYSMIS).
RECODE  q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS). 
RECODE q28_99 (ELSE=SYSMIS).
RECODE  q29_1 (ELSE=SYSMIS).
RECODE  q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS). 
RECODE q29_6 (ELSE=SYSMIS).
RECODE  q29_7 (ELSE=SYSMIS).
RECODE  q29_8 (ELSE=SYSMIS).
RECODE q29_9 (ELSE=SYSMIS).
RECODE q29_10 (ELSE=SYSMIS).
RECODE q29_11 (ELSE=SYSMIS). 
RECODE q29_12 (ELSE=SYSMIS).
RECODE q29_13 (ELSE=SYSMIS).
RECODE q29_14 (ELSE=SYSMIS).
RECODE q29_15 (ELSE=SYSMIS). 
RECODE q29_16 (ELSE=SYSMIS).
RECODE q29_17 (ELSE=SYSMIS).
RECODE q29_18 (ELSE=SYSMIS). 
RECODE q29_19 (ELSE=SYSMIS).
RECODE q29_20 (ELSE=SYSMIS).
RECODE q29_21 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q23=0).
RECODE  q24_1 (ELSE=SYSMIS).
RECODE  q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_5 (ELSE=SYSMIS). 
RECODE q24_6 (ELSE=SYSMIS).
RECODE  q24_7 (ELSE=SYSMIS).
RECODE  q24_8 (ELSE=SYSMIS).
RECODE q24_9 (ELSE=SYSMIS).
RECODE q24_10 (ELSE=SYSMIS).
RECODE q24_11 (ELSE=SYSMIS). 
RECODE q24_12 (ELSE=SYSMIS).
RECODE q24_13 (ELSE=SYSMIS).
RECODE q24_14 (ELSE=SYSMIS).
RECODE q24_15 (ELSE=SYSMIS). 
RECODE q24_16 (ELSE=SYSMIS).
RECODE q24_17 (ELSE=SYSMIS).
RECODE q24_18 (ELSE=SYSMIS). 
RECODE q24_19 (ELSE=SYSMIS).
RECODE q24_20 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q25=0).
RECODE  q26_1 (ELSE=SYSMIS).
RECODE  q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS). 
RECODE q26_6 (ELSE=SYSMIS).
RECODE  q26_7 (ELSE=SYSMIS).
RECODE  q26_8 (ELSE=SYSMIS).
RECODE q26_9 (ELSE=SYSMIS).
RECODE q26_10 (ELSE=SYSMIS).
RECODE q26_11 (ELSE=SYSMIS). 
RECODE q26_12 (ELSE=SYSMIS).
RECODE q26_13 (ELSE=SYSMIS).
RECODE q26_99 (ELSE=SYSMIS).
RECODE  q27 (ELSE=SYSMIS).
RECODE  q28_1 (ELSE=SYSMIS).
RECODE  q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS). 
RECODE q28_99 (ELSE=SYSMIS).
RECODE  q29_1 (ELSE=SYSMIS).
RECODE  q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS). 
RECODE q29_6 (ELSE=SYSMIS).
RECODE  q29_7 (ELSE=SYSMIS).
RECODE  q29_8 (ELSE=SYSMIS).
RECODE q29_9 (ELSE=SYSMIS).
RECODE q29_10 (ELSE=SYSMIS).
RECODE q29_11 (ELSE=SYSMIS). 
RECODE q29_12 (ELSE=SYSMIS).
RECODE q29_13 (ELSE=SYSMIS).
RECODE q29_14 (ELSE=SYSMIS).
RECODE q29_15 (ELSE=SYSMIS). 
RECODE q29_16 (ELSE=SYSMIS).
RECODE q29_17 (ELSE=SYSMIS).
RECODE q29_18 (ELSE=SYSMIS). 
RECODE q29_19 (ELSE=SYSMIS).
RECODE q29_20 (ELSE=SYSMIS).
RECODE q29_21 (ELSE=SYSMIS).
END IF.
EXECUTE.









***q30********************************************



compute q30_velha = q30.
compute q31_1_velha = q31_1.
compute q31_2_velha = q31_2.
compute q31_3_velha  = q31_3.
compute q31_4_velha  = q31_4.
compute q31_5_velha  = q31_5.
compute q31_6_velha  = q31_6.
compute q31_7_velha = q31_7.
compute q31_8_velha = q31_8.
compute q31_9_velha= q31_9.
compute q31_10_velha  = q31_10.
compute q31_11_velha = q31_11.
compute q31_12_velha = q31_12.
compute q31_13_velha = q31_13.
compute q31_14_velha = q31_14.
compute q31_0_velha = q31_0.
compute q32_1_velha  = q32_1.
compute q32_2_velha = q32_2.
compute q32_3_velha = q32_3.
compute q32_4_velha = q32_4.
compute q32_5_velha = q32_5.
compute q32_6_velha = q32_6.
compute q32_7_velha = q32_7.
compute q32_8_velha = q32_8.
compute q32_9_velha = q32_9.
compute q32_10_velha = q32_10.
compute q32_11_velha  = q32_11.
compute q32_12_velha =  q32_12.
compute q32_13_velha = q32_13.
compute q33_velha =  q33.
compute q34_velha = q34.
compute q35_1_velha = q35_1.
compute q35_2_velha = q35_2.
compute q35_3_velha = q35_3.
compute q35_4_velha = q35_4.
compute q35_5_velha = q35_5.
compute q35_6_velha = q35_6.
compute q35_7_velha = q35_7.
compute q35_8_velha = q35_8.
compute q35_9_velha = q35_9.
compute q35_10_velha =  q35_10.
compute q35_11_velha = q35_11.
compute q35_12_velha = q35_12.
compute q35_13_velha = q35_13.
compute q35_99_velha = q35_99. 
compute q36_1_velha = q36_1.
compute q36_2_velha = q36_2.
compute q36_3_velha = q36_3.
compute q36_4_velha = q36_4.
compute q36_5_velha = q36_5.
compute q36_99_velha = q36_99.
compute q37_1_velha = q37_1.
compute q37_2_velha = q37_2.
compute q37_3_velha = q37_3.
compute q37_4_velha = q37_4.
compute q37_5_velha = q37_5.
compute q37_6_velha = q37_6.
compute q37_7_velha = q37_7.
compute q37_0_velha = q37_0.
compute q37_99_velha = q37_99.
execute. 


DO IF (q30=1 |  q30=2 ).
RECODE q31_1 (ELSE=SYSMIS).
RECODE q31_2 (ELSE=SYSMIS).
RECODE q31_3 (ELSE=SYSMIS).
RECODE q31_4 (ELSE=SYSMIS).
RECODE q31_5  (ELSE=SYSMIS).
RECODE q31_6 (ELSE=SYSMIS).
RECODE q31_7 (ELSE=SYSMIS).
RECODE q31_8  (ELSE=SYSMIS).
RECODE q31_9 (ELSE=SYSMIS).
RECODE q31_10 (ELSE=SYSMIS).
RECODE q31_11  (ELSE=SYSMIS).
RECODE q31_12 (ELSE=SYSMIS).
RECODE q31_13 (ELSE=SYSMIS).
RECODE q31_14  (ELSE=SYSMIS).
RECODE q31_0  (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30=0 ).
RECODE q31_1 (ELSE=SYSMIS).
RECODE q31_2 (ELSE=SYSMIS).
RECODE q31_3 (ELSE=SYSMIS).
RECODE q31_4 (ELSE=SYSMIS).
RECODE q31_5  (ELSE=SYSMIS).
RECODE q31_6 (ELSE=SYSMIS).
RECODE q31_7 (ELSE=SYSMIS).
RECODE q31_8  (ELSE=SYSMIS).
RECODE q31_9 (ELSE=SYSMIS).
RECODE q31_10 (ELSE=SYSMIS).
RECODE q31_11  (ELSE=SYSMIS).
RECODE q31_12 (ELSE=SYSMIS).
RECODE q31_13 (ELSE=SYSMIS).
RECODE q31_14  (ELSE=SYSMIS).
RECODE q31_0  (ELSE=SYSMIS).
RECODE q32_1 (ELSE=SYSMIS).
RECODE q32_2 (ELSE=SYSMIS).
RECODE q32_3 (ELSE=SYSMIS).
RECODE q32_4 (ELSE=SYSMIS).
RECODE q32_5  (ELSE=SYSMIS).
RECODE q32_6 (ELSE=SYSMIS).
RECODE q32_7 (ELSE=SYSMIS).
RECODE q32_8  (ELSE=SYSMIS).
RECODE q32_9 (ELSE=SYSMIS).
RECODE q32_10 (ELSE=SYSMIS).
RECODE q32_11  (ELSE=SYSMIS).
RECODE q32_12 (ELSE=SYSMIS).
RECODE q32_13 (ELSE=SYSMIS).
RECODE q33 (ELSE=SYSMIS).
RECODE q34 (ELSE=SYSMIS).
RECODE q35_1 (ELSE=SYSMIS).
RECODE q35_2 (ELSE=SYSMIS).
RECODE q35_3 (ELSE=SYSMIS).
RECODE q35_4 (ELSE=SYSMIS).
RECODE q35_5  (ELSE=SYSMIS).
RECODE q35_6 (ELSE=SYSMIS).
RECODE q35_7 (ELSE=SYSMIS).
RECODE q35_8  (ELSE=SYSMIS).
RECODE q35_9 (ELSE=SYSMIS).
RECODE q35_10 (ELSE=SYSMIS).
RECODE q35_11  (ELSE=SYSMIS).
RECODE q35_12 (ELSE=SYSMIS).
RECODE q35_13 (ELSE=SYSMIS).
RECODE q35_99  (ELSE=SYSMIS).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_2  (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
RECODE q36_5  (ELSE=SYSMIS).
RECODE q36_99 (ELSE=SYSMIS).
RECODE q37_1 (ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_3 (ELSE=SYSMIS).
RECODE q37_4 (ELSE=SYSMIS).
RECODE q37_5  (ELSE=SYSMIS).
RECODE q37_6 (ELSE=SYSMIS).
RECODE q37_7 (ELSE=SYSMIS).
RECODE q37_0  (ELSE=SYSMIS).
RECODE q37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q31**************************************

DO IF (q31_0=1).
RECODE q31_1 (ELSE=SYSMIS).
RECODE q31_2 (ELSE=SYSMIS).
RECODE q31_3 (ELSE=SYSMIS).
RECODE q31_4 (ELSE=SYSMIS).
RECODE q31_5  (ELSE=SYSMIS).
RECODE q31_6 (ELSE=SYSMIS).
RECODE q31_7 (ELSE=SYSMIS).
RECODE q31_8  (ELSE=SYSMIS).
RECODE q31_9 (ELSE=SYSMIS).
RECODE q31_10 (ELSE=SYSMIS).
RECODE q31_11  (ELSE=SYSMIS).
RECODE q31_12 (ELSE=SYSMIS).
RECODE q31_13 (ELSE=SYSMIS).
RECODE q31_14  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q35***********************************************


DO IF (q35_1=1).
RECODE q35_2 (ELSE=SYSMIS).
RECODE q35_3 (ELSE=SYSMIS).
RECODE q35_4 (ELSE=SYSMIS).
RECODE q35_5  (ELSE=SYSMIS).
RECODE q35_6 (ELSE=SYSMIS).
RECODE q35_7 (ELSE=SYSMIS).
RECODE q35_8  (ELSE=SYSMIS).
RECODE q35_9 (ELSE=SYSMIS).
RECODE q35_10 (ELSE=SYSMIS).
RECODE q35_11  (ELSE=SYSMIS).
RECODE q35_12 (ELSE=SYSMIS).
RECODE q35_13 (ELSE=SYSMIS).
RECODE q35_99  (ELSE=SYSMIS).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_2  (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
RECODE q36_5  (ELSE=SYSMIS).
RECODE q36_99 (ELSE=SYSMIS).
RECODE q37_1 (ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_3 (ELSE=SYSMIS).
RECODE q37_4 (ELSE=SYSMIS).
RECODE q37_5  (ELSE=SYSMIS).
RECODE q37_6 (ELSE=SYSMIS).
RECODE q37_7 (ELSE=SYSMIS).
RECODE q37_0  (ELSE=SYSMIS).
RECODE q37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



****q37***************************************

DO IF (q37_0 =1).
RECODE q37_1 (ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_3 (ELSE=SYSMIS).
RECODE q37_4 (ELSE=SYSMIS).
RECODE q37_5  (ELSE=SYSMIS).
RECODE q37_6 (ELSE=SYSMIS).
RECODE q37_7 (ELSE=SYSMIS).
RECODE q37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.




****q38***************************************


compute q39_velha = q39.
compute q40_velha = q40.
compute q41_velha = q41.
compute q42_velha = q42.
compute q43_velha = q43.
compute q44_1_velha = q44_1.
compute q44_2_velha = q44_2.
compute q44_3_velha = q44_3.
compute q44_4_velha = q44_4.
compute q44_5_velha = q44_5.
compute q44_6_velha = q44_6.
compute q44_7_velha =  q44_7.
compute q44_8_velha = q44_8.
compute q44_9_velha = q44_9.
compute q44_10_velha =  q44_10.
compute q44_11_velha = q44_11.
compute q44_12_velha = q44_12.
compute q44_13_velha = q44_13.
compute q44_14_velha = q44_14.
compute q44_15_velha = q44_15.
compute q44_16_velha = q44_16.
compute q44_17_velha = q44_17.
compute q44_18_velha = q44_18.
compute q44_19_velha  = q44_19.
compute q44_20_velha = q44_20.
compute q44_21_velha = q44_21.
compute q44_22_velha = q44_22.
compute q44_23_velha = q44_23.
compute q44_24_velha = q44_24.
compute q44_25_velha = q44_25. 
compute q44_99_velha = q44_99. 
execute. 


DO IF (q38=0 |  q38=97 ).
RECODE q39 (ELSE=SYSMIS).
RECODE q40 (ELSE=SYSMIS).
RECODE q41 (ELSE=SYSMIS).
RECODE q42  (ELSE=SYSMIS).
RECODE q43 (ELSE=SYSMIS).
RECODE q44_1 (ELSE=SYSMIS).
RECODE q44_2  (ELSE=SYSMIS).
RECODE q44_3 (ELSE=SYSMIS).
RECODE q44_4 (ELSE=SYSMIS).
RECODE q44_5  (ELSE=SYSMIS).
RECODE q44_6 (ELSE=SYSMIS).
RECODE q44_7 (ELSE=SYSMIS).
RECODE q44_8  (ELSE=SYSMIS).
RECODE q44_9 (ELSE=SYSMIS).
RECODE q44_10  (ELSE=SYSMIS).
RECODE q44_11 (ELSE=SYSMIS).
RECODE q44_12 (ELSE=SYSMIS).
RECODE q44_13  (ELSE=SYSMIS).
RECODE q44_14 (ELSE=SYSMIS).
RECODE q44_15 (ELSE=SYSMIS).
RECODE q44_16  (ELSE=SYSMIS).
RECODE q44_17 (ELSE=SYSMIS).
RECODE q44_18 (ELSE=SYSMIS).
RECODE q44_19 (ELSE=SYSMIS).
RECODE q44_20  (ELSE=SYSMIS).
RECODE q44_21 (ELSE=SYSMIS).
RECODE q44_22 (ELSE=SYSMIS).
RECODE q44_23  (ELSE=SYSMIS).
RECODE q44_24 (ELSE=SYSMIS).
RECODE q44_25 (ELSE=SYSMIS).
RECODE q44_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



*****q45********************************************************

compute q46_1_velha = q46_1.
compute q46_2_velha = q46_2.
compute q46_3_velha = q46_3.
compute q46_4_velha = q46_4.

DO IF (q45=0 ).
RECODE q46_1 (ELSE=SYSMIS).
RECODE q46_2 (ELSE=SYSMIS).
RECODE q46_3  (ELSE=SYSMIS).
RECODE q46_4  (ELSE=SYSMIS).
END IF.
EXECUTE.


****q47********************************************************

compute q48_velha = q48.

DO IF ( q47=0  |  q47=97 ).
RECODE q48 (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q49********************************************************

compute q49_1_velha = q49_1.
compute q49_2_velha = q49_2.
compute q49_3_velha = q49_3.
compute q49_4_velha = q49_4.
compute q49_5_velha = q49_5.
compute q49_6_velha = q49_6.
compute q49_7_velha =  q49_7.
compute q49_8_velha = q49_8.
compute q49_9_velha = q49_9.
compute q49_10_velha =  q49_10.
compute q49_11_velha = q49_11.
compute q49_12_velha = q49_12.
compute q49_13_velha = q49_13.
compute q49_14_velha = q49_14.
compute q49_99_velha = q49_99.

DO IF (q49_1=1 ).
RECODE q49_2  (ELSE=SYSMIS).
RECODE q49_3 (ELSE=SYSMIS).
RECODE q49_4 (ELSE=SYSMIS).
RECODE q49_5  (ELSE=SYSMIS).
RECODE q49_6 (ELSE=SYSMIS).
RECODE q49_7 (ELSE=SYSMIS).
RECODE q49_8  (ELSE=SYSMIS).
RECODE q49_9 (ELSE=SYSMIS).
RECODE q49_10  (ELSE=SYSMIS).
RECODE q49_11 (ELSE=SYSMIS).
RECODE q49_12 (ELSE=SYSMIS).
RECODE q49_13  (ELSE=SYSMIS).
RECODE q49_14 (ELSE=SYSMIS).
RECODE q49_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****q50***************************************************


compute q50_1_velha = q50_1.
compute q50_2_velha = q50_2.
compute q50_3_velha = q50_3.
compute q50_4_velha = q50_4.
compute q50_5_velha = q50_5.
compute q50_6_velha = q50_6.
compute q50_7_velha =  q50_7.
compute q50_8_velha = q50_8.
compute q50_9_velha = q50_9.
compute q50_10_velha =  q50_10.
compute q50_11_velha = q50_11.
compute q50_12_velha = q50_12.
compute q50_13_velha = q50_13.
compute q50_14_velha = q50_14.
compute q50_15_velha = q50_15.
compute q50_16_velha = q50_16.

DO IF (q50_1=1 ).
RECODE q50_2  (ELSE=SYSMIS).
RECODE q50_3 (ELSE=SYSMIS).
RECODE q50_4 (ELSE=SYSMIS).
RECODE q50_5  (ELSE=SYSMIS).
RECODE q50_6 (ELSE=SYSMIS).
RECODE q50_7 (ELSE=SYSMIS).
RECODE q50_8  (ELSE=SYSMIS).
RECODE q50_9 (ELSE=SYSMIS).
RECODE q50_10  (ELSE=SYSMIS).
RECODE q50_11 (ELSE=SYSMIS).
RECODE q50_12 (ELSE=SYSMIS).
RECODE q50_13  (ELSE=SYSMIS).
RECODE q50_14 (ELSE=SYSMIS).
RECODE q50_15 (ELSE=SYSMIS).
RECODE q50_16 (ELSE=SYSMIS).
END IF.
EXECUTE.



****52*************************************************

compute q52_1_velha  = q52_1.
compute q52_2_velha  = q52_2.
compute q52_3_velha  = q52_3.
compute q52_4_velha  = q52_4.
compute q52_5_velha  = q52_5.
compute q52_6_velha  = q52_6.
compute q52_99_velha  = q52_99.
compute q52_0_velha  = q52_0.

DO IF (q52_0=1 ).
RECODE q52_1  (ELSE=SYSMIS).
RECODE q52_2  (ELSE=SYSMIS).
RECODE q52_3 (ELSE=SYSMIS).
RECODE q52_4 (ELSE=SYSMIS).
RECODE q52_5  (ELSE=SYSMIS).
RECODE q52_6 (ELSE=SYSMIS).
RECODE q52_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

****53*************************************************

compute q54_1_velha  = q54_1.
compute q54_2_velha  = q54_2.
compute q54_3_velha  = q54_3.
compute q54_4_velha  = q54_4.
compute q54_99_velha  = q54_99.

DO IF (q53=0 |  q53=1).
RECODE q54_1 (ELSE=SYSMIS).
RECODE q54_2  (ELSE=SYSMIS).
RECODE q54_3 (ELSE=SYSMIS).
RECODE q54_4 (ELSE=SYSMIS).
RECODE q54_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q55************************************************************

compute q55_1_velha  = q55_1.
compute q55_2_velha  = q55_2.
compute q55_3_velha  = q55_3.
compute q55_4_velha  = q55_4.
compute q55_5_velha  = q55_5.
compute q55_6_velha  = q55_6.
compute q55_7_velha  = q55_7.
compute q55_0_velha  = q55_0.


DO IF (q55_0=1).
RECODE q55_1  (ELSE=SYSMIS).
RECODE q55_2  (ELSE=SYSMIS).
RECODE q55_3 (ELSE=SYSMIS).
RECODE q55_4 (ELSE=SYSMIS).
RECODE q55_5  (ELSE=SYSMIS).
RECODE q55_6 (ELSE=SYSMIS).
RECODE q55_7 (ELSE=SYSMIS).
END IF.
EXECUTE.



*****q56************************************************************

compute q56_0_velha  = q56_0.
compute q56_1_velha  = q56_1.
compute q56_2_velha  = q56_2.
compute q56_3_velha  = q56_3.
compute q56_4_velha  = q56_4.
compute q56_5_velha  = q56_5.
compute q56_6_velha  = q56_6.
compute q56_7_velha  = q56_7.
compute q56_8_velha  = q56_8.
compute q56_9_velha  = q56_9.
compute q56_10_velha  = q56_10.
compute q56_99_velha  = q56_99.
compute q57_velha  = q57.
compute q58_velha  = q58.

DO IF (q56_0=1).
RECODE q56_1  (ELSE=SYSMIS).
RECODE q56_2  (ELSE=SYSMIS).
RECODE q56_3 (ELSE=SYSMIS).
RECODE q56_4 (ELSE=SYSMIS).
RECODE q56_5  (ELSE=SYSMIS).
RECODE q56_6 (ELSE=SYSMIS).
RECODE q56_7 (ELSE=SYSMIS).
RECODE q56_8  (ELSE=SYSMIS).
RECODE q56_9 (ELSE=SYSMIS).
RECODE q56_10 (ELSE=SYSMIS).
RECODE q57  (ELSE=SYSMIS).
RECODE q58 (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q59************************************************************

compute q59_1_1_velha = q59_1_1.
compute q59_1_2_velha = q59_1_2.
compute q59_1_3_velha = q59_1_3.
compute q59_1_4_velha = q59_1_4.
compute q59_1_5_velha = q59_1_5.
compute q59_1_6_velha = q59_1_6.
compute q59_1_7_velha = q59_1_7.
compute q59_1_8_velha = q59_1_8.
compute  q59_1_0_velha = q59_1_0.
compute q59_1_97_velha = q59_1_97.
compute q59_2_1_velha = q59_2_1.
compute q59_2_2_velha = q59_2_2.
compute q59_2_3_velha = q59_2_3.
compute q59_2_4_velha = q59_2_4.
compute q59_2_5_velha = q59_2_5.
compute q59_2_6_velha = q59_2_6.
compute q59_2_7_velha = q59_2_7.
compute q59_2_8_velha = q59_2_8.
compute  q59_2_0_velha = q59_2_0.
compute q59_2_97_velha = q59_2_97.
compute q59_3_1_velha = q59_3_1.
compute q59_3_2_velha = q59_3_2.
compute q59_3_3_velha = q59_3_3.
compute q59_3_4_velha = q59_3_4.
compute q59_3_5_velha = q59_3_5.
compute q59_3_6_velha = q59_3_6.
compute q59_3_7_velha = q59_3_7.
compute q59_3_8_velha = q59_3_8.
compute  q59_3_0_velha = q59_3_0.
compute q59_3_97_velha = q59_3_97.
compute q59_4_1_velha = q59_4_1.
compute q59_4_2_velha = q59_4_2.
compute q59_4_3_velha = q59_4_3.
compute q59_4_4_velha = q59_4_4.
compute q59_4_5_velha = q59_4_5.
compute q59_4_6_velha = q59_4_6.
compute q59_4_7_velha = q59_4_7.
compute q59_4_8_velha = q59_4_8.
compute  q59_4_0_velha = q59_4_0.
compute q59_4_97_velha = q59_4_97.
compute q59_5_1_velha = q59_5_1.
compute q59_5_2_velha = q59_5_2.
compute q59_5_3_velha = q59_5_3.
compute q59_5_4_velha = q59_5_4.
compute q59_5_5_velha = q59_5_5.
compute q59_5_6_velha = q59_5_6.
compute q59_5_7_velha = q59_5_7.
compute q59_5_8_velha = q59_5_8.
compute  q59_5_0_velha = q59_5_0.
compute q59_5_97_velha = q59_5_97.
compute q59_6_1_velha = q59_6_1.
compute q59_6_2_velha = q59_6_2.
compute q59_6_3_velha = q59_6_3.
compute q59_6_4_velha = q59_6_4.
compute q59_6_5_velha = q59_6_5.
compute q59_6_6_velha = q59_6_6.
compute q59_6_7_velha = q59_6_7.
compute q59_6_8_velha = q59_6_8.
compute  q59_6_0_velha = q59_6_0.
compute q59_6_97_velha = q59_6_97.
compute q59_7_1_velha = q59_7_1.
compute q59_7_2_velha = q59_7_2.
compute q59_7_3_velha = q59_7_3.
compute q59_7_4_velha = q59_7_4.
compute q59_7_5_velha = q59_7_5.
compute q59_7_6_velha = q59_7_6.
compute q59_7_7_velha = q59_7_7.
compute q59_7_8_velha = q59_7_8.
compute  q59_7_0_velha = q59_7_0.
compute q59_7_97_velha = q59_7_97.
compute q59_8_1_velha = q59_8_1.
compute q59_8_2_velha = q59_8_2.
compute q59_8_3_velha = q59_8_3.
compute q59_8_4_velha = q59_8_4.
compute q59_8_5_velha = q59_8_5.
compute q59_8_6_velha = q59_8_6.
compute q59_8_7_velha = q59_8_7.
compute q59_8_8_velha = q59_8_8.
compute  q59_8_0_velha = q59_8_0.
compute q59_8_97_velha = q59_8_97.
compute q59_9_1_velha = q59_9_1.
compute q59_9_2_velha = q59_9_2.
compute q59_9_3_velha = q59_9_3.
compute q59_9_4_velha = q59_9_4.
compute q59_9_5_velha = q59_9_5.
compute q59_9_6_velha = q59_9_6.
compute q59_9_7_velha = q59_9_7.
compute q59_9_8_velha = q59_9_8.
compute  q59_9_0_velha = q59_9_0.
compute q59_9_97_velha = q59_9_97.
compute q59_10_1_velha = q59_10_1.
compute q59_10_2_velha = q59_10_2.
compute q59_10_3_velha = q59_10_3.
compute q59_10_4_velha = q59_10_4.
compute q59_10_5_velha = q59_10_5.
compute q59_10_6_velha = q59_10_6.
compute q59_10_7_velha = q59_10_7.
compute q59_10_8_velha = q59_10_8.
compute  q59_10_0_velha = q59_10_0.
compute q59_10_97_velha = q59_10_97.
compute q59_11_1_velha = q59_11_1.
compute q59_11_2_velha = q59_11_2.
compute q59_11_3_velha = q59_11_3.
compute q59_11_4_velha = q59_11_4.
compute q59_11_5_velha = q59_11_5.
compute q59_11_6_velha = q59_11_6.
compute q59_11_7_velha = q59_11_7.
compute q59_11_8_velha = q59_11_8.
compute  q59_11_0_velha = q59_11_0.
compute q59_11_97_velha = q59_11_97.
compute q59_12_1_velha = q59_12_1.
compute q59_12_2_velha = q59_12_2.
compute q59_12_3_velha = q59_12_3.
compute q59_12_4_velha = q59_12_4.
compute q59_12_5_velha = q59_12_5.
compute q59_12_6_velha = q59_12_6.
compute q59_12_7_velha = q59_12_7.
compute q59_12_8_velha = q59_12_8.
compute  q59_12_0_velha = q59_12_0.
compute q59_12_97_velha = q59_12_97.
compute q59_13_1_velha = q59_13_1.
compute q59_13_2_velha = q59_13_2.
compute q59_13_3_velha = q59_13_3.
compute q59_13_4_velha = q59_13_4.
compute q59_13_5_velha = q59_13_5.
compute q59_13_6_velha = q59_13_6.
compute q59_13_7_velha = q59_13_7.
compute q59_13_8_velha = q59_13_8.
compute  q59_13_0_velha = q59_13_0.
compute q59_13_97_velha = q59_13_97.
compute q59_14_1_velha = q59_14_1.
compute q59_14_2_velha = q59_14_2.
compute q59_14_3_velha = q59_14_3.
compute q59_14_4_velha = q59_14_4.
compute q59_14_5_velha = q59_14_5.
compute q59_14_6_velha = q59_14_6.
compute q59_14_7_velha = q59_14_7.
compute q59_14_8_velha = q59_14_8.
compute  q59_14_0_velha = q59_14_0.
compute q59_14_97_velha = q59_14_97.
compute q59_15_1_velha = q59_15_1.
compute q59_15_2_velha = q59_15_2.
compute q59_15_3_velha = q59_15_3.
compute q59_15_4_velha = q59_15_4.
compute q59_15_5_velha = q59_15_5.
compute q59_15_6_velha = q59_15_6.
compute q59_15_7_velha = q59_15_7.
compute q59_15_8_velha = q59_15_8.
compute  q59_15_0_velha = q59_15_0.
compute q59_15_97_velha = q59_15_97.
compute q59_16_1_velha = q59_16_1.
compute q59_16_2_velha = q59_16_2.
compute q59_16_3_velha = q59_16_3.
compute q59_16_4_velha = q59_16_4.
compute q59_16_5_velha = q59_16_5.
compute q59_16_6_velha = q59_16_6.
compute q59_16_7_velha = q59_16_7.
compute q59_16_8_velha = q59_16_8.
compute  q59_16_0_velha = q59_16_0.
compute q59_16_97_velha = q59_16_97.


DO IF (q59_1_0=1 |  q59_1_97=1 ).
RECODE q59_1_1  (ELSE=SYSMIS).
RECODE q59_1_2  (ELSE=SYSMIS).
RECODE q59_1_3  (ELSE=SYSMIS).
RECODE q59_1_4  (ELSE=SYSMIS).
RECODE q59_1_5  (ELSE=SYSMIS).
RECODE q59_1_6   (ELSE=SYSMIS).
RECODE q59_1_7  (ELSE=SYSMIS).
RECODE q59_1_8  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q59_2_0=1 |  q59_2_97=1 ).
RECODE q59_2_1  (ELSE=SYSMIS).
RECODE q59_2_2  (ELSE=SYSMIS).
RECODE q59_2_3  (ELSE=SYSMIS).
RECODE q59_2_4  (ELSE=SYSMIS).
RECODE q59_2_5  (ELSE=SYSMIS).
RECODE q59_2_6   (ELSE=SYSMIS).
RECODE q59_2_7  (ELSE=SYSMIS).
RECODE q59_2_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_3_0=1 |  q59_3_97=1 ).
RECODE q59_3_1  (ELSE=SYSMIS).
RECODE q59_3_2  (ELSE=SYSMIS).
RECODE q59_3_3  (ELSE=SYSMIS).
RECODE q59_3_4  (ELSE=SYSMIS).
RECODE q59_3_5  (ELSE=SYSMIS).
RECODE q59_3_6   (ELSE=SYSMIS).
RECODE q59_3_7  (ELSE=SYSMIS).
RECODE q59_3_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_4_0=1 |  q59_4_97=1 ).
RECODE q59_4_1  (ELSE=SYSMIS).
RECODE q59_4_2  (ELSE=SYSMIS).
RECODE q59_4_3  (ELSE=SYSMIS).
RECODE q59_4_4  (ELSE=SYSMIS).
RECODE q59_4_5  (ELSE=SYSMIS).
RECODE q59_4_6   (ELSE=SYSMIS).
RECODE q59_4_7  (ELSE=SYSMIS).
RECODE q59_4_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_5_0=1 |  q59_5_97=1 ).
RECODE q59_5_1  (ELSE=SYSMIS).
RECODE q59_5_2  (ELSE=SYSMIS).
RECODE q59_5_3  (ELSE=SYSMIS).
RECODE q59_5_4  (ELSE=SYSMIS).
RECODE q59_5_5  (ELSE=SYSMIS).
RECODE q59_5_6   (ELSE=SYSMIS).
RECODE q59_5_7  (ELSE=SYSMIS).
RECODE q59_5_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_6_0=1 |  q59_6_97=1 ).
RECODE q59_6_1  (ELSE=SYSMIS).
RECODE q59_6_2  (ELSE=SYSMIS).
RECODE q59_6_3  (ELSE=SYSMIS).
RECODE q59_6_4  (ELSE=SYSMIS).
RECODE q59_6_5  (ELSE=SYSMIS).
RECODE q59_6_6   (ELSE=SYSMIS).
RECODE q59_6_7  (ELSE=SYSMIS).
RECODE q59_6_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_7_0=1 |  q59_7_97=1 ).
RECODE q59_7_1  (ELSE=SYSMIS).
RECODE q59_7_2  (ELSE=SYSMIS).
RECODE q59_7_3  (ELSE=SYSMIS).
RECODE q59_7_4  (ELSE=SYSMIS).
RECODE q59_7_5  (ELSE=SYSMIS).
RECODE q59_7_6   (ELSE=SYSMIS).
RECODE q59_7_7  (ELSE=SYSMIS).
RECODE q59_7_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_8_0=1 |  q59_8_97=1 ).
RECODE q59_8_1  (ELSE=SYSMIS).
RECODE q59_8_2  (ELSE=SYSMIS).
RECODE q59_8_3  (ELSE=SYSMIS).
RECODE q59_8_4  (ELSE=SYSMIS).
RECODE q59_8_5  (ELSE=SYSMIS).
RECODE q59_8_6   (ELSE=SYSMIS).
RECODE q59_8_7  (ELSE=SYSMIS).
RECODE q59_8_8  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q59_9_0=1 |  q59_9_97=1 ).
RECODE q59_9_1  (ELSE=SYSMIS).
RECODE q59_9_2  (ELSE=SYSMIS).
RECODE q59_9_3  (ELSE=SYSMIS).
RECODE q59_9_4  (ELSE=SYSMIS).
RECODE q59_9_5  (ELSE=SYSMIS).
RECODE q59_9_6   (ELSE=SYSMIS).
RECODE q59_9_7  (ELSE=SYSMIS).
RECODE q59_9_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_10_0=1 |  q59_10_97=1 ).
RECODE q59_10_1  (ELSE=SYSMIS).
RECODE q59_10_2  (ELSE=SYSMIS).
RECODE q59_10_3  (ELSE=SYSMIS).
RECODE q59_10_4  (ELSE=SYSMIS).
RECODE q59_10_5  (ELSE=SYSMIS).
RECODE q59_10_6   (ELSE=SYSMIS).
RECODE q59_10_7  (ELSE=SYSMIS).
RECODE q59_10_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_11_0=1 |  q59_11_97=1 ).
RECODE q59_11_1  (ELSE=SYSMIS).
RECODE q59_11_2  (ELSE=SYSMIS).
RECODE q59_11_3  (ELSE=SYSMIS).
RECODE q59_11_4  (ELSE=SYSMIS).
RECODE q59_11_5  (ELSE=SYSMIS).
RECODE q59_11_6   (ELSE=SYSMIS).
RECODE q59_11_7  (ELSE=SYSMIS).
RECODE q59_11_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_12_0=1 |  q59_12_97=1 ).
RECODE q59_12_1  (ELSE=SYSMIS).
RECODE q59_12_2  (ELSE=SYSMIS).
RECODE q59_12_3  (ELSE=SYSMIS).
RECODE q59_12_4  (ELSE=SYSMIS).
RECODE q59_12_5  (ELSE=SYSMIS).
RECODE q59_12_6   (ELSE=SYSMIS).
RECODE q59_12_7  (ELSE=SYSMIS).
RECODE q59_12_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_13_0=1 |  q59_13_97=1 ).
RECODE q59_13_1  (ELSE=SYSMIS).
RECODE q59_13_2  (ELSE=SYSMIS).
RECODE q59_13_3  (ELSE=SYSMIS).
RECODE q59_13_4  (ELSE=SYSMIS).
RECODE q59_13_5  (ELSE=SYSMIS).
RECODE q59_13_6   (ELSE=SYSMIS).
RECODE q59_13_7  (ELSE=SYSMIS).
RECODE q59_13_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_14_0=1 |  q59_14_97=1 ).
RECODE q59_14_1  (ELSE=SYSMIS).
RECODE q59_14_2  (ELSE=SYSMIS).
RECODE q59_14_3  (ELSE=SYSMIS).
RECODE q59_14_4  (ELSE=SYSMIS).
RECODE q59_14_5  (ELSE=SYSMIS).
RECODE q59_14_6   (ELSE=SYSMIS).
RECODE q59_14_7  (ELSE=SYSMIS).
RECODE q59_14_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_15_0=1 |  q59_15_97=1 ).
RECODE q59_15_1  (ELSE=SYSMIS).
RECODE q59_15_2  (ELSE=SYSMIS).
RECODE q59_15_3  (ELSE=SYSMIS).
RECODE q59_15_4  (ELSE=SYSMIS).
RECODE q59_15_5  (ELSE=SYSMIS).
RECODE q59_15_6   (ELSE=SYSMIS).
RECODE q59_15_7  (ELSE=SYSMIS).
RECODE q59_15_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q59_16_0=1 |  q59_16_97=1 ).
RECODE q59_16_1  (ELSE=SYSMIS).
RECODE q59_16_2  (ELSE=SYSMIS).
RECODE q59_16_3  (ELSE=SYSMIS).
RECODE q59_16_4  (ELSE=SYSMIS).
RECODE q59_16_5  (ELSE=SYSMIS).
RECODE q59_16_6   (ELSE=SYSMIS).
RECODE q59_16_7  (ELSE=SYSMIS).
RECODE q59_16_8  (ELSE=SYSMIS).
END IF.
EXECUTE.



VARIABLE LABELS
q1_1_1_1_velha 'q1_1_1_1_v12662_1_1: Estado1.1.1. Provisão da estrutura física do CREAS (imóvel)'
q1_1_1_2_velha 'q1_1_1_2_v12662_2_2: Município Sede'
q1_1_1_3_velha 'q1_1_1_3_v12662_3_3: Município Vínculado'
q1_1_1_0_velha 'q1_1_1_0_v12662_0_0: Não possui/Não se aplica'
q1_1_2_1_velha 'q1_1_2_1_v12663_1_1: Estado1.1.2. Provisão de equipamentos e materiais'
q1_1_2_2_velha 'q1_1_2_2_v12663_2_2: Município Sede'
q1_1_2_3_velha 'q1_1_2_3_v12663_3_3: Município Vínculado'
q1_1_2_0_velha 'q1_1_2_0_v12663_0_0: Não possui/Não se aplica'
q1_1_3_1_velha 'q1_1_3_1_v12664_1_1: Estado1.1.3. Provisão de recursos humanos - equipe de referência'
q1_1_3_2_velha 'q1_1_3_2_v12664_2_2: Município Sede'
q1_1_3_3_velha 'q1_1_3_3_v12664_3_3: Município Vínculado'
q1_1_3_0_velha 'q1_1_3_0_v12664_0_0: Não possui/Não se aplica'
q1_1_4_1_velha 'q1_1_4_1_v12665_1_1: Estado1.1.4. Provisão de veículo'
q1_1_4_2_velha 'q1_1_4_2_v12665_2_2: Município Sede'
q1_1_4_3_velha 'q1_1_4_3_v12665_3_3: Município Vínculado'
q1_1_4_0_velha 'q1_1_4_0_v12665_0_0: Não possui/Não se aplica'
q1_2_velha 'q1_2_v14390_1.2. É realizado o deslocamento da equipe desse CREAS Regional para os municípios vinculados para o atendimento/acompanhamento das famílias e indivíduos?'
q1_3_1_velha 'q1_3_1_v14391_1.3.1. Especifique com que frequência este deslocamento ocorre:'
q1_3_2_velha 'q1_3_2_v14392_1.3.2. Indique como os acompanhamentos nos municípios vinculados estão programados:'
q1_4_1_velha 'q1_4_1_v14393_1_1: Domicílio das famílias1.4. Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_4_2_velha 'q1_4_2_v14393_2_2: Espaço na sede do órgão gestor municipal.1.4. Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_4_3_velha 'q1_4_3_v14393_3_3: Espaço no CRAS.1.4. Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_4_4_velha 'q1_4_4_v14393_4_4: Outro espaço da rede socioassistencial.1.4. Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_4_5_velha 'q1_4_5_v14393_5_5: Espaço da rede de saúde.1.4. Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_4_6_velha 'q1_4_6_v14393_6_6: Espaço na rede de outras políticas públicas.1.4. Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_4_7_velha 'q1_4_7: Espaço na sede de órgão de defesa de direitos (Ministério Público, Conselho Tutelar, Poder Judiciário, Defensoria Pública etc.).1.4.local deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_4_99_velha ' q1_4_99_v14393_99_99: Outros1.4. Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados:'
q1_5_velha ' q1_5_v10304_1.5. Em caso de deslocamento das famílias/indivíduos para a sede deste CREAS Regional, existe apoio para este deslocamento?'
q6_1_velha 'q6_1_v10309_1_1: Secretaria da Assistência Social ou congênere6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_2_velha 'q6_2_v10309_2_2: Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-Prefeitura, etc.)6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_3_velha 'q6_3_v10309_3_3: Conselho Municipal de Assistência Social6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_4_velha 'q6_4_v10309_4_4: CRAS – Centro de Referência de Assistência Social6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_5_velha 'q6_5_v10309_5_5: Centro POP - Centro de Referência Especializado para População em Situação de Rua6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_6_velha 'q6_6_v10309_6_6: Unidade de Acolhimento institucional (Abrigo)6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_7_velha 'q6_7_v10309_7_7: Outra unidade pública de serviços da Assistência Social6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_8_velha 'q6_8_v10309_8_8: Unidade de Saúde6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_9_velha 'q6_9_v10309_9_9: Centro de Referência de Atendimento à Mulher (CRAM)6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_10_velha 'q6_10_v10309_10_10: Entidade ou Organização da Sociedade Civil/ Associação Comunitária6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_11_velha 'q6_11_v10309_11_11: Conselho Tutelar6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_12_velha 'q6_12_v10309_12_12: Delegacia Especializada6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_13_velha 'q6_13_v10309_13_13: Outro órgão de defesa de direitos (Ministério Público, Defensoria Pública, Poder Judiciário, etc.)6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_14_velha 'q6_14_v10309_14_14: NAI - Núcleo de Atendimento Integrado6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_15_velha 'q6_15_v10309_15_15: Conselho Municipal de Direitos da Criança e do Adolescente6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q6_99_velha 'q6_99_v10309_99_99: Outros6. Especifique o tipo de unidade com a qual este CREAS compartilha o imóvel.'
q7_1_velha 'q7_1_v10311_1_1: Apenas o endereço é o mesmo, mas todos os espaços do CREAS são independentes e de uso exclusivo, inclusive a entrada 7. quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_2_velha 'q7_2_v10311_2_2: Entrada /Porta de Acesso7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_3_velha 'q7_3_v10311_3_3: Recepção7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_4_velha 'q7_4_v10311_4_4: Algumas salas de atendimento individualizado7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_5_velha 'q7_5_v10311_5_5: Todas as salas de atendimento individualizado7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_6_velha 'q7_6_v10311_6_6: Algumas salas de atendimento coletivo7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_7_velha 'q7_7_v10311_7_7: Todas as salas de atendimento coletivo7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_8_velha 'q7_8_v10311_8_8: Salas administrativas7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_9_velha 'q7_9_v10311_9_9: Banheiros7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_10_velha 'q7_10_v10311_10_10: Copa/cozinha7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_11_velha 'q7_11_v10311_11_11: Área Externa7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q7_12_velha 'q7_12_v10311_12_12: Almoxarifado ou similar7. Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s):'
q10_1_velha 'q10_1_v12702_1_1: Sim, suporte de profissional com conhecimento em LIBRAS10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q10_2_velha 'q10_2_v12702_2_2: Sim, suporte de material em braille10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q10_3_velha 'q10_3_v12702_3_3: Sim, suporte para leitores de telas de computador para pessoas com deficiência visual10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q10_4_velha 'q10_4_v12702_4_4: Sim, há outras estratégias para assegurar a acessibilidade a pessoas com deficiência auditiva/surdas e com deficiência visual.10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q10_5_velha 'q10_5_v12702_5_5: Sim, outras adaptações e tecnologias assistivas para deficiência física10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?	'
q10_6_velha 'q10_6_v12702_6_6: Sim, outras adaptações e tecnologias assistivas para deficiência intelectual e autismo.10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q10_7_velha 'q10_7_v12702_7_7: Sim, pisos especiais com relevos para sinalização voltados para pessoas com deficiência visual10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q10_0_velha 'q10_0_v12702_0_0: Não há outras adaptações10. Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta unidade?'
q17_1_1_velha 'q17_1_1_v15601_1_1: Indígenas17.1. Consultas à comunidade/povo/lideranças - ações e atividades realizadas'
q17_1_2_velha 'q17_1_2_v15601_2_2: Demais povos e comunidades tradicionais17.1. Consultas à comunidade/povo/lideranças - ações e atividades realizadas'
q17_1_3_velha 'q17_1_3_v15601_3_3: População LGBT17.1. Consultas à comunidade/povo/lideranças - ações e atividades realizadas'
q17_1_4_velha 'q17_1_4_v15601_4_4: População em situação de rua17.1. Consultas à comunidade/povo/lideranças - ações e atividades realizadas'
q17_1_5_velha 'q17_1_5_v15601_5_5: Migrantes17.1. Consultas à comunidade/povo/lideranças - ações e atividades realizadas'
q17_1_0_velha 'q17_1_0_v15601_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.1. Consultas à comunidade/povo/lideranças - ações e atividades realizadas'
q17_2_1_velha 'q17_2_1_v15602_1_1: Indígenas17.2. Deslocamento para os territórios desses povos- ações e atividades realizadas'
q17_2_2_velha 'q17_2_2_v15602_2_2: Demais povos e comunidades tradicionais17.2. Deslocamento para os territórios desses povos- ações e atividades realizadas'
q17_2_3_velha 'q17_2_3_v15602_3_3: População LGBT17.2. Deslocamento para os territórios desses povos- ações e atividades realizadas'
q17_2_4_velha 'q17_2_4_v15602_4_4: População em situação de rua17.2. Deslocamento para os territórios desses povos- ações e atividades realizadas'
q17_2_5_velha 'q17_2_5_v15602_5_5: Migrantes17.2. Deslocamento para os territórios desses povos- ações e atividades realizadas'
q17_2_0_velha 'q17_2_0_v15602_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.2. Deslocamento para os territórios desses povos- ações e atividades realizadas'
q17_3_1_velha 'q17_3_1_v15603_1_1: Indígenas17.3. Metodologia específica de acompanhamento- ações e atividades realizadas'
q17_3_2_velha ' q17_3_2_v15603_2_2: Demais povos e comunidades tradicionais17.3. Metodologia específica de acompanhamento- ações e atividades realizadas'
q17_3_3_velha 'q17_3_3_v15603_3_3: População LGBT17.3. Metodologia específica de acompanhamento- ações e atividades realizadas'
q17_3_4_velha 'q17_3_4_v15603_4_4: População em situação de rua17.3. Metodologia específica de acompanhamento- ações e atividades realizadas'
q17_3_5_velha 'q17_3_5_v15603_5_5: Migrantes17.3. Metodologia específica de acompanhamento- ações e atividades realizadas'
q17_3_0_velha 'q17_3_0_v15603_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.3. Metodologia específica de acompanhamento- ações e atividades realizadas'
q17_4_1_velha 'q17_4_1_v15604_1_1: Indígenas17.4. Articulação com Organizações/Movimentos Sociais de promoção e defesa dos direitos desse público- ações e atividades realizadas'
q17_4_2_velha 'q17_4_2_v15604_2_2: Demais povos e comunidades tradicionais17.4. Articulação com Organizações/Movimentos Sociais de promoção e defesa dos direitos desse público- ações e atividades realizadas'
q17_4_3_velha 'q17_4_3_v15604_3_3: População LGBT17.4. Articulação com Organizações/Movimentos Sociais de promoção e defesa dos direitos desse público- ações e atividades realizadas'
q17_4_4_velha 'q17_4_4_v15604_4_4: População em situação de rua17.4. Articulação com Organizações/Movimentos Sociais de promoção e defesa dos direitos desse público- ações e atividades realizadas'
q17_4_5_velha 'q17_4_5_v15604_5_5: Migrantes17.4. Articulação com Organizações/Movimentos Sociais de promoção e defesa dos direitos desse público- ações e atividades realizadas'
q17_4_0_velha 'q17_4_0_v15604_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.4. Articulação com Organizações/Movimentos Sociais de promoção e defesa dos direitos desse público- ações e atividades realizadas'
q17_5_1_velha 'q17_5_1_v15605_1_1: Indígenas17.5. Articulação local com órgãos governamentais com atuação junto a esse público (ex. FUNAI, INCRA, Direitos Humanos, DSEI)- ações e atividades realizadas'
q17_5_2_velha 'q17_5_2_v15605_2_2: Demais povos e comunidades tradicionais17.5. Articulação local com órgãos governamentais com atuação junto a esse público (ex. FUNAI, INCRA, Direitos Humanos, DSEI)- ações e atividades realizadas'
q17_5_3_velha 'q17_5_3_v15605_3_3: População LGBT17.5. Articulação local com órgãos governamentais com atuação junto a esse público (ex. FUNAI, INCRA, Direitos Humanos, DSEI)- ações e atividades realizadas'
q17_5_4_velha 'q17_5_4_v15605_4_4: População em situação de rua17.5. Articulação local com órgãos governamentais com atuação junto a esse público (ex. FUNAI, INCRA, Direitos Humanos, DSEI)- ações e atividades realizadas'
q17_5_5_velha 'q17_5_5_v15605_5_5: Migrantes17.5. Articulação local com órgãos governamentais com atuação junto a esse público (ex. FUNAI, INCRA, Direitos Humanos, DSEI)- ações e atividades realizadas'
q17_5_0_velha 'q17_5_0_v15605_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.5. Articulação local com órgãos governamentais com atuação junto a esse público'
q17_6_1_velha 'q17_6_1_v15606_1_1: Indígenas17.6. Articulação com Conselho Tutelar para questões específicas desse público- ações e atividades realizadas'
q17_6_2_velha 'q17_6_2_v15606_2_2: Demais povos e comunidades tradicionais17.6. Articulação com Conselho Tutelar para questões específicas desse público- ações e atividades realizadas'
q17_6_3_velha 'q17_6_3_v15606_3_3: População LGBT17.6. Articulação com Conselho Tutelar para questões específicas desse público- ações e atividades realizadas'
q17_6_4_velha 'q17_6_4_v15606_4_4: População em situação de rua17.6. Articulação com Conselho Tutelar para questões específicas desse público- ações e atividades realizadas'
q17_6_5_velha 'q17_6_5_v15606_5_5: Migrantes17.6. Articulação com Conselho Tutelar para questões específicas desse público- ações e atividades realizadas'
q17_6_0_velha 'q17_6_0_v15606_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.6. Articulação com Conselho Tutelar para questões específicas desse público- ações e atividades realizadas'
q17_7_1_velha 'q17_7_1_v15607_1_1: Indígenas17.7. Articulação com o conselho de direitos para questões específicas desse público e outros movimentos sociais- ações e atividades realizadas'
q17_7_2_velha 'q17_7_2_v15607_2_2: Demais povos e comunidades tradicionais17.7. Articulação com o conselho de direitos para questões específicas desse público e outros movimentos sociais- ações e atividades realizadas'
q17_7_3_velha  'q17_7_3_v15607_3_3: População LGBT17.7. Articulação com o conselho de direitos para questões específicas desse público e outros movimentos sociais- ações e atividades realizadas'
q17_7_4_velha 'q17_7_4_v15607_4_4: População em situação de rua17.7. Articulação com o conselho de direitos para questões específicas desse público e outros movimentos sociais- ações e atividades realizadas'
q17_7_5_velha 'q17_7_5_v15607_5_5: Migrantes17.7. Articulação com o conselho de direitos para questões específicas desse público e outros movimentos sociais- ações e atividades realizadas'
q17_7_0_velha 'q17_7_0_v15607_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.7. Articulação com o conselho de direitos para questões específicas desse público e outros movimentos sociais- ações e atividades realizadas'
q17_8_1_velha ' q17_8_1_v15608_1_1: Indígenas17.8. Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos específicas desse público- ações e atividades realizadas'
q17_8_2_velha 'q17_8_2_v15608_2_2: Demais povos e comunidades tradicionais17.8. Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos específicas desse público- ações e atividades realizadas'
q17_8_3_velha 'q17_8_3_v15608_3_3: População LGBT17.8. Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos específicas desse público- ações e atividades realizadas'
q17_8_4_velha 'q17_8_4_v15608_4_4: População em situação de rua17.8. Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos específicas desse público- ações e atividades realizadas'
q17_8_5_velha 'q17_8_5_v15608_5_5: Migrantes17.8. Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos específicas desse público- ações e atividades realizadas'
q17_8_0_velha 'q17_8_0_v15608_6_0: Não realiza esta atividade para nenhum dos públicos mencionados17.8. Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos'
q17_9_1_velha 'q17_9_1_v15610_1_1: Indígenas17.9. Atividades que envolvam a comunidade (mutirões, campanhas, oficinas, seminários etc)- ações e atividades realizadas'
q17_9_2_velha 'q17_9_2_v15610_2_2: Demais povos e comunidades tradicionais17.9. Atividades que envolvam a comunidade (mutirões, campanhas, oficinas, seminários etc)- ações e atividades realizadas'
q17_9_3_velha 'q17_9_3_v15610_3_3: População LGBT17.9. Atividades que envolvam a comunidade (mutirões, campanhas, oficinas, seminários etc)- ações e atividades realizadas'
q17_9_4_velha 'q17_9_4_v15610_4_4: População em situação de rua17.9. Atividades que envolvam a comunidade (mutirões, campanhas, oficinas, seminários etc)- ações e atividades realizadas'
q17_9_5_velha 'q17_9_5_v15610_5_5: Migrantes17.9. Atividades que envolvam a comunidade (mutirões, campanhas, oficinas, seminários etc)- ações e atividades realizadas'
q17_9_0_velha 'q17_9_0_v15610_6_0: Não realiza esta atividade para nenhum dos públicos mencionados17.9. Atividades que envolvam a comunidade (mutirões, campanhas, oficinas, seminários etc)- ações e atividades realizadas'
q17_10_1_velha 'q17_10_1_v15611_1_1: Indígenas17.10. Ações específicas com grupo de mulheres para o enfrentamento das situações de violência familiar/doméstica e outras violações de direitos- ações e atividades realizadas'
q17_10_2_velha 'q17_10_2_v15611_2_2: Demais povos e comunidades tradicionais17.10. Ações específicas com grupo de mulheres para o enfrentamento das situações de violência familiar/doméstica e outras violações de direitos'
q17_10_3_velha 'q17_10_3_v15611_3_3: População LGBT17.10. Ações específicas com grupo de mulheres para o enfrentamento das situações de violência familiar/doméstica e outras violações de direitos- ações e atividades realizadas'
q17_10_4_velha 'q17_10_4_v15611_4_4: População em situação de rua17.10. Ações específicas com grupo de mulheres para o enfrentamento das situações de violência familiar/doméstica e outras violações de direitos- ações e atividades realizadas'
q17_10_5_velha 'q17_10_5_v15611_5_5: Migrantes17.10. Ações específicas com grupo de mulheres para o enfrentamento das situações de violência familiar/doméstica e outras violações de direitos- ações e atividades realizadas'
q17_10_0_velha 'q17_10_0_v15611_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.10. Ações específicas com grupo de mulheres para o enfrentamento das situações de violência familiar/doméstica e outras violações de direitos'
q17_11_1_velha 'q17_11_1_v15612_1_1: Indígenas17.11. Utilização do Nome Social para pessoas travestis e transexuais- ações e atividades realizadas'
q17_11_2_velha 'q17_11_2_v15612_2_2: Demais povos e comunidades tradicionais17.11. Utilização do Nome Social para pessoas travestis e transexuais- ações e atividades realizadas'
q17_11_3_velha 'q17_11_3_v15612_3_3: População LGBT17.11. Utilização do Nome Social para pessoas travestis e transexuais- ações e atividades realizadas'
q17_11_4_velha 'q17_11_4_v15612_4_4: População em situação de rua17.11. Utilização do Nome Social para pessoas travestis e transexuais- ações e atividades realizadas'
q17_11_5_velha 'q17_11_5_v15612_5_5: Migrantes17.11. Utilização do Nome Social para pessoas travestis e transexuais- ações e atividades realizadas'
q17_11_0_velha ' q17_11_0_v15612_0_0: Não realiza esta atividade para nenhum dos públicos mencionados17.11. Utilização do Nome Social para pessoas travestis e transexuais- ações e atividades realizadas'
q18_1_1_velha 'q18_1_1_v11867_1_1: Oficinas com ações preventivas18.1. Autores de agressão intrafamiliar - atividades de atendimento'
q18_1_2_velha 'q18_1_2_v11867_2_2: Apoio à reinserção social18.1. Autores de agressão intrafamiliar - atividades de atendimento'
q18_1_3_velha 'q18_1_3_v11867_3_3: Encaminhamento monitorado para a rede de saúde18.1. Autores de agressão intrafamiliar - atividades de atendimento'
q18_1_99_velha 'q18_1_99_v11867_99_99: Outras atividades de atendimento / acompanhamento18.1. Autores de agressão intrafamiliar - atividades de atendimento'
q18_1_0_velha 'q18_1_0_v11867_0_0: Não realiza atendimento ou acompanhamento18.1. Autores de agressão intrafamiliar - atividades de atendimento'
q18_2_1_velha 'q18_2_1_v15600_1_1: Oficinas com ações preventivas18.2. Egressas(os) do sistema prisional- atividades de atendimento'
q18_2_2_velha 'q18_2_2_v15600_2_2: Apoio à reinserção social18.2. Egressas(os) do sistema prisional- atividades de atendimento'	
q18_2_3_velha 'q18_2_3_v15600_3_3: Encaminhamento monitorado para a rede de saúde18.2. Egressas(os) do sistema prisional- atividades de atendimento'
q18_2_99_velha 'q18_2_99_v15600_99_99: Outras atividades de atendimento / acompanhamento18.2. Egressas(os) do sistema prisional- atividades de atendimento'
q18_2_0_velha 'q18_2_0_v15600_0_0: Não realiza atendimento ou acompanhamento18.2. Egressas(os) do sistema prisional- atividades de atendimento'
q18_3_1_velha 'q18_3_1_v11869_1_1: Oficinas com ações preventivas18.3. Famílias com pessoas em situação de violação de direito em decorrência do uso de álcool e outras drogas- atividades de atendimento'
q18_3_2_velha 'q18_3_2_v11869_2_2: Apoio à reinserção social18.3. Famílias com pessoas em situação de violação de direito em decorrência do uso de álcool e outras drogas- atividades de atendimento'
q18_3_3_velha 'q18_3_3_v11869_3_3: Encaminhamento monitorado para a rede de saúde18.3. Famílias com pessoas em situação de violação de direito em decorrência do uso de álcool e outras drogas- atividades de atendimento'
q18_3_99_velha 'q18_3_99_v11869_99_99: Outras atividades de atendimento / acompanhamento18.3. Famílias com pessoas em situação de violação de direito em decorrência do uso de álcool e outras drogas- atividades de atendimento'
q18_3_0_velha ' q18_3_0_v11869_0_0: Não realiza atendimento ou acompanhamento18.3. Famílias com pessoas em situação de violação de direito em decorrência do uso de álcool e outras drogas- atividades de atendimento'
q19_1_velha 'q19_1_v15613_1_1: Acolhida da revelação espontânea sobre vivência de situação de violência- ações realizadas PAEFI:'
q19_2_velha'q19_2_v15613_2_2: Escuta do livre relato da criança ou adolescente sobre a situação de violência da qual foi vítima ou testemunha- ações realizadas PAEFI:'
q19_3_velha'q19_3_v15613_3_3: Informação à criança e ao adolescente sobre possíveis desdobramentos da revelação- ações realizadas PAEFI:'
q19_4_velha'q19_4_v15613_4_4: Identificação ou suspeita de sinais de violência entre crianças e adolescentes em acompanhamento- ações realizadas PAEFI:'
q19_5_velha'q19_5_v15613_5_5: Escuta qualificada/especializada para compreender as possibilidades de prevenção, proteção e enfrentamento da situação de violência- ações realizadas PAEFI:'
q19_6_velha'q19_6_v15613_6_6: Ações coletivas que envolvam esta população (mutirões, campanhas, oficinas, seminários etc)- ações realizadas PAEFI:'
q19_7_velha'q19_7_v15613_7_7: Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos específicas desse público- ações realizadas PAEFI:'
q19_8_velha'q19_8_v15613_8_8: Participação na elaboração e/ou pactuação de fluxos de atendimento com outros órgãos do SGD- ações realizadas PAEFI'
q19_9_velha'q19_9_v15613_9_9: Participação em comissões intersetoriais locais instituídas para a articulação das ações dos órgãos que compõem o SGD- ações realizadas PAEFI:'
q19_10_velha'q19_10_v15613_10_10: Compartilhamento de informações sobre as situações em acompanhamento por meio de reuniões interinstitucionais, audiências concentradas e/ou outros espaços de discussão intersetoriais- ações realizadas PAEFI'
q19_11_velha'q19_11_v15613_11_11: Elaboração e definição de fluxo para atendimento e acompanhamento desse público pelo CREAS e outras unidades e serviços do SUAS- ações realizadas PAEFI:'
q19_12_velha'q19_12_v15613_12_12: Elaboração, pactuação e/ou implementação de fluxos para compartilhamento de informações entre a rede de proteção e os órgãos de responsabilização- ações realizadas PAEFI:'
q19_13_velha'q19_13_v15613_13_13: Participação em grupos intersetoriais para discussão e estudo de caso em conjunto- ações realizadas PAEFI:'
q19_14_velha'q19_14_v15613_14_14: Participação em ações intersetoriais de capacitação no âmbito do SGD de Crianças e Adolescentes Vítimas ou Testemunhas de Violência - ações realizadas PAEFI:'
q19_99_velha'q19_99_v15613_99_99: Outra19. Em relação ao atendimento/acompanhamento de crianças e adolescentes vítimas ou testemunhas de violência e suas famílias, quais ações e atividades são previstas e realizadas pela equipe do PAEFI:'
q19_0_velha'q19_0_v15613_0_0: Não realiza nenhuma ação e/ou atividade19. Em relação ao atendimento/acompanhamento de crianças e adolescentes vítimas ou testemunhas de violência e suas famílias:'
q21_1_velha 'q21_1_v12806_1_1: Todas as famílias de adolescentes em MSE são acompanhadas pelo PAEFI21. Quando as famílias dos adolescentes em MSE são acompanhados pelo Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI)'
q21_2_velha 'q21_2_v12806_2_2: Todas as famílias que aceitam participar do acompanhamento pelo PAEFI21. Quando as famílias dos adolescentes em MSE  são acompanhados pelo Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI)'
q21_3_velha 'q21_3_v12806_3_3: Quando a família possui algum membro, além da(o) adolescente em MSE, com direito violado21. Quando as famílias dos adolescentes em MSE  são acompanhados pelo PAEFI'
q21_4_velha 'q21_4_v12806_4_4: Quando a família das(os) adolescentes em MSE solicita acompanhamento21. Quando as famílias dos adolescentes em MSE  são acompanhados pelo Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI)'
q21_5_velha 'q21_5_v12806_5_5: Quando o acompanhamento é solicitado pela equipe da MSE21. Quando as famílias dos adolescentes em MSE  são acompanhados pelo Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI)'
q21_6_velha 'q21_6_v12806_6_6: Quando o Poder Judiciário solicita21. Quando as famílias dos adolescentes em Serviço de Medida Socioeducativa (MSE) são acompanhados pelo Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI)'
q21_99_velha 'q21_99_v12806_99_99: Outro21. Quando as famílias dos adolescentes em Serviço de Medida Socioeducativa (MSE) são acompanhados pelo Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI)'
q22_1_velha 'q22_1_v11948_22.1. Liberdade Assistida _ Do total de adolescentes em MSE'
q22_2_velha 'q22_2_v11871_22.2. Prestação de Serviços à Comunidade_ Do total de adolescentes em MSE'
q23_velha 'q23_v10524_23. Indique abaixo a frequência com que, normalmente, cada adolescente em cumprimento de medida socioeducativa de Liberdade Assistida (LA) é atendida(o) neste CREAS'
q24_1_velha 'q24_1_v10529_1_1: Elaboração do Plano Individual de Atendimento (PIA) da(o) adolescente24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_2_velha 'q24_2_v10529_2_2: Atendimento individual da(o) adolescente24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_3_velha 'q24_3_v10529_3_3: Atendimento da(o) adolescente em grupos24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_4_velha 'q24_4_v10529_4_4: Atendimento da família da(o) adolescente em cumprimento de medida de liberdade assistida24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_5_velha 'q24_5_v10529_5_5: Atendimento com grupos de famílias da(o) adolescente em cumprimento de medida de liberdade assistida (LA)'
q24_6_velha 'q24_6_v10529_6_6: Visita domiciliar24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_7_velha 'q24_7_v10529_7_7: Encaminhamento da(o) adolescente para o sistema educacional24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_8_velha 'q24_8_v10529_8_8: Acompanhamento da frequência escolar da(o) adolescente24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_9_velha 'q24_9_v10529_9_9: Encaminhamento para o Serviço de Convivência e Fortalecimento de Vínculos24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_10_velha 'q24_10_v10529_10_10: Encaminhamento da(o) adolescente e sua família para outros serviços e programas da rede socioassistencial24. ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_11_velha 'q24_11_v10529_11_11: Encaminhamento para serviços da rede de saúde para atendimento de usuárias(os)/dependentes de substâncias psicoativas'
q24_12_velha 'q24_12_v10529_12_12: Encaminhamento de famílias ou indivíduos para outros serviços da rede de saúde24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_13_velha 'q24_13_v10529_13_13: Encaminhamento da(o) adolescente e sua família para serviços de outras políticas setoriais24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_14_velha 'q24_14_v10529_14_14: Encaminhamento da(o) adolescente para cursos profissionalizantes24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_15_velha'q24_15_v10529_15_15: Elaboração e encaminhamento de relatório para a Justiça da Infância e da Juventude ou Ministério Público'
q24_16_velha 'q24_16_v10529_16_16: Elaboração e encaminhamento de relatórios periódicos para o órgão gestor da assistência social no município24. ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_17_velha 'q24_17_v10529_17_17: Registro do acompanhamento em prontuário24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_18_velha 'q24_18_v10529_18_18: Encaminhamento da família e/ou da(o) adolescente ao PAEFI24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_19_velha 'q24_19_v10529_19_19: Discussão de caso com outras(os) profissionais da rede24. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Liberdade Assistida (LA)'
q24_20_velha 'q24_20_v10529_20_20: Utilização de técnicas restaurativas e/ou encaminhamento para locais que realizam práticas restaurativas'
q25_velha 'q25_v15614_25. Indique abaixo a frequência com que, normalmente, cada adolescente em cumprimento de medida socioeducativa de Prestação de Serviço de Comunidade (PSC) é atendida(o) neste CREAS:'
q26_1_velha 'q26_1_v10527_1_1: CRAS26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_2_velha 'q26_2_v10527_2_2: CREAS26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_3_velha 'q26_3_v10527_3_3: Biblioteca26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_4_velha 'q26_4_v10527_4_4: Hospitais26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_5_velha 'q26_5_v10527_5_5: Unidades de Acolhimento para Idosos (asilos)26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_6_velha 'q26_6_v10527_6_6: Defensoria Pública/ Fórum26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_7_velha 'q26_7_v10527_7_7: Projetos de Cultura26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_8_velha 'q26_8_v10527_8_8: Projetos de Esporte26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_9_velha 'q26_9_v10527_9_9: Igrejas26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_10_velha 'q26_10_v10527_10_10: Conselho Tutelar26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_11_velha 'q26_11_v10527_11_11: Sistema S (SENAI, SESC, SESI, etc.)26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_12_velha 'q26_12_v10527_12_12: Atividades da Secretaria de Obras ou similares26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_13_velha 'q26_13_v10527_13_13: Polícia/ Corpo de Bombeiros26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q26_99_velha 'q26_99_v10527_99_99: Outros26. Indique os principais locais onde a(o) adolescente presta serviço à comunidade nesta localidade:'
q27_velha 'q27_v10526_27. Indique abaixo a frequência com que, normalmente, os adolescentes realizam atividades de prestação de serviços à comunidade (PSC)'
q28_1_velha 'q28_1_v15615_1_1: Serviços administrativos (secretariado, almoxarifado, etc);28. Quais atividades são realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)'
q28_2_velha 'q28_2_v15615_2_2: Reparos e manutenção (pintura, conserto de objetos, etc.);28. Quais atividades são realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)'
q28_3_velha 'q28_3_v15615_3_3: Preservação de patrimônio público (praças, parques, monumentos, etc.);28. Quais atividades são realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)'
q28_4_velha 'q28_4_v15615_4_4: Atividades com pessoas em situação de vulnerabilidade (pessoas enfermas, pessoas em situação de acolhimento, etc.);28.  atividades realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)'
q28_5_velha 'q28_5_v15615_5_5: Tarefas de cunho artístico ou cultural28. Quais atividades são realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)'
q28_99_velha 'q28_99_v15615_99_99: Outros28. Quais atividades são realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)'
q29_1_velha 'q29_1_v15618_1_1: Elaboração do Plano Individual de Atendimento (PIA) da(o) adolescente29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_2_velha 'q29_2_v15618_2_2: Encaminhamento da(o) adolescente para os locais de prestação de serviços comunitários29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_3_velha 'q29_3_v15618_3_3: Atendimento individual da(o) adolescente29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_4_velha 'q29_4_v15618_4_4: Atendimento da(o) adolescente em grupos29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_5_velha 'q29_5_v15618_5_5: Atendimento da família do adolescente em cumprimento de medida de PSC29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_6_velha 'q29_6_v15618_6_6: Atendimento com grupos de famílias da(o) adolescente em cumprimento de medida de PSC29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_7_velha 'q29_7_v15618_7_7: Visita domiciliar29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_8_velha 'q29_8_v15618_8_8: Visitas técnicas aos locais de prestação do serviço à comunidade29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_9_velha 'q29_9_v15618_9_9: Encaminhamento da(o) adolescente para o sistema educacional29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_10_velha 'q29_10_v15618_10_10: Encaminhamento da família e/ou da(o) adolescente ao PAEFI29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_11_velha 'q29_11_v15618_11_11: Discussão de caso com outras(os) profissionais da rede29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_12_velha' q29_12_v15618_12_12: Acompanhamento da frequência escolar da(o) adolescente29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_13_velha 'q29_13_v15618_13_13: Encaminhamento para o Serviço de Convivência e Fortalecimento de Vínculos29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_14_velha 'q29_14_v15618_14_14: Encaminhamento da(o) adolescente e sua família para outros serviços e programas da rede socioassistencial'
q29_15_velha 'q29_15_v15618_15_15: Encaminhamento para serviços da rede de saúde para atendimento de usuárias(os)/dependentes de substâncias psicoativas29. ações/atividades realizadas por profissionais deste CREAS no âmbito da PSC'
q29_16_velha 'q29_16_v15618_16_16: Encaminhamento de famílias ou indivíduos para outros serviços da rede de saúde29.(PSC)'
q29_17_velha 'q29_17_v15618_17_17: Encaminhamento da(o) adolescente e sua família para serviços de outras políticas setoriais29. ações/atividades realizadas por profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_18_velha 'q29_18_v15618_18_18: Encaminhamento da(o) adolescente para cursos profissionalizantes29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q29_19_velha 'q29_19_v15618_19_19: Elaboração e encaminhamento de relatório para a Justiça da Infância e da Juventude ou Ministério Público  Prestação de Serviço à Comunidade (PSC)'
q29_20_velha 'q29_20_v15618_20_20: Elaboração e encaminhamento de relatórios periódicos para o órgão gestor da assistência social no município Prestação de Serviço à Comunidade (PSC)'
q29_21_velha 'q29_21_v15618_21_21: Outros29. Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)'
q30_velha 'q30_v10531_30. Este CREAS realiza o Serviço Especializado em Abordagem Social?'
q31_1_velha 'q31_1_v11874_1_1: Cumpre função de coordenador do Serviço referenciado31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_2_velha 'q31_2_v11874_2_2: Coleta/recebe periodicamente informações sobre dados de atendimento do Serviço indique as atividades realizadas por este CREAS:'
q31_3_velha 'q31_3_v11874_3_3: Realiza reuniões periódicas para avaliação do Serviço com a unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_4_velha 'q31_4_v11874_4_4: Participa do processo de planejamento das atividades do Serviço31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_5_velha 'q31_5_v11874_5_5: Acompanha cotidianamente as atividades do Serviço31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_6_velha 'q31_6_v11874_6_6: Constrói estratégias metodológicas do Serviço31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_7_velha 'q31_7_v11874_7_7: Elabora relatórios técnicos específicos sobre casos atendidos/acompanhados pelo Serviço- execução do Serviço Especializado em Abordagem Social por unidade referenciada, o CREAS:'
q31_8_velha 'q31_8_v11874_8_8: Realiza estudos de caso em parceria com o Serviço31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_9_velha 'q31_9_v11874_9_9: Define procedimentos comuns e/ou complementares ao Serviço31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_10_velha 'q31_10_v11874_10_10: Possui fluxos de encaminhamentos e trocas de informações com o Serviço31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_11_velha 'q31_11_v11874_11_11: Articula com a rede de serviços socioassistenciais31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_12_velha 'q31_12_v11874_12_12: Articula com a rede dos serviços das políticas públicas setoriais31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_13_velha 'q31_13_v11874_13_13: Articula com os órgãos do Sistema de Justiças31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q31_14_velha  'q31_14_v11874_14_14: Articula com os órgãos de defesa de direitos (Defensoria Pública, MP, Conselho Tutelar, etc.)- execução do Serviço Especializado em Abordagem Social por unidade referenciada, o CREAS:'
q31_0_velha 'q31_0_v11874_0_0: Não realiza nenhuma das atividades acima31. No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS:'
q32_1_velha 'q32_1_v10532_1_1: Identificação de situações de risco pessoal e social com direitos violados32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_2_velha 'q32_2_v10532_2_2: Conhecimento/mapeamento do Território32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_3_velha 'q32_3_v10532_3_3: Informação, comunicação e defesa de direitos das(os) usuárias(os)32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_4_velha 'q32_4_v10532_4_4: Escuta de usuárias(os)32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_5_velha 'q32_5_v10532_5_5: Construção de vínculo entre a equipe de referência e usuárias(os)32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_6_velha 'q32_6_v10532_6_6: Encaminhamentos para a rede de serviços locais32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_7_velha 'q32_7_v10532_7_7: Articulação da rede de serviços socioassistenciais32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_8_velha 'q32_8_v10532_8_8: Articulação com os serviços de políticas públicas setoriais32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_9_velha 'q32_8_v10532_8_8: Articulação com os serviços de políticas públicas setoriais32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_10_velha 'q32_10_v10532_10_10: Elaboração de relatórios32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_11_velha'q32_11_v10532_11_11: Ações de sensibilização para divulgação do trabalho realizado32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_12_velha 'q32_12_v10532_12_12: Ações para fortalecimento de vínculos familiares e comunitários32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q32_13_velha 'q32_13_v10532_13_13: Registro de atendimento e acompanhamento das(os) usuárias(os)32. Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?'
q33_velha' q33_v10537_33. Quantos dias por semana a abordagem social é realizada:'
q34_velha 'q34_v10538_34. Em quais períodos do dia costuma ser realizada a abordagem social:'
q35_1_velha 'q35_1_v12813_1_1: A abordagem é realizada exclusivamente pela equipe do CREAS35. A abordagem social é realizada em parceria com:'
q35_2_velha' q35_2_v12813_2_2: Equipes de atenção básica de saúde35. A abordagem social é realizada em parceria com:'
q35_3_velha 'q35_3_v12813_3_3: Equipes de saúde mental35. A abordagem social é realizada em parceria com:'
q35_4_velha'q35_4_v12813_4_4: Equipes de serviços de acolhimento35. A abordagem social é realizada em parceria com:'
q35_5_velha 'q35_5_v12813_5_5: Equipes do Centro POP35. A abordagem social é realizada em parceria com:'
q35_6_velha 'q35_6_v12813_6_6: Equipes de outras unidades públicas da rede socioassistencial35. A abordagem social é realizada em parceria com:'
q35_7_velha 'q35_7_v12813_7_7: Equipes de entidades da rede socioassistencial privada35. A abordagem social é realizada em parceria com:'
q35_8_velha 'q35_8_v12813_8_8: Integrantes de movimentos sociais35. A abordagem social é realizada em parceria com:'
q35_9_velha 'q35_9_v12813_9_9: Guarda Municipal35. A abordagem social é realizada em parceria com:'
q35_10_velha 'q35_10_v12813_10_10: Polícia Militar35. A abordagem social é realizada em parceria com:'
q35_11_velha 'q35_11_v12813_11_11: Equipes do sistema de justiça35. A abordagem social é realizada em parceria com:'
q35_12_velha 'q35_12_v12813_12_12: Órgão de garantia de defesa de direitos35. A abordagem social é realizada em parceria com:'
q35_13_velha 'q35_13_v12813_13_13: Conselho Tutelar35. A abordagem social é realizada em parceria com:'
q35_99_velha 'q35_99_v12813_99_99: Outros35. A abordagem social é realizada em parceria com:'
q36_1_velha 'q36_1_v15620_1_1: Conhecimento prévio dos técnicos do Serviço36. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q36_2_velha 'q36_2_v15620_2_2: A partir de diagnósticos socioterritoriais realizados pelo órgão gestor de Assistência Social36. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q36_3_velha 'q36_3_v15620_3_3: A partir de diagnósticos socioterritoriais realizados pela equipe que executa o serviço36. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q36_4_velha 'q36_4_v15620_4_4: Demanda dos órgãos de defesa de diretos36. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q36_5_velha 'q36_5_v15620_5_5: Denúncias/Solicitações da população36. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q36_99_velha 'q36_99_v15620_99_99: Outros.36. Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social?'
q37_1_velha 'q37_1_v15622_1_1: Aciona o Conselho Tutelar37. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q37_2_velha 'q37_2_v15622_2_2: Avalia os riscos que a criança ou o adolescente estão submetidos37. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q37_3_velha 'q37_3_v15622_3_3: Realiza, em articulação com o Conselho Tutelar, a identificação da família de origem, avaliando as possibilidades de retorno seguro para convivência familiar e comunitária- atuação Serviço Abordagem Social'
q37_4_velha 'q37_4_v15622_4_4: Utiliza metodo específico para Abordagem Social de crianças e adolescentes, enquanto constrói alternativas processuais/gradativas para a saída das ruas, evitando o acolhimento compulsório'
q37_5_velha'q37_5_v15622_5_5: Articula com os atores que integram o Sistema de Garantia de Direitos para proteção e outros suportes necessários- atuaçao Serviço Abordagem Social com crianças/adolescentes em situação de rua desacompanhados?'
q37_6_velha 'q37_6_v15622_6_6: Estabelece fluxo e articulações entre Abordagem Social e Serviço de Acolhimento, com metodo específico para criança/adolescente em situação de rua- atuação Abordagem Social'
q37_7_velha 'q37_7_v15622_7_7: Articula com sistema de justiça para aplicação de medida protetiva e outros encaminhamentos necessários- Como o Serviço Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados?'
q37_0_velha 'q37_0_v15622_0_0: NÃO atendeu crianças/adolescentes em situação de rua desacompanhados dos responsáveis- Como o Serviço Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q37_99_velha 'q37_99_v15622_99_99: Outra37. Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?'
q39_velha 'q39_v11959_39. O Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias é executado:'
q40_velha 'q40_v14399_40. Total de pessoas atendidas no Serviço no mês de agosto de 2020'
q41_velha'q41_v11960_41. O Serviço de Proteção Social Especial para Pessoas Com Deficiência, Idosas e suas Famílias, ofertado nesta Unidade, possui capacidade para atender quantas(os) usuárias(os) por turno?'
q42_velha 'q42_v11961_42. Em média, quantos dias por semana as(os) usuárias(os) frequentam este serviço?'
q43_velha'q43_v11962_43. Em média, quantas horas por dia as(os) usuárias(os) do Serviço permanecem na Unidade (nos dias em que este utiliza o serviço)?'
q44_1_velha 'q44_1_v11963_1_1: Acolhida e escuta inicial44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_2_velha 'q44_2_v11963_2_2: Estudo social44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_3_velha 'q44_3_v11963_3_3: Realiza atividade de autocuidados de vida diária44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_4_velha 'q44_4_v11963_4_4: Orientação sobre acesso ao BPC e outros benefícios44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_5_velha' q44_5_v11963_5_5: Orientação sobre o acesso a outros benefícios44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_6_velha 'q44_6_v11963_6_6: Orientação e apoio para obtenção de documentação pessoal44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_7_velha 'q44_7_v11963_7_7: Orientação para realização de cadastro no CadÚnico44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_8_velha 'q44_8_v11963_8_8: Elaboração de Plano de Acompanhamento Individual e/ou Familiar44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_9_velha 'q44_9_v11963_9_9: Oficinas e atividades coletivas de convívio e socialização44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_10_velha 'q44_10_v11963_10_10: Encaminhamento para a rede de serviços socioassistenciais44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_11_velha 'q44_11_v11963_11_11: Encaminhamento para os serviços da rede de saúde44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_12_velha 'q44_12_v11963_12_12: Encaminhamento para política de educação44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_13_velha 'q44_13_v11963_13_13: Encaminhamento para serviços/Unidades das demais políticas públicas - ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_14_velha 'q44_14_v11963_14_14: Encaminhamento para órgãos de defesa de direitos (Defensoria Pública, MP, Conselho Tutelar, Conselho de Direitos, etc.) - ações/atividades do Serviço de PSE para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_15_velha 'q44_15_v11963_15_15: Acompanhamento das(os) usuárias(os) encaminhados para a rede44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_16_velha' q44_16_v11963_16_16: Registro de informações em prontuário44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_17_velha 'q44_17_v11963_17_17: Elaboração de relatórios sobre casos em acompanhamento44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_18_velha 'q44_18_v11963_18_18: Visitas domiciliares44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_19_velha'q44_19_v11963_19_19: Atividades com a família da(o) usuária(o)44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_20_velha 'q44_20_v11963_20_20: Mobilização das(os) usuárias(os) para acesso ao serviço44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_21_velha 'q44_21_v11963_21_21: Apoio e orientação às(aos) cuidadoras(es) familiares44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_22_velha 'q44_22_v11963_22_22: Orientação sobre tecnologias assistivas44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_23_velha' q44_23_v11963_23_23: Orientação e apoio nos autocuidados44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_24_velha 'q44_24_v11963_24_24: Palestras e oficinas envolvendo a comunidade44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_25_velha 'q44_25_v11963_25_25: Provimento de bens materiais44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q44_99_velha 'q44_99_v11963_99_99: Outros44. Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias:'
q46_1_velha'q46_1_v14402_1_1: Benefício Eventual em situação de morte46. Quais são os Benefícios Eventuais ofertados neste CREAS?'
q46_2_velha'q46_2_v14402_2_2: Benefício Eventual em situação de natalidade46. Quais são os Benefícios Eventuais ofertados neste CREAS?'
q46_3_velha'q46_3_v14402_3_3: Benefício Eventual em situação de calamidade46. Quais são os Benefícios Eventuais ofertados neste CREAS?'
q46_4_velha'q46_4_v14402_4_4: Benefício Eventual em situação de vulnerabilidade social46. Quais são os Benefícios Eventuais ofertados neste CREAS?'
q48_velha'q48_v14405_48. Este CREAS realiza cadastramento da população em situação de rua no CadÚnico?'
q49_1_velha 'q49_1_v15626_1_1: Não realiza ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do PBF:'
q49_2_velha 'q49_2_v15626_2_2: Informação individualizada sobre regras do Programa (valores de benefícios, regras de concessão, e cancelamento de benefícios e condicionalidades)- ações/atividades desenvolvidas em relação à gestão de benefícios do PBF'
q49_3_velha 'q49_3_v15626_3_3: Informação coletiva às famílias sobre regras do Programa (Reuniões de acolhida, palestra etc)- ações/atividades desenvolvidas em relação à gestão de benefícios do PBF'
q49_4_velha 'q49_4_v15626_4_4: Emissão de declaração de troca de responsável familiar para recebimento do benefício49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q49_5_velha 'q49_5_v15626_5_5: Emissão de declaração especial para recebimento do benefício (quando em situações de emergência e estado de calamidade público)- ações/atividades desenvolvidas em relação à gestão de benefícios do PBF'
q49_6_velha'q49_6_v15626_6_6: Esclarecimentos sobre o conteúdo de mensagens no extrato de pagamentos, recebida pelo beneficiário- ações/atividades desenvolvidas em relação à gestão de benefícios do PBF'
q49_7_velha 'q49_7_v15626_7_7: Esclarecimentos sobre informações de pagamento do Programa: entrega, desbloqueio e ativação do Cartão Bolsa Família e calendário de pagamentos- ações/atividades desenvolvidas em relação à gestão de benefícios do PBF'
q49_8_velha 'q49_8_v15626_8_8: Realiza manutenção de benefícios diretamente no SIBEC49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q49_9_velha 'q49_9_v15626_9_9: Registro no Formulário Padrão de Gestão de Benefícios (FPGB) e seu arquivamento49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q49_10_velha 'q49_10_v15626_10_10: Solicitação de manutenção de benefícios pelo módulo de Administração Off-line do SigPBF49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do PBF:'
q49_11_velha' q49_11_v15626_11_11: Elaboração de ofícios à Secretaria Nacional de Renda de Cidadania solicitando a manutenção de benefícios- ações/atividades desenvolvidas em relação à gestão de benefícios do PBF'
q49_12_velha' q49_12_v15626_12_12: Orientação sobre como denunciar irregularidades no pagamento e no atendimento dos canais da CAIXA- ações/atividades desenvolvidas em relação à gestão de benefícios do PBF'
q49_13_velha 'q49_13_v15626_13_13: Registro de denúncias de recebimento indevido de benefícios49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q49_14_velha 'q49_14_v15626_14_14: Apuração de denúncias de recebimento indevido de benefícios49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q49_99_velha 'q49_99_v15626_99_99: Outros49. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q50_1_velha 'q50_1_v15628_1_1: Não realiza atividades referente ao descumprimento de condicionalidades- ações e atividades desenvolvidas m relação às famílias beneficiárias do PBF em descumprimento de condicionalidades'
q50_2_velha 'q50_2_v15628_2_2: Esclarecimentos às famílias sobre as regras de condicionalidades durante o atendimento particularizado- ações e atividades desenvolvidas m relação às famílias beneficiárias do PBF em descumprimento de condicionalidades'
q50_3_velha 'q50_3_v15628_3_3: Interação com as escolas dos beneficiários em descumprimento50. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias beneficiárias do PBF em descumprimento de condicionalidades'
q50_4_velha 'q50_4_v15628_4_4: Interação com a equipe de saúde no município responsável pelo acompanhamento das condicionalidades de saúde- descumprimento de condicionalidades'
q50_5_velha 'q50_5_v15628_5_5: Ação para prestar informações às famílias sobre as condicionalidades (Reuniões de acolhida, palestras, oficinas em grupo, etc)- ações/atividades desenvolvidas famílias em descumprimento de condicionalidades'
q50_6_velha 'q50_6_v15628_6_6: Busca ativa  com a finalidade de facilitar a apresentação de recurso pelas famílias- ações/atividades desenvolvidas às famílias beneficiárias em descumprimento de condicionalidades'
q50_7_velha'q50_7_v15628_7_7: Emissão de laudo ou relatório social para subsidiar a família atendida/acompanhada pelo CREAS na apresentação do recurso- ações/atividades  em descumprimento de condicionalidades'
q50_8_velha 'q50_8_v15628_8_8: Fornecimento de comprovante do registro de recurso para as famílias50. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades'
q50_9_velha 'q50_9_v15628_9_9: Arquivamento da documentação comprobatória apresentada pela família no registro do recurso50. Indique as ações e atividades desenvolvidas pela equipe desta Unidade às famílias em descumprimento de condicionalidades'
q50_10_velha 'q50_10_v15628_10_10: Acesso à lista de famílias em fase de suspensão por descumprimento de condicionalidades no território abrangido pelo CREAS - ações/atividades famílias beneficiárias do PBF em descumprimento de condicionalidades'
q50_11_velha 'q50_11_v15628_11_11: Busca ativa das famílias com a finalidade de inclusão nos serviços socioassistenciais para superação da situação que gerou o descumprimento- ações/atividades  famílias em descumprimento de condicionalidades'
q50_12_velha 'q50_12_v15628_12_12: Priorização das famílias em fase de suspensão por descumprimento de condicionalidades nas ações do PAEFI- ações e atividades desenvolvidas famílias beneficiárias do PBF em descumprimento de condicionalidades'
q50_13_velha' q50_13_v15628_13_13: Registro no Sicon dos atendimentos/acompanhamentos realizados no âmbito do PAEFI com as famílias PBF - ações e atividades desenvolvidas m relação às famílias em descumprimento de condicionalidades'
q50_14_velha 'q50_14_v15628_14_14: Ativação da interrupção temporária dos efeitos do descumprimento no Sicon- ações e atividades desenvolvidas m relação às famílias beneficiárias do PBF em descumprimento de condicionalidades'
q50_15_velha 'q50_15_v15628_15_15: Encaminhamento de famílias/indivíduos  para outros serviços, programas ou benefícios socioassistenciais- ações e atividades desenvolvidas às famílias em descumprimento de condicionalidades'
q50_16_velha 'q50_16_v15628_16_16: Encaminhamento de famílias/indivíduos para outras políticas públicas (educação, saúde, habitação, trabalho, etc.)- ações e atividades desenvolvidas às famílias em descumprimento de condicionalidades'
q52_1_velha'q52_1_v14406_1_1: Sim, Povos Indígenas52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q52_2_velha'q52_2_v14406_2_2: Sim, Comunidade Quilombola52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q52_3_velha'q52_3_v14406_4_4: Sim, Povos Ciganos52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q52_4_velha'q52_4_v14406_3_3: Sim, Comunidade Ribeirinha52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q52_5_velha'q52_5_v14406_5_5: Sim, Povos de Matriz Africana e de terreiro52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q52_6_velha'q52_6_v14406_6_6: Sim, Comunidades Extrativistas52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q52_99_velha'q52_99_v14406_99_99: Sim, Outros povos e comunidades tradicionais52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q52_0_velha'q52_0_v14406_0_0: Não atendeu52. Em 2020 este CREAS atendeu povos e comunidades tradicionais?'
q54_1_velha 'q54_1_v12830_1_1: Usuárias(os) e/ou familiares participam das reuniões de planejamento desta unidade.54. Quais mecanismos de participação são utilizados nesta unidade?'
q54_2_velha 'q54_2_v12830_2_2: Usuárias(os) contam com representante que participa do planejamento desta unidade54. Quais mecanismos de participação são utilizados nesta unidade?'
q54_3_velha 'q54_3_v12830_3_3: Usuárias(os) escolhem os temas a serem trabalhados nas atividades coletivas (oficinas/palestras).54. Quais mecanismos de participação são utilizados nesta unidade?'
q54_4_velha 'q54_4_v12830_4_4: A equipe técnica disponibiliza outros meios para avaliação da oferta (questionário de satisfação, pesquisa de opinião, urna de sugestões).54. Quais mecanismos de participação são utilizados nesta unidade?'
q54_99_velha 'q54_99_v12830_99_99: Outros.54. Quais mecanismos de participação são utilizados nesta unidade?'
q55_1_velha'q55_1_v15631_1_1: Aspectos de seu funcionamento interno (processos de trabalho, rotinas)55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q55_2_velha'q55_2_v15631_2_2: Atividades e ações ofertadas55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q55_3_velha'q55_3_v15631_3_3: Levantamento das demandas55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q55_4_velha'q55_4_v15631_4_4: Definição das metodologias de acompanhamento/atendimento socioassistencial55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q55_5_velha'q55_5_v15631_5_5: Mapeamento e Relacionamento com a com a rede e organizações da sociedade civil55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q55_6_velha'q55_6_v15631_6_6: Formas de Participação dos usuários e avaliação55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q55_7_velha'q55_7_v15631_7_7: Plano de contingência para situações de emergência e calamidades55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q55_0_velha'q55_0_v15631_0_0: Não há um Projeto Técnico-Político da Unidade55. Quais os itens compõem o Projeto Técnico-Político da Unidade?'
q56_0_velha'q56_0_v15632_1_1: Este CREAS ficou fechado em todo ou na maior parte da pandemia56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_1_velha'q56_1_v15635_56.1. Ofertou atendimento presencial ao público em geral56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_2_velha'q56_2_v15636_56.2. Ofertou apenas os atendimentos presenciais agendados56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_3_velha'q56_3_v15637_56.3. Ofertou atendimentos/acompanhamento apenas para o público prioritário56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_4_velha'q56_4_v15638_56.4. Ofertou os atendimento das demandas de benefícios eventuais56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_5_velha'q56_5_v15639_56.5. Ofertou os atendimento das demandas do Cadastro Único56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_6_velha'q56_6_v15640_56.6. Ofertou os atendimento das demandas do Auxílio Emergência56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_7_velha'q56_7_v15641_56.7. Ofertou os atendimentos das demandas do Programa Bolsa Família56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_8_velha'q56_8_v15642_56.8. Ofertou teleatendimento por telefone e aplicativos de videoconferência56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_9_velha'q56_9_v15643_56.9. Ofertou atividades coletivas ( oficinas, grupo, ações comunitárias)56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_10_velha'q56_10_v15644_56.10. Realizou visitas domiciliares56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q56_99_velha'q56_99_v15645_56.99. Outro56. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'
q57_velha'q57_v15633:  Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q58_velha'q58_v15634_58. Os trabalhadores deste CREAS tiveram acesso a Equipamentos de Proteção Individual?'
q59_1_1_velha 'q59_1_1_v10560_1_1: Possui dados da localização (endereço, telefone, etc.)59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_2_velha 'q59_1_2_v10560_2_2: Recebe usuárias(os) encaminhados por este CREAS59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_3_velha 'q59_1_3_v10560_3_3: Encaminha usuárias(os) para este CREAS59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_4_velha 'q59_1_4_v10560_4_4: Acompanha os encaminhamentos59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_5_velha 'q59_1_5_v10560_5_5: Realiza reuniões periódicas59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_6_velha 'q59_1_5_v10560_5_5: Realiza reuniões periódicas59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_7_velha 'q59_1_7_v10560_7_7: Realiza estudos de caso em conjunto59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_8_velha 'q59_1_8_v10560_8_8: Desenvolve atividades em parceria59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_0_velha 'q59_1_0_v10560_0_0: Não tem nenhuma articulação59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_1_97_velha 'q59_1_97_v10560_97_97: Serviço ou instituição não existente no Município59.1. Serviços de Acolhimento (abrigos e outros) - Articulação com'
q59_2_1_velha 'q59_2_1_v10561_1_1: Possui dados da localização (endereço, telefone, etc.)59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_2_velha 'q59_2_2_v10561_2_2: Recebe usuárias(os) encaminhados por este CREAS59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_3_velha 'q59_2_3_v10561_3_3: Encaminha usuárias(os) para este CREAS59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_4_velha 'q59_2_4_v10561_4_4: Acompanha os encaminhamentos59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_5_velha 'q59_2_5_v10561_5_5: Realiza reuniões periódicas59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_6_velha 'q59_2_6_v10561_6_6: Troca Informações59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_7_velha 'q59_2_7_v10561_7_7: Realiza estudos de caso em conjunto59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_8_velha 'q59_2_8_v10561_8_8: Desenvolve atividades em parceria59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_0_velha 'q59_2_0_v10561_0_0: Não tem nenhuma articulação59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_2_97_velha 'q59_2_97_v10561_97_97: Serviço ou instituição não existente no Município59.2. Centro de Referência Especializado para população em situação de rua (Centro POP) - Articulação com'
q59_3_1_velha 'q59_3_1_v10562_1_1: Possui dados da localização (endereço, telefone, etc.)59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_2_velha 'q59_3_2_v10562_2_2: Recebe usuárias(os) encaminhados por este CREAS59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_3_velha' q59_3_3_v10562_3_3: Encaminha usuárias(os) para este CREAS59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_4_velha 'q59_3_3_v10562_3_3: Encaminha usuárias(os) para este CREAS59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_5_velha 'q59_3_5_v10562_5_5: Realiza reuniões periódicas59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_6_velha 'q59_3_6_v10562_6_6: Troca Informações59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_7_velha' q59_3_7_v10562_7_7: Realiza estudos de caso em conjunto59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_8_velha 'q59_3_8_v10562_8_8: Desenvolve atividades em parceria59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_0_velha 'q59_3_0_v10562_0_0: Não tem nenhuma articulação59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_3_97_velha' q59_3_97_v10562_97_97: Serviço ou instituição não existente no Município59.3. Centro de Referência de Assistência Social (CRAS) - Articulação com'
q59_4_1_velha 'q59_4_1_v10563_1_1: Possui dados da localização (endereço, telefone, etc.)59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_2_velha 'q59_4_2_v10563_2_2: Recebe usuárias(os) encaminhados por este CREAS59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_3_velha 'q59_4_3_v10563_3_3: Encaminha usuárias(os) para este CREAS59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_4_velha 'q59_4_4_v10563_4_4: Acompanha os encaminhamentos59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_5_velha 'q59_4_5_v10563_5_5: Realiza reuniões periódicas59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_6_velha 'q59_4_6_v10563_6_6: Troca Informações59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_7_velha 'q59_4_7_v10563_7_7: Realiza estudos de caso em conjunto59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_8_velha 'q59_4_8_v10563_8_8: Desenvolve atividades em parceria59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_0_velha 'q59_4_0_v10563_0_0: Não tem nenhuma articulação59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_4_97_velha 'q59_4_97_v10563_98_97: Serviço ou instituição não existente no Município59.4. Programa de Erradicação do Trabalho Infantil - PETI - Articulação com'
q59_5_1_velha 'q59_5_1_v10564_1_1: Possui dados da localização (endereço, telefone, etc.)59.5. Política de cultura - Articulação com'
q59_5_2_velha 'q59_5_2_v10564_2_2: Recebe usuárias(os) encaminhados por este CREAS59.5. Política de cultura - Articulação com'
q59_5_3_velha 'q59_5_3_v10564_3_3: Encaminha usuárias(os) para este CREAS59.5. Política de cultura - Articulação com'
q59_5_4_velha 'q59_5_4_v10564_4_4: Acompanha os encaminhamentos59.5. Política de cultura - Articulação com'
q59_5_5_velha 'q59_5_5_v10564_5_5: Realiza reuniões periódicas59.5. Política de cultura - Articulação com'
q59_5_6_velha 'q59_5_6_v10564_6_6: Troca Informações59.5. Política de cultura - Articulação com'
q59_5_7_velha 'q59_5_7_v10564_7_7: Realiza estudos de caso em conjunto59.5. Política de cultura - Articulação com'
q59_5_8_velha 'q59_5_8_v10564_8_8: Desenvolve atividades em parceria59.5. Política de cultura - Articulação com'
q59_5_0_velha 'q59_5_0_v10564_0_0: Não tem nenhuma articulação59.5. Política de cultura - Articulação com'
q59_5_97_velha 'q59_5_97_v10564_97_97: Serviço ou instituição não existente no Município59.5. Política de cultura - Articulação com'
q59_6_1_velha 'q59_6_1_v10565_1_1: Possui dados da localização (endereço, telefone, etc.)59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_2_velha 'q59_6_2_v10565_2_2: Recebe usuárias(os) encaminhados por este CREAS59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_3_velha 'q59_6_3_v10565_3_3: Encaminha usuárias(os) para este CREAS59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_4_velha 'q59_6_4_v10565_4_4: Acompanha os encaminhamentos59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_5_velha 'q59_6_5_v10565_5_5: Realiza reuniões periódicas59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_6_velha 'q59_6_6_v10565_6_6: Troca Informações59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_7_velha'q59_6_7_v10565_7_7: Realiza estudos de caso em conjunto59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_8_velha 'q59_6_8_v10565_8_8: Desenvolve atividades em parceria59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_0_velha 'q59_6_0_v10565_0_0: Não tem nenhuma articulação59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_6_97_velha 'q59_6_97_v10565_97_97: Serviço ou instituição não existente no Município59.6. Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias (Centro DIA, etc) - Articulação com'
q59_7_1_velha 'q59_7_1_v10566_1_1: Possui dados da localização (endereço, telefone, etc.)59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_2_velha 'q59_7_2_v10566_2_2: Recebe usuárias(os) encaminhados por este CREAS59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_3_velha 'q59_7_3_v10566_3_3: Encaminha usuárias(os) para este CREAS59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_4_velha 'q59_7_4_v10566_4_4: Acompanha os encaminhamentos59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_5_velha 'q59_7_5_v10566_5_5: Realiza reuniões periódicas59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_6_velha 'q59_7_6_v10566_6_6: Troca Informações59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_7_velha 'q59_7_7_v10566_7_7: Realiza estudos de caso em conjunto59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_8_velha ' q59_7_8_v10566_8_8: Desenvolve atividades em parceria59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_0_velha 'q59_7_0_v10566_0_0: Não tem nenhuma articulação59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_7_97_velha 'q59_7_97_v10566_97_97: Serviço ou instituição não existente no Município59.7. Serviços de Saúde Mental (CAPSi, CAPSad, ambulatórios, etc.) - Articulação com'
q59_8_1_velha 'q59_8_1_v10567_1_1: Possui dados da localização (endereço, telefone, etc.)59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_2_velha 'q59_8_2_v10567_2_2: Recebe usuárias(os) encaminhados por este CREAS59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_3_velha 'q59_8_3_v10567_3_3: Encaminha usuárias(os) para este CREAS59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_4_velha 'q59_8_4_v10567_4_4: Acompanha os encaminhamentos59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_5_velha 'q59_8_5_v10567_5_5: Realiza reuniões periódicas59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_6_velha 'q59_8_6_v10567_6_6: Troca Informações59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_7_velha 'q59_8_7_v10567_7_7: Realiza estudos de caso em conjunto59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_8_velha 'q59_8_8_v10567_8_8: Desenvolve atividades em parceria59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_0_velha 'q59_8_0_v10567_0_0: Não tem nenhuma articulação59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_8_97_velha 'q59_8_97_v10567_97_97: Serviço ou instituição não existente no Município59.8. Demais Serviços da rede de Saúde - Articulação com'
q59_9_1_velha 'q59_9_1_v10568_1_1: Possui dados da localização (endereço, telefone, etc.)59.9. Serviços de Educação - Articulação com'
q59_9_2_velha 'q59_9_2_v10568_2_2: Recebe usuárias(os) encaminhados por este CREAS59.9. Serviços de Educação - Articulação com'
q59_9_3_velha 'q59_9_3_v10568_3_3: Encaminha usuárias(os) para este CREAS59.9. Serviços de Educação - Articulação com'
q59_9_4_velha 'q59_9_4_v10568_4_4: Acompanha os encaminhamentos59.9. Serviços de Educação - Articulação com'
q59_9_5_velha 'q59_9_5_v10568_5_5: Realiza reuniões periódicas59.9. Serviços de Educação - Articulação com'
q59_9_6_velha 'q59_9_6_v10568_6_6: Troca Informações59.9. Serviços de Educação - Articulação com'
q59_9_7_velha 'q59_9_7_v10568_7_7: Realiza estudos de caso em conjunto59.9. Serviços de Educação - Articulação com'
q59_9_8_velha 'q59_9_8_v10568_8_8: Desenvolve atividades em parceria59.9. Serviços de Educação - Articulação com'
q59_9_0_velha 'q59_9_0_v10568_0_0: Não tem nenhuma articulação59.9. Serviços de Educação - Articulação com'
q59_9_97_velha 'q59_9_97_v10568_97_97: Serviço ou instituição não existente no Município59.9. Serviços de Educação - Articulação com'
q59_10_1_velha 'q59_10_1_v10570_1_1: Possui dados da localização (endereço, telefone, etc.)59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_2_velha 'q59_10_2_v10570_2_2: Recebe usuárias(os) encaminhados por este CREAS59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_3_velha 'q59_10_3_v10570_3_3: Encaminha usuárias(os) para este CREAS59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_4_velha 'q59_10_4_v10570_4_4: Acompanha os encaminhamentos59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_5_velha 'q59_10_5_v10570_5_5: Realiza reuniões periódicas59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_6_velha 'q59_10_6_v10570_6_6: Troca Informações59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_7_velha 'q59_10_7_v10570_7_7: Realiza estudos de caso em conjunto59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_8_velha 'q59_10_8_v10570_8_8: Desenvolve atividades em parceria59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_0_velha 'q59_10_0_v10570_0_0: Não tem nenhuma articulação59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_10_97_velha 'q59_10_97_v10570_97_97: Serviço ou instituição não existente no Município59.10. Órgãos responsáveis pela emissão de documentação civil básica - Articulação com'
q59_11_1_velha 'q59_11_1_v10571_1_1: Possui dados da localização (endereço, telefone, etc.)59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_2_velha 'q59_11_2_v10571_2_2: Recebe usuárias(os) encaminhados por este CREAS59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_3_velha 'q59_11_3_v10571_3_3: Encaminha usuárias(os) para este CREAS59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_4_velha 'q59_11_4_v10571_4_4: Acompanha os encaminhamentos59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_5_velha 'q59_11_5_v10571_5_5: Realiza reuniões periódicas59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_6_velha 'q59_11_6_v10571_6_6: Troca Informações59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_7_velha 'q59_11_7_v10571_7_7: Realiza estudos de caso em conjunto59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_8_velha 'q59_11_8_v10571_8_8: Desenvolve atividades em parceria59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_0_velha 'q59_11_0_v10571_0_0: Não tem nenhuma articulação59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_11_97_velha' q59_11_97_v10571_97_97: Serviço ou instituição não existente no Município59.11. Serviços/Programas de Segurança Alimentar - Articulação com'
q59_12_1_velha 'q59_12_1_v10572_1_1: Possui dados da localização (endereço, telefone, etc.)59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_2_velha 'q59_12_2_v10572_2_2: Recebe usuárias(os) encaminhados por este CREAS59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_3_velha 'q59_12_3_v10572_3_3: Encaminha usuárias(os) para este CREAS59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_4_velha 'q59_12_4_v10572_4_4: Acompanha os encaminhamentos59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_5_velha' q59_12_5_v10572_5_5: Realiza reuniões periódicas59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_6_velha 'q59_12_6_v10572_6_6: Troca Informações59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_7_velha 'q59_12_7_v10572_7_7: Realiza estudos de caso em conjunto59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_8_velha 'q59_12_8_v10572_8_8: Desenvolve atividades em parceria59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_0_velha 'q59_12_0_v10572_0_0: Não tem nenhuma articulação59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_12_97_velha 'q59_12_97_v10572_97_97: Serviço ou instituição não existente no Município59.12. Poder Judiciário, Ministério Público, Defensoria Pública - Articulação com'
q59_13_1_velha 'q59_13_1_v10575_1_1: Possui dados da localização (endereço, telefone, etc.)59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_2_velha 'q59_13_2_v10575_2_2: Recebe usuárias(os) encaminhados por este CREAS59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_3_velha 'q59_13_3_v10575_3_3: Encaminha usuárias(os) para este CREAS59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_4_velha 'q59_13_4_v10575_4_4: Acompanha os encaminhamentos59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_5_velha 'q59_13_5_v10575_5_5: Realiza reuniões periódicas59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_6_velha 'q59_13_6_v10575_6_6: Troca Informações59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_7_velha 'q59_13_7_v10575_7_7: Realiza estudos de caso em conjunto59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_8_velha 'q59_13_8_v10575_8_8: Desenvolve atividades em parceria59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_0_velha 'q59_13_0_v10575_0_0: Não tem nenhuma articulação59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_13_97_velha 'q59_13_97_v10575_97_97: Serviço ou instituição não existente no Município59.13. Delegacias/Delegacias Especializadas - Articulação com'
q59_14_1_velha 'q59_14_1_v10576_1_1: Possui dados da localização (endereço, telefone, etc.)59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_2_velha 'q59_14_1_v10576_1_1: Possui dados da localização (endereço, telefone, etc.)59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_3_velha 'q59_14_3_v10576_3_3: Encaminha usuárias(os) para este CREAS59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_4_velha 'q59_14_4_v10576_4_4: Acompanha os encaminhamentos59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_5_velha 'q59_14_5_v10576_5_5: Realiza reuniões periódicas59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_6_velha 'q59_14_6_v10576_6_6: Troca Informações59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_7_velha 'q59_14_7_v10576_7_7: Realiza estudos de caso em conjunto59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_8_velha 'q59_14_8_v10576_8_8: Desenvolve atividades em parceria59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_0_velha'q59_14_0_v10576_0_0: Não tem nenhuma articulação59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_14_97_velha 'q59_14_97_v10576_97_97: Serviço ou instituição não existente no Município59.14. OSCs que atuam com defesa de direitos ou que realizam projetos sociais - Articulação com'
q59_15_1_velha 'q59_15_1_v10578_1_1: Possui dados da localização (endereço, telefone, etc.)59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_2_velha 'q59_15_2_v10578_2_2: Recebe usuárias(os) encaminhados por este CREAS59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_3_velha 'q59_15_3_v10578_3_3: Encaminha usuárias(os) para este CREAS59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_4_velha 'q59_15_4_v10578_4_4: Acompanha os encaminhamentos59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_5_velha 'q59_15_5_v10578_5_5: Realiza reuniões periódicas59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_6_velha 'q59_15_6_v10578_6_6: Troca Informações59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_7_velha 'q59_15_7_v10578_7_7: Realiza estudos de caso em conjunto59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_8_velha 'q59_15_8_v10578_8_8: Desenvolve atividades em parceria59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_0_velha 'q59_15_0_v10578_0_0: Não tem nenhuma articulação59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_15_97_velha 'q59_15_97_v10578_97_97: Serviço ou instituição não existente no Município59.15. Unidades/Serviços de outros municípios - Articulação com'
q59_16_1_velha 'q59_16_1_v15039_1_1: Possui dados da localização (endereço, telefone, etc.)59.16. Conselho tutelar - Articulação com'
q59_16_2_velha'q59_16_2_v15039_2_2: Recebe usuárias(os) encaminhados por este CREAS59.16. Conselho tutelar - Articulação com'
q59_16_3_velha 'q59_16_3_v15039_3_3: Encaminha usuárias(os) para este CREAS59.16. Conselho tutelar - Articulação com'
q59_16_4_velha 'q59_16_4_v15039_4_4: Acompanha os encaminhamentos59.16. Conselho tutelar - Articulação com'
q59_16_5_velha' q59_16_5_v15039_5_5: Realiza reuniões periódicas59.16. Conselho tutelar - Articulação com'
q59_16_6_velha 'q59_16_6_v15039_6_6: Troca Informações59.16. Conselho tutelar - Articulação com'
q59_16_7_velha'q59_16_7_v15039_7_7: Realiza estudos de caso em conjunto59.16. Conselho tutelar - Articulação com'
q59_16_8_velha 'q59_16_8_v15039_8_8: Desenvolve atividades em parceria59.16. Conselho tutelar - Articulação com'
q59_16_0_velha 'q59_16_0_v15039_0_0: Não tem nenhuma articulação59.16. Conselho tutelar - Articulação com'
q59_16_97_velha 'q59_16_97_v15039_97_97: Serviço ou instituição não existente no Município59.16. Conselho tutelar - Articulação com'
.