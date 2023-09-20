*********************************************************************************************************************************
****Recodificar variaveis  fora do padrão 


RECODE q6_9 (1=1) (2=0).
EXECUTE.
VALUE LABELS   q6_9
1' Sim'
0' Não'.

RECODE q6_10 (1=1) (2=0).
EXECUTE.
VALUE LABELS    q6_10
1' Sim'
0' Não'.

RECODE q34_5 (1=1) (2=2)  (3=3) (4=4)  (5=0)                      .
EXECUTE.

VALUE LABELS    q34_5
1' Sempre'
2' Na maior parte do tempo'
3' Às vezes'
4' Na menor parte do tempo'
0' Nunca'.



*****recodificar
*q18**************************

compute q18_1_velha = q18_1. 
compute q18_2_velha = q18_2.
compute q18_3_velha = q18_3.
compute q18_99_velha = q18_99.
compute q18_0_velha = q18_0.
execute. 


DO IF (q18_0=1).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2 (ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_99  (ELSE=SYSMIS).
END IF.
EXECUTE.



*q20*************************
 
compute q21_1_1_velha = q21_1_1.
compute q21_1_2_velha = q21_1_2.
compute q21_1_3_velha = q21_1_3.
compute q21_1_4_velha = q21_1_4.
compute q21_1_99_velha = q21_1_99.
compute q21_1_0_velha = q21_1_0.
compute q21_2_1_velha = q21_2_1.
compute q21_2_2_velha = q21_2_2.
compute q21_2_3_velha = q21_2_3.
compute q21_2_4_velha = q21_2_4.
compute q21_2_99_velha = q21_2_99.
compute q21_2_0_velha = q21_2_0.
compute q21_3_1_velha = q21_3_1.
compute q21_3_2_velha = q21_3_2.
compute q21_3_3_velha = q21_3_3.
compute q21_3_4_velha = q21_3_4.
compute q21_3_99_velha = q21_3_99.
compute q21_3_0_velha = q21_3_0.
compute q21_4_1_velha = q21_4_1.
compute q21_4_2_velha = q21_4_2.
compute q21_4_3_velha = q21_4_3.
compute q21_4_4_velha = q21_4_4.
compute q21_4_99_velha = q21_4_99.
compute q21_4_0_velha = q21_4_0.
compute q21_5_1_velha = q21_5_1.
compute q21_5_2_velha = q21_5_2.
compute q21_5_3_velha = q21_5_3.
compute q21_5_4_velha = q21_5_4.
compute q21_5_99_velha = q21_5_99.
compute q21_5_0_velha = q21_5_0.
compute q21_6_1_velha = q21_6_1.
compute q21_6_2_velha = q21_6_2.
compute q21_6_3_velha = q21_6_3.
compute q21_6_4_velha = q21_6_4.
compute q21_6_99_velha = q21_6_99.
compute q21_6_0_velha = q21_6_0.
compute q21_7_1_velha = q21_7_1.
compute q21_7_2_velha = q21_7_2.
compute q21_7_3_velha = q21_7_3.
compute q21_7_4_velha = q21_7_4.
compute q21_7_99_velha = q21_7_99.
compute q21_7_0_velha = q21_7_0.
compute q21_8_1_velha = q21_8_1.
compute q21_8_2_velha = q21_8_2.
compute q21_8_3_velha = q21_8_3.
compute q21_8_4_velha = q21_8_4.
compute q21_8_99_velha = q21_8_99.
compute q21_8_0_velha = q21_8_0.
compute q21_9_1_velha = q21_9_1.
compute q21_9_2_velha = q21_9_2.
compute q21_9_3_velha = q21_9_3.
compute q21_9_4_velha = q21_9_4.
compute q21_9_99_velha = q21_9_99.
compute q21_9_0_velha = q21_9_0.
execute. 



DO IF (q20_1=1).
RECODE q21_1_1(ELSE=SYSMIS).
RECODE q21_1_2(ELSE=SYSMIS).
RECODE q21_1_3(ELSE=SYSMIS).
RECODE q21_1_4(ELSE=SYSMIS).
RECODE q21_1_99(ELSE=SYSMIS).
RECODE q21_1_0(ELSE=SYSMIS).
RECODE q21_2_1(ELSE=SYSMIS).
RECODE q21_2_2(ELSE=SYSMIS).
RECODE q21_2_3(ELSE=SYSMIS).
RECODE q21_2_4(ELSE=SYSMIS).
RECODE q21_2_99(ELSE=SYSMIS).
RECODE q21_2_0(ELSE=SYSMIS).
RECODE q21_3_1(ELSE=SYSMIS).
RECODE q21_3_2(ELSE=SYSMIS).
RECODE q21_3_3(ELSE=SYSMIS).
RECODE q21_3_4(ELSE=SYSMIS).
RECODE q21_3_99(ELSE=SYSMIS).
RECODE q21_3_0(ELSE=SYSMIS).
RECODE q21_4_1(ELSE=SYSMIS).
RECODE q21_4_2(ELSE=SYSMIS).
RECODE q21_4_3(ELSE=SYSMIS).
RECODE q21_4_4(ELSE=SYSMIS).
RECODE q21_4_99(ELSE=SYSMIS).
RECODE q21_4_0(ELSE=SYSMIS).
RECODE q21_5_1(ELSE=SYSMIS).
RECODE q21_5_2(ELSE=SYSMIS).
RECODE q21_5_3(ELSE=SYSMIS).
RECODE q21_5_4(ELSE=SYSMIS).
RECODE q21_5_99(ELSE=SYSMIS).
RECODE q21_5_0(ELSE=SYSMIS).
RECODE q21_6_1(ELSE=SYSMIS).
RECODE q21_6_2(ELSE=SYSMIS).
RECODE q21_6_3(ELSE=SYSMIS).
RECODE q21_6_4(ELSE=SYSMIS).
RECODE q21_6_99(ELSE=SYSMIS).
RECODE q21_6_0(ELSE=SYSMIS).
RECODE q21_7_1(ELSE=SYSMIS).
RECODE q21_7_2(ELSE=SYSMIS).
RECODE q21_7_3(ELSE=SYSMIS).
RECODE q21_7_4(ELSE=SYSMIS).
RECODE q21_7_99(ELSE=SYSMIS).
RECODE q21_7_0(ELSE=SYSMIS).
RECODE q21_8_1(ELSE=SYSMIS).
RECODE q21_8_2(ELSE=SYSMIS).
RECODE q21_8_3(ELSE=SYSMIS).
RECODE q21_8_4(ELSE=SYSMIS).
RECODE q21_8_99(ELSE=SYSMIS).
RECODE q21_8_0(ELSE=SYSMIS).
RECODE q21_9_1(ELSE=SYSMIS).
RECODE q21_9_2(ELSE=SYSMIS).
RECODE q21_9_3(ELSE=SYSMIS).
RECODE q21_9_4(ELSE=SYSMIS).
RECODE q21_9_99(ELSE=SYSMIS).
RECODE q21_9_0(ELSE=SYSMIS).
END IF.
EXECUTE.


*21*********************************

DO IF (q21_1_0=1 ).
RECODE q21_1_1(ELSE=SYSMIS).
RECODE q21_1_2(ELSE=SYSMIS).
RECODE q21_1_3(ELSE=SYSMIS).
RECODE q21_1_4(ELSE=SYSMIS).
RECODE q21_1_99(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q21_2_0=1 ).
RECODE q21_2_1(ELSE=SYSMIS).
RECODE q21_2_2(ELSE=SYSMIS).
RECODE q21_2_3(ELSE=SYSMIS).
RECODE q21_2_4(ELSE=SYSMIS).
RECODE q21_2_99(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q21_3_0=1 ).
RECODE q21_3_1(ELSE=SYSMIS).
RECODE q21_3_2(ELSE=SYSMIS).
RECODE q21_3_3(ELSE=SYSMIS).
RECODE q21_3_4(ELSE=SYSMIS).
RECODE q21_3_99(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q21_4_0=1 ).
RECODE q21_4_1(ELSE=SYSMIS).
RECODE q21_4_2(ELSE=SYSMIS).
RECODE q21_4_3(ELSE=SYSMIS).
RECODE q21_4_4(ELSE=SYSMIS).
RECODE q21_4_99(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q21_5_0=1 ).
RECODE q21_5_1(ELSE=SYSMIS).
RECODE q21_5_2(ELSE=SYSMIS).
RECODE q21_5_3(ELSE=SYSMIS).
RECODE q21_5_4(ELSE=SYSMIS).
RECODE q21_5_99(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q21_6_0=1 ).
RECODE q21_6_1(ELSE=SYSMIS).
RECODE q21_6_2(ELSE=SYSMIS).
RECODE q21_6_3(ELSE=SYSMIS).
RECODE q21_6_4(ELSE=SYSMIS).
RECODE q21_6_99(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q21_7_0=1 ).
RECODE q21_7_1(ELSE=SYSMIS).
RECODE q21_7_2(ELSE=SYSMIS).
RECODE q21_7_3(ELSE=SYSMIS).
RECODE q21_7_4(ELSE=SYSMIS).
RECODE q21_7_99(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q21_8_0=1 ).
RECODE q21_8_1(ELSE=SYSMIS).
RECODE q21_8_2(ELSE=SYSMIS).
RECODE q21_8_3(ELSE=SYSMIS).
RECODE q21_8_4(ELSE=SYSMIS).
RECODE q21_8_99(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q21_9_0=1 ).
RECODE q21_9_1(ELSE=SYSMIS).
RECODE q21_9_2(ELSE=SYSMIS).
RECODE q21_9_3(ELSE=SYSMIS).
RECODE q21_9_4(ELSE=SYSMIS).
RECODE q21_9_99(ELSE=SYSMIS).
END IF.
EXECUTE.




***q23********************************************************************

compute q23_0_velha = q23_0.
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
compute q23_99_velha = q23_99.
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
compute q24_99_velha = q24_99.
execute. 


DO IF (q23_0=1 ).
RECODE q23_1(ELSE=SYSMIS).
RECODE q23_2(ELSE=SYSMIS).
RECODE q23_3(ELSE=SYSMIS).
RECODE q23_4(ELSE=SYSMIS).
RECODE q23_5(ELSE=SYSMIS).
RECODE q23_6(ELSE=SYSMIS).
RECODE q23_7(ELSE=SYSMIS).
RECODE q23_8(ELSE=SYSMIS).
RECODE q23_9(ELSE=SYSMIS).
RECODE q23_10(ELSE=SYSMIS).
RECODE q23_11(ELSE=SYSMIS).
RECODE q23_12(ELSE=SYSMIS).
RECODE q23_13(ELSE=SYSMIS).
RECODE q23_14(ELSE=SYSMIS).
RECODE q23_99(ELSE=SYSMIS).
END IF.
EXECUTE.




DO IF (q23_0=1  | q23_1=1 ).
RECODE q23_2(ELSE=SYSMIS).
RECODE q23_3(ELSE=SYSMIS).
RECODE q23_4(ELSE=SYSMIS).
RECODE q23_5(ELSE=SYSMIS).
RECODE q23_6(ELSE=SYSMIS).
RECODE q23_7(ELSE=SYSMIS).
RECODE q23_8(ELSE=SYSMIS).
RECODE q23_9(ELSE=SYSMIS).
RECODE q23_10(ELSE=SYSMIS).
RECODE q23_11(ELSE=SYSMIS).
RECODE q23_12(ELSE=SYSMIS).
RECODE q23_13(ELSE=SYSMIS).
RECODE q23_14(ELSE=SYSMIS).
RECODE q23_99(ELSE=SYSMIS).
RECODE q24_1(ELSE=SYSMIS).
RECODE q24_2(ELSE=SYSMIS).
RECODE q24_3(ELSE=SYSMIS).
RECODE q24_4(ELSE=SYSMIS).
RECODE q24_5(ELSE=SYSMIS).
RECODE q24_6(ELSE=SYSMIS).
RECODE q24_7(ELSE=SYSMIS).
RECODE q24_8(ELSE=SYSMIS).
RECODE q24_9(ELSE=SYSMIS).
RECODE q24_10(ELSE=SYSMIS).
RECODE q24_11(ELSE=SYSMIS).
RECODE q24_12(ELSE=SYSMIS).
RECODE q24_13(ELSE=SYSMIS).
RECODE q24_14(ELSE=SYSMIS).
RECODE q24_15(ELSE=SYSMIS).
RECODE q24_16(ELSE=SYSMIS).
RECODE q24_17(ELSE=SYSMIS).
RECODE q24_99(ELSE=SYSMIS).
END IF.
EXECUTE.



***q24********************************************************************

DO IF (q24_1=1 ).
RECODE q24_2(ELSE=SYSMIS).
RECODE q24_3(ELSE=SYSMIS).
RECODE q24_4(ELSE=SYSMIS).
RECODE q24_5(ELSE=SYSMIS).
RECODE q24_6(ELSE=SYSMIS).
RECODE q24_7(ELSE=SYSMIS).
RECODE q24_8(ELSE=SYSMIS).
RECODE q24_9(ELSE=SYSMIS).
RECODE q24_10(ELSE=SYSMIS).
RECODE q24_11(ELSE=SYSMIS).
RECODE q24_12(ELSE=SYSMIS).
RECODE q24_13(ELSE=SYSMIS).
RECODE q24_14(ELSE=SYSMIS).
RECODE q24_15(ELSE=SYSMIS).
RECODE q24_16(ELSE=SYSMIS).
RECODE q24_17(ELSE=SYSMIS).
RECODE q24_99(ELSE=SYSMIS).
END IF.
EXECUTE.




***q25********************************************************************

compute q25_0_velha = q25_0.
compute q25_1_velha = q25_1.
compute q25_2_velha = q25_2.
compute q25_3_velha = q25_3.
compute q25_4_velha = q25_4.
compute q25_5_velha = q25_5.
compute q25_6_velha = q25_6.
compute q25_7_velha = q25_7.
compute q25_8_velha = q25_8.
compute q25_9_velha = q25_9.
compute q25_99_velha = q25_99.
execute. 


DO IF (q25_0=1 ).
RECODE q25_1(ELSE=SYSMIS).
RECODE q25_2(ELSE=SYSMIS).
RECODE q25_3(ELSE=SYSMIS).
RECODE q25_4(ELSE=SYSMIS).
RECODE q25_5(ELSE=SYSMIS).
RECODE q25_6(ELSE=SYSMIS).
RECODE q25_7(ELSE=SYSMIS).
RECODE q25_8(ELSE=SYSMIS).
RECODE q25_9(ELSE=SYSMIS).
RECODE q25_99(ELSE=SYSMIS).
END IF.
EXECUTE.


***q26********************************************************************

compute q27_velha = q27.
execute.

DO IF (q26=0 ).
RECODE q27(ELSE=SYSMIS).
END IF.
EXECUTE.



***q28********************************************************************

compute q28_1_velha = q28_1.
compute q28_2_velha = q28_2.
compute q28_99_velha = q28_99.
compute q28_0_velha = q28_0.
compute q28_98_velha = q28_98.
execute.


DO IF (q28_0=1  | q28_98=1 ).
RECODE q28_1(ELSE=SYSMIS).
RECODE q28_2(ELSE=SYSMIS).
RECODE q28_99(ELSE=SYSMIS).
END IF.
EXECUTE.


*q30**********************************************************************************


compute q30_1_1_velha = q30_1_1.
compute q30_1_2_velha = q30_1_2.
compute q30_1_3_velha = q30_1_3.
compute q30_1_4_velha = q30_1_4.
compute q30_1_5_velha = q30_1_5.
compute q30_1_0_velha = q30_1_0.
compute q30_2_1_velha = q30_2_1.
compute q30_2_2_velha = q30_2_2.
compute q30_2_3_velha = q30_2_3.
compute q30_2_4_velha = q30_2_4.
compute q30_2_5_velha = q30_2_5.
compute q30_2_0_velha = q30_2_0.
compute q30_3_1_velha = q30_3_1.
compute q30_3_2_velha = q30_3_2.
compute q30_3_3_velha = q30_3_3.
compute q30_3_4_velha = q30_3_4.
compute q30_3_5_velha = q30_3_5.
compute q30_3_0_velha = q30_3_0.
compute q30_4_1_velha = q30_4_1.
compute q30_4_2_velha = q30_4_2.
compute q30_4_3_velha = q30_4_3.
compute q30_4_4_velha = q30_4_4.
compute q30_4_5_velha = q30_4_5.
compute q30_4_0_velha = q30_4_0.
compute q30_5_1_velha = q30_5_1.
compute q30_5_2_velha = q30_5_2.
compute q30_5_3_velha = q30_5_3.
compute q30_5_4_velha = q30_5_4.
compute q30_5_5_velha = q30_5_5.
compute q30_5_0_velha = q30_5_0.
compute q30_6_1_velha = q30_6_1.
compute q30_6_2_velha = q30_6_2.
compute q30_6_3_velha = q30_6_3.
compute q30_6_4_velha = q30_6_4.
compute q30_6_5_velha = q30_6_5.
compute q30_6_0_velha = q30_6_0.
compute q30_7_1_velha = q30_7_1.
compute q30_7_2_velha = q30_7_2.
compute q30_7_3_velha = q30_7_3.
compute q30_7_4_velha = q30_7_4.
compute q30_7_5_velha = q30_7_5.
compute q30_7_6_velha = q30_7_6.
compute q30_8_1_velha = q30_8_1.
compute q30_8_2_velha = q30_8_2.
compute q30_8_3_velha = q30_8_3.
compute q30_8_4_velha = q30_8_4.
compute q30_8_5_velha = q30_8_5.
compute q30_8_0_velha = q30_8_0.
compute q30_9_1_velha = q30_9_1.
compute q30_9_2_velha = q30_9_2.
compute q30_9_3_velha = q30_9_3.
compute q30_9_4_velha = q30_9_4.
compute q30_9_5_velha = q30_9_5.
compute q30_9_0_velha = q30_9_0.
compute q30_10_1_velha = q30_10_1.
compute q30_10_2_velha = q30_10_2.
compute q30_10_3_velha = q30_10_3.
compute q30_10_4_velha = q30_10_4.
compute q30_10_5_velha = q30_10_5.
compute q30_10_0_velha = q30_10_0.
compute q30_11_1_velha = q30_11_1.
compute q30_11_2_velha = q30_11_2.
compute q30_11_3_velha = q30_11_3.
compute q30_11_4_velha = q30_11_4.
compute q30_11_5_velha = q30_11_5.
compute q30_11_0_velha = q30_11_0.
compute q30_12_1_velha = q30_12_1.
compute q30_12_2_velha = q30_12_2.
compute q30_12_3_velha = q30_12_3.
compute q30_12_4_velha = q30_12_4.
compute q30_12_5_velha = q30_12_5.
compute q30_12_0_velha = q30_12_0.
compute q30_13_1_velha = q30_13_1.
compute q30_13_2_velha = q30_13_2.
compute q30_13_3_velha = q30_13_3.
compute q30_13_4_velha = q30_13_4.
compute q30_13_5_velha = q30_13_5.
compute q30_13_0_velha = q30_13_0.
compute q30_14_1_velha = q30_14_1.
compute q30_14_2_velha = q30_14_2.
compute q30_14_3_velha = q30_14_3.
compute q30_14_4_velha = q30_14_4.
compute q30_14_5_velha = q30_14_5.
compute q30_14_0_velha = q30_14_0.
compute q30_15_1_velha = q30_15_1.
compute q30_15_2_velha = q30_15_2.
compute q30_15_3_velha = q30_15_3.
compute q30_15_4_velha = q30_15_4.
compute q30_15_5_velha = q30_15_5.
compute q30_15_0_velha = q30_15_0.
compute q30_16_1_velha = q30_16_1.
compute q30_16_2_velha = q30_16_2.
compute q30_16_3_velha = q30_16_3.
compute q30_16_4_velha = q30_16_4.
compute q30_16_5_velha = q30_16_5.
compute q30_16_0_velha = q30_16_0.
compute q30_17_1_velha = q30_17_1.
compute q30_17_2_velha = q30_17_2.
compute q30_17_3_velha = q30_17_3.
compute q30_17_4_velha = q30_17_4.
compute q30_17_5_velha = q30_17_5.
compute q30_17_6_velha = q30_17_6.
compute q30_18_1_velha = q30_18_1.
compute q30_18_2_velha = q30_18_2.
compute q30_18_3_velha = q30_18_3.
compute q30_18_4_velha = q30_18_4.
compute q30_18_5_velha = q30_18_5.
compute q30_18_0_velha = q30_18_0.
compute q30_19_1_velha = q30_19_1.
compute q30_19_2_velha = q30_19_2.
compute q30_19_3_velha = q30_19_3.
compute q30_19_4_velha = q30_19_4.
compute q30_19_5_velha = q30_19_5.
compute q30_19_0_velha = q30_19_0.
compute q30_20_1_velha = q30_20_1.
compute q30_20_2_velha = q30_20_2.
compute q30_20_3_velha = q30_20_3.
compute q30_20_4_velha = q30_20_4.
compute q30_20_5_velha = q30_20_5.
compute q30_20_0_velha = q30_20_0.
compute q30_21_1_velha = q30_21_1.
compute q30_21_2_velha = q30_21_2.
compute q30_21_3_velha = q30_21_3.
compute q30_21_4_velha = q30_21_4.
compute q30_21_5_velha = q30_21_5.
compute q30_21_0_velha = q30_21_0.
compute q30_22_1_velha = q30_22_1.
compute q30_22_2_velha = q30_22_2.
compute q30_22_3_velha = q30_22_3.
compute q30_22_4_velha = q30_22_4.
compute q30_22_5_velha = q30_22_5.
compute q30_22_0_velha = q30_22_0.
compute q30_24_1_velha = q30_24_1.
compute q30_24_2_velha = q30_24_2.
compute q30_24_3_velha = q30_24_3.
compute q30_24_4_velha = q30_24_4.
compute q30_24_5_velha = q30_24_5.
compute q30_24_0_velha = q30_24_0.
compute q30_23_1_velha = q30_23_1.
compute q30_23_2_velha = q30_23_2.
compute q30_23_3_velha = q30_23_3.
compute q30_23_4_velha = q30_23_4.
compute q30_23_5_velha = q30_23_5.
compute q30_23_0_velha = q30_23_0.
execute.




DO IF (q30_1_5=1  | q30_1_0=1 ).
RECODE q30_1_1(ELSE=SYSMIS).
RECODE q30_1_2(ELSE=SYSMIS).
RECODE q30_1_3(ELSE=SYSMIS).
RECODE q30_1_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_2_5=1  | q30_2_0=1 ).
RECODE q30_2_1(ELSE=SYSMIS).
RECODE q30_2_2(ELSE=SYSMIS).
RECODE q30_2_3(ELSE=SYSMIS).
RECODE q30_2_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_3_5=1  | q30_3_0=1 ).
RECODE q30_3_1(ELSE=SYSMIS).
RECODE q30_3_2(ELSE=SYSMIS).
RECODE q30_3_3(ELSE=SYSMIS).
RECODE q30_3_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_4_5=1  | q30_4_0=1 ).
RECODE q30_4_1(ELSE=SYSMIS).
RECODE q30_4_2(ELSE=SYSMIS).
RECODE q30_4_3(ELSE=SYSMIS).
RECODE q30_4_4(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q30_5_5=1  | q30_5_0=1 ).
RECODE q30_5_1(ELSE=SYSMIS).
RECODE q30_5_2(ELSE=SYSMIS).
RECODE q30_5_3(ELSE=SYSMIS).
RECODE q30_5_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_6_5=1  | q30_6_0=1 ).
RECODE q30_6_1(ELSE=SYSMIS).
RECODE q30_6_2(ELSE=SYSMIS).
RECODE q30_6_3(ELSE=SYSMIS).
RECODE q30_6_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_7_5=1  | q30_7_6=1 ).
RECODE q30_7_1(ELSE=SYSMIS).
RECODE q30_7_2(ELSE=SYSMIS).
RECODE q30_7_3(ELSE=SYSMIS).
RECODE q30_7_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_8_5=1  | q30_8_0=1 ).
RECODE q30_8_1(ELSE=SYSMIS).
RECODE q30_8_2(ELSE=SYSMIS).
RECODE q30_8_3(ELSE=SYSMIS).
RECODE q30_8_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_9_5=1  | q30_9_0=1 ).
RECODE q30_9_1(ELSE=SYSMIS).
RECODE q30_9_2(ELSE=SYSMIS).
RECODE q30_9_3(ELSE=SYSMIS).
RECODE q30_9_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_10_5=1  | q30_10_0=1 ).
RECODE q30_10_1(ELSE=SYSMIS).
RECODE q30_10_2(ELSE=SYSMIS).
RECODE q30_10_3(ELSE=SYSMIS).
RECODE q30_10_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_11_5=1  | q30_11_0=1 ).
RECODE q30_11_1(ELSE=SYSMIS).
RECODE q30_11_2(ELSE=SYSMIS).
RECODE q30_11_3(ELSE=SYSMIS).
RECODE q30_11_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_12_5=1  | q30_12_0=1 ).
RECODE q30_12_1(ELSE=SYSMIS).
RECODE q30_12_2(ELSE=SYSMIS).
RECODE q30_12_3(ELSE=SYSMIS).
RECODE q30_12_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_13_5=1  | q30_13_0=1 ).
RECODE q30_13_1(ELSE=SYSMIS).
RECODE q30_13_2(ELSE=SYSMIS).
RECODE q30_13_3(ELSE=SYSMIS).
RECODE q30_13_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_14_5=1  | q30_14_0=1 ).
RECODE q30_14_1(ELSE=SYSMIS).
RECODE q30_14_2(ELSE=SYSMIS).
RECODE q30_14_3(ELSE=SYSMIS).
RECODE q30_14_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_15_5=1  | q30_15_0=1 ).
RECODE q30_15_1(ELSE=SYSMIS).
RECODE q30_15_2(ELSE=SYSMIS).
RECODE q30_15_3(ELSE=SYSMIS).
RECODE q30_15_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_16_5=1  | q30_16_0=1 ).
RECODE q30_16_1(ELSE=SYSMIS).
RECODE q30_16_2(ELSE=SYSMIS).
RECODE q30_16_3(ELSE=SYSMIS).
RECODE q30_16_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_17_5=1  | q30_17_6=1 ).
RECODE q30_17_1(ELSE=SYSMIS).
RECODE q30_17_2(ELSE=SYSMIS).
RECODE q30_17_3(ELSE=SYSMIS).
RECODE q30_17_4(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q30_18_5=1  | q30_18_0=1 ).
RECODE q30_18_1(ELSE=SYSMIS).
RECODE q30_18_2(ELSE=SYSMIS).
RECODE q30_18_3(ELSE=SYSMIS).
RECODE q30_18_4(ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q30_19_5=1  | q30_19_0=1 ).
RECODE q30_19_1(ELSE=SYSMIS).
RECODE q30_19_2(ELSE=SYSMIS).
RECODE q30_19_3(ELSE=SYSMIS).
RECODE q30_19_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_20_5=1  | q30_20_0=1 ).
RECODE q30_20_1(ELSE=SYSMIS).
RECODE q30_20_2(ELSE=SYSMIS).
RECODE q30_20_3(ELSE=SYSMIS).
RECODE q30_20_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_21_5=1  | q30_21_0=1 ).
RECODE q30_21_1(ELSE=SYSMIS).
RECODE q30_21_2(ELSE=SYSMIS).
RECODE q30_21_3(ELSE=SYSMIS).
RECODE q30_21_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_22_5=1  | q30_22_0=1 ).
RECODE q30_22_1(ELSE=SYSMIS).
RECODE q30_22_2(ELSE=SYSMIS).
RECODE q30_22_3(ELSE=SYSMIS).
RECODE q30_22_4(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_23_5=1  | q30_23_0=1 ).
RECODE q30_23_1(ELSE=SYSMIS).
RECODE q30_23_2(ELSE=SYSMIS).
RECODE q30_23_3(ELSE=SYSMIS).
RECODE q30_23_4(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q30_24_5=1  | q30_24_0=1 ).
RECODE q30_24_1(ELSE=SYSMIS).
RECODE q30_24_2(ELSE=SYSMIS).
RECODE q30_24_3(ELSE=SYSMIS).
RECODE q30_24_4(ELSE=SYSMIS).
END IF.
EXECUTE.


