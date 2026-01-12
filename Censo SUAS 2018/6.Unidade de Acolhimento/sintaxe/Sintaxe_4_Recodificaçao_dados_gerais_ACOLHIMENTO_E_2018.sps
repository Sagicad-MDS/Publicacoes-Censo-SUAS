
*****recodificar

*q2

COMPUTE q_2_velha=q_2.
COMPUTE q_2_1_velha=q_2_1.
EXECUTE.

DO IF (q_1_2=0 | q_1_2=2 | q_1_2=3 | q_1_2=4 | q_1_2=5 | q_1_2=6 | q_1_2=7 | q_1_2=8 | q_1_2=9 | q_1_2=10 | q_1_2=11 |  q_1_2=12).
RECODE q_2 (ELSE=SYSMIS).
RECODE q_2_1  (ELSE=SYSMIS).
END IF.
EXECUTE.

**q3

COMPUTE q_5_1_velha=q_5_1.
COMPUTE q_5_2_velha=q_5_2.
COMPUTE q_5_3_velha=q_5_3.
COMPUTE q_5_0_velha=q_5_0.
COMPUTE q_5_99_velha=q_5_99.



DO IF (q_3=1).
RECODE q_5_1 (ELSE=SYSMIS).
RECODE q_5_2 (ELSE=SYSMIS).
RECODE q_5_3 (ELSE=SYSMIS).
RECODE q_5_0 (ELSE=SYSMIS).
RECODE q_5_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q5

DO IF (q_5_0=1 | q_5_99=1).
RECODE q_5_1 (ELSE=SYSMIS).
RECODE q_5_2 (ELSE=SYSMIS).
RECODE q_5_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q6

compute q_6_1_velha = q_6_1. 
compute q_6_2_velha = q_6_2. 
compute q_6_3_velha = q_6_3. 
compute q_6_99_velha = q_6_99. 
compute q_6_0_velha = q_6_0. 
execute. 


DO IF (q_6_0=1).
RECODE q_6_1 (ELSE=SYSMIS).
RECODE q_6_2  (ELSE=SYSMIS).
RECODE q_6_3 (ELSE=SYSMIS).
RECODE q_6_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_3=1).
RECODE q_6_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q9*********************************************

compute q10_1_1_velha = q10_1_1. 
compute q10_1_2_velha = q10_1_2. 
compute q10_1_3_velha = q10_1_3. 
compute q10_1_0_velha = q10_1_0. 
compute q10_2_1_velha = q10_2_1. 
compute q10_2_2_velha = q10_2_2. 
compute q10_2_3_velha = q10_2_3. 
compute q10_2_0_velha = q10_2_0. 
compute q10_3_1_velha = q10_3_1. 
compute q10_3_2_velha = q10_3_2. 
compute q10_3_3_velha = q10_3_3. 
compute q10_3_0_velha = q10_3_0. 
compute q10_4_1_velha = q10_4_1. 
compute q10_4_2_velha = q10_4_2. 
compute q10_4_3_velha = q10_4_3. 
compute q10_4_0_velha = q10_4_0. 
execute. 




DO IF (q_3=0).
RECODE q10_1_1 (ELSE=SYSMIS).
RECODE q10_1_2 (ELSE=SYSMIS).
RECODE q10_1_3 (ELSE=SYSMIS).
RECODE q10_1_0 (ELSE=SYSMIS).
RECODE q10_2_1 (ELSE=SYSMIS).
RECODE q10_2_2 (ELSE=SYSMIS).
RECODE q10_2_3 (ELSE=SYSMIS).
RECODE q10_2_0 (ELSE=SYSMIS).
RECODE q10_3_1 (ELSE=SYSMIS).
RECODE q10_3_2 (ELSE=SYSMIS).
RECODE q10_3_3 (ELSE=SYSMIS).
RECODE q10_3_0 (ELSE=SYSMIS).
RECODE q10_4_1 (ELSE=SYSMIS).
RECODE q10_4_2 (ELSE=SYSMIS).
RECODE q10_4_3 (ELSE=SYSMIS).
RECODE q10_4_0 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q13***********************************************

compute q_12_velha = q_12. 
compute q_13_velha = q_13. 
compute q_14_velha = q_14. 
execute. 



IF  (q_13 > q_12) testeq_13=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_13
  /ORDER=ANALYSIS.


DO IF (q_13 > q_12).
RECODE q_13 (ELSE=SYSMIS).
END IF.
EXECUTE.


IF  (q_14 > q_12) testeq_14=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_14
  /ORDER=ANALYSIS.


