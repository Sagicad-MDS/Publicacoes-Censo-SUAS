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
compute q1_3_3_velha =q1_3_3.
compute q1_3_4_velha =q1_3_4.
compute q1_3_5_velha =q1_3_5.
compute q1_3_6_velha =q1_3_6.
compute q1_3_7_velha =q1_3_7.
compute q1_3_99_velha =q1_3_99.
compute q1_4_velha =q1_4.



DO IF (q1=1   |  q1=2   ).
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
RECODE q1_3_3 (ELSE=SYSMIS).
RECODE q1_3_4 (ELSE=SYSMIS).
RECODE q1_3_5 (ELSE=SYSMIS).
RECODE q1_3_6 (ELSE=SYSMIS).
RECODE q1_3_7 (ELSE=SYSMIS).
RECODE q1_3_99 (ELSE=SYSMIS).
RECODE q1_4 (ELSE=SYSMIS).
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
compute q6_1_1_velha = q6_1_1. 
compute q6_1_2_velha = q6_1_2. 
compute q6_1_3_velha = q6_1_3. 
compute q6_1_4_velha = q6_1_4. 
compute q6_1_5_velha = q6_1_5. 
compute q6_1_6_velha = q6_1_6. 
compute q6_1_7_velha = q6_1_7. 
compute q6_1_8_velha = q6_1_8. 
compute q6_1_9_velha = q6_1_9. 
compute q6_1_10_velha = q6_1_10. 
compute q6_1_11_velha = q6_1_11. 
compute q6_1_12_velha = q6_1_12. 
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
RECODE q6_1_1 (ELSE=SYSMIS).
RECODE q6_1_2 (ELSE=SYSMIS).
RECODE q6_1_3 (ELSE=SYSMIS).
RECODE q6_1_4 (ELSE=SYSMIS).
RECODE q6_1_5 (ELSE=SYSMIS).
RECODE q6_1_6 (ELSE=SYSMIS).
RECODE q6_1_7 (ELSE=SYSMIS).
RECODE q6_1_8 (ELSE=SYSMIS).
RECODE q6_1_9 (ELSE=SYSMIS).
RECODE q6_1_10(ELSE=SYSMIS).
RECODE q6_1_11 (ELSE=SYSMIS).
RECODE q6_1_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q6_1_1=1).
RECODE q6_1_2  (ELSE=SYSMIS).
RECODE q6_1_3  (ELSE=SYSMIS).
RECODE q6_1_4 (ELSE=SYSMIS).
RECODE q6_1_5 (ELSE=SYSMIS).
RECODE q6_1_6 (ELSE=SYSMIS).
RECODE q6_1_7 (ELSE=SYSMIS).
RECODE q6_1_8 (ELSE=SYSMIS).
RECODE q6_1_9 (ELSE=SYSMIS).
RECODE q6_1_10 (ELSE=SYSMIS).
RECODE q6_1_11 (ELSE=SYSMIS).
RECODE q6_1_12 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q13*****************

compute q14_1_1_velha = q14_1_1. 
compute q14_1_2_velha = q14_1_2. 
compute q14_2_1_velha = q14_2_1. 
compute q14_2_2_velha = q14_2_2. 
compute q15_velha = q15. 
compute q16_1_velha = q16_1. 
compute q16_2_velha = q16_2. 
compute q16_3_velha = q16_3. 
compute q16_4_velha = q16_4. 
compute q16_5_velha = q16_5. 
compute q16_6_velha = q16_6. 
compute q16_7_velha = q16_7. 
compute q16_8_velha = q16_8. 
compute q16_9_velha = q16_9. 
compute q16_10_velha = q16_10. 
compute q16_11_velha = q16_11. 
compute q16_12_velha = q16_12. 
compute q16_13_velha = q16_13. 
compute q16_14_velha = q16_14. 
compute q16_15_velha = q16_15. 
compute q16_16_velha = q16_16. 
compute q16_17_velha = q16_17. 
compute q16_18_velha = q16_18. 
compute q16_19_velha = q16_19. 
compute q16_20_velha = q16_20. 
compute q17_velha = q17. 
compute q18_1_velha = q18_1. 
compute q18_2_velha = q18_2. 
compute q18_3_velha = q18_3. 
compute q18_4_velha = q18_4. 
compute q18_5_velha = q18_5. 
compute q18_6_velha = q18_6. 
compute q18_7_velha = q18_7. 
compute q18_8_velha = q18_8. 
compute q18_9_velha = q18_9. 
compute q18_10_velha = q18_10. 
compute q18_11_velha = q18_11. 
compute q18_12_velha = q18_12. 
compute q18_13_velha = q18_13. 
compute q18_99_velha = q18_99. 
compute q19_velha = q19. 
compute q20_1_velha = q20_1. 
compute q20_2_velha = q20_2. 
compute q20_3_velha = q20_3. 
compute q20_4_velha = q20_4. 
compute q20_99_velha = q20_99. 
compute q21_1_velha = q21_1. 
compute q21_2_velha = q21_2. 
compute q21_3_velha = q21_3. 
compute q21_4_velha = q21_4. 
compute q21_5_velha = q21_5. 
compute q21_6_velha = q21_6. 
compute q21_7_velha = q21_7. 
compute q21_8_velha = q21_8. 
compute q21_9_velha = q21_9. 
compute q21_10_velha = q21_10. 
compute q21_11_velha = q21_11. 
compute q21_12_velha = q21_12. 
compute q21_13_velha = q21_13. 
compute q21_14_velha = q21_14. 
compute q21_15_velha = q21_15. 
compute q21_16_velha = q21_16. 
compute q21_17_velha = q21_17. 
compute q21_18_velha = q21_18. 
compute q21_19_velha = q21_19. 
compute q21_20_velha = q21_20. 
compute q21_21_velha = q21_21. 
compute q21_99_velha = q21_99. 
execute. 