****q32*************************************************************************************

compute q32_1_velha = q32_1.
compute q32_2_velha = q32_2.
compute q32_3_velha = q32_3.
compute q32_4_velha = q32_4.
compute q32_5_velha = q32_5.
compute q32_0_velha = q32_0.
execute.


DO IF (q32_0=1 ).
RECODE q32_1(ELSE=SYSMIS).
RECODE q32_2(ELSE=SYSMIS).
RECODE q32_3(ELSE=SYSMIS).
RECODE q32_4(ELSE=SYSMIS).
RECODE q32_5(ELSE=SYSMIS).
END IF.
EXECUTE.



****q33*************************************************************************************

compute q33_1_velha = q33_1.
compute q33_2_velha = q33_2.
compute q33_3_velha = q33_3.
compute q33_99_velha = q33_99.
compute q33_0_velha = q33_0.
execute.


DO IF (q33_0=1 ).
RECODE q33_1(ELSE=SYSMIS).
RECODE q33_2(ELSE=SYSMIS).
RECODE q33_3(ELSE=SYSMIS).
RECODE q33_99(ELSE=SYSMIS).
END IF.
EXECUTE.

****q34*************************************************************************************

compute q34_0_velha = q34_0.
compute q34_1_velha = q34_1.
compute q34_2_velha = q34_2.
compute q34_3_velha = q34_3.
compute q34_4_velha = q34_4.
compute q34_5_velha = q34_5.
compute q34_6_velha = q34_6.
compute q34_7_velha = q34_7.
compute q34_8_velha = q34_8.
compute q34_99_velha = q34_99.
compute q35_1_velha = q35_1.
compute q35_2_velha = q35_2.
compute q35_3_velha = q35_3.
compute q35_99_velha = q35_99.
compute q36_velha = q36.
compute q37_0_velha = q37_0.
compute q37_1_velha = q37_1.
compute q37_2_velha = q37_2.
compute q37_3_velha = q37_3.
compute q37_4_velha = q37_4.
compute q37_5_velha = q37_5.
compute q37_99_velha = q37_99.
execute.


