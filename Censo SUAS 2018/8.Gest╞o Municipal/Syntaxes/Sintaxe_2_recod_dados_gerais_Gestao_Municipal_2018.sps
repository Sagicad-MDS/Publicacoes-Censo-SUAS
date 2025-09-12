


USE ALL.
COMPUTE filter_$=(q_1=1 | q_1=3 | q_1=4).
VARIABLE LABEL filter_$ 'q_1=1 | q_1=3 | q_1=4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


RECODE q_2_1 (0=SYSMIS) (ELSE=Copy) INTO q_2_1_rec.
EXECUTE.
RECODE q_2_2 (0=SYSMIS) (ELSE=Copy) INTO q_2_2_rec.
EXECUTE.
RECODE q_2_3 (0=SYSMIS) (ELSE=Copy) INTO q_2_3_rec.
EXECUTE.
RECODE q_2_4 (0=SYSMIS) (ELSE=Copy) INTO q_2_4_rec.
EXECUTE.
RECODE q_2_5 (0=SYSMIS) (ELSE=Copy) INTO q_2_5_rec.
EXECUTE.
RECODE q_2_6 (0=SYSMIS) (ELSE=Copy) INTO q_2_6_rec.
EXECUTE.
RECODE q_2_7 (0=SYSMIS) (ELSE=Copy) INTO q_2_7_rec.
EXECUTE.
RECODE q_2_8 (0=SYSMIS) (ELSE=Copy) INTO q_2_8_rec.
EXECUTE.

FILTER OFF.
USE ALL.
EXECUTE.

compute q_2_1_velha = q_2_1. 
execute. 
compute q_2_1 =  q_2_1_rec. 
execute. 

compute q_2_2_velha = q_2_2. 
execute. 
compute q_2_2 =  q_2_2_rec. 
execute. 

compute q_2_3_velha = q_2_3. 
execute. 
compute q_2_3 =  q_2_3_rec. 
execute. 

compute q_2_4_velha = q_2_4. 
execute. 
compute q_2_4 =  q_2_4_rec. 
execute. 

compute q_2_5_velha = q_2_5. 
execute. 
compute q_2_5 =  q_2_5_rec. 
execute. 

compute q_2_6_velha = q_2_6. 
execute. 
compute q_2_6 =  q_2_6_rec. 
execute. 

compute q_2_7_velha = q_2_7. 
execute. 
compute q_2_7 =  q_2_7_rec. 
execute. 

compute q_2_8_velha = q_2_8. 
execute. 
compute q_2_8 =  q_2_8_rec. 
execute. 



***********************************q5***

USE ALL.
COMPUTE filter_$=(q_5_0=1).
VARIABLE LABEL filter_$ 'q_5_0=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_6_1 (0=SYSMIS) (ELSE=Copy) INTO q_6_1_rec.
EXECUTE.
RECODE q_6_2 (0=SYSMIS) (ELSE=Copy) INTO q_6_2_rec.
EXECUTE.
RECODE q_6_3 (0=SYSMIS) (ELSE=Copy) INTO q_6_3_rec.
EXECUTE.
RECODE q_6_4 (0=SYSMIS) (ELSE=Copy) INTO q_6_4_rec.
EXECUTE.
RECODE q_6_5 (0=SYSMIS) (ELSE=Copy) INTO q_6_5_rec.
EXECUTE.
RECODE q_6_6 (0=SYSMIS) (ELSE=Copy) INTO q_6_6_rec.
EXECUTE.
RECODE q_6_7 (0=SYSMIS) (ELSE=Copy) INTO q_6_7_rec.
EXECUTE.
RECODE q_6_8 (0=SYSMIS) (ELSE=Copy) INTO q_6_8_rec.
EXECUTE.
RECODE q_6_9 (0=SYSMIS) (ELSE=Copy) INTO q_6_9_rec.
EXECUTE.
RECODE q_6_10 (0=SYSMIS) (ELSE=Copy) INTO q_6_10_rec.
EXECUTE.
RECODE q_6_11 (0=SYSMIS) (ELSE=Copy) INTO q_6_11_rec.
EXECUTE.
RECODE q_6_12 (0=SYSMIS) (ELSE=Copy) INTO q_6_12_rec.
EXECUTE.
RECODE q_6_13 (0=SYSMIS) (ELSE=Copy) INTO q_6_13_rec.
EXECUTE.
RECODE q_6_14 (0=SYSMIS) (ELSE=Copy) INTO q_6_14_rec.
EXECUTE.
RECODE q_6_15 (0=SYSMIS) (ELSE=Copy) INTO q_6_15_rec.
EXECUTE.
RECODE q_6_16 (0=SYSMIS) (ELSE=Copy) INTO q_6_16_rec.
EXECUTE.
RECODE q_6_17 (0=SYSMIS) (ELSE=Copy) INTO q_6_17_rec.
EXECUTE.
RECODE q_6_18 (0=SYSMIS) (ELSE=Copy) INTO q_6_18_rec.
EXECUTE.
RECODE q_6_19 (0=SYSMIS) (ELSE=Copy) INTO q_6_19_rec.
EXECUTE.
RECODE q_6_20 (0=SYSMIS) (ELSE=Copy) INTO q_6_20_rec.
EXECUTE.
RECODE q_6_21 (0=SYSMIS) (ELSE=Copy) INTO q_6_21_rec.
EXECUTE.
RECODE q_6_22 (0=SYSMIS) (ELSE=Copy) INTO q_6_22_rec.
EXECUTE.
RECODE q_6_99 (0=SYSMIS) (ELSE=Copy) INTO q_6_99_rec.
EXECUTE.


FILTER OFF.
USE ALL.
EXECUTE.

compute q_6_1_velha = q_6_1. 
execute. 
compute q_6_1 =  q_6_1_rec. 
execute. 

compute q_6_2_velha = q_6_2. 
execute. 
compute q_6_2 =  q_6_2_rec. 
execute. 

compute q_6_3_velha = q_6_3. 
execute. 
compute q_6_3 =  q_6_3_rec. 
execute. 

compute q_6_4_velha = q_6_4. 
execute. 
compute q_6_4 =  q_6_4_rec. 
execute. 

compute q_6_5_velha = q_6_5. 
execute. 
compute q_6_5 =  q_6_5_rec. 
execute. 

compute q_6_6_velha = q_6_6. 
execute. 
compute q_6_6 =  q_6_6_rec. 
execute. 

compute q_6_7_velha = q_6_7. 
execute. 
compute q_6_7 =  q_6_7_rec. 
execute. 

compute q_6_8_velha = q_6_8. 
execute. 
compute q_6_8 =  q_6_8_rec. 
execute. 