DO IF (q13=0).
RECODE q14_1_1 (ELSE=SYSMIS).
RECODE q14_1_2 (ELSE=SYSMIS).
RECODE q14_2_1  (ELSE=SYSMIS).
RECODE q14_2_2  (ELSE=SYSMIS).
RECODE q15 (ELSE=SYSMIS).
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
RECODE q16_14(ELSE=SYSMIS).
RECODE q16_15  (ELSE=SYSMIS).
RECODE q16_16 (ELSE=SYSMIS).
RECODE q16_17 (ELSE=SYSMIS).
RECODE q16_18 (ELSE=SYSMIS).
RECODE q16_19 (ELSE=SYSMIS).
RECODE q16_20  (ELSE=SYSMIS).
RECODE q17 (ELSE=SYSMIS).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2 (ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_4 (ELSE=SYSMIS).
RECODE q18_5 (ELSE=SYSMIS).
RECODE q18_6 (ELSE=SYSMIS).
RECODE q18_7 (ELSE=SYSMIS).
RECODE q18_8 (ELSE=SYSMIS).
RECODE q18_9 (ELSE=SYSMIS).
RECODE q18_10(ELSE=SYSMIS).
RECODE q18_11 (ELSE=SYSMIS).
RECODE q18_12 (ELSE=SYSMIS).
RECODE q18_13 (ELSE=SYSMIS).
RECODE q18_99 (ELSE=SYSMIS).
RECODE q19 (ELSE=SYSMIS).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_99 (ELSE=SYSMIS).
RECODE q21_1 (ELSE=SYSMIS).
RECODE q21_2 (ELSE=SYSMIS).
RECODE q21_3 (ELSE=SYSMIS).
RECODE q21_4 (ELSE=SYSMIS).
RECODE q21_5 (ELSE=SYSMIS).
RECODE q21_6 (ELSE=SYSMIS).
RECODE q21_7 (ELSE=SYSMIS).
RECODE q21_8 (ELSE=SYSMIS).
RECODE q21_9 (ELSE=SYSMIS).
RECODE q21_10(ELSE=SYSMIS).
RECODE q21_11 (ELSE=SYSMIS).
RECODE q21_12 (ELSE=SYSMIS).
RECODE q21_13 (ELSE=SYSMIS).
RECODE q21_14(ELSE=SYSMIS).
RECODE q21_15  (ELSE=SYSMIS).
RECODE q21_16 (ELSE=SYSMIS).
RECODE q21_17 (ELSE=SYSMIS).
RECODE q21_18 (ELSE=SYSMIS).
RECODE q21_19 (ELSE=SYSMIS).
RECODE q21_20  (ELSE=SYSMIS).
RECODE q21_21  (ELSE=SYSMIS).
RECODE q21_99  (ELSE=SYSMIS).
END IF.
EXECUTE.



*****q15**************

DO IF (q15=0).
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
RECODE q16_14(ELSE=SYSMIS).
RECODE q16_15  (ELSE=SYSMIS).
RECODE q16_16 (ELSE=SYSMIS).
RECODE q16_17 (ELSE=SYSMIS).
RECODE q16_18 (ELSE=SYSMIS).
RECODE q16_19 (ELSE=SYSMIS).
RECODE q16_20  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q17**************

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
RECODE q18_10(ELSE=SYSMIS).
RECODE q18_11 (ELSE=SYSMIS).
RECODE q18_12 (ELSE=SYSMIS).
RECODE q18_13 (ELSE=SYSMIS).
RECODE q18_99 (ELSE=SYSMIS).
RECODE q19 (ELSE=SYSMIS).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_99 (ELSE=SYSMIS).
RECODE q21_1 (ELSE=SYSMIS).
RECODE q21_2 (ELSE=SYSMIS).
RECODE q21_3 (ELSE=SYSMIS).
RECODE q21_4 (ELSE=SYSMIS).
RECODE q21_5 (ELSE=SYSMIS).
RECODE q21_6 (ELSE=SYSMIS).
RECODE q21_7 (ELSE=SYSMIS).
RECODE q21_8 (ELSE=SYSMIS).
RECODE q21_9 (ELSE=SYSMIS).
RECODE q21_10(ELSE=SYSMIS).
RECODE q21_11 (ELSE=SYSMIS).
RECODE q21_12 (ELSE=SYSMIS).
RECODE q21_13 (ELSE=SYSMIS).
RECODE q21_14(ELSE=SYSMIS).
RECODE q21_15  (ELSE=SYSMIS).
RECODE q21_16 (ELSE=SYSMIS).
RECODE q21_17 (ELSE=SYSMIS).
RECODE q21_18 (ELSE=SYSMIS).
RECODE q21_19 (ELSE=SYSMIS).
RECODE q21_20  (ELSE=SYSMIS).
RECODE q21_21  (ELSE=SYSMIS).
RECODE q21_99  (ELSE=SYSMIS).
END IF.
EXECUTE.




****q22*************************************************

compute q23_1_velha = q23_1.
compute q23_2_velha = q23_2. 
compute q23_3_velha = q23_3.
compute q23_4_velha = q23_4. 
compute q23_5_velha = q23_5.
compute q23_6_velha = q23_6. 
compute q23_7_velha = q23_7.
compute q23_8_velha = q23_8.
compute q23_9_velha = q23_9. 
compute q23_10_velha = q23_10.
compute q23_11_velha = q23_11. 
compute q23_12_velha = q23_12.
compute q23_13_velha = q23_13. 
compute q23_14_velha = q23_14.
compute q23_0_velha = q23_0.
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
compute q25_velha = q25.
compute q26_1_velha = q26_1.
compute q26_2_velha = q26_2. 
compute q26_3_velha = q26_3.
compute q26_4_velha = q26_4. 
compute q27_1_velha = q27_1.
compute q27_2_velha = q27_2. 
compute q27_3_velha = q27_3.
compute q27_4_velha = q27_4. 
compute q27_5_velha = q27_5.
compute q27_6_velha = q27_6. 
compute q27_7_velha = q27_7.
compute q27_8_velha = q27_8.
compute q27_9_velha = q27_9. 
compute q27_10_velha = q27_10.
compute q27_11_velha = q27_11. 
compute q27_99_velha = q27_99.
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
compute q29_99_velha = q29_99.
compute q29_0_velha = q29_0. 
execute. 


DO IF (q22=1  |  q22=2 ).
RECODE  q23_1 (ELSE=SYSMIS).
RECODE  q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS). 
RECODE q23_6 (ELSE=SYSMIS).
RECODE  q23_7 (ELSE=SYSMIS).
RECODE  q23_8 (ELSE=SYSMIS).
RECODE q23_9 (ELSE=SYSMIS).
RECODE q23_10 (ELSE=SYSMIS).
RECODE q23_11 (ELSE=SYSMIS). 
RECODE q23_12 (ELSE=SYSMIS).
RECODE q23_13 (ELSE=SYSMIS).
RECODE q23_14 (ELSE=SYSMIS).
RECODE q23_0 (ELSE=SYSMIS). 
END IF.
EXECUTE.


