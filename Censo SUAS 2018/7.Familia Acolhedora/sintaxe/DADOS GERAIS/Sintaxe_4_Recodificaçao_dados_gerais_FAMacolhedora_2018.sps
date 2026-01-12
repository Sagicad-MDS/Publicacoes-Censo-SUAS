
*****recodificar
*q2*********************************

compute q_2_velha = q_2. 
compute q_4_1_velha = q_4_1. 
compute q_4_2_velha = q_4_2. 
compute q_4_3_velha = q_4_3. 
compute q_4_0_velha = q_4_0. 
compute q_4_99_velha = q_4_99. 
compute q_5_1_velha = q_5_1. 
execute. 

DO IF (q_2=1).
RECODE q_4_1 (ELSE=SYSMIS).
RECODE q_4_2 (ELSE=SYSMIS).
RECODE q_4_3 (ELSE=SYSMIS).
RECODE q_4_0 (ELSE=SYSMIS).
RECODE q_4_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q_2 = 1).
RECODE q_5_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q6*****************

compute q_6_velha = q_6. 
compute q_7_velha = q_7. 
compute q_9_1_velha = q_9_1. 
compute q_9_2_velha = q_9_2. 
compute q_9_3_velha = q_9_3. 
compute q_9_4_velha = q_9_4. 
compute q_10_velha = q_10. 
execute. 


DO IF (q_6=2).
RECODE q_7 (ELSE=SYSMIS).
RECODE q_9_1 (ELSE=SYSMIS).
RECODE q_9_2 (ELSE=SYSMIS).
RECODE q_9_3 (ELSE=SYSMIS).
RECODE q_9_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


****************q7

DO IF (q_2=2 & q_7=0).
RECODE q_9_1 (ELSE=SYSMIS).
RECODE q_9_2 (ELSE=SYSMIS).
RECODE q_9_3 (ELSE=SYSMIS).
RECODE q_9_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q12*****************

compute q_12_velha = q_12. 
compute q_13_velha = q_13. 
compute q_13_99_velha = q_13_99. 
execute. 


DO IF (q_12=0).
RECODE q_13_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q16**************

compute q_16_1_1_velha = q_16_1_1. 
compute q_16_1_2_velha = q_16_1_2.
compute q_16_1_3_velha = q_16_1_3.
compute q_16_1_4_velha = q_16_1_4.
compute q_16_1_5_velha = q_16_1_5.
compute q_16_1_6_velha = q_16_1_6.
compute q_16_1_7_velha = q_16_1_7.
compute q_16_2_1_velha = q_16_2_1. 
compute q_16_2_2_velha = q_16_2_2.
compute q_16_2_3_velha = q_16_2_3.
compute q_16_2_4_velha = q_16_2_4.
compute q_16_2_5_velha = q_16_2_5.
compute q_16_2_6_velha = q_16_2_6.
compute q_16_2_7_velha = q_16_2_7.
execute. 



COMPUTE q_16_total=SUM(q_16_1_7,q_16_2_7).
EXECUTE.


DO IF (q_16_total ~= q_15).
RECODE q_16_1_1 (ELSE=SYSMIS).
RECODE q_16_1_2 (ELSE=SYSMIS).
RECODE q_16_1_3 (ELSE=SYSMIS).
RECODE q_16_1_4 (ELSE=SYSMIS).
RECODE q_16_1_5 (ELSE=SYSMIS).
RECODE q_16_1_6 (ELSE=SYSMIS).
RECODE q_16_1_7 (ELSE=SYSMIS).
RECODE q_16_2_1 (ELSE=SYSMIS).
RECODE q_16_2_2 (ELSE=SYSMIS).
RECODE q_16_2_3 (ELSE=SYSMIS).
RECODE q_16_2_4 (ELSE=SYSMIS).
RECODE q_16_2_5 (ELSE=SYSMIS).
RECODE q_16_2_6 (ELSE=SYSMIS).
RECODE q_16_2_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

*************q17***


compute q_17_1_velha = q_17_1. 
compute q_17_2_velha = q_17_2.
compute q_17_3_velha = q_17_3.
compute q_17_4_velha = q_17_4.
compute q_17_5_velha = q_17_5.
compute q_17_6_velha = q_17_6.
compute q_17_7_velha = q_17_7.
compute q_17_8_velha = q_17_8. 
compute q_17_9_velha = q_17_9.
execute. 