compute q_6_9_velha = q_6_9. 
execute. 
compute q_6_9 =  q_6_9_rec. 
execute. 

compute q_6_10_velha = q_6_10. 
execute. 
compute q_6_10 =  q_6_10_rec. 
execute. 

compute q_6_11_velha = q_6_11. 
execute. 
compute q_6_11 =  q_6_11_rec. 
execute. 

compute q_6_12_velha = q_6_12. 
execute. 
compute q_6_12 =  q_6_12_rec. 
execute. 

compute q_6_13_velha = q_6_13. 
execute. 
compute q_6_13 =  q_6_13_rec. 
execute. 

compute q_6_14_velha = q_6_14. 
execute. 
compute q_6_14 =  q_6_14_rec. 
execute. 

compute q_6_15_velha = q_6_15. 
execute. 
compute q_6_15 =  q_6_15_rec. 
execute. 

compute q_6_16_velha = q_6_16. 
execute. 
compute q_6_16 =  q_6_16_rec. 
execute. 

compute q_6_17_velha = q_6_17. 
execute. 
compute q_6_17 =  q_6_17_rec. 
execute. 

compute q_6_18_velha = q_6_18. 
execute. 
compute q_6_18 =  q_6_18_rec. 
execute. 

compute q_6_19_velha = q_6_19. 
execute. 
compute q_6_19 =  q_6_19_rec. 
execute. 

compute q_6_20_velha = q_6_20. 
execute. 
compute q_6_20 =  q_6_20_rec. 
execute. 

compute q_6_21_velha = q_6_21. 
execute. 
compute q_6_21 =  q_6_21_rec. 
execute. 

compute q_6_22_velha = q_6_22. 
execute. 
compute q_6_22 =  q_6_22_rec. 
execute. 

compute q_6_99_velha = q_6_99. 
execute. 
compute q_6_99 =  q_6_99_rec. 
execute. 

**********************************q_13 e q_17 não necessitam de recodificação

**********************************q_20

USE ALL.
COMPUTE filter_$=(q_20_1=1 | q_20_99=1).
VARIABLE LABEL filter_$ 'q_20_1=1 | q_20_99=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_20_2 (0=SYSMIS) (ELSE=Copy) INTO q_20_2_rec.
EXECUTE.
RECODE q_20_3 (0=SYSMIS) (ELSE=Copy) INTO q_20_3_rec.
EXECUTE.
RECODE q_20_4 (0=SYSMIS) (ELSE=Copy) INTO q_20_4_rec.
EXECUTE.
RECODE q_20_5 (0=SYSMIS) (ELSE=Copy) INTO q_20_5_rec.
EXECUTE.
RECODE q_20_6 (0=SYSMIS) (ELSE=Copy) INTO q_20_6_rec.
EXECUTE.
RECODE q_20_0 (0=SYSMIS) (ELSE=Copy) INTO q_20_0_rec.
EXECUTE.

compute q_20_2_velha = q_20_2. 
execute. 
compute q_20_2 =  q_20_2_rec. 
execute. 
compute q_20_3_velha = q_20_3. 
execute. 
compute q_20_3 =  q_20_3_rec. 
execute. 
compute q_20_4_velha = q_20_4. 
execute. 
compute q_20_4 =  q_20_4_rec. 
execute. 
compute q_20_5_velha = q_20_5. 
execute. 
compute q_20_5 =  q_20_5_rec. 
execute. 
compute q_20_6_velha = q_20_6. 
execute. 
compute q_20_6 =  q_20_6_rec. 
execute. 
compute q_20_0_velha = q_20_0. 
execute. 
compute q_20_0 =  q_20_0_rec. 
execute. 

**********************************q_21

USE ALL.
COMPUTE filter_$=(q_21_0=1).
VARIABLE LABEL filter_$ 'q_21_0=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_21_1 (0=SYSMIS) (ELSE=Copy) INTO q_21_1_rec.
EXECUTE.
RECODE q_21_2 (0=SYSMIS) (ELSE=Copy) INTO q_21_2_rec.
EXECUTE.
RECODE q_21_3 (0=SYSMIS) (ELSE=Copy) INTO q_21_3_rec.
EXECUTE.
RECODE q_21_4 (0=SYSMIS) (ELSE=Copy) INTO q_21_4_rec.
EXECUTE.
RECODE q_21_5 (0=SYSMIS) (ELSE=Copy) INTO q_21_5_rec.
EXECUTE.
RECODE q_21_6 (0=SYSMIS) (ELSE=Copy) INTO q_21_6_rec.
EXECUTE.
RECODE q_21_7 (0=SYSMIS) (ELSE=Copy) INTO q_21_7_rec.
EXECUTE.
RECODE q_21_99 (0=SYSMIS) (ELSE=Copy) INTO q_21_99_rec.
EXECUTE.

compute q_21_1_velha = q_21_1. 
execute. 
compute q_21_1 =  q_21_1_rec. 
execute. 
compute q_21_2_velha = q_21_2. 
execute. 
compute q_21_2 =  q_21_2_rec. 
execute.
compute q_21_3_velha = q_21_3. 
execute. 
compute q_21_3 =  q_21_3_rec. 
execute.
compute q_21_4_velha = q_21_4. 
execute. 
compute q_21_4 =  q_21_4_rec. 
execute.
compute q_21_5_velha = q_21_5. 
execute. 
compute q_21_5 =  q_21_5_rec. 
execute.
compute q_21_6_velha = q_21_6. 
execute. 
compute q_21_6 =  q_21_6_rec. 
execute.
compute q_21_7_velha = q_21_7. 
execute. 
compute q_21_7 =  q_21_7_rec. 
execute.
compute q_21_99_velha = q_21_99. 
execute. 
compute q_21_99 =  q_21_99_rec. 
execute.

********************************q22

USE ALL.
COMPUTE filter_$=(q_22_99=1).
VARIABLE LABEL filter_$ 'q_22_99=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_22_1 (0=SYSMIS) (ELSE=Copy) INTO q_22_1_rec.
EXECUTE.
RECODE q_22_2 (0=SYSMIS) (ELSE=Copy) INTO q_22_2_rec.
EXECUTE.
RECODE q_22_3 (0=SYSMIS) (ELSE=Copy) INTO q_22_3_rec.
EXECUTE.
RECODE q_22_4 (0=SYSMIS) (ELSE=Copy) INTO q_22_4_rec.
EXECUTE.
RECODE q_22_5 (0=SYSMIS) (ELSE=Copy) INTO q_22_5_rec.
EXECUTE.
RECODE q_22_6 (0=SYSMIS) (ELSE=Copy) INTO q_22_6_rec.
EXECUTE.
RECODE q_22_7 (0=SYSMIS) (ELSE=Copy) INTO q_22_7_rec.
EXECUTE.
RECODE q_22_8 (0=SYSMIS) (ELSE=Copy) INTO q_22_8_rec.
EXECUTE.