DO IF (q22=0 ).
RECODE  q23_1 (ELSE=SYSMIS).
RECODE  q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS). 
RECODE q23_6 (ELSE=SYSMIS).
RECODE  q23_7 (ELSE=SYSMIS).
RECODE  q23_8 (ELSE=SYSMIS).
RECODE q23_9 (ELSE=SYSMIS).
RECODE q23_10 (ELSE=SYSMIS).
RECODE q23_11 (ELSE=SYSMIS). 
RECODE q23_12 (ELSE=SYSMIS).
RECODE q23_13 (ELSE=SYSMIS).
RECODE q23_14 (ELSE=SYSMIS).
RECODE q23_0 (ELSE=SYSMIS). 
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
RECODE  q25 (ELSE=SYSMIS).
RECODE  q26_1 (ELSE=SYSMIS).
RECODE  q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE  q27_1 (ELSE=SYSMIS).
RECODE  q27_2 (ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_4 (ELSE=SYSMIS).
RECODE q27_5 (ELSE=SYSMIS). 
RECODE q27_6 (ELSE=SYSMIS).
RECODE  q27_7 (ELSE=SYSMIS).
RECODE  q27_8 (ELSE=SYSMIS).
RECODE q27_9 (ELSE=SYSMIS).
RECODE q27_10 (ELSE=SYSMIS).
RECODE q27_11 (ELSE=SYSMIS). 
RECODE q27_99 (ELSE=SYSMIS).
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
RECODE q29_99 (ELSE=SYSMIS).
RECODE q29_0 (ELSE=SYSMIS). 
END IF.
EXECUTE.


DO IF (q23_0=1 ).
RECODE  q23_1 (ELSE=SYSMIS).
RECODE  q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS). 
RECODE q23_6 (ELSE=SYSMIS).
RECODE  q23_7 (ELSE=SYSMIS).
RECODE  q23_8 (ELSE=SYSMIS).
RECODE q23_9 (ELSE=SYSMIS).
RECODE q23_10 (ELSE=SYSMIS).
RECODE q23_11 (ELSE=SYSMIS). 
RECODE q23_12 (ELSE=SYSMIS).
RECODE q23_13 (ELSE=SYSMIS).
RECODE q23_14 (ELSE=SYSMIS).
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
RECODE  q25 (ELSE=SYSMIS).
RECODE  q26_1 (ELSE=SYSMIS).
RECODE  q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE  q27_1 (ELSE=SYSMIS).
RECODE  q27_2 (ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_4 (ELSE=SYSMIS).
RECODE q27_5 (ELSE=SYSMIS). 
RECODE q27_6 (ELSE=SYSMIS).
RECODE  q27_7 (ELSE=SYSMIS).
RECODE  q27_8 (ELSE=SYSMIS).
RECODE q27_9 (ELSE=SYSMIS).
RECODE q27_10 (ELSE=SYSMIS).
RECODE q27_11 (ELSE=SYSMIS). 
RECODE q27_99 (ELSE=SYSMIS).
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
RECODE q29_99 (ELSE=SYSMIS).
RECODE q29_0 (ELSE=SYSMIS). 
END IF.
EXECUTE.


DO IF  (q27_1=1 ).
RECODE  q27_2 (ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_4 (ELSE=SYSMIS).
RECODE q27_5 (ELSE=SYSMIS). 
RECODE q27_6 (ELSE=SYSMIS).
RECODE  q27_7 (ELSE=SYSMIS).
RECODE  q27_8 (ELSE=SYSMIS).
RECODE q27_9 (ELSE=SYSMIS).
RECODE q27_10 (ELSE=SYSMIS).
RECODE q27_11 (ELSE=SYSMIS). 
RECODE q27_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF  (q29_0=1 ).
RECODE  q29_1 (ELSE=SYSMIS).
RECODE  q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS). 
RECODE q29_6 (ELSE=SYSMIS).
RECODE  q29_7 (ELSE=SYSMIS).
RECODE  q29_8 (ELSE=SYSMIS).
RECODE q29_9 (ELSE=SYSMIS).
RECODE q29_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q30********************************************

compute q30_velha = q30.
compute q31_velha = q31.
compute q32_velha = q32.
compute q33_velha = q33.
compute q34_velha = q34.
compute q35_velha = q35.
compute q36_1_velha = q36_1.
compute q36_2_velha = q36_2.
compute q36_3_velha  = q36_3.
compute q36_4_velha  = q36_4.
compute q36_5_velha  = q36_5.
compute q36_6_velha  = q36_6.
compute q36_7_velha = q36_7.
compute q36_8_velha = q36_8.
compute q36_9_velha= q36_9.
compute q36_10_velha  = q36_10.
compute q36_11_velha = q36_11.
compute q36_12_velha = q36_12.
compute q36_13_velha = q36_13.
compute q36_14_velha = q36_14.
compute q36_15_velha = q36_15.
compute q36_16_velha  = q36_16.
compute q36_17_velha = q36_17.
compute q36_18_velha = q36_18.
compute q36_19_velha = q36_19.
compute q36_20_velha = q36_20.
compute q36_21_velha = q36_21.
compute q36_22_velha = q36_22.
compute q36_23_velha = q36_23.
compute q36_24_velha = q36_24.
compute q36_25_velha = q36_25.
compute q36_99_velha = q36_99.
execute. 





DO IF (q30=0 ).
RECODE q31 (ELSE=SYSMIS).
RECODE q32 (ELSE=SYSMIS).
RECODE q33 (ELSE=SYSMIS).
RECODE q34 (ELSE=SYSMIS).
RECODE q35  (ELSE=SYSMIS).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
RECODE q36_5  (ELSE=SYSMIS).
RECODE q36_6 (ELSE=SYSMIS).
RECODE q36_7 (ELSE=SYSMIS).
RECODE q36_8  (ELSE=SYSMIS).
RECODE q36_9 (ELSE=SYSMIS).
RECODE q36_10 (ELSE=SYSMIS).
RECODE q36_11  (ELSE=SYSMIS).
RECODE q36_12 (ELSE=SYSMIS).
RECODE q36_13 (ELSE=SYSMIS).
RECODE q36_14  (ELSE=SYSMIS).
RECODE q36_15  (ELSE=SYSMIS).
RECODE q36_16 (ELSE=SYSMIS).
RECODE q36_17  (ELSE=SYSMIS).
RECODE q36_18 (ELSE=SYSMIS).
RECODE q36_19 (ELSE=SYSMIS).
RECODE q36_20  (ELSE=SYSMIS).
RECODE q36_21  (ELSE=SYSMIS).
RECODE q36_22  (ELSE=SYSMIS).
RECODE q36_23  (ELSE=SYSMIS).
RECODE q36_24  (ELSE=SYSMIS).
RECODE q36_25  (ELSE=SYSMIS).
RECODE q36_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


****q37***************************************


compute q37_velha = q37.
compute q38_1_velha = q38_1.
compute q38_2_velha = q38_2.
compute q38_3_velha = q38_3.
compute q38_4_velha = q38_4.
compute q39_velha = q39.
compute q40_velha = q40.


DO IF (q37=0 ).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2  (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_4  (ELSE=SYSMIS).
RECODE q39  (ELSE=SYSMIS).
RECODE q40  (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q39=0   |  q39=97   ).
RECODE q40  (ELSE=SYSMIS).
END IF.
EXECUTE.


***q41******************************************************************

compute q41_velha = q41.
compute q42_1_velha = q42_1.
compute q42_2_velha = q42_2.
compute q42_4_velha = q42_4.
compute q42_3_velha = q42_3.
compute q42_5_velha = q42_5.
compute q42_6_velha = q42_6.
compute q42_99_velha = q42_99.
compute q42_0_velha = q42_0.
compute q43_velha = q43.
compute q44_1_velha = q44_1.
compute q44_2_velha = q44_2.
compute q44_3_velha = q44_3.
compute q44_4_velha = q44_4.
compute q44_99_velha = q44_99.
execute. 



DO IF (q1=3  ).
RECODE q41  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q42_0=1   ).
RECODE q42_1  (ELSE=SYSMIS).
RECODE q42_2  (ELSE=SYSMIS).
RECODE q42_3  (ELSE=SYSMIS).
RECODE q42_4  (ELSE=SYSMIS).
RECODE q42_5  (ELSE=SYSMIS).
RECODE q42_6  (ELSE=SYSMIS).
RECODE q42_99  (ELSE=SYSMIS).
END IF.
EXECUTE.




DO IF (q43=1    |    q43=  0   ).
RECODE q44_1  (ELSE=SYSMIS).
RECODE q44_2  (ELSE=SYSMIS).
RECODE q44_3  (ELSE=SYSMIS).
RECODE q44_4  (ELSE=SYSMIS).
RECODE q44_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


***q45************************************************************************************************************************


compute q45_1_1_velha = q45_1_1.
compute q45_1_2_velha = q45_1_2.
compute q45_1_3_velha = q45_1_3.
compute q45_1_4_velha = q45_1_4.
compute q45_1_5_velha = q45_1_5.
compute q45_1_6_velha = q45_1_6.
compute q45_1_7_velha = q45_1_7.
compute q45_1_8_velha = q45_1_8.
compute  q45_1_0_velha = q45_1_0.
compute q45_1_97_velha = q45_1_97.
compute q45_2_1_velha = q45_2_1.
compute q45_2_2_velha = q45_2_2.
compute q45_2_3_velha = q45_2_3.
compute q45_2_4_velha = q45_2_4.
compute q45_2_5_velha = q45_2_5.
compute q45_2_6_velha = q45_2_6.
compute q45_2_7_velha = q45_2_7.
compute q45_2_8_velha = q45_2_8.
compute  q45_2_0_velha = q45_2_0.
compute q45_2_97_velha = q45_2_97.
compute q45_3_1_velha = q45_3_1.
compute q45_3_2_velha = q45_3_2.
compute q45_3_3_velha = q45_3_3.
compute q45_3_4_velha = q45_3_4.
compute q45_3_5_velha = q45_3_5.
compute q45_3_6_velha = q45_3_6.
compute q45_3_7_velha = q45_3_7.
compute q45_3_8_velha = q45_3_8.
compute  q45_3_0_velha = q45_3_0.
compute q45_3_97_velha = q45_3_97.
compute q45_4_1_velha = q45_4_1.
compute q45_4_2_velha = q45_4_2.
compute q45_4_3_velha = q45_4_3.
compute q45_4_4_velha = q45_4_4.
compute q45_4_5_velha = q45_4_5.
compute q45_4_6_velha = q45_4_6.
compute q45_4_7_velha = q45_4_7.
compute q45_4_8_velha = q45_4_8.
compute  q45_4_0_velha = q45_4_0.
compute q45_4_97_velha = q45_4_97.
compute q45_5_1_velha = q45_5_1.
compute q45_5_2_velha = q45_5_2.
compute q45_5_3_velha = q45_5_3.
compute q45_5_4_velha = q45_5_4.
compute q45_5_5_velha = q45_5_5.
compute q45_5_6_velha = q45_5_6.
compute q45_5_7_velha = q45_5_7.
compute q45_5_8_velha = q45_5_8.
compute  q45_5_0_velha = q45_5_0.
compute q45_5_97_velha = q45_5_97.
compute q45_6_1_velha = q45_6_1.
compute q45_6_2_velha = q45_6_2.
compute q45_6_3_velha = q45_6_3.
compute q45_6_4_velha = q45_6_4.
compute q45_6_5_velha = q45_6_5.
compute q45_6_6_velha = q45_6_6.
compute q45_6_7_velha = q45_6_7.
compute q45_6_8_velha = q45_6_8.
compute  q45_6_0_velha = q45_6_0.
compute q45_6_97_velha = q45_6_97.
compute q45_7_1_velha = q45_7_1.
compute q45_7_2_velha = q45_7_2.
compute q45_7_3_velha = q45_7_3.
compute q45_7_4_velha = q45_7_4.
compute q45_7_5_velha = q45_7_5.
compute q45_7_6_velha = q45_7_6.
compute q45_7_7_velha = q45_7_7.
compute q45_7_8_velha = q45_7_8.
compute  q45_7_0_velha = q45_7_0.
compute q45_7_97_velha = q45_7_97.
compute q45_8_1_velha = q45_8_1.
compute q45_8_2_velha = q45_8_2.
compute q45_8_3_velha = q45_8_3.
compute q45_8_4_velha = q45_8_4.
compute q45_8_5_velha = q45_8_5.
compute q45_8_6_velha = q45_8_6.
compute q45_8_7_velha = q45_8_7.
compute q45_8_8_velha = q45_8_8.
compute  q45_8_0_velha = q45_8_0.
compute q45_8_97_velha = q45_8_97.
compute q45_9_1_velha = q45_9_1.
compute q45_9_2_velha = q45_9_2.
compute q45_9_3_velha = q45_9_3.
compute q45_9_4_velha = q45_9_4.
compute q45_9_5_velha = q45_9_5.
compute q45_9_6_velha = q45_9_6.
compute q45_9_7_velha = q45_9_7.
compute q45_9_8_velha = q45_9_8.
compute  q45_9_0_velha = q45_9_0.
compute q45_9_97_velha = q45_9_97.
compute q45_10_1_velha = q45_10_1.
compute q45_10_2_velha = q45_10_2.
compute q45_10_3_velha = q45_10_3.
compute q45_10_4_velha = q45_10_4.
compute q45_10_5_velha = q45_10_5.
compute q45_10_6_velha = q45_10_6.
compute q45_10_7_velha = q45_10_7.
compute q45_10_8_velha = q45_10_8.
compute  q45_10_0_velha = q45_10_0.
compute q45_10_97_velha = q45_10_97.
compute q45_11_1_velha = q45_11_1.
compute q45_11_2_velha = q45_11_2.
compute q45_11_3_velha = q45_11_3.
compute q45_11_4_velha = q45_11_4.
compute q45_11_5_velha = q45_11_5.
compute q45_11_6_velha = q45_11_6.
compute q45_11_7_velha = q45_11_7.
compute q45_11_8_velha = q45_11_8.
compute  q45_11_0_velha = q45_11_0.
compute q45_11_97_velha = q45_11_97.
compute q45_12_1_velha = q45_12_1.
compute q45_12_2_velha = q45_12_2.
compute q45_12_3_velha = q45_12_3.
compute q45_12_4_velha = q45_12_4.
compute q45_12_5_velha = q45_12_5.
compute q45_12_6_velha = q45_12_6.
compute q45_12_7_velha = q45_12_7.
compute q45_12_8_velha = q45_12_8.
compute  q45_12_0_velha = q45_12_0.
compute q45_12_97_velha = q45_12_97.
compute q45_13_1_velha = q45_13_1.
compute q45_13_2_velha = q45_13_2.
compute q45_13_3_velha = q45_13_3.
compute q45_13_4_velha = q45_13_4.
compute q45_13_5_velha = q45_13_5.
compute q45_13_6_velha = q45_13_6.
compute q45_13_7_velha = q45_13_7.
compute q45_13_8_velha = q45_13_8.
compute  q45_13_0_velha = q45_13_0.
compute q45_13_97_velha = q45_13_97.
compute q45_14_1_velha = q45_14_1.
compute q45_14_2_velha = q45_14_2.
compute q45_14_3_velha = q45_14_3.
compute q45_14_4_velha = q45_14_4.
compute q45_14_5_velha = q45_14_5.
compute q45_14_6_velha = q45_14_6.
compute q45_14_7_velha = q45_14_7.
compute q45_14_8_velha = q45_14_8.
compute  q45_14_0_velha = q45_14_0.
compute q45_14_97_velha = q45_14_97.
compute q45_15_1_velha = q45_15_1.
compute q45_15_2_velha = q45_15_2.
compute q45_15_3_velha = q45_15_3.
compute q45_15_4_velha = q45_15_4.
compute q45_15_5_velha = q45_15_5.
compute q45_15_6_velha = q45_15_6.
compute q45_15_7_velha = q45_15_7.
compute q45_15_8_velha = q45_15_8.
compute  q45_15_0_velha = q45_15_0.
compute q45_15_97_velha = q45_15_97.
compute q45_16_1_velha = q45_16_1.
compute q45_16_2_velha = q45_16_2.
compute q45_16_3_velha = q45_16_3.
compute q45_16_4_velha = q45_16_4.
compute q45_16_5_velha = q45_16_5.
compute q45_16_6_velha = q45_16_6.
compute q45_16_7_velha = q45_16_7.
compute q45_16_8_velha = q45_16_8.
compute  q45_16_0_velha = q45_16_0.
compute q45_16_97_velha = q45_16_97.
execute. 

DO IF (q45_1_0=1 |  q45_1_97=1 ).
RECODE q45_1_1  (ELSE=SYSMIS).
RECODE q45_1_2  (ELSE=SYSMIS).
RECODE q45_1_3  (ELSE=SYSMIS).
RECODE q45_1_4  (ELSE=SYSMIS).
RECODE q45_1_5  (ELSE=SYSMIS).
RECODE q45_1_6   (ELSE=SYSMIS).
RECODE q45_1_7  (ELSE=SYSMIS).
RECODE q45_1_8  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q45_2_0=1 |  q45_2_97=1 ).
RECODE q45_2_1  (ELSE=SYSMIS).
RECODE q45_2_2  (ELSE=SYSMIS).
RECODE q45_2_3  (ELSE=SYSMIS).
RECODE q45_2_4  (ELSE=SYSMIS).
RECODE q45_2_5  (ELSE=SYSMIS).
RECODE q45_2_6   (ELSE=SYSMIS).
RECODE q45_2_7  (ELSE=SYSMIS).
RECODE q45_2_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_3_0=1 |  q45_3_97=1 ).
RECODE q45_3_1  (ELSE=SYSMIS).
RECODE q45_3_2  (ELSE=SYSMIS).
RECODE q45_3_3  (ELSE=SYSMIS).
RECODE q45_3_4  (ELSE=SYSMIS).
RECODE q45_3_5  (ELSE=SYSMIS).
RECODE q45_3_6   (ELSE=SYSMIS).
RECODE q45_3_7  (ELSE=SYSMIS).
RECODE q45_3_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_4_0=1 |  q45_4_97=1 ).
RECODE q45_4_1  (ELSE=SYSMIS).
RECODE q45_4_2  (ELSE=SYSMIS).
RECODE q45_4_3  (ELSE=SYSMIS).
RECODE q45_4_4  (ELSE=SYSMIS).
RECODE q45_4_5  (ELSE=SYSMIS).
RECODE q45_4_6   (ELSE=SYSMIS).
RECODE q45_4_7  (ELSE=SYSMIS).
RECODE q45_4_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_5_0=1 |  q45_5_97=1 ).
RECODE q45_5_1  (ELSE=SYSMIS).
RECODE q45_5_2  (ELSE=SYSMIS).
RECODE q45_5_3  (ELSE=SYSMIS).
RECODE q45_5_4  (ELSE=SYSMIS).
RECODE q45_5_5  (ELSE=SYSMIS).
RECODE q45_5_6   (ELSE=SYSMIS).
RECODE q45_5_7  (ELSE=SYSMIS).
RECODE q45_5_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_6_0=1 |  q45_6_97=1 ).
RECODE q45_6_1  (ELSE=SYSMIS).
RECODE q45_6_2  (ELSE=SYSMIS).
RECODE q45_6_3  (ELSE=SYSMIS).
RECODE q45_6_4  (ELSE=SYSMIS).
RECODE q45_6_5  (ELSE=SYSMIS).
RECODE q45_6_6   (ELSE=SYSMIS).
RECODE q45_6_7  (ELSE=SYSMIS).
RECODE q45_6_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_7_0=1 |  q45_7_97=1 ).
RECODE q45_7_1  (ELSE=SYSMIS).
RECODE q45_7_2  (ELSE=SYSMIS).
RECODE q45_7_3  (ELSE=SYSMIS).
RECODE q45_7_4  (ELSE=SYSMIS).
RECODE q45_7_5  (ELSE=SYSMIS).
RECODE q45_7_6   (ELSE=SYSMIS).
RECODE q45_7_7  (ELSE=SYSMIS).
RECODE q45_7_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_8_0=1 |  q45_8_97=1 ).
RECODE q45_8_1  (ELSE=SYSMIS).
RECODE q45_8_2  (ELSE=SYSMIS).
RECODE q45_8_3  (ELSE=SYSMIS).
RECODE q45_8_4  (ELSE=SYSMIS).
RECODE q45_8_5  (ELSE=SYSMIS).
RECODE q45_8_6   (ELSE=SYSMIS).
RECODE q45_8_7  (ELSE=SYSMIS).
RECODE q45_8_8  (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q45_9_0=1 |  q45_9_97=1 ).
RECODE q45_9_1  (ELSE=SYSMIS).
RECODE q45_9_2  (ELSE=SYSMIS).
RECODE q45_9_3  (ELSE=SYSMIS).
RECODE q45_9_4  (ELSE=SYSMIS).
RECODE q45_9_5  (ELSE=SYSMIS).
RECODE q45_9_6   (ELSE=SYSMIS).
RECODE q45_9_7  (ELSE=SYSMIS).
RECODE q45_9_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_10_0=1 |  q45_10_97=1 ).
RECODE q45_10_1  (ELSE=SYSMIS).
RECODE q45_10_2  (ELSE=SYSMIS).
RECODE q45_10_3  (ELSE=SYSMIS).
RECODE q45_10_4  (ELSE=SYSMIS).
RECODE q45_10_5  (ELSE=SYSMIS).
RECODE q45_10_6   (ELSE=SYSMIS).
RECODE q45_10_7  (ELSE=SYSMIS).
RECODE q45_10_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_11_0=1 |  q45_11_97=1 ).
RECODE q45_11_1  (ELSE=SYSMIS).
RECODE q45_11_2  (ELSE=SYSMIS).
RECODE q45_11_3  (ELSE=SYSMIS).
RECODE q45_11_4  (ELSE=SYSMIS).
RECODE q45_11_5  (ELSE=SYSMIS).
RECODE q45_11_6   (ELSE=SYSMIS).
RECODE q45_11_7  (ELSE=SYSMIS).
RECODE q45_11_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_12_0=1 |  q45_12_97=1 ).
RECODE q45_12_1  (ELSE=SYSMIS).
RECODE q45_12_2  (ELSE=SYSMIS).
RECODE q45_12_3  (ELSE=SYSMIS).
RECODE q45_12_4  (ELSE=SYSMIS).
RECODE q45_12_5  (ELSE=SYSMIS).
RECODE q45_12_6   (ELSE=SYSMIS).
RECODE q45_12_7  (ELSE=SYSMIS).
RECODE q45_12_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_13_0=1 |  q45_13_97=1 ).
RECODE q45_13_1  (ELSE=SYSMIS).
RECODE q45_13_2  (ELSE=SYSMIS).
RECODE q45_13_3  (ELSE=SYSMIS).
RECODE q45_13_4  (ELSE=SYSMIS).
RECODE q45_13_5  (ELSE=SYSMIS).
RECODE q45_13_6   (ELSE=SYSMIS).
RECODE q45_13_7  (ELSE=SYSMIS).
RECODE q45_13_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_14_0=1 |  q45_14_97=1 ).
RECODE q45_14_1  (ELSE=SYSMIS).
RECODE q45_14_2  (ELSE=SYSMIS).
RECODE q45_14_3  (ELSE=SYSMIS).
RECODE q45_14_4  (ELSE=SYSMIS).
RECODE q45_14_5  (ELSE=SYSMIS).
RECODE q45_14_6   (ELSE=SYSMIS).
RECODE q45_14_7  (ELSE=SYSMIS).
RECODE q45_14_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_15_0=1 |  q45_15_97=1 ).
RECODE q45_15_1  (ELSE=SYSMIS).
RECODE q45_15_2  (ELSE=SYSMIS).
RECODE q45_15_3  (ELSE=SYSMIS).
RECODE q45_15_4  (ELSE=SYSMIS).
RECODE q45_15_5  (ELSE=SYSMIS).
RECODE q45_15_6   (ELSE=SYSMIS).
RECODE q45_15_7  (ELSE=SYSMIS).
RECODE q45_15_8  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q45_16_0=1 |  q45_16_97=1 ).
RECODE q45_16_1  (ELSE=SYSMIS).
RECODE q45_16_2  (ELSE=SYSMIS).
RECODE q45_16_3  (ELSE=SYSMIS).
RECODE q45_16_4  (ELSE=SYSMIS).
RECODE q45_16_5  (ELSE=SYSMIS).
RECODE q45_16_6   (ELSE=SYSMIS).
RECODE q45_16_7  (ELSE=SYSMIS).
RECODE q45_16_8  (ELSE=SYSMIS).
END IF.
EXECUTE.