DO IF (q_17_9 ~= q_15).
RECODE q_17_1 (ELSE=SYSMIS).
RECODE q_17_2 (ELSE=SYSMIS).
RECODE q_17_3 (ELSE=SYSMIS).
RECODE q_17_4 (ELSE=SYSMIS).
RECODE q_17_5 (ELSE=SYSMIS).
RECODE q_17_6 (ELSE=SYSMIS).
RECODE q_17_7 (ELSE=SYSMIS).
RECODE q_17_8 (ELSE=SYSMIS).
RECODE q_17_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q19***************************

compute q_19_1_velha = q_19_1. 
compute q_19_2_velha = q_19_2.
compute q_19_3_velha = q_19_3.
compute q_19_4_velha = q_19_4.
execute. 


DO IF (q_19_1 > q_15).
RECODE q_19_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_19_2 > q_15).
RECODE q_19_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_19_3 > q_15).
RECODE q_19_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_19_4 > q_15).
RECODE q_19_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q26**********************

compute q_26_1_velha = q_26_1. 
compute q_26_2_velha = q_26_2. 
compute q_26_3_velha = q_26_3. 
compute q_26_4_velha = q_26_4. 
compute q_26_5_velha = q_26_5. 
compute q_26_6_velha = q_26_6. 
compute q_26_7_velha = q_26_7. 
compute q_26_8_velha = q_26_8. 
compute q_26_9_velha = q_26_9. 
compute q_26_10_velha = q_26_10. 
compute q_26_11_velha = q_26_11. 
compute q_26_12_velha = q_26_12. 
compute q_26_13_velha = q_26_13. 
compute q_26_14_velha = q_26_14. 
compute q_26_15_velha = q_26_15. 
compute q_26_16_velha = q_26_16. 
compute q_26_17_velha = q_26_17. 
compute q_26_18_velha = q_26_18. 
compute q_26_19_velha = q_26_19. 
compute q_26_20_velha = q_26_20. 
compute q_26_21_velha = q_26_21. 
compute q_26_22_velha = q_26_22. 
compute q_26_23_velha = q_26_23. 
compute q_26_24_velha = q_26_24. 
compute q_26_25_velha = q_26_25. 
compute q_26_0_velha = q_26_0. 
execute. 


DO IF (q_26_0=1).
RECODE q_26_1 (ELSE=SYSMIS).
RECODE q_26_2 (ELSE=SYSMIS).
RECODE q_26_3 (ELSE=SYSMIS).
RECODE q_26_4 (ELSE=SYSMIS).
RECODE q_26_5 (ELSE=SYSMIS).
RECODE q_26_6 (ELSE=SYSMIS).
RECODE q_26_7 (ELSE=SYSMIS).
RECODE q_26_8 (ELSE=SYSMIS).
RECODE q_26_9 (ELSE=SYSMIS).
RECODE q_26_10 (ELSE=SYSMIS).
RECODE q_26_11 (ELSE=SYSMIS).
RECODE q_26_12 (ELSE=SYSMIS).
RECODE q_26_13 (ELSE=SYSMIS).
RECODE q_26_14 (ELSE=SYSMIS).
RECODE q_26_15 (ELSE=SYSMIS).
RECODE q_26_16 (ELSE=SYSMIS).
RECODE q_26_17 (ELSE=SYSMIS).
RECODE q_26_18 (ELSE=SYSMIS).
RECODE q_26_19 (ELSE=SYSMIS).
RECODE q_26_20 (ELSE=SYSMIS).
RECODE q_26_21 (ELSE=SYSMIS).
RECODE q_26_22 (ELSE=SYSMIS).
RECODE q_26_23 (ELSE=SYSMIS).
RECODE q_26_24 (ELSE=SYSMIS).
RECODE q_26_25 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q28**********************************

compute q_28_1_velha = q_28_1. 
compute q_28_2_velha = q_28_2. 
compute q_28_3_velha = q_28_3. 
compute q_28_98_velha = q_28_98. 
compute q_28_99_velha = q_28_99. 
compute q_28_0_velha = q_28_0. 
compute q_29_velha = q_29. 
execute. 


DO IF (q_28_99 = 1 | q_28_0=1).
RECODE q_29 (ELSE=SYSMIS).
END IF.
EXECUTE.