DO IF (q_14 > q_12).
RECODE q_14 (ELSE=SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES testeq_13 testeq_14.



**q15*****************

compute q_15_1_1_velha = q_15_1_1. 
compute q_15_1_2_velha = q_15_1_2. 
compute q_15_1_3_velha = q_15_1_3. 
compute q_15_1_4_velha = q_15_1_4. 
compute q_15_1_5_velha = q_15_1_5. 
compute q_15_1_6_velha = q_15_1_6. 
compute q_15_1_7_velha = q_15_1_7. 
compute q_15_1_8_velha = q_15_1_8. 
compute q_15_1_9_velha = q_15_1_9. 
compute q_15_1_10_velha = q_15_1_10. 
compute q_15_1_11_velha = q_15_1_11. 
compute q_15_2_1_velha = q_15_2_1. 
compute q_15_2_2_velha = q_15_2_2. 
compute q_15_2_3_velha = q_15_2_3. 
compute q_15_2_4_velha = q_15_2_4. 
compute q_15_2_5_velha = q_15_2_5. 
compute q_15_2_6_velha = q_15_2_6. 
compute q_15_2_7_velha = q_15_2_7. 
compute q_15_2_8_velha = q_15_2_8. 
compute q_15_2_9_velha = q_15_2_9. 
compute q_15_2_10_velha = q_15_2_10. 
compute q_15_2_11_velha = q_15_2_11. 
execute. 

compute q_15_masc=  SUM (q_15_1_1, q_15_1_2, q_15_1_3, q_15_1_4, q_15_1_5, q_15_1_6, q_15_1_7, q_15_1_8, q_15_1_9, q_15_1_10).
execute. 

compute q_15_fem=  SUM ( q_15_2_1, q_15_2_2, q_15_2_3, q_15_2_4, q_15_2_5, q_15_2_6, q_15_2_7, q_15_2_8, q_15_2_9, q_15_2_10).
execute. 

compute q_15_Tot=  SUM ( q_15_masc,q_15_fem).
execute. 



IF  (q_15_Tot~=q_12) testeq_15=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_15
  /ORDER=ANALYSIS.



DO IF ( testeq_15=1).
RECODE q_12 (ELSE=SYSMIS).
RECODE q_15_1_1 (ELSE=SYSMIS).
RECODE q_15_1_2 (ELSE=SYSMIS).
RECODE q_15_1_3 (ELSE=SYSMIS).
RECODE q_15_1_4  (ELSE=SYSMIS).
RECODE q_15_1_5  (ELSE=SYSMIS).
RECODE q_15_1_6  (ELSE=SYSMIS).
RECODE q_15_1_7  (ELSE=SYSMIS).
RECODE q_15_1_8  (ELSE=SYSMIS).
RECODE q_15_1_9 (ELSE=SYSMIS).
RECODE q_15_1_10 (ELSE=SYSMIS).
RECODE q_15_1_11 (ELSE=SYSMIS).
RECODE q_15_2_1 (ELSE=SYSMIS).
RECODE q_15_2_2 (ELSE=SYSMIS).
RECODE q_15_2_3 (ELSE=SYSMIS).
RECODE q_15_2_4  (ELSE=SYSMIS).
RECODE q_15_2_5  (ELSE=SYSMIS).
RECODE q_15_2_6  (ELSE=SYSMIS).
RECODE q_15_2_7  (ELSE=SYSMIS).
RECODE q_15_2_8  (ELSE=SYSMIS).
RECODE q_15_2_9 (ELSE=SYSMIS).
RECODE q_15_2_10 (ELSE=SYSMIS).
RECODE q_15_2_11 (ELSE=SYSMIS).
END IF.
EXECUTE.

compute q_15_mascrec=  SUM (q_15_1_1, q_15_1_2, q_15_1_3, q_15_1_4, q_15_1_5, q_15_1_6, q_15_1_7, q_15_1_8, q_15_1_9, q_15_1_10).
execute. 

compute q_15_femrec=  SUM ( q_15_2_1, q_15_2_2, q_15_2_3, q_15_2_4, q_15_2_5, q_15_2_6, q_15_2_7, q_15_2_8, q_15_2_9, q_15_2_10).
execute. 

compute q_15_Totrec=  SUM ( q_15_mascrec,q_15_femrec).
execute. 


compute q_15_1_11 = q_15_mascrec. 
compute q_15_2_11 = q_15_femrec. 
execute.

DELETE VARIABLES  q_15_masc  q_15_fem   q_15_mascrec  q_15_femrec.


****q16*************************************************

compute q_16_1_velha = q_16_1. 
compute q_16_2_velha = q_16_2. 
execute. 


compute q_15_Idosomasc=  SUM (q_15_1_9, q_15_1_10).
execute. 

compute q_15_Idosofem=  SUM (q_15_2_9, q_15_2_10).
execute. 

compute q_15_IdosoTot=  SUM (q_15_Idosomasc,q_15_Idosofem).
execute. 



IF  (q_16_1 >  q_15_IdosoTot) testeq_16=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_16
  /ORDER=ANALYSIS.


DO IF (q_15_IdosoTot = 0).
RECODE q_16_1 (ELSE=0).
END IF.
EXECUTE.




DO IF ( q_16_1 >  q_15_IdosoTot).
RECODE q_16_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF ( q_16_1 >  q_15_Tot).
RECODE q_16_1 (ELSE=SYSMIS).
END IF.
EXECUTE.


IF  ( q_16_2 >  q_15_Tot) testeq_16_2=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_16_2
  /ORDER=ANALYSIS.


DO IF ( testeq_16_2=1).
RECODE q_16_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DELETE VARIABLES  testeq_15  testeq_16  testeq_16_2.


****q17*************************************************

compute q_17_velha = q_17. 
execute. 


IF  ( q_17 >  q_15_IdosoTot) testeq_17=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_17
  /ORDER=ANALYSIS.


DO IF ( q_17 >  q_15_IdosoTot).
RECODE q_17 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF ( q_17 >  q_15_Tot).
RECODE q_17 (ELSE=SYSMIS).
END IF.
EXECUTE.


IF  ( q_17 >  q_15_IdosoTot) testeq_17_1=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_17_1
  /ORDER=ANALYSIS.



DELETE VARIABLES  q_15_Tot   q_15_Idosomasc  q_15_Idosofem q_15_IdosoTot  testeq_17  testeq_17_1 .

****q21*************************************************

compute q_21_1_velha = q_21_1. 
compute q_21_2_velha = q_21_2. 
compute q_21_3_velha =q_21_3. 
compute q_21_4_velha = q_21_4. 
compute q_21_5_velha = q_21_5. 
compute q_21_6_velha = q_21_6. 
compute q_21_7_velha =q_21_7. 
compute q_21_8_velha = q_21_8. 
compute q_21_9_velha = q_21_9. 
execute. 


compute q_21_tot=  SUM ( q_21_1, q_21_2, q_21_3, q_21_4, q_21_5, q_21_6, q_21_7, q_21_8).
execute. 

IF  ( q_21_9 ~= q_21_tot) testeq_21_TOT=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_21_TOT
  /ORDER=ANALYSIS.



IF  ( q_21_9 > q_12) testeq_21_1=1.
EXECUTE.
FREQUENCIES VARIABLES=testeq_21_1
  /ORDER=ANALYSIS.


DO IF (q_21_9 > q_12).
RECODE q_21_1 (ELSE=SYSMIS).
RECODE q_21_2 (ELSE=SYSMIS).
RECODE q_21_3 (ELSE=SYSMIS).
RECODE q_21_4 (ELSE=SYSMIS).
RECODE q_21_5 (ELSE=SYSMIS).
RECODE q_21_6 (ELSE=SYSMIS).
RECODE q_21_7 (ELSE=SYSMIS).
RECODE q_21_8 (ELSE=SYSMIS).
RECODE q_21_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES  q_21_tot  testeq_21_TOT  testeq_21_1.


***q23***********************************************************

compute q_23_1_velha = q_23_1. 
compute q_23_2_velha = q_23_2. 
compute q_23_3_velha =q_23_3. 
compute q_23_4_velha = q_23_4. 
compute q_23_5_velha = q_23_5. 
compute q_23_6_velha = q_23_6. 
compute q_23_7_velha =q_23_7. 
compute q_23_8_velha = q_23_8. 
compute q_23_9_velha = q_23_9. 
compute q_23_10_velha = q_23_10. 
compute q_23_16_velha =q_23_16. 
compute q_23_11_velha =q_23_11. 
compute q_23_12_velha = q_23_12. 
compute q_23_13_velha = q_23_13. 
compute q_23_14_velha = q_23_14. 
compute q_23_15_velha =q_23_15. 
compute q_23_0_velha = q_23_0. 
execute. 


DO IF (q_23_0=1).
RECODE q_23_1 (ELSE=SYSMIS).
RECODE q_23_2(ELSE=SYSMIS).
RECODE q_23_3 (ELSE=SYSMIS).
RECODE q_23_4 (ELSE=SYSMIS).
RECODE q_23_5 (ELSE=SYSMIS).
RECODE q_23_6(ELSE=SYSMIS).
RECODE q_23_7 (ELSE=SYSMIS).
RECODE q_23_8 (ELSE=SYSMIS).
RECODE q_23_9 (ELSE=SYSMIS).
RECODE q_23_10(ELSE=SYSMIS).
RECODE q_23_16 (ELSE=SYSMIS).
RECODE q_23_11 (ELSE=SYSMIS).
RECODE q_23_12 (ELSE=SYSMIS).
RECODE q_23_13 (ELSE=SYSMIS).
RECODE q_23_14 (ELSE=SYSMIS).
RECODE q_23_15 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q24***********************************************************

compute q_24_velha = q_24. 
execute. 


DO IF (q_1_1=316 | q_1_1=317 | q_1_1=318 | q_1_1=319 |  q_1_1=321 | q_1_1=322 ).
RECODE q_24 (ELSE=SYSMIS).
END IF.
EXECUTE.



**q32*************************************************************************************************

compute q_32_1_velha =q_32_1. 
compute q_32_2_velha = q_32_2. 
compute q_32_3_velha =q_32_3. 
compute q_32_98_velha = q_32_98. 
compute q_32_99_velha = q_32_99. 
compute q_32_0_velha = q_32_0. 
compute q_33_velha = q_33. 
execute. 



DO IF (q_32_99=1  |  q_32_0=1).
RECODE q_32_1 (ELSE=SYSMIS).
RECODE q_32_2  (ELSE=SYSMIS).
RECODE q_32_3  (ELSE=SYSMIS).
RECODE q_32_98 (ELSE=SYSMIS).
RECODE q_33 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q34***************************************************************************************************

compute q_34_1_1_velha =q_34_1_1. 
compute q_34_1_2_velha = q_34_1_2. 
compute q_34_1_3_velha =q_34_1_3. 
compute q_34_1_4_velha =q_34_1_4. 
compute q_34_1_5_velha =q_34_1_5. 
compute q_34_1_6_velha =q_34_1_6. 
compute q_34_1_7_velha = q_34_1_7. 
compute q_34_1_8_velha =q_34_1_8. 
compute q_34_1_0_velha =q_34_1_0. 
compute q_34_1_9_velha = q_34_1_9. 
compute q_34_2_1_velha =q_34_2_1. 
compute q_34_2_2_velha = q_34_2_2. 
compute q_34_2_3_velha =q_34_2_3. 
compute q_34_2_4_velha =q_34_2_4. 
compute q_34_2_5_velha =q_34_2_5. 
compute q_34_2_6_velha =q_34_2_6. 
compute q_34_2_7_velha = q_34_2_7. 
compute q_34_2_8_velha =q_34_2_8. 
compute q_34_2_0_velha =q_34_2_0. 
compute q_34_2_9_velha = q_34_2_9. 
compute q_34_3_1_velha =q_34_3_1. 
compute q_34_3_2_velha = q_34_3_2. 
compute q_34_3_3_velha =q_34_3_3. 
compute q_34_3_4_velha =q_34_3_4. 
compute q_34_3_5_velha =q_34_3_5. 
compute q_34_3_6_velha =q_34_3_6. 
compute q_34_3_7_velha = q_34_3_7. 
compute q_34_3_8_velha =q_34_3_8. 
compute q_34_3_0_velha =q_34_3_0. 
compute q_34_3_9_velha = q_34_3_9. 
compute q_34_4_1_velha =q_34_4_1. 
compute q_34_4_2_velha = q_34_4_2. 
compute q_34_4_3_velha =q_34_4_3. 
compute q_34_4_4_velha =q_34_4_4. 
compute q_34_4_5_velha =q_34_4_5. 
compute q_34_4_6_velha =q_34_4_6. 
compute q_34_4_7_velha = q_34_4_7. 
compute q_34_4_8_velha =q_34_4_8. 
compute q_34_4_0_velha =q_34_4_0. 
compute q_34_4_9_velha = q_34_4_9. 
compute q_34_5_1_velha =q_34_5_1. 
compute q_34_5_2_velha = q_34_5_2. 
compute q_34_5_3_velha =q_34_5_3. 
compute q_34_5_4_velha =q_34_5_4. 
compute q_34_5_5_velha =q_34_5_5. 
compute q_34_5_6_velha =q_34_5_6. 
compute q_34_5_7_velha = q_34_5_7. 
compute q_34_5_8_velha =q_34_5_8. 
compute q_34_5_0_velha =q_34_5_0. 
compute q_34_5_9_velha = q_34_5_9. 
compute q_34_6_1_velha =q_34_6_1. 
compute q_34_6_2_velha = q_34_6_2. 
compute q_34_6_3_velha =q_34_6_3. 
compute q_34_6_4_velha =q_34_6_4. 
compute q_34_6_5_velha =q_34_6_5. 
compute q_34_6_6_velha =q_34_6_6. 
compute q_34_6_7_velha = q_34_6_7. 
compute q_34_6_8_velha =q_34_6_8. 
compute q_34_6_0_velha =q_34_6_0. 
compute q_34_6_9_velha = q_34_6_9. 
compute q_34_7_1_velha =q_34_7_1. 
compute q_34_7_2_velha = q_34_7_2. 
compute q_34_7_3_velha =q_34_7_3. 
compute q_34_7_4_velha =q_34_7_4. 
compute q_34_7_5_velha =q_34_7_5. 
compute q_34_7_6_velha =q_34_7_6. 
compute q_34_7_7_velha = q_34_7_7. 
compute q_34_7_8_velha =q_34_7_8. 
compute q_34_7_0_velha =q_34_7_0. 
compute q_34_7_9_velha = q_34_7_9. 
compute q_34_8_1_velha =q_34_8_1. 
compute q_34_8_2_velha = q_34_8_2. 
compute q_34_8_3_velha =q_34_8_3. 
compute q_34_8_4_velha =q_34_8_4. 
compute q_34_8_5_velha =q_34_8_5. 
compute q_34_8_6_velha =q_34_8_6. 
compute q_34_8_7_velha = q_34_8_7. 
compute q_34_8_8_velha =q_34_8_8. 
compute q_34_8_0_velha =q_34_8_0. 
compute q_34_8_9_velha = q_34_8_9. 
execute. 


DO IF (q_34_1_0=1 | q_34_1_9=1  ).
RECODE q_34_1_1 (ELSE=SYSMIS).
RECODE q_34_1_2 (ELSE=SYSMIS).
RECODE q_34_1_3 (ELSE=SYSMIS).
RECODE q_34_1_4 (ELSE=SYSMIS).
RECODE q_34_1_5 (ELSE=SYSMIS).
RECODE q_34_1_6 (ELSE=SYSMIS).
RECODE q_34_1_7 (ELSE=SYSMIS).
RECODE q_34_1_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_34_2_0=1 | q_34_2_9=1  ).
RECODE q_34_2_1 (ELSE=SYSMIS).
RECODE q_34_2_2 (ELSE=SYSMIS).
RECODE q_34_2_3 (ELSE=SYSMIS).
RECODE q_34_2_4 (ELSE=SYSMIS).
RECODE q_34_2_5 (ELSE=SYSMIS).
RECODE q_34_2_6 (ELSE=SYSMIS).
RECODE q_34_2_7 (ELSE=SYSMIS).
RECODE q_34_2_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_34_3_0=1 | q_34_3_9=1  ).
RECODE q_34_3_1 (ELSE=SYSMIS).
RECODE q_34_3_2 (ELSE=SYSMIS).
RECODE q_34_3_3 (ELSE=SYSMIS).
RECODE q_34_3_4 (ELSE=SYSMIS).
RECODE q_34_3_5 (ELSE=SYSMIS).
RECODE q_34_3_6 (ELSE=SYSMIS).
RECODE q_34_3_7 (ELSE=SYSMIS).
RECODE q_34_3_8 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q_34_4_0=1 | q_34_4_9=1  ).
RECODE q_34_4_1 (ELSE=SYSMIS).
RECODE q_34_4_2 (ELSE=SYSMIS).
RECODE q_34_4_3 (ELSE=SYSMIS).
RECODE q_34_4_4 (ELSE=SYSMIS).
RECODE q_34_4_5 (ELSE=SYSMIS).
RECODE q_34_4_6 (ELSE=SYSMIS).
RECODE q_34_4_7 (ELSE=SYSMIS).
RECODE q_34_4_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_34_5_0=1 | q_34_5_9=1  ).
RECODE q_34_5_1 (ELSE=SYSMIS).
RECODE q_34_5_2 (ELSE=SYSMIS).
RECODE q_34_5_3 (ELSE=SYSMIS).
RECODE q_34_5_4 (ELSE=SYSMIS).
RECODE q_34_5_5 (ELSE=SYSMIS).
RECODE q_34_5_6 (ELSE=SYSMIS).
RECODE q_34_5_7 (ELSE=SYSMIS).
RECODE q_34_5_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_34_6_0=1 | q_34_6_9=1  ).
RECODE q_34_6_1 (ELSE=SYSMIS).
RECODE q_34_6_2 (ELSE=SYSMIS).
RECODE q_34_6_3 (ELSE=SYSMIS).
RECODE q_34_6_4 (ELSE=SYSMIS).
RECODE q_34_6_5 (ELSE=SYSMIS).
RECODE q_34_6_6 (ELSE=SYSMIS).
RECODE q_34_6_7 (ELSE=SYSMIS).
RECODE q_34_6_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_34_7_0=1 | q_34_7_9=1  ).
RECODE q_34_7_1 (ELSE=SYSMIS).
RECODE q_34_7_2 (ELSE=SYSMIS).
RECODE q_34_7_3 (ELSE=SYSMIS).
RECODE q_34_7_4 (ELSE=SYSMIS).
RECODE q_34_7_5 (ELSE=SYSMIS).
RECODE q_34_7_6 (ELSE=SYSMIS).
RECODE q_34_7_7 (ELSE=SYSMIS).
RECODE q_34_7_8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_34_8_0=1 | q_34_8_9=1  ).
RECODE q_34_8_1 (ELSE=SYSMIS).
RECODE q_34_8_2 (ELSE=SYSMIS).
RECODE q_34_8_3 (ELSE=SYSMIS).
RECODE q_34_8_4 (ELSE=SYSMIS).
RECODE q_34_8_5 (ELSE=SYSMIS).
RECODE q_34_8_6 (ELSE=SYSMIS).
RECODE q_34_8_7 (ELSE=SYSMIS).
RECODE q_34_8_8 (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q42*************************************************************************************************************************************

compute q_42_1_velha = q_42_1. 
compute q_42_2_velha =q_42_2. 
compute q_42_3_velha =q_42_3. 
compute q_42_4_velha =q_42_4. 
compute q_42_5_velha =q_42_5. 
compute q_42_6_velha = q_42_6. 
compute q_42_7_velha =q_42_7. 
compute q_42_8_velha =q_42_8. 
compute q_42_9_velha = q_42_9. 
compute q_42_10_velha =q_42_10. 
compute q_42_11_velha = q_42_11. 
compute q_42_12_velha =q_42_12. 
compute q_42_13_velha =q_42_13. 
compute q_42_14_velha =q_42_14. 
compute q_42_99_velha =q_42_99. 
compute q_42_0_velha =q_42_0. 
execute. 


DO IF (q_42_0=1  ).
RECODE q_42_1 (ELSE=SYSMIS).
RECODE q_42_2 (ELSE=SYSMIS).
RECODE q_42_3 (ELSE=SYSMIS).
RECODE q_42_4 (ELSE=SYSMIS).
RECODE q_42_5 (ELSE=SYSMIS).
RECODE q_42_6 (ELSE=SYSMIS).
RECODE q_42_7  (ELSE=SYSMIS).
RECODE q_42_8  (ELSE=SYSMIS).
RECODE q_42_9 (ELSE=SYSMIS).
RECODE q_42_10 (ELSE=SYSMIS).
RECODE q_42_11 (ELSE=SYSMIS).
RECODE q_42_12 (ELSE=SYSMIS).
RECODE q_42_13 (ELSE=SYSMIS).
RECODE q_42_14  (ELSE=SYSMIS).
RECODE q_42_99  (ELSE=SYSMIS).
END IF.
EXECUTE.





*******************




VARIABLE LABELS
q_2_velha'Esta Unidade é uma “Casa Lar em Aldeia”?'
q_2_1_velha'Quantidade de Casas Lares na Aldeia'
q_5_1_velha'1: Sim, com o Estado (governo estadual)'
q_5_2_velha'2: Sim, com o município no qual esta unidade se localiza (com a prefeitura na qual a sede da unidade se localiza'
q_5_3_velha'3: Sim, com outros municípios'
q_5_0_velha'0: Não'
q_5_99_velha'99: Não sabe informar'
q_6_1_velha'1: Conselho de Assistência Social'
q_6_2_velha'2: Conselho de Direitos da Criança e Adolescente'
q_6_3_velha'3: Conselho dos Direitos do Idoso'
q_6_99_velha'99: Outros'
q_6_0_velha'0: Em nenhum Conselho'
q10_1_1_velha 'Provisão da estrutura física da Unidade (imóvel)1 - Estado'
q10_1_2_velha 'Provisão da estrutura física da Unidade (imóvel)2 - Município Sede'
q10_1_3_velha 'Provisão da estrutura física da Unidade (imóvel)3 - Municípios Vinculados'
q10_1_0_velha 'Provisão da estrutura física da Unidade (imóvel)0 - Não possui/Não se aplica'
q10_2_1_velha 'Provisão de equipamentos e materiais1 - Estado1'
q10_2_2_velha 'Provisão de equipamentos e materiais2 - Município Sede'
q10_2_3_velha 'Provisão de equipamentos e materiais3 - Municípios Vinculados'
q10_2_0_velha 'Provisão de equipamentos e materiais0 - Não possui/Não se aplica'
q10_3_1_velha 'Provisão de recursos humanos - equipe de referência1 - Estado'
q10_3_2_velha 'Provisão de recursos humanos - equipe de referência2 - Município Sede'
q10_3_3_velha 'Provisão de recursos humanos - equipe de referência3 - Municípios Vinculados'
q10_3_0_velha 'Provisão de recursos humanos - equipe de referência0 - Não possui/Não se aplica'
q10_4_1_velha 'Provisão de transporte (veículo ou ajuda de custo)1 - Estado'
q10_4_2_velha 'Provisão de transporte (veículo ou ajuda de custo)2 - Município Sede'
q10_4_3_velha 'Provisão de transporte (veículo ou ajuda de custo)3 - Municípios Vinculados'
q10_4_0_velha 'Provisão de transporte (veículo ou ajuda de custo)0 - Não possui/Não se aplica'
q_12_velha'Quantas pessoas estão acolhidas na unidade neste momento (vagas ocupadas)?'
q_13_velha'Nos últimos 12 meses, quantas crianças/adolescentes desta unidade retornaram às suas famílias de origem?'
q_14_velha'Nos últimos 12 meses, quantas crianças/adolescentes desta unidade foram encaminhadas à famílias substitutas?'
q_15_Totrec 'total de pessoas acolhidas'
q_15_1_1_velha'q_15_1_1_ Masculino - 0 a 2'
q_15_1_2_velha'q_15_1_2_ Masculino - 3 a 5'
q_15_1_3_velha'q_15_1_3_ Masculino - 6 a 11'
q_15_1_4_velha'q_15_1_4_ Masculino - 12 a 13'
q_15_1_5_velha'q_15_1_5_ Masculino - 14 a 15'
q_15_1_6_velha'q_15_1_6_ Masculino - 16 a 17'
q_15_1_7_velha'q_15_1_7_ Masculino - 18 a 21'
q_15_1_8_velha'q_15_1_8_ Masculino - 22 a 59'
q_15_1_9_velha'q_15_1_9_ Masculino - 60 a 79'
q_15_1_10_velha'q_15_1_10_ Masculino - 80 ou mais'
q_15_1_11_velha'q_15_1_11_ Masculino - Total'
q_15_2_1_velha'q_15_2_1_ Feminino - 0 a 2'
q_15_2_2_velha'q_15_2_2_ Feminino - 3 a 5'
q_15_2_3_velha'q_15_2_3_ Feminino - 6 a 11'
q_15_2_4_velha'q_15_2_4_ Feminino - 12 a 13'
q_15_2_5_velha'q_15_2_5_ Feminino - 14 a 15'
q_15_2_6_velha'q_15_2_6_ Feminino - 16 a 17'
q_15_2_7_velha'q_15_2_7_ Feminino - 18 a 21'
q_15_2_8_velha'q_15_2_8_ Feminino - 22 a 59'
q_15_2_9_velha'q_15_2_9_ Feminino - 60 a 79'
q_15_2_10_velha'q_15_2_10_ Feminino - 80 ou mais'
q_15_2_11_velha'q_15_2_11_ Feminino - Total'
q_16_1_velha'Quantidade de idosas(os) beneficiários do Benefício de Prestação Continuada – BPC:'
q_16_2_velha'Quantidade de Pessoas com Deficiência beneficiárias do BPC:'
q_17_velha'Quantidade de pessoas idosas que recebem pensão/aposentadoria '
q_21_1_velha'q_21_1_ Tempo de acolhimento - Menos de 1 mês'
q_21_2_velha'q_21_2_ Tempo de acolhimento - De 1 a 3 meses'
q_21_3_velha'q_21_3_ Tempo de acolhimento - De 4 a 6 meses'
q_21_4_velha'q_21_4_ Tempo de acolhimento - De 7 a 12 meses'
q_21_5_velha'q_21_5_ Tempo de acolhimento - De 13 a 24 meses'
q_21_6_velha'q_21_6_ Tempo de acolhimento - De 25 a 48 meses'
q_21_7_velha'q_21_7_ Tempo de acolhimento - De 49 a 72 meses'
q_21_8_velha'q_21_8_ Tempo de acolhimento - Mais de 72 meses (mais de 6 anos)'
q_21_9_velha'q_21_9_ Tempo de acolhimento - Total de pessoas acolhidas'
q_23_1_velha'1: Visitas domiciliares da equipe técnica da Unidade à família da(o) usuária(o)'
q_23_2_velha'2: Reuniões com grupos de famílias das(os) usuárias(os)'
q_23_3_velha'3: Atendimento psicossocial individualizado'
q_23_4_velha'4: Atendimento psicossocial em grupos'
q_23_5_velha'5: Atendimento psicossocial das famílias das pessoas acolhidas (orientação familiar)'
q_23_6_velha'6: Palestras / oficinas'
q_23_7_velha'7: Elaboração de relatórios técnicos sobre casos em acompanhamento'
q_23_8_velha'8: Discussão de casos com outras(os) profissionais da rede'
q_23_9_velha'9: Encaminhamento para retirada de documentos'
q_23_10_velha'10: Passeios com usuárias(os)'
q_23_16_velha'16: Promove contato e a participação da família na vida da(o) usuária(o)'
q_23_11_velha'11: Promove atividades com participação da Comunidade'
q_23_12_velha'12: Promove a participação das pessoas acolhidas em serviços, projetos ou atividades existentes na comunidade'
q_23_13_velha'13: Envio de relatório semestral para o Judiciário (exclusivo para acolhimento de criança/adolescente)'
q_23_14_velha'14: Acompanhamento Escolar'
q_23_15_velha'15: Organização e discussão das rotinas das Unidades com as(os) acolhidas(os)'
q_23_0_velha'0: Não realiza nenhuma das atividades acima'
q_24_velha'A unidade possui Projeto Político-Pedagógico (PPP)'
q_32_1_velha'1: A própria unidade/serviço de acolhimento'
q_32_2_velha'2: O CRAS'
q_32_3_velha'3: O CREAS'
q_32_98_velha'98: Outro'
q_32_99_velha'99: Não sabe informar'
q_32_0_velha'0: Não é realizado acompanhamento de egressos'
q_33_velha'Por quanto tempo, em média, a(o) usuária(o) é acompanhada(o) após seu desligamento?'
q_34_1_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - Conselho Tutelar'
q_34_1_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - Conselho Tutelar'
q_34_1_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - Conselho Tutelar'
q_34_1_4_velha'4: Acompanha os encaminhamentosArticulação - Conselho Tutelar'
q_34_1_5_velha'5: Realiza reuniões periódicasArticulação - Conselho Tutelar'
q_34_1_6_velha'6: Troca informaçõesArticulação - Conselho Tutelar'
q_34_1_7_velha'7: Realiza estudos de caso em conjuntoArticulação - Conselho Tutelar'
q_34_1_8_velha'8: Desenvolve ativiades em parceriaArticulação - Conselho Tutelar'
q_34_1_0_velha'0: Não tem nenhuma articulaçãoArticulação - Conselho Tutelar'
q_34_1_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - Conselho Tutelar'
q_34_2_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - CRAS'
q_34_2_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - CRAS'
q_34_2_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - CRAS'
q_34_2_4_velha'4: Acompanha os encaminhamentosArticulação - CRAS'
q_34_2_5_velha'5: Realiza reuniões periódicasArticulação - CRAS'
q_34_2_6_velha'6: Troca informaçõesArticulação - CRAS'
q_34_2_7_velha'7: Realiza estudos de caso em conjuntoArticulação - CRAS'
q_34_2_8_velha'8: Desenvolve ativiades em parceriaArticulação - CRAS'
q_34_2_0_velha'0: Não tem nenhuma articulaçãoArticulação - CRAS'
q_34_2_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - CRAS'
q_34_3_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - CREAS'
q_34_3_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - CREAS'
q_34_3_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - CREAS'
q_34_3_4_velha'4: Acompanha os encaminhamentosArticulação - CREAS'
q_34_3_5_velha'5: Realiza reuniões periódicasArticulação - CREAS'
q_34_3_6_velha'6: Troca informaçõesArticulação - CREAS'
q_34_3_7_velha'7: Realiza estudos de caso em conjuntoArticulação - CREAS'
q_34_3_8_velha'8: Desenvolve ativiades em parceriaArticulação - CREAS'
q_34_3_0_velha'0: Não tem nenhuma articulaçãoArticulação - CREAS'
q_34_3_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - CREAS'
q_34_4_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - Centro Dia'
q_34_4_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - Centro Dia'
q_34_4_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - Centro Dia'
q_34_4_4_velha'4: Acompanha os encaminhamentosArticulação - Centro Dia'
q_34_4_5_velha'5: Realiza reuniões periódicasArticulação - Centro Dia'
q_34_4_6_velha'6: Troca informaçõesArticulação - Centro Dia'
q_34_4_7_velha'7: Realiza estudos de caso em conjuntoArticulação - Centro Dia'
q_34_4_8_velha'8: Desenvolve ativiades em parceriaArticulação - Centro Dia'
q_34_4_0_velha'0: Não tem nenhuma articulaçãoArticulação - Centro Dia'
q_34_4_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - Centro Dia'
q_34_5_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_4_velha'4: Acompanha os encaminhamentosArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_5_velha'5: Realiza reuniões periódicasArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_6_velha'6: Troca informaçõesArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_7_velha'7: Realiza estudos de caso em conjuntoArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_8_velha'8: Desenvolve ativiades em parceriaArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_0_velha'0: Não tem nenhuma articulaçãoArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_5_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - Centro de Referência Especializado para População em Situação de Rua – (Centro POP)'
q_34_6_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - Outras unidades de acolhimento'
q_34_6_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - Outras unidades de acolhimento'
q_34_6_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - Outras unidades de acolhimento'
q_34_6_4_velha'4: Acompanha os encaminhamentosArticulação - Outras unidades de acolhimento'
q_34_6_5_velha'5: Realiza reuniões periódicasArticulação - Outras unidades de acolhimento'
q_34_6_6_velha'6: Troca informaçõesArticulação - Outras unidades de acolhimento'
q_34_6_7_velha'7: Realiza estudos de caso em conjuntoArticulação - Outras unidades de acolhimento'
q_34_6_8_velha'8: Desenvolve ativiades em parceriaArticulação - Outras unidades de acolhimento'
q_34_6_0_velha'0: Não tem nenhuma articulaçãoArticulação - Outras unidades de acolhimento'
q_34_6_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - Outras unidades de acolhimento'
q_34_7_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_4_velha'4: Acompanha os encaminhamentosArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_5_velha'5: Realiza reuniões periódicasArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_6_velha'6: Troca informaçõesArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_7_velha'7: Realiza estudos de caso em conjuntoArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_8_velha'8: Desenvolve ativiades em parceriaArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_0_velha'0: Não tem nenhuma articulaçãoArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_7_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - Unidades Educacionais (creches/ escolas/ universidades)'
q_34_8_1_velha'1: Possui dados de localização (endereço, telefone, etc.)Articulação - Serviços de Saúde'
q_34_8_2_velha'2: Recebe usuárias(os) encaminhados por esta unidadeArticulação - Serviços de Saúde'
q_34_8_3_velha'3: Encaminha usuárias(os) para esta unidadeArticulação - Serviços de Saúde'
q_34_8_4_velha'4: Acompanha os encaminhamentosArticulação - Serviços de Saúde'
q_34_8_5_velha'5: Realiza reuniões periódicasArticulação - Serviços de Saúde'
q_34_8_6_velha'6: Troca informaçõesArticulação - Serviços de Saúde'
q_34_8_7_velha'7: Realiza estudos de caso em conjuntoArticulação - Serviços de Saúde'
q_34_8_8_velha'8: Desenvolve ativiades em parceriaArticulação - Serviços de Saúde'
q_34_8_0_velha'0: Não tem nenhuma articulaçãoArticulação - Serviços de Saúde'
q_34_8_9_velha'9: Serviço ou instituição não existente no Município ou no DFArticulação - Serviços de Saúde'
q_42_1_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?1: Deficiência'
q_42_2_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?2: Gênero'
q_42_3_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?3: População em situação de rua'
q_42_4_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?4: População LGBT, orientação sexual e identidade de gênero'
q_42_5_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?5: Álcool e outras drogas'
q_42_6_velha'Nos últimos 12 meses, a Unidade proporcionou/facilitou a participação de seus profissionais em capacitação sobre os seguintes temas?6: Diversidade étnico-racial (questão racial, comunidades indígenas, povos e comunidades tradicionais)'
q_42_7_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?7: Violências e violações de direitos'
q_42_8_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?8: Trabalho Infantil'
q_42_9_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?9: Criança e Adolescente'
q_42_10_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?10: Juventude'
q_42_11_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?11: Envelhecimento'
q_42_12_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?12: Sistema Socioeducativo/Medida Socioeducativa/SINASE'
q_42_13_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?13: Migração'
q_42_14_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?14: Mundo do trabalho'
q_42_99_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?99: Outros'
q_42_0_velha'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?0: Não proporcionou/facilitou a participação dos profissionais.'
.	










 















COMMENT BOOKMARK;LINE_NUM=0;ID=1.