compute q_22_1_velha = q_22_1. 
execute. 
compute q_22_1 =  q_22_1_rec. 
execute. 
compute q_22_2_velha = q_22_2. 
execute. 
compute q_22_2 =  q_22_2_rec. 
execute.
compute q_22_3_velha = q_22_3. 
execute. 
compute q_22_3 =  q_22_3_rec. 
execute.
compute q_22_4_velha = q_22_4. 
execute. 
compute q_22_4 =  q_22_4_rec. 
execute.
compute q_22_5_velha = q_22_5. 
execute. 
compute q_22_5 =  q_22_5_rec. 
execute.
compute q_22_6_velha = q_22_6. 
execute. 
compute q_22_6 =  q_22_6_rec. 
execute.
compute q_22_7_velha = q_22_7. 
execute. 
compute q_22_7 =  q_22_7_rec. 
execute.
compute q_22_8_velha = q_22_8. 
execute. 
compute q_22_8 =  q_22_8_rec. 
execute.


******************************q_23

USE ALL.
COMPUTE filter_$=(q_23=0).
VARIABLE LABEL filter_$ 'q_23=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


RECODE q_24_1 (0=SYSMIS) (ELSE=Copy) INTO q_24_1_rec.
EXECUTE.
RECODE q_24_2 (0=SYSMIS) (ELSE=Copy) INTO q_24_2_rec.
EXECUTE.
RECODE q_24_3 (0=SYSMIS) (ELSE=Copy) INTO q_24_3_rec.
EXECUTE.
RECODE q_24_4 (0=SYSMIS) (ELSE=Copy) INTO q_24_4_rec.
EXECUTE.
RECODE q_24_5 (0=SYSMIS) (ELSE=Copy) INTO q_24_5_rec.
EXECUTE.

FILTER OFF.
USE ALL.
EXECUTE.

compute q_24_1_velha = q_24_1. 
execute. 
compute q_24_1 =  q_24_1_rec. 
execute. 

compute q_24_2_velha = q_24_2. 
execute. 
compute q_24_2 =  q_24_2_rec. 
execute. 

compute q_24_3_velha = q_24_3. 
execute. 
compute q_24_3 =  q_24_3_rec. 
execute. 

compute q_24_4_velha = q_24_4. 
execute. 
compute q_24_4 =  q_24_4_rec. 
execute. 

compute q_24_5_velha = q_24_5. 
execute. 
compute q_24_5 =  q_24_5_rec. 
execute. 

******************************q_26
******************************q_27 a q_31 não precisa recodificar

USE ALL.
COMPUTE filter_$=(q_26=0).
VARIABLE LABEL filter_$ 'q_26=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_32_1 (0=SYSMIS) (ELSE=Copy) INTO q_32_1_rec.
EXECUTE.
RECODE q_32_2 (0=SYSMIS) (ELSE=Copy) INTO q_32_2_rec.
EXECUTE.
RECODE q_32_3 (0=SYSMIS) (ELSE=Copy) INTO q_32_3_rec.
EXECUTE.
RECODE q_32_4 (0=SYSMIS) (ELSE=Copy) INTO q_32_4_rec.
EXECUTE.
RECODE q_32_5 (0=SYSMIS) (ELSE=Copy) INTO q_32_5_rec.
EXECUTE.
RECODE q_32_6 (0=SYSMIS) (ELSE=Copy) INTO q_32_6_rec.
EXECUTE.
RECODE q_32_0 (0=SYSMIS) (ELSE=Copy) INTO q_32_0_rec.
EXECUTE.


FILTER OFF.
USE ALL.
EXECUTE.

compute q_32_1_velha = q_32_1. 
execute. 
compute q_32_1 =  q_32_1_rec. 
execute.

compute q_32_2_velha = q_32_2. 
execute. 
compute q_32_2 =  q_32_2_rec. 
execute.

compute q_32_3_velha = q_32_3. 
execute. 
compute q_32_3 =  q_32_3_rec. 
execute.

compute q_32_4_velha = q_32_4. 
execute. 
compute q_32_4 =  q_32_4_rec. 
execute.

compute q_32_5_velha = q_32_5. 
execute. 
compute q_32_5 =  q_32_5_rec. 
execute.

compute q_32_6_velha = q_32_6. 
execute. 
compute q_32_6 =  q_32_6_rec. 
execute.

compute q_32_0_velha = q_32_0. 
execute. 
compute q_32_0 =  q_32_0_rec. 
execute. 

**********************q_32

USE ALL.
COMPUTE filter_$=(q_32_0=1).
VARIABLE LABEL filter_$ 'q_32_0=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_32_1 (0=SYSMIS) (ELSE=Copy) INTO q_32_1_rec.
EXECUTE.
RECODE q_32_2 (0=SYSMIS) (ELSE=Copy) INTO q_32_2_rec.
EXECUTE.
RECODE q_32_3 (0=SYSMIS) (ELSE=Copy) INTO q_32_3_rec.
EXECUTE.
RECODE q_32_4 (0=SYSMIS) (ELSE=Copy) INTO q_32_4_rec.
EXECUTE.
RECODE q_32_5 (0=SYSMIS) (ELSE=Copy) INTO q_32_5_rec.
EXECUTE.
RECODE q_32_6 (0=SYSMIS) (ELSE=Copy) INTO q_32_6_rec.
EXECUTE.

compute q_32_1_velha = q_32_1. 
execute. 
compute q_32_1 =  q_32_1_rec. 
execute. 
compute q_32_2_velha = q_32_2. 
execute. 
compute q_32_2 =  q_32_2_rec. 
execute.
compute q_32_3_velha = q_32_3. 
execute. 
compute q_32_3 =  q_32_3_rec. 
execute.
compute q_32_4_velha = q_32_4. 
execute. 
compute q_32_4 =  q_32_4_rec. 
execute.
compute q_32_5_velha = q_32_5. 
execute. 
compute q_32_5 =  q_32_5_rec. 
execute.
compute q_32_6_velha = q_32_6. 
execute. 
compute q_32_6 =  q_32_6_rec. 
execute.

***************************q_33

