
*****recodificar
*q1*********************************


compute q3_1_velha = q3_1. 
compute q3_2_velha = q3_2. 
compute q3_3_velha = q3_3. 
compute q3_0_velha = q3_0. 
compute q3_98_velha = q3_98. 
compute q4_velha = q4. 


DO IF (q1=1).
RECODE q3_1 (ELSE=SYSMIS).
RECODE q3_2 (ELSE=SYSMIS).
RECODE q3_3 (ELSE=SYSMIS).
RECODE q3_0 (ELSE=SYSMIS).
RECODE q3_98 (ELSE=SYSMIS).
RECODE q4 (ELSE=SYSMIS).
END IF.
EXECUTE.



**q3**********************************************

DO IF (q3_0 = 1   |   q3_98=1   ).
RECODE q3_1 (ELSE=SYSMIS).
RECODE q3_2 (ELSE=SYSMIS).
RECODE q3_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q11*****************

compute q11_1_velha = q11_1. 
compute q11_2_velha = q11_2. 
compute q11_99_velha = q11_99. 
compute q11_0_velha = q11_0. 
compute q11_98_velha = q11_98. 

DO IF (q11_0 = 1   |   q11_98=1   ).
RECODE q11_1 (ELSE=SYSMIS).
RECODE q11_2 (ELSE=SYSMIS).
RECODE q11_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q15**************

compute q15_1_velha = q15_1. 
compute q15_2_velha = q15_2.
compute q15_3_velha = q15_3.
compute q15_99_velha = q15_99.
compute q15_0_velha = q15_0.
execute. 

DO IF (q15_0=1   ).
RECODE q15_1 (ELSE=SYSMIS).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_3 (ELSE=SYSMIS).
RECODE q15_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*************q20***

compute q20_1_1_velha = q20_1_1. 
compute q20_1_2_velha = q20_1_2.
compute q20_1_3_velha = q20_1_3.
compute q20_1_4_velha = q20_1_4.
compute q20_1_5_velha = q20_1_5.
compute q20_1_6_velha = q20_1_6.
compute q20_1_8_velha = q20_1_8.
compute q20_1_9_velha = q20_1_9.
compute q20_2_1_velha = q20_2_1. 
compute q20_2_2_velha = q20_2_2.
compute q20_2_3_velha = q20_2_3.
compute q20_2_4_velha = q20_2_4.
compute q20_2_5_velha = q20_2_5.
compute q20_2_6_velha = q20_2_6.
compute q20_2_8_velha = q20_2_8.
compute q20_2_9_velha = q20_2_9.
execute. 



COMPUTE q20_total=SUM(q20_1_9,q20_2_9).
EXECUTE.


DO IF (q20_total ~= q18).
RECODE q20_1_1 (ELSE=SYSMIS).
RECODE q20_1_2 (ELSE=SYSMIS).
RECODE q20_1_3 (ELSE=SYSMIS).
RECODE q20_1_4 (ELSE=SYSMIS).
RECODE q20_1_5 (ELSE=SYSMIS).
RECODE q20_1_6 (ELSE=SYSMIS).
RECODE q20_1_8 (ELSE=SYSMIS).
RECODE q20_1_9 (ELSE=SYSMIS).
RECODE q20_2_1 (ELSE=SYSMIS).
RECODE q20_2_2 (ELSE=SYSMIS).
RECODE q20_2_3 (ELSE=SYSMIS).
RECODE q20_2_4 (ELSE=SYSMIS).
RECODE q20_2_5 (ELSE=SYSMIS).
RECODE q20_2_6 (ELSE=SYSMIS).
RECODE q20_2_8 (ELSE=SYSMIS).
RECODE q20_2_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q21***

compute q21_1_velha = q21_1.
compute q21_2_velha = q21_2.
compute q21_3_velha = q21_3.
execute. 


DO IF (q21_1_98 = 1).
RECODE q21_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q21_1 > q18).
RECODE q21_1 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q21_2_98 = 1).
RECODE q21_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q21_2 > q18).
RECODE q21_2 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q21_3_98 = 1).
RECODE q21_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q21_3 > q18).
RECODE q21_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q23***

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
execute. 


DO IF (q23_10 ~= q18).
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
END IF.
EXECUTE.


*q24**************************

compute q24_1_velha = q24_1. 
compute q24_2_velha = q24_2.
compute q24_3_velha = q24_3.
compute q24_4_velha = q24_4. 
compute q24_5_velha = q24_5.
compute q24_6_velha = q24_6.
compute q24_7_velha = q24_7. 
compute q24_8_velha = q24_8.
compute q24_9_velha = q24_9.
execute. 


DO IF (q24_1 > q18).
RECODE q24_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_2 > q18).
RECODE q24_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_3 > q18).
RECODE q24_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_4 > q18).
RECODE q24_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_5 > q18).
RECODE q24_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_6 > q18).
RECODE q24_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_7 > q18).
RECODE q24_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_8 > q18).
RECODE q24_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q24_9 > q18).
RECODE q24_9 (ELSE=SYSMIS).
END IF.
EXECUTE.



*q25***************************

compute q25_1_velha = q25_1. 
compute q25_2_velha = q25_2.
compute q25_3_velha = q25_3.
compute q25_4_velha = q25_4.
compute q25_5_velha = q25_5.
compute q25_6_velha = q25_6.
execute. 

DO IF (q25_1_98 = 1).
RECODE q25_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_1 > q18).
RECODE q25_1 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q25_2_98 = 1).
RECODE q25_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_2 > q18).
RECODE q25_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_3_98 = 1).
RECODE q25_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_3 > q18).
RECODE q25_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_4_98 = 1).
RECODE q25_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_4 > q18).
RECODE q25_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_5_98 = 1).
RECODE q25_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_5 > q18).
RECODE q25_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q25_6_98 = 1).
RECODE q25_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q25_6 > q18).
RECODE q25_6 (ELSE=SYSMIS).
END IF.
EXECUTE.




***q26*********************

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
compute q26_14_velha = q26_14. 
compute q26_15_velha = q26_15. 
compute q26_16_velha = q26_16. 
compute q26_17_velha = q26_17. 
compute q26_18_velha = q26_18. 
compute q26_19_velha = q26_19. 
compute q26_20_velha = q26_20. 
compute q26_21_velha = q26_21. 
compute q26_22_velha = q26_22. 
compute q26_23_velha = q26_23. 
compute q26_24_velha = q26_24. 
compute q26_25_velha = q26_25. 
execute. 

DO IF (q26_1 > q18).
RECODE q26_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_2 > q18).
RECODE q26_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_3 > q18).
RECODE q26_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_4 > q18).
RECODE q26_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_5 > q18).
RECODE q26_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_6 > q18).
RECODE q26_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_7 > q18).
RECODE q26_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_8 > q18).
RECODE q26_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_9 > q18).
RECODE q26_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_10 > q18).
RECODE q26_10 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_11 > q18).
RECODE q26_11 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_12 > q18).
RECODE q26_12 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_13 > q18).
RECODE q26_13 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_14 > q18).
RECODE q26_14 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_15 > q18).
RECODE q26_15 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_16 > q18).
RECODE q26_16 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_17 > q18).
RECODE q26_17 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_18 > q18).
RECODE q26_18 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_19 > q18).
RECODE q26_19 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_20 > q18).
RECODE q26_20 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_21 > q18).
RECODE q26_21 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_22 > q18).
RECODE q26_22 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_23 > q18).
RECODE q26_23 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_24 > q18).
RECODE q26_24 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q26_25 > q18).
RECODE q26_25 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q27*********************************

compute q27_1_velha = q27_1. 
compute q27_2_velha = q27_2. 
compute q27_3_velha = q27_3. 
compute q27_4_velha = q27_4. 
compute q27_5_velha = q27_5. 
compute q27_6_velha = q27_6. 
execute. 