DO IF (q34_0=1 ).
RECODE q34_1(ELSE=SYSMIS).
RECODE q34_2(ELSE=SYSMIS).
RECODE q34_3(ELSE=SYSMIS).
RECODE q34_4(ELSE=SYSMIS).
RECODE q34_5(ELSE=SYSMIS).
RECODE q34_6(ELSE=SYSMIS).
RECODE q34_7(ELSE=SYSMIS).
RECODE q34_8(ELSE=SYSMIS).
RECODE q34_99(ELSE=SYSMIS).
RECODE q35_1(ELSE=SYSMIS).
RECODE q35_2(ELSE=SYSMIS).
RECODE q35_3(ELSE=SYSMIS).
RECODE q35_99(ELSE=SYSMIS).
RECODE q36(ELSE=SYSMIS).
RECODE q37_0(ELSE=SYSMIS).
RECODE q37_1(ELSE=SYSMIS).
RECODE q37_2(ELSE=SYSMIS).
RECODE q37_3(ELSE=SYSMIS).
RECODE q37_4(ELSE=SYSMIS).
RECODE q37_5(ELSE=SYSMIS).
RECODE q37_99(ELSE=SYSMIS).
END IF.
EXECUTE.


****q34*************************************************************************************

DO IF (q37_0=1 ).
RECODE q37_1(ELSE=SYSMIS).
RECODE q37_2(ELSE=SYSMIS).
RECODE q37_3(ELSE=SYSMIS).
RECODE q37_4(ELSE=SYSMIS).
RECODE q37_5(ELSE=SYSMIS).
RECODE q37_99(ELSE=SYSMIS).
END IF.
EXECUTE.