USE ALL.
COMPUTE filter_$=(q_33_0=1).
VARIABLE LABEL filter_$ 'q_33_0=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_33_1 (0=SYSMIS) (ELSE=Copy) INTO q_33_1_rec.
EXECUTE.
RECODE q_33_2 (0=SYSMIS) (ELSE=Copy) INTO q_33_2_rec.
EXECUTE.
RECODE q_33_3 (0=SYSMIS) (ELSE=Copy) INTO q_33_3_rec.
EXECUTE.
RECODE q_33_4 (0=SYSMIS) (ELSE=Copy) INTO q_33_4_rec.
EXECUTE.
RECODE q_33_5 (0=SYSMIS) (ELSE=Copy) INTO q_33_5_rec.
EXECUTE.
RECODE q_33_6 (0=SYSMIS) (ELSE=Copy) INTO q_33_6_rec.
EXECUTE.
RECODE q_33_7 (0=SYSMIS) (ELSE=Copy) INTO q_33_7_rec.
EXECUTE.
RECODE q_33_8 (0=SYSMIS) (ELSE=Copy) INTO q_33_8_rec.
EXECUTE.
RECODE q_33_9 (0=SYSMIS) (ELSE=Copy) INTO q_33_9_rec.
EXECUTE.

compute q_33_1_velha = q_33_1. 
execute. 
compute q_33_1 =  q_33_1_rec. 
execute. 
compute q_33_2_velha = q_33_2. 
execute. 
compute q_33_2 =  q_33_2_rec. 
execute.
compute q_33_3_velha = q_33_3. 
execute. 
compute q_33_3 =  q_33_3_rec. 
execute.
compute q_33_4_velha = q_33_4. 
execute. 
compute q_33_4 =  q_33_4_rec. 
execute.
compute q_33_5_velha = q_33_5. 
execute. 
compute q_33_5 =  q_33_5_rec. 
execute.
compute q_33_6_velha = q_33_6. 
execute. 
compute q_33_6 =  q_33_6_rec. 
execute.
compute q_33_7_velha = q_33_7. 
execute. 
compute q_33_7 =  q_33_7_rec. 
execute.
compute q_33_8_velha = q_33_8. 
execute. 
compute q_33_8 =  q_33_8_rec. 
execute.
compute q_33_9_velha = q_33_9. 
execute. 
compute q_33_9 =  q_33_9_rec. 
execute.

*********************************q_39

USE ALL.
COMPUTE filter_$=(q_39=0).
VARIABLE LABEL filter_$ 'q_39=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_40_1 (0=SYSMIS) (ELSE=Copy) INTO q_40_1_rec.
EXECUTE.
RECODE q_40_2 (0=SYSMIS) (ELSE=Copy) INTO q_40_2_rec.
EXECUTE.
RECODE q_40_3 (0=SYSMIS) (ELSE=Copy) INTO q_40_3_rec.
EXECUTE.
RECODE q_40_4 (0=SYSMIS) (ELSE=Copy) INTO q_40_4_rec.
EXECUTE.
RECODE q_40_5 (0=SYSMIS) (ELSE=Copy) INTO q_40_5_rec.
EXECUTE.
RECODE q_40_6 (0=SYSMIS) (ELSE=Copy) INTO q_40_6_rec.
EXECUTE.
RECODE q_40_7 (0=SYSMIS) (ELSE=Copy) INTO q_40_7_rec.
EXECUTE.
RECODE q_40_8 (0=SYSMIS) (ELSE=Copy) INTO q_40_8_rec.
EXECUTE.
RECODE q_40_99 (0=SYSMIS) (ELSE=Copy) INTO q_40_99_rec.
EXECUTE.
RECODE q_41_0 (0=SYSMIS) (ELSE=Copy) INTO q_41_0_rec.
EXECUTE.
RECODE q_41_1 (0=SYSMIS) (ELSE=Copy) INTO q_41_1_rec.
EXECUTE.
RECODE q_41_2 (0=SYSMIS) (ELSE=Copy) INTO q_41_2_rec.
EXECUTE.
RECODE q_41_3 (0=SYSMIS) (ELSE=Copy) INTO q_41_3_rec.
EXECUTE.
RECODE q_41_4 (0=SYSMIS) (ELSE=Copy) INTO q_41_4_rec.
EXECUTE.
RECODE q_41_5 (0=SYSMIS) (ELSE=Copy) INTO q_41_5_rec.
EXECUTE.
RECODE q_41_6 (0=SYSMIS) (ELSE=Copy) INTO q_41_6_rec.
EXECUTE.
RECODE q_41_7 (0=SYSMIS) (ELSE=Copy) INTO q_41_7_rec.
EXECUTE.
RECODE q_41_8 (0=SYSMIS) (ELSE=Copy) INTO q_41_8_rec.
EXECUTE.
RECODE q_41_9 (0=SYSMIS) (ELSE=Copy) INTO q_41_9_rec.
EXECUTE.
RECODE q_41_10 (0=SYSMIS) (ELSE=Copy) INTO q_41_10_rec.
EXECUTE.
RECODE q_41_11 (0=SYSMIS) (ELSE=Copy) INTO q_41_11_rec.
EXECUTE.
RECODE q_41_12 (0=SYSMIS) (ELSE=Copy) INTO q_41_12_rec.
EXECUTE.
RECODE q_41_99 (0=SYSMIS) (ELSE=Copy) INTO q_41_99_rec.
EXECUTE.

FILTER OFF.
USE ALL.
EXECUTE.

compute q_40_1_velha = q_40_1. 
execute. 
compute q_40_1 =  q_40_1_rec. 
execute.

compute q_40_2_velha = q_40_2. 
execute. 
compute q_40_2 =  q_40_2_rec. 
execute.

compute q_40_3_velha = q_40_3. 
execute. 
compute q_40_3 =  q_40_3_rec. 
execute.

compute q_40_4_velha = q_40_4. 
execute. 
compute q_40_4 =  q_40_4_rec. 
execute.

compute q_40_5_velha = q_40_5. 
execute. 
compute q_40_5 =  q_40_5_rec. 
execute.

compute q_40_6_velha = q_40_6. 
execute. 
compute q_40_6 =  q_40_6_rec. 
execute.

compute q_40_7_velha = q_40_7. 
execute. 
compute q_40_7 =  q_40_7_rec. 
execute.

compute q_40_8_velha = q_40_8. 
execute. 
compute q_40_8 =  q_40_8_rec. 
execute.

compute q_40_99_velha = q_40_99. 
execute. 
compute q_40_99 =  q_40_99_rec. 
execute.

compute q_41_0_velha = q_41_0. 
execute. 
compute q_41_0 =  q_41_0_rec. 
execute.

compute q_41_1_velha = q_41_1. 
execute. 
compute q_41_1 =  q_41_1_rec. 
execute.