DO IF (q27_1_98 = 1).
RECODE q27_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q27_1 > q18).
RECODE q27_1 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q27_2_98 = 1).
RECODE q27_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q27_2 > q18).
RECODE q27_2 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q27_3_98 = 1).
RECODE q27_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q27_3 > q18).
RECODE q27_3 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q27_4_98 = 1).
RECODE q27_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q27_4 > q18).
RECODE q27_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q27_5_98 = 1).
RECODE q27_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q27_5 > q18).
RECODE q27_5 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q27_6_98 = 1).
RECODE q27_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q27_6 > q18).
RECODE q27_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q28*********************************

compute q28_1_velha = q28_1. 
compute q28_2_velha = q28_2. 
compute q28_3_velha = q28_3. 
execute. 



DO IF (q28_1_98 = 1).
RECODE q28_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q28_1 > q18).
RECODE q28_1 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q28_2_98 = 1).
RECODE q28_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q28_2 > q18).
RECODE q28_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q28_3_98 = 1).
RECODE q28_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q28_3 > q18).
RECODE q28_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q29********************************

compute q29_1_velha = q29_1. 
compute q29_2_velha = q29_2. 
compute q29_3_velha = q29_3. 
compute q29_4_velha = q29_4. 
compute q29_5_velha = q29_5. 
compute q29_6_velha = q29_6. 
compute q29_7_velha = q29_7. 
execute. 


DO IF (q29_1_98 = 1).
RECODE q29_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_1 > q18).
RECODE q29_1 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q29_2_98 = 1).
RECODE q29_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_2 > q18).
RECODE q29_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_3_98 = 1).
RECODE q29_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_3 > q18).
RECODE q29_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_4_98 = 1).
RECODE q29_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_4 > q18).
RECODE q29_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_5_98 = 1).
RECODE q29_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_5 > q18).
RECODE q29_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_6_98 = 1).
RECODE q29_6 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_6 > q18).
RECODE q29_6 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q29_7_98 = 1).
RECODE q29_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q29_7 > q18).
RECODE q29_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q30*********************************

compute q30_velha = q30. 
execute. 


DO IF (q30_1_98 = 1).
RECODE q30 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q30 > q18).
RECODE q30 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q31*********************************

compute q31_velha = q31. 
execute. 


DO IF (q31_1_98 = 1).
RECODE q31 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q31 > q18).
RECODE q31 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q32*********************************

compute q32_1_velha = q32_1. 
compute q32_2_velha = q32_2. 
compute q32_3_velha = q32_3.
compute q32_4_velha = q32_4. 
compute q32_5_velha = q32_5. 
compute q32_6_velha = q32_6. 
compute q32_99_velha = q32_99. 
compute q32_0_velha = q32_0. 
execute. 



DO IF (q32_0=1).
RECODE q32_1 (ELSE=SYSMIS).
RECODE q32_2 (ELSE=SYSMIS).
RECODE q32_3 (ELSE=SYSMIS).
RECODE q32_4 (ELSE=SYSMIS).
RECODE q32_5 (ELSE=SYSMIS).
RECODE q32_6 (ELSE=SYSMIS).
RECODE q32_99 (ELSE=SYSMIS).
RECODE q32_0 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q34*********************************

compute q34_1_1_velha = q34_1_1. 
compute q34_1_2_velha = q34_1_2. 
compute q34_1_3_velha = q34_1_3.
compute q34_1_4_velha = q34_1_4. 
compute q34_1_99_velha = q34_1_99.
compute q34_1_0_velha = q34_1_0. 
compute q34_2_1_velha = q34_2_1. 
compute q34_2_2_velha = q34_2_2. 
compute q34_2_3_velha = q34_2_3.
compute q34_2_4_velha = q34_2_4. 
compute q34_2_99_velha = q34_2_99.
compute q34_2_0_velha = q34_2_0. 
compute q34_3_1_velha = q34_3_1. 
compute q34_3_2_velha = q34_3_2. 
compute q34_3_3_velha = q34_3_3.
compute q34_3_4_velha = q34_3_4. 
compute q34_3_99_velha = q34_3_99.
compute q34_3_0_velha = q34_3_0. 
execute. 

DO IF (q34_1_0=1).
RECODE q34_1_1 (ELSE=SYSMIS).
RECODE q34_1_2 (ELSE=SYSMIS).
RECODE q34_1_3 (ELSE=SYSMIS).
RECODE q34_1_4 (ELSE=SYSMIS).
RECODE q34_1_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q34_2_0=1).
RECODE q34_2_1 (ELSE=SYSMIS).
RECODE q34_2_2 (ELSE=SYSMIS).
RECODE q34_2_3 (ELSE=SYSMIS).
RECODE q34_2_4 (ELSE=SYSMIS).
RECODE q34_2_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q34_3_0=1).
RECODE q34_3_1 (ELSE=SYSMIS).
RECODE q34_3_2 (ELSE=SYSMIS).
RECODE q34_3_3 (ELSE=SYSMIS).
RECODE q34_3_4 (ELSE=SYSMIS).
RECODE q34_3_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q35*********************************

compute q35_1_velha = q35_1. 
compute q35_2_velha = q35_2. 
compute q35_3_velha = q35_3. 
compute q35_4_velha = q35_4. 
compute q35_5_velha = q35_5. 
compute q35_6_velha = q35_6. 
compute q35_7_velha = q35_7. 
compute q35_8_velha = q35_8. 
compute q35_9_velha = q35_9. 
compute q35_10_velha = q35_10. 
compute q35_11_velha = q35_11. 
compute q35_12_velha = q35_12. 
compute q35_13_velha = q35_13. 
compute q35_14_velha = q35_14. 
compute q35_15_velha = q35_15. 
compute q35_16_velha = q35_16. 
compute q35_17_velha = q35_17. 
compute q35_18_velha = q35_18. 
compute q35_99_velha = q35_99. 
compute q35_0_velha = q35_0. 
execute. 


DO IF (q35_0=1).
RECODE q35_1 (ELSE=SYSMIS).
RECODE q35_2 (ELSE=SYSMIS).
RECODE q35_3 (ELSE=SYSMIS).
RECODE q35_4 (ELSE=SYSMIS).
RECODE q35_6 (ELSE=SYSMIS).
RECODE q35_7 (ELSE=SYSMIS).
RECODE q35_8 (ELSE=SYSMIS).
RECODE q35_9 (ELSE=SYSMIS).
RECODE q35_10 (ELSE=SYSMIS).
RECODE q35_11 (ELSE=SYSMIS).
RECODE q35_12 (ELSE=SYSMIS).
RECODE q35_13 (ELSE=SYSMIS).
RECODE q35_14 (ELSE=SYSMIS).
RECODE q35_15 (ELSE=SYSMIS).
RECODE q35_16 (ELSE=SYSMIS).
RECODE q35_17 (ELSE=SYSMIS).
RECODE q35_18 (ELSE=SYSMIS).
RECODE q35_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q36*********************************

compute q36_1_velha = q36_1. 
compute q36_2_velha = q36_2. 
compute q36_3_velha = q36_3.
compute q36_4_velha = q36_4.
compute q36_98_velha = q36_98. 
execute. 


DO IF (q36_98=1).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q37*********************************

compute q37_1_velha = q37_1. 
compute q37_2_velha = q37_2. 
compute q37_3_velha = q37_3. 
compute q37_4_velha = q37_4. 
compute q37_5_velha = q37_5. 
compute q37_6_velha = q37_6. 
compute q37_99_velha = q37_99. 
compute q37_7_velha = q37_7. 
compute q37_0_velha = q37_0. 
execute. 