****q38*************************************************************************************

compute q38_1_velha = q38_1.
compute q38_2_velha = q38_2.
compute q38_3_velha = q38_3.
compute q38_99_velha = q38_99.
compute q38_0_velha = q38_0.
execute.

DO IF (q38_0=1 ).
RECODE q38_1(ELSE=SYSMIS).
RECODE q38_2(ELSE=SYSMIS).
RECODE q38_3(ELSE=SYSMIS).
RECODE q38_99(ELSE=SYSMIS).
END IF.
EXECUTE.









VARIABLE LABELS
q18_1_velha'q18_1_v15717_1_1: Sim, as famílias de Averiguação e Revisão Cadastral são alvo de busca ativa_18. São feitas ações específicas para atender demandas de Averiguação e Revisão Cadastral?'
q18_2_velha'q18_2_v15717_2_2: Sim, as famílias de Averiguação e Revisão Cadastral fazem parte do público prioritário de atendimento na unidade_18. São feitas ações específicas para atender demandas de Averiguação e Revisão Cadastral?'
q18_3_velha'q18_3_v15717_3_3: Sim, há mutirões em dias específicos para atender o público de Averiguação e Revisão Cadastral_18. São feitas ações específicas para atender demandas de Averiguação e Revisão Cadastral?'
q18_99_velha'q18_99_v15717_99_99: Sim, outros._18. São feitas ações específicas para atender demandas de Averiguação e Revisão Cadastral?'
q18_0_velha'q18_0_v15717_0_0: Não há ações específicas para atender o público de Averiguação e Revisão Cadastral._18. São feitas ações específicas para atender demandas de Averiguação e Revisão Cadastral?'
q21_1_1_velha'q21_1_1_v15730_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.1.Ações para  Povos indigenas'
q21_1_2_velha'q21_1_2_v15730_2_2: Reunião/palestra informativa na comunidade_21.1.Ações para  Povos indigenas'
q21_1_3_velha'q21_1_3_v15730_3_3: Reunião/ações em parceria com lideranças_21.1.Ações para  Povos indigenas'
q21_1_4_velha'q21_1_4_v15730_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.1.Ações para  Povos indigenas'
q21_1_99_velha'q21_1_99_v15730_99_99: Outras ações (responda a questão 22)_21.1.Ações para  Povos indigenas'
q21_1_0_velha'q21_1_0_v15730_0_0: Não realiza ações específicas_21.1.Ações para  Povos indigenas'
q21_2_1_velha'q21_2_1_v15799_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.2. Ações para  Comunidade Quilombola'
q21_2_2_velha'q21_2_2_v15799_2_2: Reunião/palestra informativa na comunidade_21.2. Ações para  Comunidade Quilombola'
q21_2_3_velha'q21_2_3_v15799_3_3: Reunião/ações em parceria com lideranças_21.2. Ações para  Comunidade Quilombola'
q21_2_4_velha'q21_2_4_v15799_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.2. Ações para  Comunidade Quilombola'
q21_2_99_velha'q21_2_99_v15799_99_99: Outras ações (responda a questão 22)_21.2. Ações para  Comunidade Quilombola'
q21_2_0_velha'q21_2_0_v15799_0_0: Não realiza ações específicas_21.2. Ações para  Comunidade Quilombola'
q21_3_1_velha'q21_3_1_v15731_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.3. Ações para Comunidade Ribeirinha'
q21_3_2_velha'q21_3_2_v15731_2_2: Reunião/palestra informativa na comunidade_21.3. Ações para Comunidade Ribeirinha'
q21_3_3_velha'q21_3_3_v15731_3_3: Reunião/ações em parceria com lideranças_21.3. Ações para Comunidade Ribeirinha'
q21_3_4_velha'q21_3_4_v15731_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.3. Ações para Comunidade Ribeirinha'
q21_3_99_velha'q21_3_99_v15731_99_99: Outras ações (responda a questão 22)_21.3. Ações para Comunidade Ribeirinha'
q21_3_0_velha'q21_3_0_v15731_0_0: Não realiza ações específicas_21.3. Ações para Comunidade Ribeirinha'
q21_4_1_velha'q21_4_1_v15732_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.4. Ações para Povos ciganos'
q21_4_2_velha'q21_4_2_v15732_2_2: Reunião/palestra informativa na comunidade_21.4. Ações para Povos ciganos'
q21_4_3_velha'q21_4_3_v15732_3_3: Reunião/ações em parceria com lideranças_21.4. Ações para Povos ciganos'
q21_4_4_velha'q21_4_4_v15732_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.4. Ações para Povos ciganos'
q21_4_99_velha'q21_4_99_v15732_5_99: Outras ações (responda a questão 22)_21.4. Ações para Povos ciganos'
q21_4_0_velha'q21_4_0_v15732_6_0: Não realiza ações específicas_21.4. Ações para Povos ciganos'
q21_5_1_velha'q21_5_1_v15733_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.5. Ações para Povos de Matriz Africana e de terreiro'
q21_5_2_velha'q21_5_2_v15733_2_2: Reunião/palestra informativa na comunidade_21.5. Ações para Povos de Matriz Africana e de terreiro'
q21_5_3_velha'q21_5_3_v15733_3_3: Reunião/ações em parceria com lideranças_21.5. Ações para Povos de Matriz Africana e de terreiro'
q21_5_4_velha'q21_5_4_v15733_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.5. Ações para Povos de Matriz Africana e de terreiro'
q21_5_99_velha'q21_5_99_v15733_99_99: Outras ações (responda a questão 22)_21.5. Ações para Povos de Matriz Africana e de terreiro'
q21_5_0_velha'q21_5_0_v15733_0_0: Não realiza ações específicas_21.5. Ações para Povos de Matriz Africana e de terreiro'
q21_6_1_velha'q21_6_1_v15800_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.6. Ações para Extrativistas'
q21_6_2_velha'q21_6_2_v15800_2_2: Reunião/palestra informativa na comunidade_21.6. Ações para Extrativistas'
q21_6_3_velha'q21_6_3_v15800_3_3: Reunião/ações em parceria com lideranças_21.6. Ações para Extrativistas'
q21_6_4_velha'q21_6_4_v15800_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.6. Ações para Extrativistas'
q21_6_99_velha'q21_6_99_v15800_99_99: Outras ações (responda a questão 22)_21.6. Ações para Extrativistas'
q21_6_0_velha'q21_6_0_v15800_0_0: Não realiza ações específicas_21.6. Ações para Extrativistas'
q21_7_1_velha'q21_7_1_v15801_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.7. Ações para Pescadores artesanais'
q21_7_2_velha'q21_7_2_v15801_2_2: Reunião/palestra informativa na comunidade_21.7. Ações para Pescadores artesanais'
q21_7_3_velha'q21_7_3_v15801_3_3: Reunião/ações em parceria com lideranças_21.7. Ações para Pescadores artesanais'
q21_7_4_velha'q21_7_4_v15801_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.7. Ações para Pescadores artesanais'
q21_7_99_velha'q21_7_99_v15801_99_99: Outras ações (responda a questão 22)_21.7. Ações para Pescadores artesanais'
q21_7_0_velha'q21_7_0_v15801_0_0: Não realiza ações específicas_21.7. Ações para Pescadores artesanais'
q21_8_1_velha'q21_8_1_v15734_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.8. Ações para Ribeirinhas (famílias em calhas de rios)'
q21_8_2_velha'q21_8_2_v15734_2_2: Reunião/palestra informativa na comunidade_21.8. Ações para Ribeirinhas (famílias em calhas de rios)'
q21_8_3_velha'q21_8_3_v15734_3_3: Reunião/ações em parceria com lideranças_21.8. Ações para Ribeirinhas (famílias em calhas de rios)'
q21_8_4_velha'q21_8_4_v15734_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.8. Ações para Ribeirinhas (famílias em calhas de rios)'
q21_8_99_velha'q21_8_99_v15734_5_99: Outras ações (responda a questão 22)_21.8. Ações para Ribeirinhas (famílias em calhas de rios)'
q21_8_0_velha'q21_8_0_v15734_6_0: Não realiza ações específicas_21.8. Ações para Ribeirinhas (famílias em calhas de rios)'
q21_9_1_velha'q21_9_1_v15735_1_1: Busca ativa para inclusão/ atualização cadastral na comunidade_21.9. Ações para Outros Grupos tradicionais e específicos. Qual?'
q21_9_2_velha'q21_9_2_v15735_2_2: Reunião/palestra informativa na comunidade_21.9. Ações para Outros Grupos tradicionais e específicos. Qual?'
q21_9_3_velha'q21_9_3_v15735_3_3: Reunião/ações em parceria com lideranças_21.9. Ações para Outros Grupos tradicionais e específicos. Qual?'
q21_9_4_velha'q21_9_4_v15735_4_4: Reuniões/ações em parceria com outros órgãos/secretarias_21.9. Ações para Outros Grupos tradicionais e específicos. Qual?'
q21_9_99_velha'q21_9_99_v15735_99_99: Outras ações (responda a questão 22)_21.9. Ações para Outros Grupos tradicionais e específicos. Qual?'
q21_9_0_velha'q21_9_0_v15735_0_0: Não realiza ações específicas_21.9. Ações para Outros Grupos tradicionais e específicos. Qual?'
q23_0_velha'q23_0_v15737_0_0: Não realiza ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família _23. ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:'
q23_1_velha'q23_1_v15737_1_1: As ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família são encaminhadas para o CRAS e/ou outros serviço da rede socioassistencial '
q23_2_velha'q23_2_v15737_2_2: Esclarecimentos individuais de dúvidas sobre regras do Programa (valores de benefícios, regras de concessão, bloqueio, suspensão e cancelamento de benefícios e condicionalidades)'
q23_3_velha'q23_3_v15737_3_3: Ações coletivas para prestar informações às famílias sobre regras do Programa (Reuniões de acolhida, palestra etc)'
q23_4_velha'q23_4_v15737_4_4: Manutenção de benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) diretamente no SIBEC'
q23_5_velha'q23_5_v15737_5_5: Registro das manutenções benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) no Formulário Padrão de Gestão de Benefícios (FPGB) e seu arquivamento'
q23_6_velha'q23_6_v15737_6_6: Solicitação de manutenção de benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) pelo módulo de Administração Off-line do SigPBF'
q23_7_velha'q23_7_v15737_7_7: Elaboração de ofícios à Secretaria Nacional de Renda de Cidadania a respeito da administração de benefícios (bloqueios, desbloqueios, reversões de suspensões, cancelamentos e reversões de cancelamento)'
q23_8_velha'q23_8_v15737_8_8: Emissão de declaração de troca de responsável familiar para recebimento do benefício'
q23_9_velha'q23_9_v15737_9_9: Emissão de declaração especial para recebimento do benefício (quando em situações de emergência e estado de calamidade pública)'
q23_10_velha'q23_10_v15737_10_10: Esclarecimentos sobre o conteúdo de mensagens no extrato de pagamentos, recebida pelo beneficiário'
q23_11_velha'q23_11_v15737_11_11: Esclarecimentos sobre a gestão de pagamentos do Programa: entrega, desbloqueio e ativação do Cartão Bolsa Família e calendário de pagamento'
q23_12_velha'q23_12_v15737_12_12: Orientação sobre como denunciar irregularidades no pagamento e no atendimento dos canais da CAIXA'
q23_13_velha'q23_13_v15737_13_13: Registro de denúncias de recebimento indevido de benefícios'
q23_14_velha'q23_14_v15737_14_14: Apuração de denúncias de recebimento indevido de benefícios'
q23_99_velha'q23_99_v15737_99_99: Outros.'
q24_1_velha'q24_1_v15739_1_1: Não há dificuldades_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_2_velha'q24_2_v15739_2_2: Falta de capacitação da equipe do posto sobre as regras do Programa_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_3_velha'q24_3_v15739_3_3: As regras do Programa são complexas_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_4_velha'q24_4_v15739_4_4: As informações disponibilizadas pelo Ministério da Cidadania sobre as regras do Programa (Instruções Operacionais, Informes, Comunicados) são de difícil compreensão_24.ficuldades enfrentadas:'
q24_5_velha'q24_5_v15739_5_5: As informações disponibilizadas pelo Ministério da Cidadania sobre as regras do Programa são de difícil acesso_24.dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_6_velha'q24_6_v15739_6_6: Falta de informações sobre as regras do Programa_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_7_velha'q24_7_v15739_7_7: Falta de material informativo para disponibilizar no posto sobre as regras do Programa (cartazes, folders, filipetas)_24.dificuldades enfrentadas por este posto em relação à gestão de benefícios do PBF:'
q24_8_velha'q24_8_v15739_8_8: Baixa qualidade da internet_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_9_velha'q24_9_v15739_9_9: Falta de acesso à internet_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_10_velha'q24_10_v15739_10_10: Equipe do posto não tem acesso ao SIBEC_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_11_velha'q24_11_v15739_11_11: Instabilidade do SIBEC_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_12_velha'q24_12_v15739_12_12: Equipe do posto não tem acesso ao SigPBF_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_13_velha'q24_13_v15739_13_13: Instabilidade do SigPBF_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_14_velha'q24_14_v15739_14_14: Grande número de atendimentos em decorrência dos processos de gestão de benefícios: averiguação e revisão cadastral_24. dificuldades enfrentadas por este posto em relação à gestão de benefícios do PBF:'
q24_15_velha'q24_15_v15739_15_15: Grande número de atendimentos em decorrência dos processos de gestão de benefícios:bloqueios e suspensões de condicionalidades e de não localizados no sistema de ensino_24.dificuldades enfrentadas'
q24_16_velha'q24_16_v15739_16_16: Grande número de atendimentos em decorrência dos processos de gestão de benefícios: suspensões em decorrência do recebimento do seguro-defeso_24. dificuldades enfrentadas'
q24_17_velha'q24_17_v15739_17_17: Número reduzido de pessoas na equipe para suprir a demanda de atendimento_24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q24_99_velha'q24_99_v15739_18_18: Outros._24. Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família:'
q25_0_velha'q25_0_v15742_0_0: Não realiza atividades com famílias em descumprimento de condicionalidades_25. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades:'
q25_1_velha'q25_1_v15742_1_1: Esclarecimentos às famílias sobre as regras de condicionalidades durante o atendimento particularizado_25. ações e atividades desenvolvidas pela equipe '
q25_2_velha'q25_2_v15742_2_2: Interação com as escolas dos beneficiários em descumprimento_25. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades:'
q25_3_velha'q25_3_v15742_3_3: Interação com a equipe de saúde no município responsável pelo acompanhamento das condicionalidades de saúde_25. ações e atividades desenvolvidas pela equipe '
q25_4_velha'q25_4_v15742_4_4: Ação para prestar informações às famílias sobre as condicionalidades (palestras, oficinas em grupo, etc)_25.ações e atividades desenvolvidas'
q25_5_velha'q25_5_v15742_5_5: Busca ativa (visita domiciliar, envio de cartas ou SMS, e ações itinerantes) com a finalidade de facilitar a apresentação de recurso pelas famílias_25.ações e atividades desenvolvidas pela equipe'
q25_6_velha'q25_6_v15742_6_6: Fornecimento de comprovante do registro de recurso para as famílias_25. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades:'
q25_7_velha'q25_7_v15742_7_7: Arquivamento da documentação comprobatória apresentada pela família no registro do recurso_25.ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades:'
q25_8_velha'q25_8_v15742_8_8: Encaminhamento de famílias ou indivíduos em descumprimento de condicionalidades para outros serviços, programas ou benefícios socioassistenciais_25.ações e atividades desenvolvidas pela equipe'
q25_9_velha'q25_9_v15742_9_9: Encaminhamento de famílias ou indivíduos em descumprimento de condicionalidades para outras políticas públicas (educação, saúde, habitação, trabalho, etc.)_25.ações e atividades desenvolvidas pela equipe'
q25_99_velha'q25_99_v15742_99_99: Outros._25. Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades:'
q27_velha'q27_v15747_27. Considerando SOMENTE as famílias em descumprimento de condicionalidades, informe por quais formas as famílias podem acessar esta Unidades para apresentar RECURSO?'
q28_1_velha'q28_1_v15748_1_1: Sim, as denúncias são tratadas aqui e depois encaminhadas à Secretaria Municipal_28. Este posto recebe denúncia de fraudes de recebimento de benefícios do Programa Bolsa Família e qual o tratamento dado?'
q28_2_velha'q28_2_v15748_2_2: Sim, as denúncias são encaminhadas para tratamento pela Secretaria Municipal'
q28_99_velha'q28_99_v15748_99_99: Outros.'
q28_0_velha'q28_0_v15748_0_0: Não recebemos denúncias'
q28_98_velha'q28_98_v15748_98_98: Não sei informar'
q30_1_1_velha'q30_1_1_v15752_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.1. Benefício de Prestação Continuada -  Em relação à outros programas/atividades/benefícios'
q30_1_2_velha'q30_1_2_v15752_2_2: ...presta orientações_30.1. Benefício de Prestação Continuada -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_1_3_velha'q30_1_3_v15752_3_3: ...encaminha a família para os locais de gestão/oferta_30.1. Benefício de Prestação Continuada -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_1_4_velha'q30_1_4_v15752_4_4: ...realiza atividades de gestão/oferta neste posto_30.1. Benefício de Prestação Continuada -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_1_5_velha'q30_1_5_v15752_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.1. Benefício de Prestação Continuada -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_1_0_velha'q30_1_0_v15752_0_0: ...não possui ação específica_30.1. Benefício de Prestação Continuada -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_2_1_velha'q30_2_1_v15753_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.2. Carteira do idoso-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_2_2_velha'q30_2_2_v15753_2_2: ...presta orientações_30.2. Carteira do idoso-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_2_3_velha'q30_2_3_v15753_3_3: ...encaminha a família para os locais de gestão/oferta_30.2. Carteira do idoso-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_2_4_velha'q30_2_4_v15753_4_4: ...realiza atividades de gestão/oferta neste posto_30.2. Carteira do idoso-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_2_5_velha'q30_2_5_v15753_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.2. Carteira do idoso-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_2_0_velha'q30_2_0_v15753_0_0: ...não possui ação específica_30.2. Carteira do idoso-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_3_1_velha'q30_3_1_v15754_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.3. SCFV Em relação à outros programas/atividades/benefícios, este posto.'
q30_3_2_velha'q30_3_2_v15754_2_2: ...presta orientações_30.3. Serviços de Convivência e Fortalecimento de Vínculos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_3_3_velha'q30_3_3_v15754_3_3: ...encaminha a família para os locais de gestão/oferta_30.3. Serviços de Convivência e Fortalecimento de Vínculos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_3_4_velha'q30_3_4_v15754_4_4: ...realiza atividades de gestão/oferta neste posto_30.3. Serviços de Convivência e Fortalecimento de Vínculos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_3_5_velha'q30_3_5_v15754_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.3. Serviços de Convivência e Fortalecimento de Vínculos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_3_0_velha'q30_3_0_v15754_0_0: ...não possui ação específica_30.3. Serviços de Convivência e Fortalecimento de Vínculos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_4_1_velha'q30_4_1_v15755_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.4. Programa Criança Feliz -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_4_2_velha'q30_4_2_v15755_2_2: ...presta orientações_30.4. Programa Criança Feliz -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_4_3_velha'q30_4_3_v15755_3_3: ...encaminha a família para os locais de gestão/oferta_30.4. Programa Criança Feliz -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_4_4_velha'q30_4_4_v15755_4_4: ...realiza atividades de gestão/oferta neste posto_30.4. Programa Criança Feliz -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_4_5_velha'q30_4_5_v15755_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.4. Programa Criança Feliz -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_4_0_velha'q30_4_0_v15755_6_0: ...não possui ação específica_30.4. Programa Criança Feliz -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_5_1_velha'q30_5_1_v15756_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.5. PETI-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_5_2_velha'q30_5_2_v15756_2_2: ...presta orientações_30.5. Programa de Erradicação do Trabalho Infantil -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_5_3_velha'q30_5_3_v15756_3_3: ...encaminha a família para os locais de gestão/oferta_30.5. Programa de Erradicação do Trabalho Infantil -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_5_4_velha'q30_5_4_v15756_4_4: ...realiza atividades de gestão/oferta neste posto_30.5. Programa de Erradicação do Trabalho Infantil -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_5_5_velha'q30_5_5_v15756_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.5. Programa de Erradicação do Trabalho Infantil -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_5_0_velha'q30_5_0_v15756_0_0: ...não possui ação específica_30.5. Programa de Erradicação do Trabalho Infantil -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_6_1_velha'q30_6_1_v15757_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.6. Plano Progredir Em relação à outros programas/atividades/benefícios, este posto.'
q30_6_2_velha'q30_6_2_v15757_2_2: ...presta orientações_30.6. Plano Progredir - Programa Nacional do Microcrédito Produtivo Orientado -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_6_3_velha'q30_6_3_v15757_3_3: ...encaminha a família para os locais de gestão/oferta_30.6. Plano Progredir - Programa Nacional do Microcrédito Produtivo Orientado -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_6_4_velha'q30_6_4_v15757_4_4: ...realiza atividades de gestão/oferta neste posto_30.6. Plano Progredir - Programa Nacional do Microcrédito Produtivo Orientado -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_6_5_velha'q30_6_5_v15757_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.6. Plano Progredir - Programa Nacional do Microcrédito Produtivo Orientado -  Em relação à outros programas/atividades/benefícios.'
q30_6_0_velha'q30_6_0_v15757_0_0: ...não possui ação específica_30.6. Plano Progredir - Programa Nacional do Microcrédito Produtivo Orientado -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_7_1_velha'q30_7_1_v15857_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.7. Tarifa Social de Energia Elétrica -  Em relação à outros programas/atividades/benefícios.'
q30_7_2_velha'q30_7_2_v15857_2_2: ...presta orientações_30.7. Tarifa Social de Energia Elétrica -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_7_3_velha'q30_7_3_v15857_3_3: ...encaminha a família para os locais de gestão/oferta_30.7. Tarifa Social de Energia Elétrica -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_7_4_velha'q30_7_4_v15857_4_4: ...realiza atividades de gestão/oferta neste posto_30.7. Tarifa Social de Energia Elétrica -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_7_5_velha'q30_7_5_v15857_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.7. Tarifa Social de Energia Elétrica -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_7_6_velha'q30_7_6_v15857_0_0: ...não possui ação específica_30.7. Tarifa Social de Energia Elétrica -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_8_1_velha'q30_8_1_v15858_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.8. Programa Minha Casa Minha Vida -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_8_2_velha'q30_8_2_v15858_2_2: ...presta orientações_30.8. Programa Minha Casa Minha Vida -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_8_3_velha'q30_8_3_v15858_3_3: ...encaminha a família para os locais de gestão/oferta_30.8. Programa Minha Casa Minha Vida -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_8_4_velha'q30_8_4_v15858_4_4: ...realiza atividades de gestão/oferta neste posto_30.8. Programa Minha Casa Minha Vida -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_8_5_velha'q30_8_5_v15858_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.8. Programa Minha Casa Minha Vida -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_8_0_velha'q30_8_0_v15858_0_0: ...não possui ação específica_30.8. Programa Minha Casa Minha Vida -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_9_1_velha'q30_9_1_v15859_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda.'
q30_9_2_velha'q30_9_2_v15859_2_2: ...presta orientações_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_9_3_velha'q30_9_3_v15859_3_3: ...encaminha a família para os locais de gestão/oferta_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_9_4_velha'q30_9_4_v15859_4_4: ...realiza atividades de gestão/oferta neste posto_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_9_5_velha'q30_9_5_v15859_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em relação à outros programas/atividades/benefícios'
q30_9_0_velha'q30_9_0_v15859_0_0: ...não possui ação específica_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_10_1_velha'q30_10_1_v15860_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.10. Telefone Popular -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_10_2_velha'q30_10_2_v15860_2_2: ...presta orientações_30.10. Telefone Popular -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_10_3_velha'q30_10_3_v15860_3_3: ...encaminha a família para os locais de gestão/oferta_30.10. Telefone Popular -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_10_4_velha'q30_10_4_v15860_4_4: ...realiza atividades de gestão/oferta neste posto_30.10. Telefone Popular -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_10_5_velha'q30_10_5_v15860_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.10. Telefone Popular -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_10_0_velha'q30_10_0_v15860_0_0: ...não possui ação específica_30.10. Telefone Popular -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_11_1_velha'q30_11_1_v15861_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.11. Isenção de Pagamento de Taxa de Inscrição em Concursos Públicos.'
q30_11_2_velha'q30_11_2_v15861_2_2: ...presta orientações_30.11. Isenção de Pagamento de Taxa de Inscrição em Concursos Públicos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_11_3_velha'q30_11_3_v15861_3_3: ...encaminha a família para os locais de gestão/oferta_30.11. Isenção de Pagamento de Taxa de Inscrição em Concursos Públicos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_11_4_velha'q30_11_4_v15861_4_4: ...realiza atividades de gestão/oferta neste posto_30.11. Isenção de Pagamento de Taxa de Inscrição em Concursos Públicos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_11_5_velha'q30_11_5_v15861_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.11. Isenção de Pagamento de Taxa de Inscrição em Concursos Públicos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_11_0_velha'q30_11_0_v15861_0_0: ...não possui ação específica_30.11. Isenção de Pagamento de Taxa de Inscrição em Concursos Públicos -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_12_1_velha'q30_12_1_v15862_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.12. Programas Cisternas -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_12_2_velha'q30_12_2_v15862_2_2: ...presta orientações_30.12. Programas Cisternas -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_12_3_velha'q30_12_3_v15862_3_3: ...encaminha a família para os locais de gestão/oferta_30.12. Programas Cisternas -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_12_4_velha'q30_12_4_v15862_4_4: ...realiza atividades de gestão/oferta neste posto_30.12. Programas Cisternas -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_12_5_velha'q30_12_5_v15862_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.12. Programas Cisternas -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_12_0_velha'q30_12_0_v15862_0_0: ...não possui ação específica_30.12. Programas Cisternas -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_13_1_velha'q30_13_1_v15863_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.13. Programa de Fomento às Atividades Produtivas Rurais/ Assistência Técnica e Extensão Rural.'
q30_13_2_velha'q30_13_2_v15863_2_2: ...presta orientações_30.13. Programa de Fomento às Atividades Produtivas Rurais/ Assistência Técnica e Extensão Rural -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_13_3_velha'q30_13_3_v15863_3_3: ...encaminha a família para os locais de gestão/oferta_30.13. Programa de Fomento às Atividades Produtivas Rurais/ Assistência Técnica e Extensão Rural -  Em relação à outros programas/atividades/benefícios.'
q30_13_4_velha'q30_13_4_v15863_4_4: ...realiza atividades de gestão/oferta neste posto_30.13. Programa de Fomento às Atividades Produtivas Rurais/ Assistência Técnica e Extensão Rural -  Em relação à outros programas/atividades/benefícios.'
q30_13_5_velha'q30_13_5_v15863_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.13. Programa de Fomento às Atividades Produtivas Rurais/ Assistência Técnica e Extensão Rural'
q30_13_0_velha'q30_13_0_v15863_0_0: ...não possui ação específica_30.13. Programa de Fomento às Atividades Produtivas Rurais/ Assistência Técnica e Extensão Rural -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_14_1_velha'q30_14_1_v15864_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.14. Programa Nacional de Reforma Agrária.'
q30_14_2_velha'q30_14_2_v15864_2_2: ...presta orientações_30.14. Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_14_3_velha'q30_14_3_v15864_3_3: ...encaminha a família para os locais de gestão/oferta_30.14. Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_14_4_velha'q30_14_4_v15864_4_4: ...realiza atividades de gestão/oferta neste posto_30.14. Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_14_5_velha'q30_14_5_v15864_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.14. Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_14_0_velha'q30_14_0_v15864_0_0: ...não possui ação específica_30.14. Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_15_1_velha'q30_15_1_v15865_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.15. Programa Nacional de Crédito Fundiário.'
q30_15_2_velha'q30_15_2_v15865_2_2: ...presta orientações_30.15. Programa Nacional de Crédito Fundiário -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_15_3_velha'q30_15_3_v15865_3_3: ...encaminha a família para os locais de gestão/oferta_30.15. Programa Nacional de Crédito Fundiário -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_15_4_velha'q30_15_4_v15865_4_4: ...realiza atividades de gestão/oferta neste posto_30.15. Programa Nacional de Crédito Fundiário -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_15_5_velha'q30_15_5_v15865_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.15. Programa Nacional de Crédito Fundiário -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_15_0_velha'q30_15_0_v15865_0_0: ...não possui ação específica_30.15. Programa Nacional de Crédito Fundiário -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_16_1_velha'q30_16_1_v15869_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.16. Crédito Instalação do Programa Nacional de Reforma Agrária.'
q30_16_2_velha'q30_16_2_v15869_2_2: ...presta orientações_30.16. Crédito Instalação do Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_16_3_velha'q30_16_3_v15869_3_3: ...encaminha a família para os locais de gestão/oferta_30.16. Crédito Instalação do Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto'
q30_16_4_velha'q30_16_4_v15869_4_4: ...realiza atividades de gestão/oferta neste posto_30.16. Crédito Instalação do Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_16_5_velha'q30_16_5_v15869_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.16. Crédito Instalação do Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_16_0_velha'q30_16_0_v15869_0_0: ...não possui ação específica_30.16. Crédito Instalação do Programa Nacional de Reforma Agrária-  Em relação à outros programas/atividades/benefícios, este posto.'
q30_17_1_velha'q30_17_1_v15880_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.17. Identidade Jovem (ID Jovem) -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_17_2_velha'q30_17_2_v15880_2_2: ...presta orientações_30.17. Identidade Jovem (ID Jovem) -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_17_3_velha'q30_17_3_v15880_3_3: ...encaminha a família para os locais de gestão/oferta_30.17. Identidade Jovem (ID Jovem) -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_17_4_velha'q30_17_4_v15880_4_4: ...realiza atividades de gestão/oferta neste posto_30.17. Identidade Jovem (ID Jovem) -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_17_5_velha'q30_17_5_v15880_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.17. Identidade Jovem (ID Jovem) -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_17_6_velha'q30_17_6_v15880_0_0: ...não possui ação específica_30.17. Identidade Jovem (ID Jovem) -  Em relação à outros programas/atividades/benefícios, este posto.'
q30_18_1_velha'q30_18_1_v15883_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.18. Ação de Distribuição de Alimentos'
q30_18_2_velha'q30_18_2_v15883_2_2: ...presta orientações_30.18. Ação de Distribuição de Alimentos'
q30_18_3_velha'q30_18_3_v15883_3_3: ...encaminha a família para os locais de gestão/oferta_30.18. Ação de Distribuição de Alimentos'
q30_18_4_velha'q30_18_4_v15883_4_4: ...realiza atividades de gestão/oferta neste posto_30.18. Ação de Distribuição de Alimentos'
q30_18_5_velha'q30_18_5_v15883_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.18. Ação de Distribuição de Alimentos'
q30_18_0_velha'q30_18_0_v15883_0_0: ...não possui ação específica_30.18. Ação de Distribuição de Alimentos'
q30_19_1_velha'q30_19_1_v15885_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.19. Concede bolsas por entidades com CEBAS-Educação)'
q30_19_2_velha'q30_19_2_v15885_2_2: ...presta orientações_30.19. Concessão de bolsas por entidades com Certificação de Entidades Beneficentes de Assistência Social com atuação na área da educação (CEBAS-Educação)'
q30_19_3_velha'q30_19_3_v15885_3_3: ...encaminha a família para os locais de gestão/oferta_30.19. Concessão de bolsas por entidades com Certificação de Entidades Beneficentes de Assistência Social com atuação na área da educação (CEBAS-Educação)'
q30_19_4_velha'q30_19_4_v15885_4_4: ...realiza atividades de gestão/oferta neste posto_30.19. Concessão de bolsas por entidades com Certificação de Entidades Beneficentes de Assistência Social com atuação na área da educação (CEBAS-Educação)'
q30_19_5_velha'q30_19_5_v15885_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.19. Concessão de bolsas  (CEBAS-Educação)'
q30_19_0_velha'q30_19_0_v15885_0_0: ...não possui ação específica_30.19. Concessão de bolsas por entidades com Certificação de Entidades Beneficentes de Assistência Social com atuação na área da educação (CEBAS-Educação)'
q30_20_1_velha'q30_20_1_v15886_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.20. Isenções na taxa de inscrição para o Exame Nacional do Ensino Médio (Enem)'
q30_20_2_velha'q30_20_2_v15886_2_2: ...presta orientações_30.20. Isenções na taxa de inscrição para o Exame Nacional do Ensino Médio (Enem)'
q30_20_3_velha'q30_20_3_v15886_3_3: ...encaminha a família para os locais de gestão/oferta_30.20. Isenções na taxa de inscrição para o Exame Nacional do Ensino Médio (Enem)'
q30_20_4_velha'q30_20_4_v15886_4_4: ...realiza atividades de gestão/oferta neste posto_30.20. Isenções na taxa de inscrição para o Exame Nacional do Ensino Médio (Enem)'
q30_20_5_velha'q30_20_5_v15886_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.20. Isenções na taxa de inscrição para o Exame Nacional do Ensino Médio (Enem)'
q30_20_0_velha'q30_20_0_v15886_0_0: ...não possui ação específica_30.20. Isenções na taxa de inscrição para o Exame Nacional do Ensino Médio (Enem)'
q30_21_1_velha'q30_21_1_v15887_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.21. Sistema de Seleção Unificada - Sisu/Lei de cotas'
q30_21_2_velha'q30_21_2_v15887_2_2: ...presta orientações_30.21. Sistema de Seleção Unificada - Sisu/Lei de cotas'
q30_21_3_velha'q30_21_3_v15887_3_3: ...encaminha a família para os locais de gestão/oferta_30.21. Sistema de Seleção Unificada - Sisu/Lei de cotas'
q30_21_4_velha'q30_21_4_v15887_4_4: ...realiza atividades de gestão/oferta neste posto_30.21. Sistema de Seleção Unificada - Sisu/Lei de cotas'
q30_21_5_velha'q30_21_5_v15887_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.21. Sistema de Seleção Unificada - Sisu/Lei de cotas'
q30_21_0_velha'q30_21_0_v15887_6_0: ...não possui ação específica_30.21. Sistema de Seleção Unificada - Sisu/Lei de cotas'
q30_22_1_velha'q30_22_1_v15888_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.22. Programa de Urbanização de Assentamento Precários'
q30_22_2_velha'q30_22_2_v15888_2_2: ...presta orientações_30.22. Programa de Urbanização de Assentamento Precários'
q30_22_3_velha'q30_22_3_v15888_3_3: ...encaminha a família para os locais de gestão/oferta_30.22. Programa de Urbanização de Assentamento Precários'
q30_22_4_velha'q30_22_4_v15888_4_4: ...realiza atividades de gestão/oferta neste posto_30.22. Programa de Urbanização de Assentamento Precários'
q30_22_5_velha'q30_22_5_v15888_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.22. Programa de Urbanização de Assentamento Precários'
q30_22_0_velha'q30_22_0_v15888_0_0: ...não possui ação específica_30.22. Programa de Urbanização de Assentamento Precários'
q30_24_1_velha'q30_24_1_v15889_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.23. Programa Estratégia Brasil Amigo da Pessoa Idosa'
q30_24_2_velha'q30_24_2_v15889_2_2: ...presta orientações_30.23. Programa Estratégia Brasil Amigo da Pessoa Idosa'
q30_24_3_velha'q30_24_3_v15889_3_3: ...encaminha a família para os locais de gestão/oferta_30.23. Programa Estratégia Brasil Amigo da Pessoa Idosa'
q30_24_4_velha'q30_24_4_v15889_4_4: ...realiza atividades de gestão/oferta neste posto_30.23. Programa Estratégia Brasil Amigo da Pessoa Idosa'
q30_24_5_velha'q30_24_5_v15889_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.23. Programa Estratégia Brasil Amigo da Pessoa Idosa'
q30_24_0_velha'q30_24_0_v15889_0_0: ...não possui ação específica_30.23. Programa Estratégia Brasil Amigo da Pessoa Idosa'
q30_23_1_velha'q30_23_1_v15890_1_1: ...realiza cadastro de pessoas que já são ou poderão ser usuárias/beneficiárias do programa/atividade/benefício_30.23. Projeto Dom Hélder Câmara'
q30_23_2_velha'q30_23_2_v15890_2_2: ...presta orientações_30.23. Projeto Dom Hélder Câmara'
q30_23_3_velha'q30_23_3_v15890_3_3: ...encaminha a família para os locais de gestão/oferta_30.23. Projeto Dom Hélder Câmara'
q30_23_4_velha'q30_23_4_v15890_4_4: ...realiza atividades de gestão/oferta neste posto_30.23. Projeto Dom Hélder Câmara'
q30_23_5_velha'q30_23_5_v15890_5_5: .... naõ tem informações suficientes sobre o programa/atividade/benefício_30.23. Projeto Dom Hélder Câmara'
q30_23_0_velha'q30_23_0_v15890_0_0: ...não possui ação específica_30.23. Projeto Dom Hélder Câmara'
q32_1_velha'q32_1_v15764_1_1: Este posto encaminha as famílias para a rede socioassistencial de referência para inclusão em serviços socioassistenciais (CRAS, CREAS, Centro Pop, outros)_32. relação deste posto de CadÚnico com os outros equipamentos'
q32_2_velha'q32_2_v15764_2_2: Este posto encaminha as famílias para a rede socioassistencial de referência para acesso a benefícios eventuais_32. Qual a relação deste posto de Cadastro Único com os outros equipamentos da rede socioassistencial?'
q32_3_velha'q32_3_v15764_3_3: Este posto atende famílias para inclusão e atualização cadastral encaminhadas pela rede socioassistencial_32. Qual a relação deste posto de Cadastro Único com os outros equipamentos da rede socioassistencial?'
q32_4_velha'q32_4_v15764_4_4: profissional da equipe do CadÚnico deste posto está alocado em outro equipamento para interlocução do CadÚnico com os programas, serviços e benefícios socioassistenciais;?'
q32_5_velha'q32_5_v15764_5_5: Este posto realiza Busca Ativa (cadastramento domiciliar, ações itinerantes, mutirões, etc) em conjunto com a rede socioassistencial;' 
q32_0_velha'q32_0_v15764_0_0: Este posto não se relaciona com outros equipamentos da rede socioassitencial_32. Qual a relação deste posto de Cadastro Único com os outros equipamentos da rede socioassistencial?'
q33_1_velha'q33_1_v15765_1_1: Sim, atividades relacionadas ao acompanhamento e gestão do BPC_33. Este posto realiza atividades relacionadas ao BPC?'
q33_2_velha'q33_2_v15765_2_2: Sim, assistência a requerentes do BPC quanto ao preenchimento de requerimento ao INSS_33. Este posto realiza atividades relacionadas ao BPC?'
q33_3_velha'q33_3_v15765_3_3: Sim, realizam requerimento para obtenção do BPC (prescindem de Acordos de Cooperação Técnica)_33. Este posto realiza atividades relacionadas ao BPC?'
q33_99_velha'q33_99_v15765_99_99: Sim, outras._33. Este posto realiza atividades relacionadas ao BPC?'
q33_0_velha'q33_0_v15765_0_0: Não_33. Este posto realiza atividades relacionadas ao BPC?'
q34_0_velha'q34_0_v16241_34.0. Este posto ficou fechado em todo tempo da pandemia_34. como se deu funcionamento durante a pandemia'
q34_1_velha'q34_1_v15768_34.1. Ofertou atendimento presencial ao público em geral_34. como se deu funcionamento durante a pandemia'
q34_2_velha'q34_2_v15769_34.2. Ofertou apenas os atendimentos presenciais agendados_34. como se deu funcionamento durante a pandemia'
q34_3_velha'q34_3_v15770_34.3. Ofertou atendimentos/acompanhamento apenas para o público prioritário_34. como se deu funcionamento durante a pandemia'
q34_4_velha'q34_4_v15771_34.4. Ofertou os atendimento das demandas do Cadastro Único_34. como se deu funcionamento durante a pandemia'
q34_5_velha'q34_5_v15772_34.5. Ofertou os atendimento das demandas do Auxílio Emergencial_34. como se deu funcionamento durante a pandemia'
q34_6_velha'q34_6_v15774_34.6. Ofertou os atendimentos das demandas do Programa Bolsa Família_34. como se deu funcionamento durante a pandemia'
q34_7_velha'q34_7_v15775_34.7. Ofertou atendimento remoto por telefone e aplicativos de videoconferência_34. como se deu funcionamento durante a pandemia'
q34_8_velha'q34_8_v15776_34.8. Realizou visitas domiciliares_34. como se deu funcionamento durante a pandemia'
q34_99_velha'q34_99_v15777_34.99. Outro._34. como se deu funcionamento durante a pandemia'
q35_1_velha'q35_1_v15779_1_1: Teve que ampliar o número de profissionais_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q35_2_velha'q35_2_v15779_2_2: Com jornada de trabalho normal (semelhante a jornada anterior a pandemia)_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q35_3_velha'q35_3_v15779_3_3: Com jornada de trabalho reduzida_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q35_99_velha'q35_99_v15779_99_99: Outros_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q36_velha'q36_v15781_36. Os trabalhadores deste posto tiveram acesso a Equipamentos de Proteção Individual?'
q37_0_velha'q37_0_v15782_0_0: Não realizou nenhuma atividade em relação ao Auxílio Emergencial (siga para a questão 40)_37. Este posto realizou algumas destas atividades em relação ao Auxílio Emergencial'
q37_1_velha'q37_1_v15782_2_2: Prestou orientação às famílias já atendidas/acompanhadas por este posto_37. Este posto realizou algumas destas atividades em relação ao Auxílio Emergencial'
q37_2_velha'q37_2_v15782_3_3: Prestou orientações às famílias da comunidades em geral_37. Este posto realizou algumas destas atividades em relação ao Auxílio Emergencial'
q37_3_velha'q37_3_v15782_4_4: Auxiliou as famílias no preenchimento das solicitações_37. Este posto realizou algumas destas atividades em relação ao Auxílio Emergencial'
q37_4_velha'q37_4_v15782_5_5: Realizou busca ativa de famílias para preenchimento das solicitações_37. Este posto realizou algumas destas atividades em relação ao Auxílio Emergencial'
q37_5_velha'q37_5_v15782_6_6: Realizou parcerias com as Defensorias Públicas, judiciário e outros órgãos para orientação e atendimento de famílias para preenchimento das solicitações_37. em relação ao Auxílio Emergencial'
q37_99_velha'q37_99_v15782_99_99: Outros_37. Este posto realizou algumas destas atividades em relação ao Auxílio Emergencial'
q38_1_velha'q38_1_v15784_1_1: Conhecimento em LIBRAS_38. Indique se há na equipe do Cadastro Único e Programa Bolsa Família trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_2_velha'q38_2_v15784_2_2: Conhecimento em línguas estrangeiras (espanhol, inglês e francês)_38. Indique se há na equipe do Cadastro Único e Programa Bolsa Família trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_3_velha'q38_3_v15784_3_3: Conhecimento em línguas indígenas_38. Indique se há na equipe do Cadastro Único e Programa Bolsa Família trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_99_velha'q38_99_v15784_99_99: Outros_38. Indique se há na equipe do Cadastro Único e Programa Bolsa Família trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_0_velha'q38_0_v15784_0_0: Nenhuma das anteriores_38. Indique se há na equipe do Cadastro Único e Programa Bolsa Família trabalhadores aptos a realizar o atendimento com conhecimento em:'
.