compute q_41_2_velha = q_41_2. 
execute. 
compute q_41_2 =  q_41_2_rec. 
execute.

compute q_41_3_velha = q_41_3. 
execute. 
compute q_41_3 =  q_41_3_rec. 
execute.

compute q_41_4_velha = q_41_4. 
execute. 
compute q_41_4 =  q_41_4_rec. 
execute.

compute q_41_5_velha = q_41_5. 
execute. 
compute q_41_5 =  q_41_5_rec. 
execute.

compute q_41_6_velha = q_41_6. 
execute. 
compute q_41_6 =  q_41_6_rec. 
execute.

compute q_41_7_velha = q_41_7. 
execute. 
compute q_41_7 =  q_41_7_rec. 
execute.

compute q_41_8_velha = q_41_8. 
execute. 
compute q_41_8 =  q_41_8_rec. 
execute.

compute q_41_9_velha = q_41_9. 
execute. 
compute q_41_9 =  q_41_9_rec. 
execute.

compute q_41_10_velha = q_41_10. 
execute. 
compute q_41_10 =  q_41_10_rec. 
execute.

compute q_41_11_velha = q_41_11. 
execute. 
compute q_41_11 =  q_41_11_rec. 
execute.

compute q_41_12_velha = q_41_12. 
execute. 
compute q_41_12 =  q_41_12_rec. 
execute.

compute q_41_99_velha = q_41_99. 
execute. 
compute q_41_99 =  q_41_99_rec. 
execute.

*********************q_41

USE ALL.
COMPUTE filter_$=(q_41=0).
VARIABLE LABEL filter_$ 'q_41=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_41_1 (0=SYSMIS) (ELSE=Copy) INTO q_41_1_rec.
EXECUTE.
RECODE q_41_2 (0=SYSMIS) (ELSE=Copy) INTO q_41_2_rec.
EXECUTE.
RECODE q_41_3 (0=SYSMIS) (ELSE=Copy) INTO q_41_3_rec.
EXECUTE.
RECODE q_41_4 (0=SYSMIS) (ELSE=Copy) INTO q_41_4_rec.
EXECUTE.
RECODE q_41_5 (0=SYSMIS) (ELSE=Copy) INTO q_41_5_rec.
EXECUTE.
RECODE q_41_6 (0=SYSMIS) (ELSE=Copy) INTO q_41_6_rec.
EXECUTE.
RECODE q_41_7 (0=SYSMIS) (ELSE=Copy) INTO q_41_7_rec.
EXECUTE.
RECODE q_41_8 (0=SYSMIS) (ELSE=Copy) INTO q_41_8_rec.
EXECUTE.
RECODE q_41_9 (0=SYSMIS) (ELSE=Copy) INTO q_41_9_rec.
EXECUTE.
RECODE q_41_10 (0=SYSMIS) (ELSE=Copy) INTO q_41_10_rec.
EXECUTE.
RECODE q_41_11 (0=SYSMIS) (ELSE=Copy) INTO q_41_11_rec.
EXECUTE.
RECODE q_41_12 (0=SYSMIS) (ELSE=Copy) INTO q_41_12_rec.
EXECUTE.
RECODE q_41_99 (0=SYSMIS) (ELSE=Copy) INTO q_41_99_rec.
EXECUTE.

FILTER OFF.
USE ALL.
EXECUTE.

compute q_41_1_velha = q_41_1. 
execute. 
compute q_41_1 =  q_41_1_rec. 
execute.

compute q_41_2_velha = q_41_2. 
execute. 
compute q_41_2 =  q_41_2_rec. 
execute.

compute q_41_3_velha = q_41_3. 
execute. 
compute q_41_3 =  q_41_3_rec. 
execute.

compute q_41_4_velha = q_41_4. 
execute. 
compute q_41_4 =  q_41_4_rec. 
execute.

compute q_41_5_velha = q_41_5. 
execute. 
compute q_41_5 =  q_41_5_rec. 
execute.

compute q_41_6_velha = q_41_6. 
execute. 
compute q_41_6 =  q_41_6_rec. 
execute.

compute q_41_7_velha = q_41_7. 
execute. 
compute q_41_7 =  q_41_7_rec. 
execute.

compute q_41_8_velha = q_41_8. 
execute. 
compute q_41_8 =  q_41_8_rec. 
execute.

compute q_41_9_velha = q_41_9. 
execute. 
compute q_41_9 =  q_41_9_rec. 
execute.

compute q_41_10_velha = q_41_10. 
execute. 
compute q_41_10 =  q_41_10_rec. 
execute.

compute q_41_11_velha = q_41_11. 
execute. 
compute q_41_11 =  q_41_11_rec. 
execute.

compute q_41_12_velha = q_41_12. 
execute. 
compute q_41_12 =  q_41_12_rec. 
execute.

compute q_41_99_velha = q_41_99. 
execute. 
compute q_41_99 =  q_41_99_rec. 
execute.

********************q_42

USE ALL.
COMPUTE filter_$=(q_42=0).
VARIABLE LABEL filter_$ 'q_42=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_42_1 (0=SYSMIS) (ELSE=Copy) INTO q_42_1_rec.
EXECUTE.
RECODE q_42_2 (0=SYSMIS) (ELSE=Copy) INTO q_42_2_rec.
EXECUTE.
RECODE q_42_3 (0=SYSMIS) (ELSE=Copy) INTO q_42_3_rec.
EXECUTE.
RECODE q_42_4 (0=SYSMIS) (ELSE=Copy) INTO q_42_4_rec.
EXECUTE.
RECODE q_42_5 (0=SYSMIS) (ELSE=Copy) INTO q_42_5_rec.
EXECUTE.
RECODE q_42_6 (0=SYSMIS) (ELSE=Copy) INTO q_42_6_rec.
EXECUTE.
RECODE q_42_7 (0=SYSMIS) (ELSE=Copy) INTO q_42_7_rec.
EXECUTE.
RECODE q_42_8 (0=SYSMIS) (ELSE=Copy) INTO q_42_8_rec.
EXECUTE.
RECODE q_42_9 (0=SYSMIS) (ELSE=Copy) INTO q_42_9_rec.
EXECUTE.

FILTER OFF.
USE ALL.
EXECUTE.

compute q_42_1_velha = q_42_1. 
execute. 
compute q_42_1 =  q_42_1_rec. 
execute.

compute q_42_2_velha = q_42_2. 
execute. 
compute q_42_2 =  q_42_2_rec. 
execute.

compute q_42_3_velha = q_42_3. 
execute. 
compute q_42_3 =  q_42_3_rec. 
execute.