DO IF (q37_0 = 1   |   q37_7=1   ).
RECODE q37_1 (ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_3 (ELSE=SYSMIS).
RECODE q37_4 (ELSE=SYSMIS).
RECODE q37_5 (ELSE=SYSMIS).
RECODE q37_6 (ELSE=SYSMIS).
RECODE q37_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q38*********************************

compute q38_1_velha = q38_1. 
compute q38_2_velha = q38_2. 
compute q38_3_velha = q38_3. 
compute q38_99_velha = q38_99. 
compute q38_0_velha = q38_0. 
execute. 


DO IF (q38_0 = 1  ).
RECODE q38_1 (ELSE=SYSMIS).
RECODE q38_2 (ELSE=SYSMIS).
RECODE q38_3 (ELSE=SYSMIS).
RECODE q38_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q41*********************************

compute q41_1_velha = q41_1. 
compute q41_2_velha = q41_2. 
compute q41_3_velha = q41_3. 
compute q41_4_velha = q41_4. 
compute q41_99_velha = q41_99. 
compute q41_98_velha = q41_98. 
compute q41_0_velha = q41_0. 
compute q42_velha = q42. 
execute. 

DO IF (q41_0 = 1   |   q41_98=1   ).
RECODE q41_1 (ELSE=SYSMIS).
RECODE q41_2 (ELSE=SYSMIS).
RECODE q41_3 (ELSE=SYSMIS).
RECODE q41_4 (ELSE=SYSMIS).
RECODE q41_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q41_0 = 1   |   q41_98=1   ).
RECODE q42 (ELSE=SYSMIS).
END IF.
EXECUTE.



********q44*******************************************************************************************************************************************

compute q44_1_0_velha =q44_1_0. 
compute q44_1_1_velha =q44_1_1. 
compute q44_1_2_velha = q44_1_2. 
compute q44_1_3_velha = q44_1_3. 
compute q44_1_4_velha =q44_1_4. 
compute q44_1_5_velha =q44_1_5. 
compute q44_1_6_velha = q44_1_6. 
compute q44_1_7_velha =q44_1_7. 
compute q44_1_8_velha =q44_1_8. 
compute q44_1_9_velha =q44_1_9. 
compute q44_2_0_velha =q44_2_0. 
compute q44_2_1_velha =q44_2_1. 
compute q44_2_2_velha = q44_2_2. 
compute q44_2_3_velha = q44_2_3. 
compute q44_2_4_velha =q44_2_4. 
compute q44_2_5_velha =q44_2_5. 
compute q44_2_6_velha = q44_2_6. 
compute q44_2_7_velha =q44_2_7. 
compute q44_2_8_velha =q44_2_8. 
compute q44_2_9_velha =q44_2_9. 
compute q44_3_0_velha =q44_3_0. 
compute q44_3_1_velha =q44_3_1. 
compute q44_3_2_velha = q44_3_2. 
compute q44_3_3_velha = q44_3_3. 
compute q44_3_4_velha =q44_3_4. 
compute q44_3_5_velha =q44_3_5. 
compute q44_3_6_velha = q44_3_6. 
compute q44_3_7_velha =q44_3_7. 
compute q44_3_8_velha =q44_3_8. 
compute q44_3_9_velha =q44_3_9. 
compute q44_4_0_velha =q44_4_0. 
compute q44_4_1_velha =q44_4_1. 
compute q44_4_2_velha = q44_4_2. 
compute q44_4_3_velha = q44_4_3. 
compute q44_4_4_velha =q44_4_4. 
compute q44_4_5_velha =q44_4_5. 
compute q44_4_6_velha = q44_4_6. 
compute q44_4_7_velha =q44_4_7. 
compute q44_4_8_velha =q44_4_8. 
compute q44_4_9_velha =q44_4_9. 
compute q44_5_0_velha =q44_5_0. 
compute q44_5_1_velha =q44_5_1. 
compute q44_5_2_velha = q44_5_2. 
compute q44_5_3_velha = q44_5_3. 
compute q44_5_4_velha =q44_5_4. 
compute q44_5_5_velha =q44_5_5. 
compute q44_5_6_velha = q44_5_6. 
compute q44_5_7_velha =q44_5_7. 
compute q44_5_8_velha =q44_5_8. 
compute q44_5_9_velha =q44_5_9. 
compute q44_6_0_velha =q44_6_0. 
compute q44_6_1_velha =q44_6_1. 
compute q44_6_2_velha = q44_6_2. 
compute q44_6_3_velha = q44_6_3. 
compute q44_6_4_velha =q44_6_4. 
compute q44_6_5_velha =q44_6_5. 
compute q44_6_6_velha = q44_6_6. 
compute q44_6_7_velha =q44_6_7. 
compute q44_6_8_velha =q44_6_8. 
compute q44_6_9_velha =q44_6_9. 
compute q44_7_0_velha =q44_7_0. 
compute q44_7_1_velha =q44_7_1. 
compute q44_7_2_velha = q44_7_2. 
compute q44_7_3_velha = q44_7_3. 
compute q44_7_4_velha =q44_7_4. 
compute q44_7_5_velha =q44_7_5. 
compute q44_7_6_velha = q44_7_6. 
compute q44_7_7_velha =q44_7_7. 
compute q44_7_8_velha =q44_7_8. 
compute q44_7_9_velha =q44_7_9. 
compute q44_8_0_velha =q44_8_0. 
compute q44_8_1_velha =q44_8_1. 
compute q44_8_2_velha = q44_8_2. 
compute q44_8_3_velha = q44_8_3. 
compute q44_8_4_velha =q44_8_4. 
compute q44_8_5_velha =q44_8_5. 
compute q44_8_6_velha = q44_8_6. 
compute q44_8_7_velha =q44_8_7. 
compute q44_8_8_velha =q44_8_8. 
compute q44_8_9_velha =q44_8_9. 
compute q44_9_0_velha =q44_9_0. 
compute q44_9_1_velha =q44_9_1. 
compute q44_9_2_velha = q44_9_2. 
compute q44_9_3_velha = q44_9_3. 
compute q44_9_4_velha =q44_9_4. 
compute q44_9_5_velha =q44_9_5. 
compute q44_9_6_velha = q44_9_6. 
compute q44_9_7_velha =q44_9_7. 
compute q44_9_8_velha =q44_9_8. 
compute q44_9_9_velha =q44_9_9. 
compute q44_10_0_velha =q44_10_0. 
compute q44_10_1_velha =q44_10_1. 
compute q44_10_2_velha = q44_10_2. 
compute q44_10_3_velha = q44_10_3. 
compute q44_10_4_velha =q44_10_4. 
compute q44_10_5_velha =q44_10_5. 
compute q44_10_6_velha = q44_10_6. 
compute q44_10_7_velha =q44_10_7. 
compute q44_10_8_velha =q44_10_8. 
compute q44_10_9_velha =q44_10_9. 
compute q44_11_0_velha =q44_11_0. 
compute q44_11_1_velha =q44_11_1. 
compute q44_11_2_velha = q44_11_2. 
compute q44_11_3_velha = q44_11_3. 
compute q44_11_4_velha =q44_11_4. 
compute q44_11_5_velha =q44_11_5. 
compute q44_11_6_velha = q44_11_6. 
compute q44_11_7_velha =q44_11_7. 
compute q44_11_8_velha =q44_11_8. 
compute q44_11_9_velha =q44_11_9. 
compute q44_12_0_velha =q44_12_0. 
compute q44_12_1_velha =q44_12_1. 
compute q44_12_2_velha = q44_12_2. 
compute q44_12_3_velha = q44_12_3. 
compute q44_12_4_velha =q44_12_4. 
compute q44_12_5_velha =q44_12_5. 
compute q44_12_6_velha = q44_12_6. 
compute q44_12_7_velha =q44_12_7. 
compute q44_12_8_velha =q44_12_8. 
compute q44_12_9_velha =q44_12_9. 
execute. 