VARIABLE LABELS
q1_1_1_1_velha'q1_1_1_1_1: Estado'
q1_1_1_2_velha'q1_1_1_2_2: Município Sede'
q1_1_1_3_velha'q1_1_1_3_3: Municípios vinculados'
q1_1_1_0_velha'q1_1_1_0_0: Não possui/Não se aplica'
q1_1_2_1_velha'q1_1_2_1_1: Estado'
q1_1_2_2_velha'q1_1_2_2_2: Município Sede'
q1_1_2_3_velha'q1_1_2_3_3: Municípios vinculados'
q1_1_2_0_velha'q1_1_2_0_0: Não possui/Não se aplica'
q1_1_3_1_velha'q1_1_3_1_1: Estado'
q1_1_3_2_velha'q1_1_3_2_2: Município Sede'
q1_1_3_3_velha'q1_1_3_3_3: Municípios vinculados'
q1_1_3_0_velha'q1_1_3_0_0: Não possui/Não se aplica'
q1_1_4_1_velha'q1_1_4_1_1: Estado'
q1_1_4_2_velha'q1_1_4_2_2: Município Sede'
q1_1_4_3_velha'q1_1_4_3_3: Municípios vinculados'
q1_1_4_0_velha'q1_1_4_0_0: Não possui/Não se aplica'
q1_2_velha'q1_2_1.2. Qual a frequencia de deslocamento da equipe do CREAS Regional Modelo I para o atendimento/acompanhamento das famílias nos municípios vinculados?'
q1_3_1_velha'q1_3_1_1: Domicílio das famílias'
q1_3_2_velha'q1_3_2_2: Espaço na sede do órgão gestor municipal.'
q1_3_3_velha'q1_3_3_3: Espaço no CRAS.'
q1_3_4_velha'q1_3_4_4: Outro espaço da rede socioassistencial.'
q1_3_5_velha'q1_3_5_5: Espaço da rede de saúde.'
q1_3_6_velha'q1_3_6_6: Espaço na rede de outras políticas públicas.'
q1_3_7_velha'q1_3_7_7: Espaço na sede de órgão de defesa de direitos (Ministério Público, Conselho Tutelar, Poder Judiciário, Defensoria Pública etc.).'
q1_3_99_velha'q1_3_99_99: Outros'
q1_4_velha'q1_4_1.4. Em caso de deslocamento das famílias/indivíduos para a sede deste CREAS Regional modelo I, existe apoio para este deslocamento?'
q6_1_velha'q6_1_1: Secretaria da Assistência Social ou congênere'
q6_2_velha'q6_2_2: Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-Prefeitura, etc.)'
q6_3_velha'q6_3_3: Conselho Municipal de Assistência Social'
q6_4_velha'q6_4_4: CRAS – Centro de Referência de Assistência Social'
q6_5_velha'q6_5_5: Centro POP - Centro de Referência Especializado para População em Situação de Rua'
q6_6_velha'q6_6_6: Unidade de Acolhimento institucional (Abrigo)'
q6_7_velha'q6_7_7: Outra unidade pública de serviços da Assistência Social'
q6_8_velha'q6_8_8: Unidade de Saúde'
q6_9_velha'q6_9_9: Centro de Referência de Atendimento à Mulher (CRAM)'
q6_10_velha'q6_10_10: Entidade ou Organização da Sociedade Civil/ Associação Comunitária'
q6_11_velha'q6_11_11: Conselho Tutelar'
q6_12_velha'q6_12_12: Delegacia Especializada'
q6_13_velha'q6_13_13: Outro órgão de defesa de direitos (Ministério Público, Defensoria Pública, Poder Judiciário, etc.)'
q6_14_velha'q6_14_14: NAI - Núcleo de Atendimento Integrado'
q6_15_velha'q6_15_15: Conselho Municipal de Direitos da Criança e do Adolescente'
q6_99_velha'q6_99_99: Outros'
q6_1_1_velha'q6_1_1_1: Apenas o endereço é o mesmo, mas todos os espaços do CREAS são independentes e de uso exclusivo, inclusive a entrada '
q6_1_2_velha'q6_1_2_2: Entrada / Porta de Acesso'
q6_1_3_velha'q6_1_3_3: Recepção'
q6_1_4_velha'q6_1_4_4: Algumas salas de atendimento individualizado'
q6_1_5_velha'q6_1_5_5: Todas as salas de atendimento individualizado'
q6_1_6_velha'q6_1_6_6: Algumas salas de atendimento coletivo'
q6_1_7_velha'q6_1_7_7: Todas as salas de atendimento coletivo'
q6_1_8_velha'q6_1_8_8: Salas administrativas'
q6_1_9_velha'q6_1_9_9: Banheiros'
q6_1_10_velha'q6_1_10_10: Copa/cozinha'
q6_1_11_velha'q6_1_11_11: Área Externa'
q6_1_12_velha'q6_1_12_12: Almoxarifado ou similar'
q14_1_1_velha'q14_1_1_14.1.1. Liberdade Assistida - masculino'
q14_1_2_velha'q14_1_2_14.1.2. Liberdade Assistida - feminino'
q14_2_1_velha'q14_2_1_14.2.1. Prestação de Serviços à Comunidade - masculino'
q14_2_2_velha'q14_2_2_14.2.2. Prestação de Serviços à Comunidade - feminino'
q15_velha'q15_15. Indique abaixo a frequência com que, normalmente, cada adolescente em cumprimento de medida socioeducativa de Liberdade Assistida (LA) é atendida(o) neste CREAS'
q16_1_velha'q16_1_1: Elaboração do Plano Individual de Atendimento (PIA) da(o) adolescente'
q16_2_velha'q16_2_2: Atendimento individual da(o) adolescente'
q16_3_velha'q16_3_3: Atendimento da(o) adolescente em grupos'
q16_4_velha'q16_4_4: Atendimento da família da(o) adolescente em cumprimento de medida de liberdade assistida (LA)'
q16_5_velha'q16_5_5: Atendimento com grupos de famílias da(o) adolescente em cumprimento de medida de liberdade assistida (LA)'
q16_6_velha'q16_6_6: Visita domiciliar'
q16_7_velha'q16_7_7: Encaminhamento da(o) adolescente para o sistema educacional'
q16_8_velha'q16_8_8: Acompanhamento da frequência escolar da(o) adolescente'
q16_9_velha'q16_9_9: Encaminhamento para o Serviço de Convivência e Fortalecimento de Vínculos'
q16_10_velha'q16_10_10: Encaminhamento da(o) adolescente e sua família para outros serviços e programas da rede socioassistencial'
q16_11_velha'q16_11_11: Encaminhamento para serviços da rede de saúde para atendimento de usuárias(os)/dependentes de substâncias psicoativas'
q16_12_velha'q16_12_12: Encaminhamento de famílias ou adolecentes para outros serviços da rede de saúde'
q16_13_velha'q16_13_13: Encaminhamento da(o) adolescente e sua família para serviços de outras políticas setoriais'
q16_14_velha'q16_14_14: Encaminhamento da(o) adolescente para cursos profissionalizantes'
q16_15_velha'q16_15_15: Elaboração e encaminhamento de relatório para a Justiça da Infância e da Juventude ou Ministério Público'
q16_16_velha'q16_16_16: Elaboração e encaminhamento de relatórios periódicos para o órgão gestor da assistência social no município'
q16_17_velha'q16_17_17: Registro do acompanhamento em prontuário'
q16_18_velha'q16_18_18: Encaminhamento da família e/ou da(o) adolescente ao PAEFI'
q16_19_velha'q16_19_19: Discussão de caso com outras profissionais da rede'
q16_20_velha'q16_20_20: Utilização de técnicas restaurativas e/ou encaminhamento para locais que realizam práticas restaurativas'
q17_velha'q17_17. Indique abaixo a frequência com que, normalmente, cada adolescente em cumprimento de medida socioeducativa de Prestação de Serviço de Comunidade (PSC) é atendida(o) neste CREAS:'
q18_1_velha'q18_1_1: CRAS'
q18_2_velha'q18_2_2: CREAS'
q18_3_velha'q18_3_3: Biblioteca'
q18_4_velha'q18_4_4: Hospitais'
q18_5_velha'q18_5_5: Unidades de Acolhimento para Idosas(os)(asilos)'
q18_6_velha'q18_6_6: Defensoria Pública/ Fórum'
q18_7_velha'q18_7_7: Projetos de Cultura'
q18_8_velha'q18_8_8: Projetos de Esporte'
q18_9_velha'q18_9_9: Igrejas'
q18_10_velha'q18_10_10: Conselho Tutelar'
q18_11_velha'q18_11_11: Sistema S (SENAI, SESC, SESI, etc.)'
q18_12_velha'q18_12_12: Atividades da Secretaria de Obras ou similares'
q18_13_velha'q18_13_13: Polícia/ Corpo de Bombeiros'
q18_99_velha'q18_99_99: Outros'
q19_velha'q19_19. Indique abaixo a frequência com que, normalmente, os adolescentes realizam atividades de prestação de serviços à comunidade (PSC)'
q20_1_velha'q20_1_1: Serviços administrativos (secretariado, almoxarifado, orientações, etc);'
q20_2_velha'q20_2_2: Limpeza e conservação (faxina, pintura, conserto de objetos ou prédios públicos, limpeza em geral, etc.)'
q20_3_velha'q20_3_3: Atividades com pessoas em situação de vulnerabilidade (pessoas enfermas, pessoas em situação de acolhimento, pessoas com deficiência, etc.);'
q20_4_velha'q20_4_4: Tarefas de cunho artístico, esportivo ou cultural (cineclubes, monitoria em museus, clubes, quadras desportivas, bibliotecas, intervenções culturais, etc.)'
q20_99_velha'q20_99_99: outros'
q21_1_velha'q21_1_1: Elaboração do Plano Individual de Atendimento (PIA) da(o) adolescente'
q21_2_velha'q21_2_2: Encaminhamento da(o) adolescente para os locais de prestação de serviços comunitários'
q21_3_velha'q21_3_3: Atendimento individual da(o) adolescente'
q21_4_velha'q21_4_4: Atendimento da(o) adolescente em grupos'
q21_5_velha'q21_5_5: Atendimento da família do adolescente em cumprimento de medida de PSC'
q21_6_velha'q21_6_6: Atendimento com grupos de famílias da(o) adolescente em cumprimento de medida de PSC'
q21_7_velha'q21_7_7: Visita domiciliar'
q21_8_velha'q21_8_8: Visitas técnicas aos locais de prestação do serviço à comunidade'
q21_9_velha'q21_9_9: Encaminhamento da(o) adolescente para o sistema educacional'
q21_10_velha'q21_10_10: Encaminhamento da família e/ou da(o) adolescente ao PAEFI'
q21_11_velha'q21_11_11: Discussão de caso com outras(os) profissionais da rede'
q21_12_velha'q21_12_12: Acompanhamento da frequência escolar da(o) adolescente'
q21_13_velha'q21_13_13: Encaminhamento para o Serviço de Convivência e Fortalecimento de Vínculos'
q21_14_velha'q21_14_14: Encaminhamento da(o) adolescente e sua família para outros serviços e programas da rede socioassistencial'
q21_15_velha'q21_15_15: Encaminhamento para serviços da rede de saúde para atendimento de usuárias(os)/dependentes de substâncias psicoativas'
q21_16_velha'q21_16_16: Encaminhamento das famílias ou dos adolescentes para outros serviços da rede de saúde'
q21_17_velha'q21_17_17: Encaminhamento da(o) adolescente e sua família para serviços de outras políticas setoriais'
q21_18_velha'q21_18_18: Encaminhamento da(o) adolescente para cursos profissionalizantes'
q21_19_velha'q21_19_19: Elaboração e encaminhamento de relatório para a Justiça da Infância e da Juventude ou Ministério Público'
q21_20_velha'q21_20_20: Elaboração e encaminhamento de relatórios periódicos para o órgão gestor da assistência social no município'
q21_21_velha'q21_21_21: Utilização de técnicas restaurativas e/ou encaminhamento para locais que realizam práticas restaurativas'
q21_99_velha'q21_99_99: Outros'
q23_1_velha'q23_1_1: Cumpre função de coordenador do Serviço referenciado'
q23_2_velha'q23_2_2: Coleta/recebe periodicamente informações sobre dados de atendimento do Serviço'
q23_3_velha'q23_3_3: Realiza reuniões periódicas para avaliação do Serviço com a unidade referenciada'
q23_4_velha'q23_4_4: Participa do processo de planejamento das atividades do Serviço'
q23_5_velha'q23_5_5: Acompanha cotidianamente as atividades do Serviço'
q23_6_velha'q23_6_6: Constrói estratégias metodológicas do Serviço'
q23_7_velha'q23_7_7: Elabora relatórios técnicos específicos sobre casos atendidos/acompanhados pelo Serviço'
q23_8_velha'q23_8_8: Realiza estudos de caso em parceria com o Serviço'
q23_9_velha'q23_9_9: Define procedimentos comuns e/ou complementares ao Serviço'
q23_10_velha'q23_10_10: Possui fluxos de encaminhamentos e trocas de informações com o Serviço'
q23_11_velha'q23_11_11: Articula com a rede de serviços socioassistenciais'
q23_12_velha'q23_12_12: Articula com a rede dos serviços das políticas públicas setoriais'
q23_13_velha'q23_13_13: Articula com os órgãos do Sistema de Justiças'
q23_14_velha'q23_14_14: Articula com os órgãos de defesa de direitos (Defensoria Pública, Ministério Público, Conselho Tutelar, etc.)'
q23_0_velha'q23_0_0: Não realiza nenhuma das atividades acima'
q24_1_velha'q24_1_1: Identificação de incidência de pessoas acima de 18 anos em situação de rua'
q24_2_velha'q24_2_2: Identificação de incidência de crianças e adolescentes em situação de rua'
q24_3_velha'q24_3_3: Identificação de incidência de trabalho infantil e exploração sexual'
q24_4_velha'q24_4_4: Identificação de incidência de uso abusivo de álcool e outras drogas'
q24_5_velha'q24_5_5: Conhecimento/mapeamento do território'
q24_6_velha'q24_6_6: Informação, comunicação e defesa de direitos das(os) usuárias(os)'
q24_7_velha'q24_7_7: Escuta de usuárias(os)'
q24_8_velha'q24_8_8: Construção de vínculo entre a equipe de referência e usuárias(os)'
q24_9_velha'q24_9_9: Encaminhamento para a rede de serviços locais'
q24_10_velha'q24_10_10: Articulação da rede de serviços socioassistenciais'
q24_11_velha'q24_11_11: Articulação com os serviços de políticas públicas setoriais'
q24_12_velha'q24_12_12: Articulação com os órgãos do sistema de justiça e de defesa de direitos'
q24_13_velha'q24_13_13: Articulação com organizações da sociedade civil e movimentos sociais'
q24_14_velha'q24_14_14: Elaboração de relatórios'
q24_15_velha'q24_15_15: Ações de sensibilização para divulgação do trabalho realizado'
q24_16_velha'q24_16_16: Ações para fortalecimento de vínculos familiares e comunitários'
q24_17_velha'q24_17_17: Registro de atendimento e acompanhamento das(os) usuárias(os)'
q25_velha'q25_25. Quantos dias por semana a abordagem social é realizada:'
q26_1_velha'q26_1_1: Matutino'
q26_2_velha'q26_2_2: Vespertino'
q26_3_velha'q26_3_3: Noturno'
q26_4_velha'q26_4_4: Final de semana'
q27_1_velha'q27_1_1: A abordagem é realizada exclusivamente pela equipe do CREAS'
q27_2_velha'q27_2_2: Equipes de saúde'
q27_3_velha'q27_3_3: Equipes de serviços de acolhimento'
q27_4_velha'q27_4_4: Equipes do Centro POP'
q27_5_velha'q27_5_5: Equipes de outras unidades públicas da rede socioassistencial'
q27_6_velha'q27_6_6: Equipes de entidades da rede socioassistencial privada/Integrantes de movimentos sociais'
q27_7_velha'q27_7_7: Guarda municipal'
q27_8_velha'q27_8_8: Polícia militar'
q27_9_velha'q27_9_9: Equipes do sistema de justiça'
q27_10_velha'q27_10_10: Defensoria Pública'
q27_11_velha'q27_11_11: Conselho Tutelar'
q27_99_velha'q27_99_99: Outros'
q28_1_velha'q28_1_1: Conhecimento prévio dos técnicos do Serviço'
q28_2_velha'q28_2_2: A partir de diagnósticos socioterritoriais realizados pelo órgão gestor de Assistência Social'
q28_3_velha'q28_3_3: A partir de diagnósticos socioterritoriais realizados pela equipe que executa o serviço'
q28_4_velha'q28_4_4: Demanda dos órgãos de defesa de diretos'
q28_5_velha'q28_5_5: Denúncias/Solicitações da população'
q28_99_velha'q28_99_99: Outros.'
q29_1_velha'q29_1_1: Utiliza metodologia específica para Abordagem Social de crianças e adolescentes'
q29_2_velha'q29_2_2: Aciona o Conselho Tutelar'
q29_3_velha'q29_3_3: Avalia os riscos a que a criança ou o adolescente estão submetidos'
q29_4_velha'q29_4_4: Realiza a identificação da família de origem'
q29_5_velha'q29_5_5: Avalia as possibilidades de retorno seguro para convivência familiar e comunitária'
q29_6_velha'q29_6_6: Constroi alternativas processuais/gradativas para a saída das ruas, evitando o acolhimento compulsório'
q29_7_velha'q29_7_7: Articula com atores do Sistema de Garantia de Direitos para proteção e outros suportes'
q29_8_velha'q29_8_8: Estabelece fluxo e articulações entre o Serviço de Abordagem e o Serviço de Acolhimento'
q29_9_velha'q29_9_9: Articula com sistema de justiça para aplicação de medida protetiva e outros encaminhamentos'
q29_99_velha'q29_99_99: Outra'
q29_0_velha'q29_0_0: NÃO atendeu nenhuma criança/adolescente em situação de rua desacompanhados dos responsáveis.'
q30_velha'q30_30. Esta Unidade oferta o Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias?'
q31_velha'q31_31. O Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias é executado:'
q32_velha'q32_32. Informe o número de pessoas com deficiência e/ou idosas atendidas neste serviço durante o mês de agosto de 2023'
q33_velha'q33_33. O Serviço de Proteção Social Especial para Pessoas Com Deficiência, Idosas e suas Famílias, ofertado nesta Unidade, possui capacidade para atender quantas(os) usuárias(os) por turno?'
q34_velha'q34_34. Em média, quantos dias por semana as(os) usuárias(os) frequentam este serviço?'
q35_velha'q35_35. Em média, quantas horas por dia as(os) usuárias(os) acessam o serviço?'
q36_1_velha'q36_1_1: Acolhida e escuta inicial'
q36_2_velha'q36_2_2: Estudo social'
q36_3_velha'q36_3_3: Realiza atividade de autocuidados de vida diária'
q36_4_velha'q36_4_4: Orientação sobre acesso ao BPC'
q36_5_velha'q36_5_5: Orientação sobre o acesso a outros benefícios'
q36_6_velha'q36_6_6: Orientação e apoio para obtenção de documentação pessoal'
q36_7_velha'q36_7_7: Orientação para realização de cadastro no Cadastro Único'
q36_8_velha'q36_8_8: Elaboração de Plano de Acompanhamento Individual e/ou Familiar'
q36_9_velha''q36_9_9: Oficinas e atividades coletivas de convívio e socialização'
q36_10_velha'q36_10_10: Encaminhamento para a rede de serviços socioassistenciais'
q36_11_velha'q36_11_11: Encaminhamento para os serviços da rede de saúde'
q36_12_velha'q36_12_12: Encaminhamento para política de educação'
q36_13_velha'q36_13_13: Encaminhamento para serviços/Unidades das demais políticas públicas'
q36_14_velha'q36_14_14: Encaminhamento para órgãos de defesa de direitos (Defensoria Pública, Ministério Público, Conselho Tutelar, Conselhos de Direitos etc.)'
q36_15_velha'q36_15_15: Acompanhamento das(os) usuárias(os) encaminhados para a rede'
q36_16_velha'q36_16_16: Registro de informações em prontuário'
q36_17_velha'q36_17_17: Elaboração de relatórios sobre casos em acompanhamento'
q36_18_velha'q36_18_18: Visitas domiciliares'
q36_19_velha'q36_19_19: Atividades com a família da(o) usuária(o)'
q36_20_velha'q36_20_20: Mobilização das(os) usuárias(os) para acesso ao serviço'
q36_21_velha'q36_21_21: Apoio e orientação aos(às) cuidadores(as) familiares'
q36_22_velha'q36_22_22: Orientação sobre tecnologias assistivas'
q36_23_velha'q36_23_23: Orientação e apoio nos autocuidados'
q36_24_velha'q36_24_24: Palestras e oficinas envolvendo a comunidade'
q36_25_velha'q36_25_25: Provimento de bens materiais'
q36_99_velha'q36_99_99: Outros'
q37_velha'q37_37. É feita oferta de Benefícios Eventuais neste CREAS?'
q38_1_velha'q38_1_1: Benefício Eventual em situação de morte'
q38_2_velha'q38_2_2: Benefício Eventual em situação de natalidade/ nascimento'
q38_3_velha'q38_3_3: Benefício Eventual em situação de calamidade (inclui desastres e emergências)'
q38_4_velha'q38_4_4: Benefício Eventual em situação de vulnerabilidade social temporária'
q39_velha'q39_39. Este CREAS realiza cadastramento ou atualização cadastral do CadÚnico?'
q40_velha'q40_40. Este CREAS realiza cadastramento da população em situação de rua no CadÚnico?'
q41_velha'q41_41. O território de abrangência deste CREAS compreende (apenas para Municipal e Regional modelo II)'
q42_1_velha'q42_1_1: Sim, Povos Indígenas'
q42_2_velha'q42_2_2: Sim, Comunidade Quilombola'
q42_4_velha'q42_4_4: Sim, Povos Ciganos'
q42_3_velha'q42_3_3: Sim, Comunidade Ribeirinha'
q42_5_velha'q42_5_5: Sim, Povos de Matriz Africana e de terreiro'
q42_6_velha'q42_6_6: Sim, Comunidades Extrativistas'
q42_99_velha'q42_99_99: Sim, Outros povos e comunidades tradicionais'
q42_0_velha'q42_0_0: Não atendeu'
q43_velha'q43_43. Há participação das(os) usuárias(os) nas atividades de planejamento deste CREAS?'
q44_1_velha'q44_1_1: Usuárias(os) e/ou familiares participam das reuniões de planejamento desta unidade.'
q44_2_velha'q44_2_2: Usuárias(os) contam com representante que participa do planejamento desta unidade'
q44_3_velha'q44_3_3: Usuárias(os) escolhem os temas a serem trabalhados nas atividades coletivas (oficinas/palestras).'
q44_4_velha'q44_4_4: A equipe técnica disponibiliza outros meios para avaliação da oferta (questionário de satisfação, pesquisa de opinião, urna de sugestões).'
q44_99_velha'q44_99_99: Outros.'
q45_1_1_velha'q45_1_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_1_2_velha'q45_1_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_1_3_velha'q45_1_3_3: Encaminha usuárias(os) para este CREAS'
q45_1_4_velha'q45_1_4_4: Acompanha os encaminhamentos'
q45_1_5_velha'q45_1_5_5: Realiza reuniões periódicas'
q45_1_6_velha'q45_1_6_6: Troca Informações'
q45_1_7_velha'q45_1_7_7: Realiza estudos de caso em conjunto'
q45_1_8_velha'q45_1_8_8: Desenvolve atividades em parceria'
q45_1_0_velha'q45_1_0_0: Não tem nenhuma articulação'
q45_1_97_velha'q45_1_97_97: Serviço ou instituição não existente no Município'
q45_2_1_velha'q45_2_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_2_2_velha'q45_2_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_2_3_velha'q45_2_3_3: Encaminha usuárias(os) para este CREAS'
q45_2_4_velha'q45_2_4_4: Acompanha os encaminhamentos'
q45_2_5_velha'q45_2_5_5: Realiza reuniões periódicas'
q45_2_6_velha'q45_2_6_6: Troca Informações'
q45_2_7_velha'q45_2_7_7: Realiza estudos de caso em conjunto'
q45_2_8_velha'q45_2_8_8: Desenvolve atividades em parceria'
q45_2_0_velha'q45_2_0_0: Não tem nenhuma articulação'
q45_2_97_velha'q45_2_97_97: Serviço ou instituição não existente no Município'
q45_3_1_velha'q45_3_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_3_2_velha'q45_3_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_3_3_velha'q45_3_3_3: Encaminha usuárias(os) para este CREAS'
q45_3_4_velha'q45_3_4_4: Acompanha os encaminhamentos'
q45_3_5_velha'q45_3_5_5: Realiza reuniões periódicas'
q45_3_6_velha'q45_3_6_6: Troca Informações'
q45_3_7_velha'q45_3_7_7: Realiza estudos de caso em conjunto'
q45_3_8_velha'q45_3_8_8: Desenvolve atividades em parceria'
q45_3_0_velha'q45_3_0_0: Não tem nenhuma articulação'
q45_3_97_velha'q45_3_97_97: Serviço ou instituição não existente no Município'
q45_4_1_velha'q45_4_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_4_2_velha'q45_4_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_4_3_velha'q45_4_3_3: Encaminha usuárias(os) para este CREAS'
q45_4_4_velha'q45_4_4_4: Acompanha os encaminhamentos'
q45_4_5_velha'q45_4_5_5: Realiza reuniões periódicas'
q45_4_6_velha'q45_4_6_6: Troca Informações'
q45_4_7_velha'q45_4_7_7: Realiza estudos de caso em conjunto'
q45_4_8_velha'q45_4_8_8: Desenvolve atividades em parceria'
q45_4_0_velha'q45_4_0_0: Não tem nenhuma articulação'
q45_4_97_velha'q45_4_97_97: Serviço ou instituição não existente no Município'
q45_5_1_velha'q45_5_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_5_2_velha'q45_5_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_5_3_velha'q45_5_3_3: Encaminha usuárias(os) para este CREAS'
q45_5_4_velha'q45_5_4_4: Acompanha os encaminhamentos'
q45_5_5_velha'q45_5_5_5: Realiza reuniões periódicas'
q45_5_6_velha'q45_5_6_6: Troca Informações'
q45_5_7_velha'q45_5_7_7: Realiza estudos de caso em conjunto'
q45_5_8_velha'q45_5_7_7: Realiza estudos de caso em conjunto'
q45_5_0_velha'q45_5_0_0: Não tem nenhuma articulação'
q45_5_97_velha'q45_5_97_97: Serviço ou instituição não existente no Município'
q45_6_1_velha'q45_6_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_6_2_velha'q45_6_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_6_3_velha'q45_6_3_3: Encaminha usuárias(os) para este CREAS'
q45_6_4_velha'q45_6_4_4: Acompanha os encaminhamentos'
q45_6_5_velha'q45_6_5_5: Realiza reuniões periódicas'
q45_6_6_velha'q45_6_6_6: Troca Informações'
q45_6_7_velha'q45_6_7_7: Realiza estudos de caso em conjunto'
q45_6_8_velha'q45_6_8_8: Desenvolve atividades em parceria'
q45_6_0_velha'q45_6_0_0: Não tem nenhuma articulação'
q45_6_97_velha'q45_6_97_97: Serviço ou instituição não existente no Município'
q45_7_1_velha'q45_7_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_7_2_velha'q45_7_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_7_3_velha'q45_7_3_3: Encaminha usuárias(os) para este CREAS'
q45_7_4_velha'q45_7_4_4: Acompanha os encaminhamentos'
q45_7_5_velha'q45_7_5_5: Realiza reuniões periódicas'
q45_7_6_velha'q45_7_6_6: Troca Informações'
q45_7_7_velha'q45_7_7_7: Realiza estudos de caso em conjunto'
q45_7_8_velha'q45_7_8_8: Desenvolve atividades em parceria'
q45_7_0_velha'q45_7_0_0: Não tem nenhuma articulação'
q45_7_97_velha'q45_7_97_97: Serviço ou instituição não existente no Município'
q45_8_1_velha'q45_8_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_8_2_velha'q45_8_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_8_3_velha'q45_8_3_3: Encaminha usuárias(os) para este CREAS'
q45_8_4_velha'q45_8_4_4: Acompanha os encaminhamentos'
q45_8_5_velha'q45_8_5_5: Realiza reuniões periódicas'
q45_8_6_velha'q45_8_6_6: Troca Informações'
q45_8_7_velha'q45_8_7_7: Realiza estudos de caso em conjunto'
q45_8_8_velha'q45_8_8_8: Desenvolve atividades em parceria'
q45_8_0_velha'q45_8_0_0: Não tem nenhuma articulação'
q45_8_97_velha'q45_8_97_97: Serviço ou instituição não existente no Município'
q45_9_1_velha'q45_9_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_9_2_velha'q45_9_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_9_3_velha'q45_9_3_3: Encaminha usuárias(os) para este CREAS'
q45_9_4_velha'q45_9_4_4: Acompanha os encaminhamentos'
q45_9_5_velha'q45_9_5_5: Realiza reuniões periódicas'
q45_9_6_velha'q45_9_6_6: Troca Informações'
q45_9_7_velha'q45_9_7_7: Realiza estudos de caso em conjunto'
q45_9_8_velha'q45_9_8_8: Desenvolve atividades em parceria'
q45_9_0_velha'q45_9_0_0: Não tem nenhuma articulação'
q45_9_97_velha'q45_9_97_97: Serviço ou instituição não existente no Município'
q45_10_1_velha'q45_10_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_10_2_velha'q45_10_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_10_3_velha'q45_10_3_3: Encaminha usuárias(os) para este CREAS'
q45_10_4_velha'q45_10_4_4: Acompanha os encaminhamentos'
q45_10_5_velha'q45_10_5_5: Realiza reuniões periódicas'
q45_10_6_velha'q45_10_6_6: Troca Informações'
q45_10_7_velha'q45_10_7_7: Realiza estudos de caso em conjunto'
q45_10_8_velha'q45_10_8_8: Desenvolve atividades em parceria'
q45_10_0_velha'q45_10_0_0: Não tem nenhuma articulação'
q45_10_97_velha'q45_10_97_97: Serviço ou instituição não existente no Município'
q45_11_1_velha'q45_11_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_11_2_velha'q45_11_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_11_3_velha'q45_11_3_3: Encaminha usuárias(os) para este CREAS'
q45_11_4_velha'q45_11_4_4: Acompanha os encaminhamentos'
q45_11_5_velha'q45_11_5_5: Realiza reuniões periódicas'
q45_11_6_velha'q45_11_6_6: Troca Informações'
q45_11_7_velha'q45_11_7_7: Realiza estudos de caso em conjunto'
q45_11_8_velha'q45_11_8_8: Desenvolve atividades em parceria'
q45_11_0_velha'q45_11_0_0: Não tem nenhuma articulação'
q45_11_97_velha'q45_11_97_97: Serviço ou instituição não existente no Município'
q45_12_1_velha'q45_12_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_12_2_velha'q45_12_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_12_3_velha'q45_12_3_3: Encaminha usuárias(os) para este CREAS'
q45_12_4_velha'q45_12_4_4: Acompanha os encaminhamentos'
q45_12_5_velha'q45_12_5_5: Realiza reuniões periódicas'
q45_12_6_velha'q45_12_6_6: Troca Informações'
q45_12_7_velha'q45_12_7_7: Realiza estudos de caso em conjunto'
q45_12_8_velha'q45_12_8_8: Desenvolve atividades em parceria'
q45_12_0_velha'q45_12_0_0: Não tem nenhuma articulação'
q45_12_97_velha'q45_12_97_97: Serviço ou instituição não existente no Município'
q45_13_1_velha'q45_13_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_13_2_velha'q45_13_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_13_3_velha'q45_13_3_3: Encaminha usuárias(os) para este CREAS'
q45_13_4_velha'q45_13_4_4: Acompanha os encaminhamentos'
q45_13_5_velha'q45_13_5_5: Realiza reuniões periódicas'
q45_13_6_velha'q45_13_6_6: Troca Informações'
q45_13_7_velha'q45_13_7_7: Realiza estudos de caso em conjunto'
q45_13_8_velha'q45_13_8_8: Desenvolve atividades em parceria'
q45_13_0_velha'q45_13_8_8: Desenvolve atividades em parceria'
q45_13_97_velha'q45_13_97_97: Serviço ou instituição não existente no Município'
q45_14_1_velha'q45_14_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_14_2_velha'q45_14_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_14_3_velha'q45_14_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_14_4_velha'q45_14_4_4: Acompanha os encaminhamentos'
q45_14_5_velha'q45_14_5_5: Realiza reuniões periódicas'
q45_14_6_velha'q45_14_6_6: Troca Informações'
q45_14_7_velha'q45_14_7_7: Realiza estudos de caso em conjunto'
q45_14_8_velha'q45_14_8_8: Desenvolve atividades em parceria'
q45_14_0_velha'q45_14_0_0: Não tem nenhuma articulação'
q45_14_97_velha'q45_14_97_97: Serviço ou instituição não existente no Município'
q45_15_1_velha'q45_15_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_15_2_velha'q45_15_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_15_3_velha'q45_15_3_3: Encaminha usuárias(os) para este CREAS'
q45_15_4_velha'q45_15_3_3: Encaminha usuárias(os) para este CREAS'
q45_15_5_velha'q45_15_5_5: Realiza reuniões periódicas'
q45_15_6_velha'q45_15_5_5: Realiza reuniões periódicas'
q45_15_7_velha'q45_15_7_7: Realiza estudos de caso em conjunto'
q45_15_8_velha'q45_15_8_8: Desenvolve atividades em parceria'
q45_15_0_velha'q45_15_0_0: Não tem nenhuma articulação'
q45_15_97_velha'q45_15_97_97: Serviço ou instituição não existente no Município'
q45_16_1_velha'q45_16_1_1: Possui dados da localização (endereço, telefone, etc.)'
q45_16_2_velha'q45_16_2_2: Recebe usuárias(os) encaminhados por este CREAS'
q45_16_3_velha'q45_16_3_3: Encaminha usuárias(os) para este CREAS'
q45_16_4_velha'q45_16_4_4: Acompanha os encaminhamentos'
q45_16_5_velha'q45_16_5_5: Realiza reuniões periódicas'
q45_16_6_velha'q45_16_6_6: Troca Informações'
q45_16_7_velha'q45_16_7_7: Realiza estudos de caso em conjunto'
q45_16_8_velha'q45_16_8_8: Desenvolve atividades em parceria'
q45_16_0_velha'q45_16_0_0: Não tem nenhuma articulação'
q45_16_97_velha'q45_16_97_97: Serviço ou instituição não existente no Município'.