compute q_42_4_velha = q_42_4. 
execute. 
compute q_42_4 =  q_42_4_rec. 
execute.

compute q_42_5_velha = q_42_5. 
execute. 
compute q_42_5 =  q_42_5_rec. 
execute.

compute q_42_6_velha = q_42_6. 
execute. 
compute q_42_6 =  q_42_6_rec. 
execute.

compute q_42_7_velha = q_42_7. 
execute. 
compute q_42_7 =  q_42_7_rec. 
execute.

compute q_42_8_velha = q_42_8. 
execute. 
compute q_42_8 =  q_42_8_rec. 
execute.

compute q_42_9_velha = q_42_9. 
execute. 
compute q_42_9 =  q_42_9_rec. 
execute.

********************************q_48

USE ALL.
COMPUTE filter_$=(q_48=0).
VARIABLE LABEL filter_$ 'q_48=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_49_1 (0=SYSMIS) (ELSE=Copy) INTO q_49_1_rec.
EXECUTE.
RECODE q_49_2 (0=SYSMIS) (ELSE=Copy) INTO q_49_2_rec.
EXECUTE.
RECODE q_49_3 (0=SYSMIS) (ELSE=Copy) INTO q_49_3_rec.
EXECUTE.
RECODE q_49_4 (0=SYSMIS) (ELSE=Copy) INTO q_49_4_rec.
EXECUTE.
RECODE q_49_5 (0=SYSMIS) (ELSE=Copy) INTO q_49_5_rec.
EXECUTE.
RECODE q_49_6 (0=SYSMIS) (ELSE=Copy) INTO q_49_6_rec.
EXECUTE.
RECODE q_49_7 (0=SYSMIS) (ELSE=Copy) INTO q_49_7_rec.
EXECUTE.
RECODE q_49_8 (0=SYSMIS) (ELSE=Copy) INTO q_49_8_rec.
EXECUTE.
RECODE q_49_9 (0=SYSMIS) (ELSE=Copy) INTO q_49_9_rec.
EXECUTE.
RECODE q_49_10 (0=SYSMIS) (ELSE=Copy) INTO q_49_10_rec.
EXECUTE.
RECODE q_49_11 (0=SYSMIS) (ELSE=Copy) INTO q_49_11_rec.
EXECUTE.
RECODE q_49_12 (0=SYSMIS) (ELSE=Copy) INTO q_49_12_rec.
EXECUTE.
RECODE q_49_13 (0=SYSMIS) (ELSE=Copy) INTO q_49_13_rec.
EXECUTE.
RECODE q_49_14 (0=SYSMIS) (ELSE=Copy) INTO q_49_14_rec.
EXECUTE.
RECODE q_49_15 (0=SYSMIS) (ELSE=Copy) INTO q_49_15_rec.
EXECUTE.
RECODE q_49_99 (0=SYSMIS) (ELSE=Copy) INTO q_49_99_rec.
EXECUTE.


FILTER OFF.
USE ALL.
EXECUTE.


compute q_49_1_velha = q_49_1. 
execute. 
compute q_49_1 =  q_49_1_rec. 
execute.

compute q_49_2_velha = q_49_2. 
execute. 
compute q_49_2 =  q_49_2_rec. 
execute.

compute q_49_3_velha = q_49_3. 
execute. 
compute q_49_3 =  q_49_3_rec. 
execute.

compute q_49_4_velha = q_49_4. 
execute. 
compute q_49_4 =  q_49_4_rec. 
execute.

compute q_49_5_velha = q_49_5. 
execute. 
compute q_49_5 =  q_49_5_rec. 
execute.

compute q_49_6_velha = q_49_6. 
execute. 
compute q_49_6 =  q_49_6_rec. 
execute.

compute q_49_7_velha = q_49_7. 
execute. 
compute q_49_7 =  q_49_7_rec. 
execute.

compute q_49_8_velha = q_49_8. 
execute. 
compute q_49_8 =  q_49_8_rec. 
execute.

compute q_49_9_velha = q_49_9. 
execute. 
compute q_49_9 =  q_49_9_rec. 
execute.

compute q_49_10_velha = q_49_10. 
execute. 
compute q_49_10 =  q_49_10_rec. 
execute.

compute q_49_11_velha = q_49_11. 
execute. 
compute q_49_11 =  q_49_11_rec. 
execute.

compute q_49_12_velha = q_49_12. 
execute. 
compute q_49_12 =  q_49_12_rec. 
execute.

compute q_49_13_velha = q_49_13. 
execute. 
compute q_49_13 =  q_49_13_rec. 
execute.

compute q_49_14_velha = q_49_14. 
execute. 
compute q_49_14 =  q_49_14_rec. 
execute.

compute q_49_15_velha = q_49_15. 
execute. 
compute q_49_15 =  q_49_15_rec. 
execute.

compute q_49_99_velha = q_49_99. 
execute. 
compute q_49_99 =  q_49_99_rec. 
execute.


**************************************************q_51

USE ALL.
COMPUTE filter_$=(q_51=0).
VARIABLE LABEL filter_$ 'q_51=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_52_99 (0=SYSMIS) (ELSE=Copy) INTO q_52_99_rec.
EXECUTE.
RECODE q_53_99 (0=SYSMIS) (ELSE=Copy) INTO q_53_99_rec.
EXECUTE.

FILTER OFF.
USE ALL.
EXECUTE.

compute q_52_99_velha = q_52_99. 
execute. 
compute q_52_99 =  q_52_99_rec. 
execute.

compute q_53_99_velha = q_53_99. 
execute. 
compute q_53_99 =  q_53_99_rec. 
execute.

****************************************************q_54

USE ALL.
COMPUTE filter_$=(q_54=0).
VARIABLE LABEL filter_$ 'q_54=0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_55_1_99 (0=SYSMIS) (ELSE=Copy) INTO q_55_1_99_rec.
EXECUTE.
RECODE q_55_2_99 (0=SYSMIS) (ELSE=Copy) INTO q_55_2_99_rec.
EXECUTE.


FILTER OFF.
USE ALL.
EXECUTE.

compute q_55_1_99_velha = q_55_1_99. 
execute. 
compute q_55_1_99 =  q_55_1_99_rec. 
execute.

compute q_55_2_99_velha = q_55_2_99. 
execute. 
compute q_55_2_99 =  q_55_2_99_rec. 
execute.

******************************************************q_58

USE ALL.
COMPUTE filter_$=(q_58).
VARIABLE LABEL filter_$ 'q_58 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE q_59 (1=SYSMIS) (2=SYSMIS) (3=SYSMIS) (4=SYSMIS) (5=SYSMIS) (99=SYSMIS) (ELSE=Copy) INTO 
    q_59_rec.