DO IF (q44_1_0=1 | q44_1_9=1).
RECODE q44_1_1 (ELSE=SYSMIS).
RECODE q44_1_2 (ELSE=SYSMIS).
RECODE q44_1_3 (ELSE=SYSMIS).
RECODE q44_1_4 (ELSE=SYSMIS).
RECODE q44_1_5 (ELSE=SYSMIS).
RECODE q44_1_6(ELSE=SYSMIS).
RECODE q44_1_7 (ELSE=SYSMIS).
RECODE q44_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q44_2_0=1 | q44_2_9=1).
RECODE q44_2_1 (ELSE=SYSMIS).
RECODE q44_2_2 (ELSE=SYSMIS).
RECODE q44_2_3 (ELSE=SYSMIS).
RECODE q44_2_4 (ELSE=SYSMIS).
RECODE q44_2_5 (ELSE=SYSMIS).
RECODE q44_2_6(ELSE=SYSMIS).
RECODE q44_2_7 (ELSE=SYSMIS).
RECODE q44_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q44_3_0=1 | q44_3_9=1).
RECODE q44_3_1 (ELSE=SYSMIS).
RECODE q44_3_2 (ELSE=SYSMIS).
RECODE q44_3_3 (ELSE=SYSMIS).
RECODE q44_3_4 (ELSE=SYSMIS).
RECODE q44_3_5 (ELSE=SYSMIS).
RECODE q44_3_6(ELSE=SYSMIS).
RECODE q44_3_7 (ELSE=SYSMIS).
RECODE q44_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q44_4_0=1 | q44_4_9=1).
RECODE q44_4_1 (ELSE=SYSMIS).
RECODE q44_4_2 (ELSE=SYSMIS).
RECODE q44_4_3 (ELSE=SYSMIS).
RECODE q44_4_4 (ELSE=SYSMIS).
RECODE q44_4_5 (ELSE=SYSMIS).
RECODE q44_4_6(ELSE=SYSMIS).
RECODE q44_4_7 (ELSE=SYSMIS).
RECODE q44_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q44_5_0=1 | q44_5_9=1).
RECODE q44_5_1 (ELSE=SYSMIS).
RECODE q44_5_2 (ELSE=SYSMIS).
RECODE q44_5_3 (ELSE=SYSMIS).
RECODE q44_5_4 (ELSE=SYSMIS).
RECODE q44_5_5 (ELSE=SYSMIS).
RECODE q44_5_6(ELSE=SYSMIS).
RECODE q44_5_7 (ELSE=SYSMIS).
RECODE q44_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q44_6_0=1 | q44_6_9=1).
RECODE q44_6_1 (ELSE=SYSMIS).
RECODE q44_6_2 (ELSE=SYSMIS).
RECODE q44_6_3 (ELSE=SYSMIS).
RECODE q44_6_4 (ELSE=SYSMIS).
RECODE q44_6_5 (ELSE=SYSMIS).
RECODE q44_6_6(ELSE=SYSMIS).
RECODE q44_6_7 (ELSE=SYSMIS).
RECODE q44_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q44_7_0=1 | q44_7_9=1).
RECODE q44_7_1 (ELSE=SYSMIS).
RECODE q44_7_2 (ELSE=SYSMIS).
RECODE q44_7_3 (ELSE=SYSMIS).
RECODE q44_7_4 (ELSE=SYSMIS).
RECODE q44_7_5 (ELSE=SYSMIS).
RECODE q44_7_6(ELSE=SYSMIS).
RECODE q44_7_7 (ELSE=SYSMIS).
RECODE q44_7_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q44_8_0=1 | q44_8_9=1).
RECODE q44_8_1 (ELSE=SYSMIS).
RECODE q44_8_2 (ELSE=SYSMIS).
RECODE q44_8_3 (ELSE=SYSMIS).
RECODE q44_8_4 (ELSE=SYSMIS).
RECODE q44_8_5 (ELSE=SYSMIS).
RECODE q44_8_6(ELSE=SYSMIS).
RECODE q44_8_7 (ELSE=SYSMIS).
RECODE q44_8_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q44_9_0=1 | q44_9_9=1).
RECODE q44_9_1 (ELSE=SYSMIS).
RECODE q44_9_2 (ELSE=SYSMIS).
RECODE q44_9_3 (ELSE=SYSMIS).
RECODE q44_9_4 (ELSE=SYSMIS).
RECODE q44_9_5 (ELSE=SYSMIS).
RECODE q44_9_6(ELSE=SYSMIS).
RECODE q44_9_7 (ELSE=SYSMIS).
RECODE q44_9_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q44_10_0=1 | q44_10_9=1).
RECODE q44_10_1 (ELSE=SYSMIS).
RECODE q44_10_2 (ELSE=SYSMIS).
RECODE q44_10_3 (ELSE=SYSMIS).
RECODE q44_10_4 (ELSE=SYSMIS).
RECODE q44_10_5 (ELSE=SYSMIS).
RECODE q44_10_6(ELSE=SYSMIS).
RECODE q44_10_7 (ELSE=SYSMIS).
RECODE q44_10_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q44_11_0=1 | q44_11_9=1).
RECODE q44_11_1 (ELSE=SYSMIS).
RECODE q44_11_2 (ELSE=SYSMIS).
RECODE q44_11_3 (ELSE=SYSMIS).
RECODE q44_11_4 (ELSE=SYSMIS).
RECODE q44_11_5 (ELSE=SYSMIS).
RECODE q44_11_6(ELSE=SYSMIS).
RECODE q44_11_7 (ELSE=SYSMIS).
RECODE q44_11_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q44_12_0=1 | q44_12_9=1).
RECODE q44_12_1 (ELSE=SYSMIS).
RECODE q44_12_2 (ELSE=SYSMIS).
RECODE q44_12_3 (ELSE=SYSMIS).
RECODE q44_12_4 (ELSE=SYSMIS).
RECODE q44_12_5 (ELSE=SYSMIS).
RECODE q44_12_6(ELSE=SYSMIS).
RECODE q44_12_7 (ELSE=SYSMIS).
RECODE q44_12_8 (ELSE=SYSMIS).
END IF.
EXECUTE.








 VARIABLE LABELS