EXECUTE.


FILTER OFF.
USE ALL.
EXECUTE.

compute q_59_velha = q_59. 
execute. 
compute q_59 =  q_59_rec. 
execute.




DELETE VARIABLES
q_2_1_rec
q_2_2_rec
q_2_3_rec
q_2_4_rec
q_2_5_rec
q_2_6_rec
q_2_7_rec
q_2_8_rec
q_6_1_rec
q_6_2_rec
q_6_3_rec
q_6_4_rec
q_6_5_rec
q_6_6_rec
q_6_7_rec
q_6_8_rec
q_6_9_rec
q_6_10_rec
q_6_11_rec
q_6_12_rec
q_6_13_rec
q_6_14_rec
q_6_15_rec
q_6_16_rec
q_6_17_rec
q_6_18_rec
q_6_19_rec
q_6_20_rec
q_6_21_rec
q_6_22_rec
q_6_99_rec
q_24_1_rec
q_24_2_rec
q_24_3_rec
q_24_4_rec
q_24_5_rec
q_32_1_rec
q_32_2_rec
q_32_3_rec
q_32_4_rec
q_32_5_rec
q_32_6_rec
q_32_0_rec
q_40_1_rec
q_40_2_rec
q_40_3_rec
q_40_4_rec
q_40_5_rec
q_40_6_rec
q_40_7_rec
q_40_8_rec
q_40_99_rec
q_41_0_rec
q_41_1_rec
q_41_2_rec
q_41_3_rec
q_41_4_rec
q_41_5_rec
q_41_6_rec
q_41_7_rec
q_41_8_rec
q_41_9_rec
q_41_10_rec
q_41_11_rec
q_41_12_rec
q_41_99_rec
q_49_1_rec
q_49_2_rec
q_49_3_rec
q_49_4_rec
q_49_5_rec
q_49_6_rec
q_49_7_rec
q_49_8_rec
q_49_9_rec
q_49_10_rec
q_49_11_rec
q_49_12_rec
q_49_13_rec
q_49_14_rec
q_49_15_rec
q_49_99_rec
q_52_99_rec
q_53_99_rec
q_55_1_99_rec
q_55_2_99_rec
q_59_rec.


VARIABLE LABELS
q_2_1_velha 'q_2_1_v11144_1_A qual secretaria a assistência social está associada? Educação'
q_2_2_velha 'q_2_2_v11144_2_A qual secretaria a assistência social está associada? Planejamento'
q_2_3_velha 'q_2_3_v11144_3_A qual secretaria a assistência social está associada? Saúde'
q_2_4_velha 'q_2_4_v11144_4_A qual secretaria a assistência social está associada? Habitação'
q_2_5_velha 'q_2_5_v11144_5_A qual secretaria a assistência social está associada? Segurança alimentar'
q_2_6_velha 'q_2_6_v11144_6_A qual secretaria a assistência social está associada? Trabalho e/ou Emprego'
q_2_7_velha 'q_2_7_v11144_7_A qual secretaria a assistência social está associada? Direitos Humanos'
q_2_8_velha 'q_2_8_v11144_8_A qual secretaria a assistência social está associada? Outra'
q_2_8_1_velha 'q_2_8_1_v11145_Qual?'
q_6_1_velha 'q_6_1_v13079_1_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Conceituação da assistência social'
q_6_2_velha 'q_6_2_v13079_2_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Funções da assistência social (Vigilância Socioassistencial, Proteção Social, Defesa de Direitos)'
q_6_3_velha 'q_6_3_v13079_3_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Princípios pelos quais a Assistência Social é regida'
q_6_4_velha 'q_6_4_v13079_4_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Diretrizes para organização da Assistência Social'
q_6_5_velha 'q_6_5_v13079_5_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Organização da assistência social por níveis de Proteção Social'
q_6_6_velha 'q_6_6_v13079_6_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Conceituação e Objetivos do SUAS'
q_6_7_velha 'q_6_7_v13079_7_Conteúdo previsto na Lei Municipal de regulamentação do SUAS:  Público destinatário do SUAS'
q_6_8_velha 'q_6_8_v13079_8_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Previsão do financiamento dos serviços'
q_6_9_velha 'q_6_9_v13079_9_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Previsão do financiamento dos programas e projetos'
q_6_10_velha 'q_6_10_v13079_10_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Previsão do financiamento dos benefícios socioassistenciais'
q_6_11_velha 'q_6_11_v13079_11_Conteúdo previsto na Lei Municipal de regulamentação do SUAS:  Especificação do órgão da Administração Pública responsável pela coordenação da Política de Assistência Socia'
q_6_12_velha 'q_6_12_v13079_12_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Previsão de prazo para regulamentação do funcionamento do Fundo de Assistência Social'
q_6_13_velha 'q_6_13_v13079_13_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Especificação e/ou conceituação dos equipamentos públicos estatais CRAS e CREAS'
q_6_14_velha 'q_6_14_v13079_14_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Especificação e/ou conceituação dos serviços socioassistenciais'
q_6_15_velha 'q_6_15_v13079_15_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Especificação, conceituação e/ou formas de concessão dos benefícios eventuais'
q_6_16_velha 'q_6_16_v13079_16_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Criação e/ou competências do Conselho Municipal de Assistência Social'
q_6_17_velha 'q_6_17_v13079_17_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Criação do Fundo Municipal de Assistência Social'
q_6_18_velha 'q_6_18_v13079_18_Conteúdo previsto na Lei Municipal de regulamentação do SUAS:  Instituição do Plano Municipal de Assistência Social'
q_6_19_velha 'q_6_19_v13079_19_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Organização das Conferências Municipais de Assistência Social'
q_6_20_velha 'q_6_20_v13079_20_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Instâncias de pactuação'
q_6_21_velha 'q_6_21_v13079_21_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Relação com as Organizações da Sociedade Civil'
q_6_22_velha 'q_6_22_v13079_22_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Organização dos Recursos Humanos (cargos e salários, gratificações, educação permanente, entre outros)'
q_6_99_velha 'q_6_99_v13079_99_Conteúdo previsto na Lei Municipal de regulamentação do SUAS: Outros'
q_24_1_velha 'q_24_1_v14664_1_Em qual(is) unidade(s) o serviço é ofertado? No(s) CREAS'
q_24_2_velha 'q_24_2_v14664_2_Em qual(is) unidade(s) o serviço é ofertado? No(s) Centro POP'
q_24_3_velha 'q_24_3_v14664_3_Em qual(is) unidade(s) o serviço é ofertado? Na sede/órgão gestor do município (considerar nesta opção estruturas administrativas descentralizadas, como regionais ou similares)'
q_24_4_velha 'q_24_4_v14664_4_Em qual(is) unidade(s) o serviço é ofertado? Em outra unidade pública. Se sim, quantas unidades?'
q_24_5_velha 'q_24_5_v14664_5_Em qual(is) unidade(s) o serviço é ofertado? Em entidade ou Organização da Sociedade Civil Se sim, quantas unidades?'
q_32_1_velha 'q_32_1_v13140_1_Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? Visitas domiciliares da equipe técnica do Programa à família'
q_32_2_velha 'q_32_2_v13140_2_Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? Reuniões com grupos de famílias'
q_32_3_velha 'q_32_3_v13140_3_Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? Atendimento psicossocial individualizado'
q_32_4_velha 'q_32_4_v13140_4_Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? Palestras / oficinas'
q_32_5_velha 'q_32_5_v13140_5_Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? Elaboração de relatórios técnicos sobre casos em acompanhamento'
q_32_6_velha 'q_32_6_v13140_6_Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? Envio de relatórios para o Judiciário'
q_32_0_velha 'q_32_0_v13140_0_Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município? Não realiza nenhuma das atividades acima'
q_40_1_velha 'q_40_1_v13166_1_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Serviço Nacional do Emprego – SINE'
q_40_2_velha 'q_40_2_v13166_2_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Cursos do PRONATEC'
q_40_3_velha 'q_40_3_v13166_3_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Cursos técnicos de instituições municipais/estaduais'
q_40_4_velha 'q_40_4_v13166_4_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Cooperativas'
q_40_5_velha 'q_40_5_v13166_5_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Microcrédito'
q_40_6_velha 'q_40_6_v13166_6_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Micro empreendedorismo individual'
q_40_7_velha 'q_40_7_v13166_7_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Sistema S (SESC, SENAC, SESI, SENAR, etc)'
q_40_8_velha 'q_40_8_v13166_8_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Organizações de trabalhadores (sindicatos, conselhos, etc)'
q_40_99_velha 'q_40_99_v13166_99_Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social? Outros'
q_41_0_velha 'q_41_0_v13186_0_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Não há delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho'
q_41_1_velha 'q_41_1_v13186_1_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Pessoas inscritas no CADÚNICO'
q_41_2_velha 'q_41_2_v13186_2_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Beneficiárias(os) do Programa Bolsa Família'
q_41_3_velha 'q_41_3_v13186_3_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Pessoas com deficiência'
q_41_4_velha 'q_41_4_v13186_4_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Pessoas do Serviço de Convivência e Fortalecimento de Vínculos'
q_41_5_velha 'q_41_5_v13186_5_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Adolescentes e jovens no sistema socioeducativo e egressas(os)'
q_41_6_velha 'q_41_6_v13186_6_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Adultas(os) em Famílias com presença de trabalho infantil'
q_41_7_velha 'q_41_7_v13186_7_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Famílias com pessoas em situação de privação de liberdade'
q_41_8_velha 'q_41_8_v13186_8_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Indivíduos egressos do sistema penal'
q_41_9_velha 'q_41_9_v13186_9_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Famílias com crianças em situação de acolhimento provisório'
q_41_10_velha 'q_41_10_v13186_10_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Adolescentes e jovens no serviço de acolhimento e egressas(os)'
q_41_11_velha 'q_41_11_v13186_11_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? População em Situação de Rua'
q_41_12_velha 'q_41_12_v13186_12_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Povos e comunidades tradicionais'
q_41_99_velha 'q_41_99_v13186_99_Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho? Outros'
q_49_1_velha 'q_49_1_v14801_1_Indique os conteúdos/temas das ações de comunicação : Informação sobre direitos das(os) usuárias(os) (Direito da pessoa idosa, da Mulher, de crianças/adolescentes, etc)'
q_49_2_velha 'q_49_2_v14801_2_Indique os conteúdos/temas das ações de comunicação : BPC'
q_49_3_velha 'q_49_3_v14801_3_Indique os conteúdos/temas das ações de comunicação : Programa Bolsa Família'
q_49_4_velha 'q_49_4_v14801_4_Indique os conteúdos/temas das ações de comunicação : Cadastro Único'
q_49_5_velha 'q_49_5_v14801_5_Indique os conteúdos/temas das ações de comunicação : Serviços Socioassistenciais (CRAS, Acolhimento, etc)'
q_49_6_velha 'q_49_6_v14801_6_Indique os conteúdos/temas das ações de comunicação : População de Rua'
q_49_7_velha 'q_49_7_v14801_7_Indique os conteúdos/temas das ações de comunicação : Trabalho Infantil'
q_49_8_velha 'q_49_8_v14801_8_Indique os conteúdos/temas das ações de comunicação : Violência Doméstica'
q_49_9_velha 'q_49_9_v14801_9_Indique os conteúdos/temas das ações de comunicação : Exploração Sexual'
q_49_10_velha 'q_49_10_v14801_10_Indique os conteúdos/temas das ações de comunicação : Desigualdade de Gênero'
q_49_11_velha 'q_49_11_v14801_11_Indique os conteúdos/temas das ações de comunicação : Direito LGBT'
q_49_12_velha 'q_49_12_v14801_12_Indique os conteúdos/temas das ações de comunicação : Divulgação de eventos técnicos'
q_49_13_velha 'q_49_13_v14801_13_Indique os conteúdos/temas das ações de comunicação : Divulgação de Orientações Técnicas'
q_49_14_velha 'q_49_14_v14801_14_Indique os conteúdos/temas das ações de comunicação : Divulgação de Normativas'
q_49_15_velha 'q_49_15_v14801_15_Indique os conteúdos/temas das ações de comunicação : Controle Social'
q_49_99_velha 'q_49_99_v14801_99_Indique os conteúdos/temas das ações de comunicação : Outros'
q_52_99_velha 'q_52_99_v14792_0_ Em que ano ocorreu a última atualização do Plano de Capacitação e Educação Permanente? Não sabe'
q_53_99_velha 'q_53_99_v14794_99_Para o ano de 2018, qual foi a previsão de quantidade de trabalhadores capacitados no plano? Não há previsão'
q_55_1_99_velha 'q_55_1_99_v13242_99_Profissionais: Não sabe'
q_55_2_99_velha 'q_55_2_99_v14709_99_Conselheiras(os): Não sabe'
q_59_velha 'q_59_v14714_Com qual frequência ocorrem as reuniões ordinárias da Mesa de Negociação do SUAS?'.