q3_1_velha'q3_1_1: Sim, com o Estado (governo estadual)_3. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
q3_2_velha'q3_2_2: Sim, com o município no qual esta unidade se localiza (com a prefeitura na qual a sede da unidade se localiza)_3. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
q3_3_velha'q3_3_3: Sim, com outros municípios_3. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
q3_0_velha'q3_0_0: Não_3. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
q3_98_velha'q3_98_98: Não sabe informar_3. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
q4_velha'q4_4. Este serviço recebeu, nos últimos 12 meses, recurso do Fundo dos Direitos da Criança e do Adolescente – FIA (oriundo do CMDCA e/ou CEDCA)'
q11_1_velha'q11_1_1: Sim, até os 21 anos_11. A Normativa que regulamenta este serviço permite a permanência dos jovens na família acolhedora após completarem 18 anos?'
q11_2_velha'q11_2_2: Sim, sem delimitação de prazo para jovens com deficiência_11. A Normativa que regulamenta este serviço permite a permanência dos jovens na família acolhedora após completarem 18 anos?'
q11_99_velha'q11_99_99: Sim, por outro prazo_11. A Normativa que regulamenta este serviço permite a permanência dos jovens na família acolhedora após completarem 18 anos?'
q11_0_velha'q11_0_0: Não_11. A Normativa que regulamenta este serviço permite a permanência dos jovens na família acolhedora após completarem 18 anos?'
q11_98_velha'q11_98_98: Não sabe informar_11. A Normativa que regulamenta este serviço permite a permanência dos jovens na família acolhedora após completarem 18 anos?'
q15_1_velha'q15_1_1: Sim, são disponibilizados itens para a manutenção da criança/adolescente acolhida (p.ex: fraldas, vestuário, alimentação, medicamentos, material escolar, dentre outros)'
q15_2_velha'q15_2_2: Sim, são disponibilizados itens de mobiliário e transporte para uso da criança/adolescente acolhida (p.ex: berço, carrinho de bebê, etc.)'
q15_3_velha'q15_3_3: Sim, há isenção de impostos ou taxas públicas (p.ex: IPTU, etc)'
q15_99_velha'q15_99_99: Sim, outros'
q15_0_velha'q15_0_0: Não'
q20_1_1_velha'q20_1_1_20.1.1. Masculino - 0 a 2'
q20_1_2_velha'q20_1_2_20.1.2. Masculino - 3 a 5'
q20_1_3_velha'q20_1_3_20.1.3. Masculino - 6 a 11'
q20_1_4_velha'q20_1_4_20.1.4. Masculino - 12 a 13'
q20_1_5_velha'q20_1_5_20.1.5. Masculino - 14 a 15'
q20_1_6_velha'q20_1_6_20.1.6. Masculino - 16 a 17'
q20_1_8_velha'q20_1_8_20.1.8. Masculino - acima de 18'
q20_1_9_velha'q20_1_9_20.1.9. Masculino - Total'
q20_2_1_velha'q20_2_1_20.2.1. Feminino - 0 a 2'
q20_2_2_velha'q20_2_2_20.2.2. Feminino - 3 a 5'
q20_2_3_velha'q20_2_3_20.2.3. Feminino - 6 a 11'
q20_2_4_velha'q20_2_4_20.2.4. Feminino - 12 a 13'
q20_2_5_velha'q20_2_5_20.2.5. Feminino - 14 a 15'
q20_2_6_velha'q20_2_6_20.2.6. Feminino - 16 a 17'
q20_2_8_velha'q20_2_8_20.2.8. Feminino - acima de 18'
q20_2_9_velha'q20_2_9_20.2.9. Feminino - Total'
q20_total'q20_total'
q21_1_velha'q21_1_21.1. Vieram de outro município do estado'
q21_2_velha'q21_2_21.2. Vieram de outros estados'
q21_3_velha'q21_3_21.3. Vieram de outros países (regufiada(o)/imigrante)'
q23_1_velha'q23_1_23.1. Qtde de Crianças/Adolescentes – menos de 1 mês'
q23_2_velha'q23_2_23.2. Qtd de Crianças/Adolescentes – De 1 a 3 meses'
q23_3_velha'q23_3_23.3. Qtd de Crianças/Adolescentes – De 4 a 6 meses'
q23_4_velha'q23_4_23.4. Qtd de Crianças/Adolescentes – De 7 a 12 meses'
q23_5_velha'q23_5_23.5. Qtd de Crianças/Adolescentes – De 13 a 18 meses'
q23_6_velha'q23_6_23.6. Qtd de Crianças/Adolescentes – De 19 a 24 meses'
q23_7_velha'q23_7_23.7. Qtd de Crianças/Adolescentes – De 25 a 48 meses'
q23_8_velha'q23_8_23.8. Qtd de Crianças/Adolescentes – 49 a 72 meses'
q23_9_velha'q23_9_23.9. Qtd de Crianças/Adolescentes – mais de 72 meses (mais de 6 anos)'
q23_10_velha'q23_10_23.10. Qtd de Crianças/Adolescentes – Total de Pessoas Acolhidas'
q24_1_velha'q24_1_24.1. Deficiência (física/ sensorial/ intelectual)'
q24_2_velha'q24_2_24.2. Transtorno mental / Sofrimento psíquico'
q24_3_velha'q24_3_24.3. Com necessidade de cuidados especializados devido a condições de saúde'
q24_4_velha'q24_4_24.4. Adolescentes em cumprimento de Medidas Socioeducativas em meio aberto ou Egressos do sistema socioeducativo'
q24_5_velha'q24_5_24.5. Trajetória de rua'
q24_6_velha'q24_6_24.6. Indígenas'
q24_7_velha'q24_7_24.7. Outros Povos e comunidades tradicionais (quilombolas, ciganos, ribeirinhos, extrativistas etc.)'
q24_8_velha'q24_8_24.8. Dependência de álcool ou outras drogas'
q24_9_velha'q24_9_24.9. Gestantes'
q25_1_velha'q25_1_25.1. Preta'
q25_2_velha'q25_2_25.2. Parda'
q25_3_velha'q25_3_25.3. Branca'
q25_4_velha'q25_4_25.4. Amarela'
q25_5_velha'q25_5_25.5. Indígena'
q25_6_velha'q25_6_25.6. Total'
q26_1_velha'q26_1_26.1. Entrega voluntária para adoção'
q26_2_velha'q26_2_26.2. Orfandade'
q26_3_velha'q26_3_26.3. Abandono'
q26_4_velha'q26_4_26.4. Pais/responsáveis usuários abusivos de álcool ou drogas ilícitas'
q26_5_velha'q26_5_26.5. Pais/responsáveis com deficiência'
q26_6_velha'q26_6_26.6. Pais/responsáveis com transtorno mental/sofrimento psíquico'
q26_7_velha'q26_7_26.7. Ausência dos pais/ responsáveis por doença'
q26_8_velha'q26_8_26.8. Ausência dos pais/ responsáveis por prisão ou MSE de Internação'
q26_9_velha'q26_9_26.9. Violência doméstica - física'
q26_10_velha'q26_10_26.10. Violência doméstica - psicológica'
q26_11_velha'q26_11_26.11. Abuso sexual intrafamiliar'
q26_12_velha'q26_12_26.12. Submetido à Exploração Sexual (prostituição, pornografia)'
q26_13_velha'q26_13_26.13. Conflito familiar'
q26_14_velha'q26_14_26.14. Submetido à exploração do trabalho ou mendicância'
q26_15_velha'q26_15_26.15. Pais ou responsáveis sem condições para cuidar de criança/adolescente com condições de saúde específicas'
q26_16_velha'q26_16_26.16. Pais ou responsáveis sem condições para cuidar de criança/adolescente com dependência química'
q26_17_velha'q26_17_26.17. Criança ou adolescente sob ameaça de morte'
q26_18_velha'q26_18_26.18. Criança/Adolescente em situação de rua (desacompanhada)'
q26_19_velha'q26_19_26.19. Negligência na família'
q26_20_velha'q26_20_26.20. Família em situação de rua'
q26_21_velha'q26_21_26.21. Família com moradia insalubre/em área de risco'
q26_22_velha'q26_22_26.22. Carência de recursos materiais da família/responsável'
q26_23_velha'q26_23_26.23. Outros'
q26_24_velha'q26_24_26.24. Não sabe informar'
q26_25_velha'q26_25_26.25. TOTAL'
q27_1_velha'q27_1_27.1. Retornaram às suas famílias de naturais/família de origem (pai e/ou mãe)'
q27_2_velha'q27_2_27.2. Foram encaminhados às suas famílias extensas (avós, tias(os) etc.)'
q27_3_velha'q27_3_27.3. Foram encaminhadas a famílias adotivas'
q27_4_velha'q27_4_27.4. Vieram transferidos de outras unidades de acolhimento'
q27_5_velha'q27_5_27.5. Deixaram o serviço encaminhados para outras unidades de acolhimento'
q27_6_velha'q27_6_27.6. Foram desligados por completaram 18 anos'
q28_1_velha'q28_1_28.1. Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias de naturais/família de origem (pai e/ou mãe)'
q28_2_velha'q28_2_28.2. Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias extensas (avós, tias(os) etc.)'
q28_3_velha'q28_3_28.3. Foram acolhidas novamente APÓS terem sido encaminhadas a famílias adotivas'
q29_1_velha'q29_1_29.1. São filhas(os) de pais privados de liberdade (encarcerados)'
q29_2_velha'q29_2_29.2. São mães adolescentes acolhidas junto com seu(s) filho(s)'
q29_3_velha'q29_3_29.3. Estão aptas a adoção'
q29_4_velha'q29_4_29.4. Estão ameaçadas de morte'
q29_5_velha'q29_5_29.5. Participam de Programa de Apadrinhamento Afetivo'
q29_6_velha'q29_6_29.6. Não recebem visitas/contato de seus familiares por impedimento judicial'
q29_7_velha'q29_7_29.7. Não recebem visitas/contato de seus familiares, mesmo não havendo impedimento judicial'
q30_velha'q30_30. Quantas crianças e adolescentes acolhidos são oriundas de famílias beneficiárias do PBF?'
q31_velha'q31_31. Quantas crianças/adolescentes acolhidos são oriundas de famílias com renda inferior a um salário mínimo?'
q32_1_velha'q32_1_1: Outdoors e busdoors_32. Indique quais das atividades abaixo são promovidas para a divulgação do Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q32_2_velha'q32_2_2: Cartazes e/ou distribuição de material de divulgação em locais de grande circulação_32.divulgação do Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q32_3_velha'q32_3_3: Campanhas e/ou entrevistas em rádios, TV e mídia impressa_32. Indique quais das atividades abaixo são promovidas para a divulgação do Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q32_4_velha'q32_4_4: Realização de eventos, encontros, palestras, seminários sobre o tema_32.atividades promovidas para a divulgação do Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q32_5_velha'q32_5_5: Divulgação por meio de redes sociais_32. Indique quais das atividades abaixo são promovidas para a divulgação do Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q32_6_velha'q32_6_6: Articulação com lideranças comunitárias, associações, movimentos religiosos, dentre outros, para busca ativa de famílias acolhedoras_32.Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q32_99_velha'q32_99: Outros_32. Indique quais das atividades abaixo são promovidas para a divulgação do Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q32_0_velha'q32_0_0: Não realiza nenhuma das atividades acima_32. Indique quais das atividades abaixo são promovidas para a divulgação do Serviço de Acolhimento em Famílias Acolhedoras e captação de novas famílias acolhedoras:'
q34_1_1_velha'q34_1_1_1: Reunião informativa ou Palestra de Apresentação do Serviço_34.1. SELEÇÃO DAS FAMÍLIAS ACOLHEDORAS'
q34_1_2_velha'q34_1_2_2: Análise documental_34.1. SELEÇÃO DAS FAMÍLIAS ACOLHEDORAS'
q34_1_3_velha'q34_1_3_3: Entrevistas_34.1. SELEÇÃO DAS FAMÍLIAS ACOLHEDORAS'
q34_1_4_velha'q34_1_4_4: visitas domiciliares_34.1. SELEÇÃO DAS FAMÍLIAS ACOLHEDORAS'
q34_1_99_velha'q34_1_99_99: Outro_34.1. SELEÇÃO DAS FAMÍLIAS ACOLHEDORAS'
q34_1_0_velha'q34_1_0_0: Não realiza nenhuma atividade de seleção_34.1. SELEÇÃO DAS FAMÍLIAS ACOLHEDORAS'
q34_2_1_velha'q34_2_1_1: Encontros de capacitação inicial, em grupo_34.2. FORMAÇÃO INICIAL E CONTINUADA DAS FAMÍLIAS ACOLHEDORAS'
q34_2_2_velha'q34_2_2_2: Encontros de capacitação inicial com cada família candidata_34.2. FORMAÇÃO INICIAL E CONTINUADA DAS FAMÍLIAS ACOLHEDORAS'
q34_2_3_velha'q34_2_3_3: Palestras temáticas_34.2. FORMAÇÃO INICIAL E CONTINUADA DAS FAMÍLIAS ACOLHEDORAS'
q34_2_4_velha'q34_2_4_4: Rodas de Conversa/ Reuniões em grupo periódicas com as famílias acolhedoras_34.2. FORMAÇÃO INICIAL E CONTINUADA DAS FAMÍLIAS ACOLHEDORAS'
q34_2_99_velha'q34_2_99_99: Outro_34.2. FORMAÇÃO INICIAL E CONTINUADA DAS FAMÍLIAS ACOLHEDORAS'
q34_2_0_velha'q34_2_0_0: Não realiza nenhuma atividade de formação inicial e continuada_34.2. FORMAÇÃO INICIAL E CONTINUADA DAS FAMÍLIAS ACOLHEDORAS'
q34_3_1_velha'q34_3_1_1: Aproximação supervisionada entre a criança/adolescente e família acolhedora_34.3. ACOMPANHAMENTO DAS FAMÍLIAS ACOLHEDORAS'
q34_3_2_velha'q34_3_2_2: Visitas domiciliares periódicas às famílias acolhedoras_34.3. ACOMPANHAMENTO DAS FAMÍLIAS ACOLHEDORAS'
q34_3_3_velha'q34_3_3_3: Atendimento psicossocial individualizado da família acolhedora_34.3. ACOMPANHAMENTO DAS FAMÍLIAS ACOLHEDORAS'
q34_3_4_velha'q34_3_4_4: Contato por whatsapp / telefone_34.3. ACOMPANHAMENTO DAS FAMÍLIAS ACOLHEDORAS'
q34_3_99_velha'q34_3_99_99: Outro_34.3. ACOMPANHAMENTO DAS FAMÍLIAS ACOLHEDORAS'
q34_3_0_velha'q34_3_0_0: Não realiza nenhuma atividade de acompanhamento_34.3. ACOMPANHAMENTO DAS FAMÍLIAS ACOLHEDORAS'
q35_1_velha'q35_1_1: Atendimento psicossocial individualizado da criança/adolescente_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_2_velha'q35_2: Espaço de escuta qualificada permanente com a criança/adolescente_35. atividades promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_3_velha'q35_3_3: Acompanhamento escolar_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_4_velha'q35_4_4: Acompanhamento na saúde_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_5_velha'q35_5_5: Encaminhamento para emissão de documentos_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_6_velha'q35_6_6: Apoio e encaminhamento de adolescentes acolhidos para qualificação profissional e mercado de trabalho_35.atividades promovidas sistematicamente pelo serviço no acompanhamento'
q35_7_velha'q35_7_7: Identificação da família natural, família extensa ou ampliada_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_8_velha'q35_8_8: Viabilização de encontros com a família de origem_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_9_velha'q35_9_9: Construção de um plano de acompanhamento da família de origem_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_10_velha'q35_10_10: Atendimento psicossocial individualizado da família de origem_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_11_velha'q35_11_11: Reuniões em grupo com as famílias de origem_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_12_velha'q35_12_12: Entrevistas com a família de origem_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_13_velha'q35_13_13: Visitas domiciliares à família de origem_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_14_velha'q35_14_14: Elaboração de Genograma, Ecomapa ou outras ferramentas similares_35. atividadespromovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_15_velha'q35_15_15: Envio de relatório trimestral para o Judiciário_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_16_velha'q35_16_16: Estudo de caso pela equipe do serviço_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_17_velha'q35_17_17: Encaminhamento para a rede (socioassistencial ou setorial)_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_18_velha'q35_18_18: Discussão de casos com outros profissionais da rede_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_99_velha'q35_99_99: Outro_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q35_0_velha'q35_0_0: Não realiza nenhuma das atividades acima_35. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço no acompanhamento das crianças/adolescentes acolhidos e das famílias de origem:'
q36_1_velha'q36_1_1: A equipe do judiciário informa com antecedência as decisões quanto ao encaminhamento para adoção/reintegração e possibilita uma transição gradual.'
q36_2_velha'q36_2_2: A equipe do judiciário não costuma informar com antecedência as decisões quanto ao encaminhamento para adoção / reintegração, e não favorece um processo gradual de aproximação.'
q36_3_velha'q36_3_3: Na maior parte das vezes, o tempo de transição/preparação para a saída da família acolhedora é SUFICIENTE, possibilitando um processo gradual de aproximação, favorecendo momentos adequados de despedida.'
q36_4_velha'q36_4_4: Na maior parte das vezes, o tempo de transição/preparação para a saída da família acolhedora é INSUFICIENTE, e as saídas são ABRUPTAS, sem a realização de momentos adequados de despedida.'
q36_98_velha'q36_98_98: Não sabe informar_36. Em relação à saída da criança/adolescente da família acolhedora para retorno à família de origem ou encaminhamento a família adotiva'
q37_1_velha'q37_1_1: Apoio ao adolescente acolhido e/ou jovem egresso para a qualificação profissional e trabalho remunerado_37. Informe  ações  para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_2_velha'q37_2_2: Encaminhamento para república_37. Informe quais ações são realizadas pelo serviço e pelas famílias acolhedoras para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_3_velha'q37_3_3: Encaminhamento para inclusão em programas de transferência de renda e/ou benefícios assistenciais_37. Informe  ações  para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_4_velha'q37_4_4: Encaminhamento para inclusão em programas de habitação_37. Informe quais ações são realizadas pelo serviço e pelas famílias acolhedoras para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_5_velha'q37_5_5: Atividades que desenvolvam a autonomia quanto ao uso e gestão do dinheiro_37. ações realizadas pelo serviço e pelas famílias acolhedoras para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_6_velha'q37_6_6: Atividades que desenvolvam a autonomia, tais como: cuidado com a residência, utilização de serviços públicos_37. Informe  ações para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_99_velha'q37_99_99: Outros_37. Informe quais ações são realizadas pelo serviço e pelas famílias acolhedoras para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_7_velha'q37_7_7: Não atende adolescentes até a maioridade_37. Informe quais ações são realizadas pelo serviço e pelas famílias acolhedoras para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q37_0_velha'q37_0_0: Não realiza ações de preparo para o desligamento_37. Informe quais ações são realizadas pelo serviço e pelas famílias acolhedoras para preparar os adolescentes acolhidos para o desligamento por maioridade?'
q38_1_velha'q38_1_1: Político-Pedagógico (PPP)_38. O serviço possui os seguintes instrumentais?'
q38_2_velha'q38_2_2: Prontuários de atendimento individualizados das(os) acolhidas(os)_38. O serviço possui os seguintes instrumentais?'
q38_3_velha'q38_3_3: Plano Individual de Atendimento (PIA) de cada pessoa acolhida_38. O serviço possui os seguintes instrumentais?'
q38_99_velha'q38_99_99: Outro_38. O serviço possui os seguintes instrumentais?'
q38_0_velha'q38_0_0: Não possui nenhum dos instrumentais acima mencionados_38. O serviço possui os seguintes instrumentais?'
q41_1_velha'q41_1_1: A própria unidade/serviço de acolhimento_41. Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento do Serviço?'
q41_2_velha'q41_2_2: O CREAS_41. Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento do Serviço?'
q41_3_velha'q41_3_3: O CRAS_41. Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento do Serviço?'
q41_4_velha'q41_4_4: Unidades do Sistema de Justiça (Varas, Ministério Público, Defensoria)_41. Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento do Serviço?'
q41_99_velha'q41_99_99: Outro_41. Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento do Serviço?'
q41_98_velha'q41_98_98: Não sabe informar _41. Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento do Serviço?'
q41_0_velha'q41_0_0: Não é realizado acompanhamento _41. Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento do Serviço?'
q42_velha'q42_42. Por quanto tempo, em média, a criança/adolescente é acompanhada após seu desligamento?'
q44_1_0_velha'q44_1_0_0: Não tem nenhuma articulação_44.1. Conselho Tutelar'
q44_1_1_velha'q44_1_1_1: Possui dados da localização (endereço, telefone etc.)_44.1. Conselho Tutelar'
q44_1_2_velha'q44_1_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.1. Conselho Tutelar'
q44_1_3_velha'q44_1_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.1. Conselho Tutelar'
q44_1_4_velha'q44_1_4_4: Acompanha os encaminhamentos_44.1. Conselho Tutelar'
q44_1_5_velha'q44_1_5_5: Realiza reuniões periódicas_44.1. Conselho Tutelar'
q44_1_6_velha'q44_1_6_6: Troca Informações_44.1. Conselho Tutelar'
q44_1_7_velha'q44_1_7_7: Realiza estudos de caso em conjunto_44.1. Conselho Tutelar'
q44_1_8_velha'q44_1_8_8: Desenvolve atividades em parceria_44.1. Conselho Tutelar'
q44_1_9_velha'q44_1_9_9: Serviço ou instituição não existente no Município_44.1. Conselho Tutelar'
q44_2_0_velha'q44_2_0_0: Não tem nenhuma articulação_44.2. CRAS'
q44_2_1_velha'q44_2_1_1: Possui dados da localização (endereço, telefone etc.)_44.2. CRAS'
q44_2_2_velha'q44_2_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.2. CRAS'
q44_2_3_velha'q44_2_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.2. CRAS'	
q44_2_4_velha'q44_2_4_4: Acompanha os encaminhamentos_44.2. CRAS'
q44_2_5_velha'q44_2_5_5: Realiza reuniões periódicas_44.2. CRAS'
q44_2_6_velha'q44_2_6_6: Troca Informações_44.2. CRAS'
q44_2_7_velha'q44_2_7_7: Realiza estudos de caso em conjunto_44.2. CRAS'
q44_2_8_velha'q44_2_8_8: Desenvolve atividades em parceria_44.2. CRAS'
q44_2_9_velha'q44_2_9_9: Serviço ou instituição não existente no Município_44.2. CRAS'
q44_3_0_velha'q44_3_0_0: Não tem nenhuma articulação_44.3. CREAS'
q44_3_1_velha'q44_3_1_1: Possui dados da localização (endereço, telefone etc.)_44.3. CREAS'
q44_3_2_velha'q44_3_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.3. CREAS'
q44_3_3_velha'q44_3_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.3. CREAS'
q44_3_4_velha'q44_3_4_4: Acompanha os encaminhamentos_44.3. CREAS'
q44_3_5_velha'q44_3_5_5: Realiza reuniões periódicas_44.3. CREAS'
q44_3_6_velha'q44_3_6_6: Troca Informações_44.3. CREAS'
q44_3_7_velha'q44_3_7_7: Realiza estudos de caso em conjunto_44.3. CREAS'
q44_3_8_velha'q44_3_8_8: Desenvolve atividades em parceria_44.3. CREAS'
q44_3_9_velha'q44_3_9_9: Serviço ou instituição não existente no Município_44.3. CREAS'
q44_4_0_velha'q44_4_0_0: Não tem nenhuma articulação_44.4. Outros Serviços de Acolhimento'
q44_4_1_velha'q44_4_1_1: Possui dados da localização (endereço, telefone etc.)_44.4. Outros Serviços de Acolhimento'
q44_4_2_velha'q44_4_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.4. Outros Serviços de Acolhimento'
q44_4_3_velha'q44_4_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.4. Outros Serviços de Acolhimento'
q44_4_4_velha'q44_4_4_4: Acompanha os encaminhamentos_44.4. Outros Serviços de Acolhimento'
q44_4_5_velha'q44_4_5_5: Realiza reuniões periódicas_44.4. Outros Serviços de Acolhimento'
q44_4_6_velha'q44_4_6_6: Troca Informações_44.4. Outros Serviços de Acolhimento'
q44_4_7_velha'q44_4_7_7: Realiza estudos de caso em conjunto_44.4. Outros Serviços de Acolhimento'
q44_4_8_velha'q44_4_8_8: Desenvolve atividades em parceria_44.4. Outros Serviços de Acolhimento'
q44_4_9_velha'q44_4_9_9: Serviço ou instituição não existente no Município_44.4. Outros Serviços de Acolhimento'
q44_5_0_velha'q44_5_0_0: Não tem nenhuma articulação_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_1_velha'q44_5_1_1: Possui dados da localização (endereço, telefone etc.)_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_2_velha'q44_5_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_3_velha'q44_5_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_4_velha'q44_5_4_4: Acompanha os encaminhamentos_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_5_velha'q44_5_5_5: Realiza reuniões periódicas_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_6_velha'q44_5_6_6: Troca Informações_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_7_velha'q44_5_7_7: Realiza estudos de caso em conjunto_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_8_velha'q44_5_8_8: Desenvolve atividades em parceria_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_5_9_velha'q44_5_9_9: Serviço ou instituição não existente no Município_44.5. Unidades Educacionais (creches/escolas/universidades)'
q44_6_0_velha'q44_6_0_0: Não tem nenhuma articulação_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_1_velha'q44_6_1_1: Possui dados da localização (endereço, telefone etc.)_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_2_velha'q44_6_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_3_velha'q44_6_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_4_velha'q44_6_4_4: Acompanha os encaminhamentos_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_5_velha'q44_6_5_5: Realiza reuniões periódicas_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_6_velha'q44_6_6_6: Troca Informações_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_7_velha'q44_6_7_7: Realiza estudos de caso em conjunto_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_8_velha'q44_6_8_8: Desenvolve atividades em parceria_44.6. CAPS / CAPS-i / CAPS-ad'
q44_6_9_velha'q44_6_9_9: Serviço ou instituição não existente no Município_44.6. CAPS / CAPS-i / CAPS-ad'
q44_7_0_velha'q44_7_0_0: Não tem nenhuma articulação_44.7. UBS e outros Serviços de Saúde'
q44_7_1_velha'q44_7_1_1: Possui dados da localização (endereço, telefone etc.)_44.7. UBS e outros Serviços de Saúde'
q44_7_2_velha'q44_7_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.7. UBS e outros Serviços de Saúde'
q44_7_3_velha'q44_7_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.7. UBS e outros Serviços de Saúde'
q44_7_4_velha'q44_7_4_4: Acompanha os encaminhamentos_44.7. UBS e outros Serviços de Saúde'
q44_7_5_velha'q44_7_5_5: Realiza reuniões periódicas_44.7. UBS e outros Serviços de Saúde'
q44_7_6_velha'q44_7_6_6: Troca Informações_44.7. UBS e outros Serviços de Saúde'
q44_7_7_velha'q44_7_7_7: Realiza estudos de caso em conjunto_44.7. UBS e outros Serviços de Saúde'
q44_7_8_velha'q44_7_8_8: Desenvolve atividades em parceria_44.7. UBS e outros Serviços de Saúde'
q44_7_9_velha'q44_7_9_9: Serviço ou instituição não existente no Município_44.7. UBS e outros Serviços de Saúde'
q44_8_0_velha'q44_8_0_0: Não tem nenhuma articulação_44.8. Judiciário'
q44_8_1_velha'q44_8_1_1: Possui dados da localização (endereço, telefone etc.)_44.8. Judiciário'
q44_8_2_velha'q44_8_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.8. Judiciário'
q44_8_3_velha'q44_8_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.8. Judiciário'
q44_8_4_velha'q44_8_4_4: Acompanha os encaminhamentos_44.8. Judiciário'
q44_8_5_velha'q44_8_5_5: Realiza reuniões periódicas_44.8. Judiciário'
q44_8_6_velha'q44_8_6_6: Troca Informações_44.8. Judiciário'
q44_8_7_velha'q44_8_7_7: Realiza estudos de caso em conjunto_44.8. Judiciário'
q44_8_8_velha'q44_8_8_8: Desenvolve atividades em parceria_44.8. Judiciário'
q44_8_9_velha'q44_8_9_9: Serviço ou instituição não existente no Município_44.8. Judiciário'
q44_9_0_velha'q44_9_0_0: Não tem nenhuma articulação_44.9. Ministério Público'
q44_9_1_velha'q44_9_1_1: Possui dados da localização (endereço, telefone etc.)_44.9. Ministério Público'
q44_9_2_velha'q44_9_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.9. Ministério Público'
q44_9_3_velha'q44_9_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.9. Ministério Público'
q44_9_4_velha'q44_9_4_4: Acompanha os encaminhamentos_44.9. Ministério Público'
q44_9_5_velha'q44_9_5_5: Realiza reuniões periódicas_44.9. Ministério Público'
q44_9_6_velha'q44_9_6_6: Troca Informações_44.9. Ministério Público'
q44_9_7_velha'q44_9_7_7: Realiza estudos de caso em conjunto_44.9. Ministério Público'
q44_9_8_velha'q44_9_8_8: Desenvolve atividades em parceria_44.9. Ministério Público'
q44_9_9_velha'q44_9_9_9: Serviço ou instituição não existente no Município_44.9. Ministério Público'
q44_10_0_velha'q44_10_0_0: Não tem nenhuma articulação_44.10. Defensoria Pública'
q44_10_1_velha'q44_10_1_1: Possui dados da localização (endereço, telefone etc.)_44.10. Defensoria Pública'
q44_10_2_velha'q44_10_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.10. Defensoria Pública'
q44_10_3_velha'q44_10_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.10. Defensoria Pública'
q44_10_4_velha'q44_10_4_4: Acompanha os encaminhamentos_44.10. Defensoria Pública'
q44_10_5_velha'q44_10_5_5: Realiza reuniões periódicas_44.10. Defensoria Pública'
q44_10_6_velha'q44_10_6_6: Troca Informações_44.10. Defensoria Pública'
q44_10_7_velha'q44_10_7_7: Realiza estudos de caso em conjunto_44.10. Defensoria Pública'
q44_10_8_velha'q44_10_8_8: Desenvolve atividades em parceria_44.10. Defensoria Pública'
q44_10_9_velha'q44_10_9_9: Serviço ou instituição não existente no Município_44.10. Defensoria Pública'
q44_11_0_velha'q44_11_0_0: Não tem nenhuma articulação_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_1_velha'q44_11_1_1: Possui dados da localização (endereço, telefone etc.)_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_2_velha'q44_11_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_3_velha'q44_11_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_4_velha'q44_11_4_4: Acompanha os encaminhamentos_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_5_velha'q44_11_5_5: Realiza reuniões periódicas_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_6_velha'q44_11_6_6: Troca Informações_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_7_velha'q44_11_7_7: Realiza estudos de caso em conjunto_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_8_velha'q44_11_8_8: Desenvolve atividades em parceria_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_11_9_velha'q44_11_9_9: Serviço ou instituição não existente no Município_44.11. Serviços e programas de qualificação profissional, encaminhamento a emprego e/ou geração de renda'
q44_12_0_velha'q44_12_0_0: Não tem nenhuma articulação_44.12. Programas de Habitação Social ou congênere'
q44_12_1_velha'q44_12_1_1: Possui dados da localização (endereço, telefone etc.)_44.12. Programas de Habitação Social ou congênere'
q44_12_2_velha'q44_12_2_2: Recebe usuárias(os) encaminhadas(os) por este Serviço de Família Acolhedora_44.12. Programas de Habitação Social ou congênere'
q44_12_3_velha'q44_12_3_3: Encaminha usuárias(os) para este Serviço de Família Acolhedora_44.12. Programas de Habitação Social ou congênere'
q44_12_4_velha'q44_12_4_4: Acompanha os encaminhamentos_44.12. Programas de Habitação Social ou congênere'
q44_12_5_velha'q44_12_5_5: Realiza reuniões periódicas_44.12. Programas de Habitação Social ou congênere'
q44_12_6_velha'q44_12_6_6: Troca Informações_44.12. Programas de Habitação Social ou congênere'
q44_12_7_velha'q44_12_7_7: Realiza estudos de caso em conjunto_44.12. Programas de Habitação Social ou congênere'
q44_12_8_velha'q44_12_8_8: Desenvolve atividades em parceria_44.12. Programas de Habitação Social ou congênere'
q44_12_9_velha'q44_12_9_9: Serviço ou instituição não existente no Município_44.12. Programas de Habitação Social ou congênere' .
