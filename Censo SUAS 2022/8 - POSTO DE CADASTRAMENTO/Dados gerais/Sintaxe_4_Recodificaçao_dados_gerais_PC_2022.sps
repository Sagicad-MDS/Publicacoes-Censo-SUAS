*********************************************************************************************************************************
****Recodificar variaveis  fora do padr�o 


RECODE q6_9 (1=1) (2=0).
EXECUTE.
VALUE LABELS   q6_9
1' Sim'
0' N�o'.

RECODE q6_10 (1=1) (2=0).
EXECUTE.
VALUE LABELS    q6_10
1' Sim'
0' N�o'.

RECODE q34_5 (1=1) (2=2)  (3=3) (4=4)  (5=0)                      .
EXECUTE.

VALUE LABELS    q34_5
1' Sempre'
2' Na maior parte do tempo'
3' �s vezes'
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
q18_1_velha'q18_1_v15717_1_1: Sim, as fam�lias de Averigua��o e Revis�o Cadastral s�o alvo de busca ativa_18. S�o feitas a��es espec�ficas para atender demandas de Averigua��o e Revis�o Cadastral?'
q18_2_velha'q18_2_v15717_2_2: Sim, as fam�lias de Averigua��o e Revis�o Cadastral fazem parte do p�blico priorit�rio de atendimento na unidade_18. S�o feitas a��es espec�ficas para atender demandas de Averigua��o e Revis�o Cadastral?'
q18_3_velha'q18_3_v15717_3_3: Sim, h� mutir�es em dias espec�ficos para atender o p�blico de Averigua��o e Revis�o Cadastral_18. S�o feitas a��es espec�ficas para atender demandas de Averigua��o e Revis�o Cadastral?'
q18_99_velha'q18_99_v15717_99_99: Sim, outros._18. S�o feitas a��es espec�ficas para atender demandas de Averigua��o e Revis�o Cadastral?'
q18_0_velha'q18_0_v15717_0_0: N�o h� a��es espec�ficas para atender o p�blico de Averigua��o e Revis�o Cadastral._18. S�o feitas a��es espec�ficas para atender demandas de Averigua��o e Revis�o Cadastral?'
q21_1_1_velha'q21_1_1_v15730_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.1.A��es para  Povos indigenas'
q21_1_2_velha'q21_1_2_v15730_2_2: Reuni�o/palestra informativa na comunidade_21.1.A��es para  Povos indigenas'
q21_1_3_velha'q21_1_3_v15730_3_3: Reuni�o/a��es em parceria com lideran�as_21.1.A��es para  Povos indigenas'
q21_1_4_velha'q21_1_4_v15730_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.1.A��es para  Povos indigenas'
q21_1_99_velha'q21_1_99_v15730_99_99: Outras a��es (responda a quest�o 22)_21.1.A��es para  Povos indigenas'
q21_1_0_velha'q21_1_0_v15730_0_0: N�o realiza a��es espec�ficas_21.1.A��es para  Povos indigenas'
q21_2_1_velha'q21_2_1_v15799_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.2. A��es para  Comunidade Quilombola'
q21_2_2_velha'q21_2_2_v15799_2_2: Reuni�o/palestra informativa na comunidade_21.2. A��es para  Comunidade Quilombola'
q21_2_3_velha'q21_2_3_v15799_3_3: Reuni�o/a��es em parceria com lideran�as_21.2. A��es para  Comunidade Quilombola'
q21_2_4_velha'q21_2_4_v15799_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.2. A��es para  Comunidade Quilombola'
q21_2_99_velha'q21_2_99_v15799_99_99: Outras a��es (responda a quest�o 22)_21.2. A��es para  Comunidade Quilombola'
q21_2_0_velha'q21_2_0_v15799_0_0: N�o realiza a��es espec�ficas_21.2. A��es para  Comunidade Quilombola'
q21_3_1_velha'q21_3_1_v15731_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.3. A��es para Comunidade Ribeirinha'
q21_3_2_velha'q21_3_2_v15731_2_2: Reuni�o/palestra informativa na comunidade_21.3. A��es para Comunidade Ribeirinha'
q21_3_3_velha'q21_3_3_v15731_3_3: Reuni�o/a��es em parceria com lideran�as_21.3. A��es para Comunidade Ribeirinha'
q21_3_4_velha'q21_3_4_v15731_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.3. A��es para Comunidade Ribeirinha'
q21_3_99_velha'q21_3_99_v15731_99_99: Outras a��es (responda a quest�o 22)_21.3. A��es para Comunidade Ribeirinha'
q21_3_0_velha'q21_3_0_v15731_0_0: N�o realiza a��es espec�ficas_21.3. A��es para Comunidade Ribeirinha'
q21_4_1_velha'q21_4_1_v15732_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.4. A��es para Povos ciganos'
q21_4_2_velha'q21_4_2_v15732_2_2: Reuni�o/palestra informativa na comunidade_21.4. A��es para Povos ciganos'
q21_4_3_velha'q21_4_3_v15732_3_3: Reuni�o/a��es em parceria com lideran�as_21.4. A��es para Povos ciganos'
q21_4_4_velha'q21_4_4_v15732_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.4. A��es para Povos ciganos'
q21_4_99_velha'q21_4_99_v15732_5_99: Outras a��es (responda a quest�o 22)_21.4. A��es para Povos ciganos'
q21_4_0_velha'q21_4_0_v15732_6_0: N�o realiza a��es espec�ficas_21.4. A��es para Povos ciganos'
q21_5_1_velha'q21_5_1_v15733_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.5. A��es para Povos de Matriz Africana e de terreiro'
q21_5_2_velha'q21_5_2_v15733_2_2: Reuni�o/palestra informativa na comunidade_21.5. A��es para Povos de Matriz Africana e de terreiro'
q21_5_3_velha'q21_5_3_v15733_3_3: Reuni�o/a��es em parceria com lideran�as_21.5. A��es para Povos de Matriz Africana e de terreiro'
q21_5_4_velha'q21_5_4_v15733_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.5. A��es para Povos de Matriz Africana e de terreiro'
q21_5_99_velha'q21_5_99_v15733_99_99: Outras a��es (responda a quest�o 22)_21.5. A��es para Povos de Matriz Africana e de terreiro'
q21_5_0_velha'q21_5_0_v15733_0_0: N�o realiza a��es espec�ficas_21.5. A��es para Povos de Matriz Africana e de terreiro'
q21_6_1_velha'q21_6_1_v15800_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.6. A��es para Extrativistas'
q21_6_2_velha'q21_6_2_v15800_2_2: Reuni�o/palestra informativa na comunidade_21.6. A��es para Extrativistas'
q21_6_3_velha'q21_6_3_v15800_3_3: Reuni�o/a��es em parceria com lideran�as_21.6. A��es para Extrativistas'
q21_6_4_velha'q21_6_4_v15800_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.6. A��es para Extrativistas'
q21_6_99_velha'q21_6_99_v15800_99_99: Outras a��es (responda a quest�o 22)_21.6. A��es para Extrativistas'
q21_6_0_velha'q21_6_0_v15800_0_0: N�o realiza a��es espec�ficas_21.6. A��es para Extrativistas'
q21_7_1_velha'q21_7_1_v15801_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.7. A��es para Pescadores artesanais'
q21_7_2_velha'q21_7_2_v15801_2_2: Reuni�o/palestra informativa na comunidade_21.7. A��es para Pescadores artesanais'
q21_7_3_velha'q21_7_3_v15801_3_3: Reuni�o/a��es em parceria com lideran�as_21.7. A��es para Pescadores artesanais'
q21_7_4_velha'q21_7_4_v15801_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.7. A��es para Pescadores artesanais'
q21_7_99_velha'q21_7_99_v15801_99_99: Outras a��es (responda a quest�o 22)_21.7. A��es para Pescadores artesanais'
q21_7_0_velha'q21_7_0_v15801_0_0: N�o realiza a��es espec�ficas_21.7. A��es para Pescadores artesanais'
q21_8_1_velha'q21_8_1_v15734_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.8. A��es para Ribeirinhas (fam�lias em calhas de rios)'
q21_8_2_velha'q21_8_2_v15734_2_2: Reuni�o/palestra informativa na comunidade_21.8. A��es para Ribeirinhas (fam�lias em calhas de rios)'
q21_8_3_velha'q21_8_3_v15734_3_3: Reuni�o/a��es em parceria com lideran�as_21.8. A��es para Ribeirinhas (fam�lias em calhas de rios)'
q21_8_4_velha'q21_8_4_v15734_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.8. A��es para Ribeirinhas (fam�lias em calhas de rios)'
q21_8_99_velha'q21_8_99_v15734_5_99: Outras a��es (responda a quest�o 22)_21.8. A��es para Ribeirinhas (fam�lias em calhas de rios)'
q21_8_0_velha'q21_8_0_v15734_6_0: N�o realiza a��es espec�ficas_21.8. A��es para Ribeirinhas (fam�lias em calhas de rios)'
q21_9_1_velha'q21_9_1_v15735_1_1: Busca ativa para inclus�o/ atualiza��o cadastral na comunidade_21.9. A��es para Outros Grupos tradicionais e espec�ficos. Qual?'
q21_9_2_velha'q21_9_2_v15735_2_2: Reuni�o/palestra informativa na comunidade_21.9. A��es para Outros Grupos tradicionais e espec�ficos. Qual?'
q21_9_3_velha'q21_9_3_v15735_3_3: Reuni�o/a��es em parceria com lideran�as_21.9. A��es para Outros Grupos tradicionais e espec�ficos. Qual?'
q21_9_4_velha'q21_9_4_v15735_4_4: Reuni�es/a��es em parceria com outros �rg�os/secretarias_21.9. A��es para Outros Grupos tradicionais e espec�ficos. Qual?'
q21_9_99_velha'q21_9_99_v15735_99_99: Outras a��es (responda a quest�o 22)_21.9. A��es para Outros Grupos tradicionais e espec�ficos. Qual?'
q21_9_0_velha'q21_9_0_v15735_0_0: N�o realiza a��es espec�ficas_21.9. A��es para Outros Grupos tradicionais e espec�ficos. Qual?'
q23_0_velha'q23_0_v15737_0_0: N�o realiza a��es e atividades relacionadas � gest�o de benef�cios do Programa Bolsa Fam�lia _23. a��es e atividades desenvolvidas pela equipe desta Unidade em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q23_1_velha'q23_1_v15737_1_1: As a��es e atividades relacionadas � gest�o de benef�cios do Programa Bolsa Fam�lia s�o encaminhadas para o CRAS e/ou outros servi�o da rede socioassistencial '
q23_2_velha'q23_2_v15737_2_2: Esclarecimentos individuais de d�vidas sobre regras do Programa (valores de benef�cios, regras de concess�o, bloqueio, suspens�o e cancelamento de benef�cios e condicionalidades)'
q23_3_velha'q23_3_v15737_3_3: A��es coletivas para prestar informa��es �s fam�lias sobre regras do Programa (Reuni�es de acolhida, palestra etc)'
q23_4_velha'q23_4_v15737_4_4: Manuten��o de benef�cios (bloqueios, desbloqueios, cancelamentos e revers�es de cancelamento) diretamente no SIBEC'
q23_5_velha'q23_5_v15737_5_5: Registro das manuten��es benef�cios (bloqueios, desbloqueios, cancelamentos e revers�es de cancelamento) no Formul�rio Padr�o de Gest�o de Benef�cios (FPGB) e seu arquivamento'
q23_6_velha'q23_6_v15737_6_6: Solicita��o de manuten��o de benef�cios (bloqueios, desbloqueios, cancelamentos e revers�es de cancelamento) pelo m�dulo de Administra��o Off-line do SigPBF'
q23_7_velha'q23_7_v15737_7_7: Elabora��o de of�cios � Secretaria Nacional de Renda de Cidadania a respeito da administra��o de benef�cios (bloqueios, desbloqueios, revers�es de suspens�es, cancelamentos e revers�es de cancelamento)'
q23_8_velha'q23_8_v15737_8_8: Emiss�o de declara��o de troca de respons�vel familiar para recebimento do benef�cio'
q23_9_velha'q23_9_v15737_9_9: Emiss�o de declara��o especial para recebimento do benef�cio (quando em situa��es de emerg�ncia e estado de calamidade p�blica)'
q23_10_velha'q23_10_v15737_10_10: Esclarecimentos sobre o conte�do de mensagens no extrato de pagamentos, recebida pelo benefici�rio'
q23_11_velha'q23_11_v15737_11_11: Esclarecimentos sobre a gest�o de pagamentos do Programa: entrega, desbloqueio e ativa��o do Cart�o Bolsa Fam�lia e calend�rio de pagamento'
q23_12_velha'q23_12_v15737_12_12: Orienta��o sobre como denunciar irregularidades no pagamento e no atendimento dos canais da CAIXA'
q23_13_velha'q23_13_v15737_13_13: Registro de den�ncias de recebimento indevido de benef�cios'
q23_14_velha'q23_14_v15737_14_14: Apura��o de den�ncias de recebimento indevido de benef�cios'
q23_99_velha'q23_99_v15737_99_99: Outros.'
q24_1_velha'q24_1_v15739_1_1: N�o h� dificuldades_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_2_velha'q24_2_v15739_2_2: Falta de capacita��o da equipe do posto sobre as regras do Programa_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_3_velha'q24_3_v15739_3_3: As regras do Programa s�o complexas_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_4_velha'q24_4_v15739_4_4: As informa��es disponibilizadas pelo Minist�rio da Cidadania sobre as regras do Programa (Instru��es Operacionais, Informes, Comunicados) s�o de dif�cil compreens�o_24.ficuldades enfrentadas:'
q24_5_velha'q24_5_v15739_5_5: As informa��es disponibilizadas pelo Minist�rio da Cidadania sobre as regras do Programa s�o de dif�cil acesso_24.dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_6_velha'q24_6_v15739_6_6: Falta de informa��es sobre as regras do Programa_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_7_velha'q24_7_v15739_7_7: Falta de material informativo para disponibilizar no posto sobre as regras do Programa (cartazes, folders, filipetas)_24.dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do PBF:'
q24_8_velha'q24_8_v15739_8_8: Baixa qualidade da internet_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_9_velha'q24_9_v15739_9_9: Falta de acesso � internet_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_10_velha'q24_10_v15739_10_10: Equipe do posto n�o tem acesso ao SIBEC_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_11_velha'q24_11_v15739_11_11: Instabilidade do SIBEC_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_12_velha'q24_12_v15739_12_12: Equipe do posto n�o tem acesso ao SigPBF_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_13_velha'q24_13_v15739_13_13: Instabilidade do SigPBF_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_14_velha'q24_14_v15739_14_14: Grande n�mero de atendimentos em decorr�ncia dos processos de gest�o de benef�cios: averigua��o e revis�o cadastral_24. dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do PBF:'
q24_15_velha'q24_15_v15739_15_15: Grande n�mero de atendimentos em decorr�ncia dos processos de gest�o de benef�cios:bloqueios e suspens�es de condicionalidades e de n�o localizados no sistema de ensino_24.dificuldades enfrentadas'
q24_16_velha'q24_16_v15739_16_16: Grande n�mero de atendimentos em decorr�ncia dos processos de gest�o de benef�cios: suspens�es em decorr�ncia do recebimento do seguro-defeso_24. dificuldades enfrentadas'
q24_17_velha'q24_17_v15739_17_17: N�mero reduzido de pessoas na equipe para suprir a demanda de atendimento_24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q24_99_velha'q24_99_v15739_18_18: Outros._24. Indique quais s�o as dificuldades enfrentadas por este posto em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia:'
q25_0_velha'q25_0_v15742_0_0: N�o realiza atividades com fam�lias em descumprimento de condicionalidades_25. Indique as a��es e atividades desenvolvidas pela equipe desta Unidade em rela��o �s fam�lias em descumprimento de condicionalidades:'
q25_1_velha'q25_1_v15742_1_1: Esclarecimentos �s fam�lias sobre as regras de condicionalidades durante o atendimento particularizado_25. a��es e atividades desenvolvidas pela equipe '
q25_2_velha'q25_2_v15742_2_2: Intera��o com as escolas dos benefici�rios em descumprimento_25. Indique as a��es e atividades desenvolvidas pela equipe desta Unidade em rela��o �s fam�lias em descumprimento de condicionalidades:'
q25_3_velha'q25_3_v15742_3_3: Intera��o com a equipe de sa�de no munic�pio respons�vel pelo acompanhamento das condicionalidades de sa�de_25. a��es e atividades desenvolvidas pela equipe '
q25_4_velha'q25_4_v15742_4_4: A��o para prestar informa��es �s fam�lias sobre as condicionalidades (palestras, oficinas em grupo, etc)_25.a��es e atividades desenvolvidas'
q25_5_velha'q25_5_v15742_5_5: Busca ativa (visita domiciliar, envio de cartas ou SMS, e a��es itinerantes) com a finalidade de facilitar a apresenta��o de recurso pelas fam�lias_25.a��es e atividades desenvolvidas pela equipe'
q25_6_velha'q25_6_v15742_6_6: Fornecimento de comprovante do registro de recurso para as fam�lias_25. Indique as a��es e atividades desenvolvidas pela equipe desta Unidade em rela��o �s fam�lias em descumprimento de condicionalidades:'
q25_7_velha'q25_7_v15742_7_7: Arquivamento da documenta��o comprobat�ria apresentada pela fam�lia no registro do recurso_25.a��es e atividades desenvolvidas pela equipe desta Unidade em rela��o �s fam�lias em descumprimento de condicionalidades:'
q25_8_velha'q25_8_v15742_8_8: Encaminhamento de fam�lias ou indiv�duos em descumprimento de condicionalidades para outros servi�os, programas ou benef�cios socioassistenciais_25.a��es e atividades desenvolvidas pela equipe'
q25_9_velha'q25_9_v15742_9_9: Encaminhamento de fam�lias ou indiv�duos em descumprimento de condicionalidades para outras pol�ticas p�blicas (educa��o, sa�de, habita��o, trabalho, etc.)_25.a��es e atividades desenvolvidas pela equipe'
q25_99_velha'q25_99_v15742_99_99: Outros._25. Indique as a��es e atividades desenvolvidas pela equipe desta Unidade em rela��o �s fam�lias em descumprimento de condicionalidades:'
q27_velha'q27_v15747_27. Considerando SOMENTE as fam�lias em descumprimento de condicionalidades, informe por quais formas as fam�lias podem acessar esta Unidades para apresentar RECURSO?'
q28_1_velha'q28_1_v15748_1_1: Sim, as den�ncias s�o tratadas aqui e depois encaminhadas � Secretaria Municipal_28. Este posto recebe den�ncia de fraudes de recebimento de benef�cios do Programa Bolsa Fam�lia e qual o tratamento dado?'
q28_2_velha'q28_2_v15748_2_2: Sim, as den�ncias s�o encaminhadas para tratamento pela Secretaria Municipal'
q28_99_velha'q28_99_v15748_99_99: Outros.'
q28_0_velha'q28_0_v15748_0_0: N�o recebemos den�ncias'
q28_98_velha'q28_98_v15748_98_98: N�o sei informar'
q30_1_1_velha'q30_1_1_v15752_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.1. Benef�cio de Presta��o Continuada -  Em rela��o � outros programas/atividades/benef�cios'
q30_1_2_velha'q30_1_2_v15752_2_2: ...presta orienta��es_30.1. Benef�cio de Presta��o Continuada -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_1_3_velha'q30_1_3_v15752_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.1. Benef�cio de Presta��o Continuada -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_1_4_velha'q30_1_4_v15752_4_4: ...realiza atividades de gest�o/oferta neste posto_30.1. Benef�cio de Presta��o Continuada -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_1_5_velha'q30_1_5_v15752_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.1. Benef�cio de Presta��o Continuada -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_1_0_velha'q30_1_0_v15752_0_0: ...n�o possui a��o espec�fica_30.1. Benef�cio de Presta��o Continuada -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_2_1_velha'q30_2_1_v15753_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.2. Carteira do idoso-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_2_2_velha'q30_2_2_v15753_2_2: ...presta orienta��es_30.2. Carteira do idoso-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_2_3_velha'q30_2_3_v15753_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.2. Carteira do idoso-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_2_4_velha'q30_2_4_v15753_4_4: ...realiza atividades de gest�o/oferta neste posto_30.2. Carteira do idoso-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_2_5_velha'q30_2_5_v15753_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.2. Carteira do idoso-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_2_0_velha'q30_2_0_v15753_0_0: ...n�o possui a��o espec�fica_30.2. Carteira do idoso-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_3_1_velha'q30_3_1_v15754_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.3. SCFV Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_3_2_velha'q30_3_2_v15754_2_2: ...presta orienta��es_30.3. Servi�os de Conviv�ncia e Fortalecimento de V�nculos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_3_3_velha'q30_3_3_v15754_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.3. Servi�os de Conviv�ncia e Fortalecimento de V�nculos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_3_4_velha'q30_3_4_v15754_4_4: ...realiza atividades de gest�o/oferta neste posto_30.3. Servi�os de Conviv�ncia e Fortalecimento de V�nculos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_3_5_velha'q30_3_5_v15754_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.3. Servi�os de Conviv�ncia e Fortalecimento de V�nculos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_3_0_velha'q30_3_0_v15754_0_0: ...n�o possui a��o espec�fica_30.3. Servi�os de Conviv�ncia e Fortalecimento de V�nculos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_4_1_velha'q30_4_1_v15755_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.4. Programa Crian�a Feliz -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_4_2_velha'q30_4_2_v15755_2_2: ...presta orienta��es_30.4. Programa Crian�a Feliz -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_4_3_velha'q30_4_3_v15755_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.4. Programa Crian�a Feliz -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_4_4_velha'q30_4_4_v15755_4_4: ...realiza atividades de gest�o/oferta neste posto_30.4. Programa Crian�a Feliz -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_4_5_velha'q30_4_5_v15755_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.4. Programa Crian�a Feliz -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_4_0_velha'q30_4_0_v15755_6_0: ...n�o possui a��o espec�fica_30.4. Programa Crian�a Feliz -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_5_1_velha'q30_5_1_v15756_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.5. PETI-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_5_2_velha'q30_5_2_v15756_2_2: ...presta orienta��es_30.5. Programa de Erradica��o do Trabalho Infantil -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_5_3_velha'q30_5_3_v15756_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.5. Programa de Erradica��o do Trabalho Infantil -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_5_4_velha'q30_5_4_v15756_4_4: ...realiza atividades de gest�o/oferta neste posto_30.5. Programa de Erradica��o do Trabalho Infantil -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_5_5_velha'q30_5_5_v15756_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.5. Programa de Erradica��o do Trabalho Infantil -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_5_0_velha'q30_5_0_v15756_0_0: ...n�o possui a��o espec�fica_30.5. Programa de Erradica��o do Trabalho Infantil -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_6_1_velha'q30_6_1_v15757_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.6. Plano Progredir Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_6_2_velha'q30_6_2_v15757_2_2: ...presta orienta��es_30.6. Plano Progredir - Programa Nacional do Microcr�dito Produtivo Orientado -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_6_3_velha'q30_6_3_v15757_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.6. Plano Progredir - Programa Nacional do Microcr�dito Produtivo Orientado -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_6_4_velha'q30_6_4_v15757_4_4: ...realiza atividades de gest�o/oferta neste posto_30.6. Plano Progredir - Programa Nacional do Microcr�dito Produtivo Orientado -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_6_5_velha'q30_6_5_v15757_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.6. Plano Progredir - Programa Nacional do Microcr�dito Produtivo Orientado -  Em rela��o � outros programas/atividades/benef�cios.'
q30_6_0_velha'q30_6_0_v15757_0_0: ...n�o possui a��o espec�fica_30.6. Plano Progredir - Programa Nacional do Microcr�dito Produtivo Orientado -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_7_1_velha'q30_7_1_v15857_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.7. Tarifa Social de Energia El�trica -  Em rela��o � outros programas/atividades/benef�cios.'
q30_7_2_velha'q30_7_2_v15857_2_2: ...presta orienta��es_30.7. Tarifa Social de Energia El�trica -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_7_3_velha'q30_7_3_v15857_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.7. Tarifa Social de Energia El�trica -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_7_4_velha'q30_7_4_v15857_4_4: ...realiza atividades de gest�o/oferta neste posto_30.7. Tarifa Social de Energia El�trica -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_7_5_velha'q30_7_5_v15857_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.7. Tarifa Social de Energia El�trica -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_7_6_velha'q30_7_6_v15857_0_0: ...n�o possui a��o espec�fica_30.7. Tarifa Social de Energia El�trica -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_8_1_velha'q30_8_1_v15858_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.8. Programa Minha Casa Minha Vida -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_8_2_velha'q30_8_2_v15858_2_2: ...presta orienta��es_30.8. Programa Minha Casa Minha Vida -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_8_3_velha'q30_8_3_v15858_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.8. Programa Minha Casa Minha Vida -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_8_4_velha'q30_8_4_v15858_4_4: ...realiza atividades de gest�o/oferta neste posto_30.8. Programa Minha Casa Minha Vida -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_8_5_velha'q30_8_5_v15858_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.8. Programa Minha Casa Minha Vida -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_8_0_velha'q30_8_0_v15858_0_0: ...n�o possui a��o espec�fica_30.8. Programa Minha Casa Minha Vida -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_9_1_velha'q30_9_1_v15859_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda.'
q30_9_2_velha'q30_9_2_v15859_2_2: ...presta orienta��es_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_9_3_velha'q30_9_3_v15859_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_9_4_velha'q30_9_4_v15859_4_4: ...realiza atividades de gest�o/oferta neste posto_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_9_5_velha'q30_9_5_v15859_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em rela��o � outros programas/atividades/benef�cios'
q30_9_0_velha'q30_9_0_v15859_0_0: ...n�o possui a��o espec�fica_30.9. Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_10_1_velha'q30_10_1_v15860_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.10. Telefone Popular -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_10_2_velha'q30_10_2_v15860_2_2: ...presta orienta��es_30.10. Telefone Popular -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_10_3_velha'q30_10_3_v15860_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.10. Telefone Popular -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_10_4_velha'q30_10_4_v15860_4_4: ...realiza atividades de gest�o/oferta neste posto_30.10. Telefone Popular -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_10_5_velha'q30_10_5_v15860_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.10. Telefone Popular -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_10_0_velha'q30_10_0_v15860_0_0: ...n�o possui a��o espec�fica_30.10. Telefone Popular -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_11_1_velha'q30_11_1_v15861_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.11. Isen��o de Pagamento de Taxa de Inscri��o em Concursos P�blicos.'
q30_11_2_velha'q30_11_2_v15861_2_2: ...presta orienta��es_30.11. Isen��o de Pagamento de Taxa de Inscri��o em Concursos P�blicos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_11_3_velha'q30_11_3_v15861_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.11. Isen��o de Pagamento de Taxa de Inscri��o em Concursos P�blicos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_11_4_velha'q30_11_4_v15861_4_4: ...realiza atividades de gest�o/oferta neste posto_30.11. Isen��o de Pagamento de Taxa de Inscri��o em Concursos P�blicos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_11_5_velha'q30_11_5_v15861_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.11. Isen��o de Pagamento de Taxa de Inscri��o em Concursos P�blicos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_11_0_velha'q30_11_0_v15861_0_0: ...n�o possui a��o espec�fica_30.11. Isen��o de Pagamento de Taxa de Inscri��o em Concursos P�blicos -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_12_1_velha'q30_12_1_v15862_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.12. Programas Cisternas -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_12_2_velha'q30_12_2_v15862_2_2: ...presta orienta��es_30.12. Programas Cisternas -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_12_3_velha'q30_12_3_v15862_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.12. Programas Cisternas -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_12_4_velha'q30_12_4_v15862_4_4: ...realiza atividades de gest�o/oferta neste posto_30.12. Programas Cisternas -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_12_5_velha'q30_12_5_v15862_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.12. Programas Cisternas -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_12_0_velha'q30_12_0_v15862_0_0: ...n�o possui a��o espec�fica_30.12. Programas Cisternas -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_13_1_velha'q30_13_1_v15863_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.13. Programa de Fomento �s Atividades Produtivas Rurais/ Assist�ncia T�cnica e Extens�o Rural.'
q30_13_2_velha'q30_13_2_v15863_2_2: ...presta orienta��es_30.13. Programa de Fomento �s Atividades Produtivas Rurais/ Assist�ncia T�cnica e Extens�o Rural -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_13_3_velha'q30_13_3_v15863_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.13. Programa de Fomento �s Atividades Produtivas Rurais/ Assist�ncia T�cnica e Extens�o Rural -  Em rela��o � outros programas/atividades/benef�cios.'
q30_13_4_velha'q30_13_4_v15863_4_4: ...realiza atividades de gest�o/oferta neste posto_30.13. Programa de Fomento �s Atividades Produtivas Rurais/ Assist�ncia T�cnica e Extens�o Rural -  Em rela��o � outros programas/atividades/benef�cios.'
q30_13_5_velha'q30_13_5_v15863_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.13. Programa de Fomento �s Atividades Produtivas Rurais/ Assist�ncia T�cnica e Extens�o Rural'
q30_13_0_velha'q30_13_0_v15863_0_0: ...n�o possui a��o espec�fica_30.13. Programa de Fomento �s Atividades Produtivas Rurais/ Assist�ncia T�cnica e Extens�o Rural -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_14_1_velha'q30_14_1_v15864_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.14. Programa Nacional de Reforma Agr�ria.'
q30_14_2_velha'q30_14_2_v15864_2_2: ...presta orienta��es_30.14. Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_14_3_velha'q30_14_3_v15864_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.14. Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_14_4_velha'q30_14_4_v15864_4_4: ...realiza atividades de gest�o/oferta neste posto_30.14. Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_14_5_velha'q30_14_5_v15864_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.14. Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_14_0_velha'q30_14_0_v15864_0_0: ...n�o possui a��o espec�fica_30.14. Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_15_1_velha'q30_15_1_v15865_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.15. Programa Nacional de Cr�dito Fundi�rio.'
q30_15_2_velha'q30_15_2_v15865_2_2: ...presta orienta��es_30.15. Programa Nacional de Cr�dito Fundi�rio -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_15_3_velha'q30_15_3_v15865_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.15. Programa Nacional de Cr�dito Fundi�rio -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_15_4_velha'q30_15_4_v15865_4_4: ...realiza atividades de gest�o/oferta neste posto_30.15. Programa Nacional de Cr�dito Fundi�rio -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_15_5_velha'q30_15_5_v15865_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.15. Programa Nacional de Cr�dito Fundi�rio -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_15_0_velha'q30_15_0_v15865_0_0: ...n�o possui a��o espec�fica_30.15. Programa Nacional de Cr�dito Fundi�rio -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_16_1_velha'q30_16_1_v15869_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.16. Cr�dito Instala��o do Programa Nacional de Reforma Agr�ria.'
q30_16_2_velha'q30_16_2_v15869_2_2: ...presta orienta��es_30.16. Cr�dito Instala��o do Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_16_3_velha'q30_16_3_v15869_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.16. Cr�dito Instala��o do Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto'
q30_16_4_velha'q30_16_4_v15869_4_4: ...realiza atividades de gest�o/oferta neste posto_30.16. Cr�dito Instala��o do Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_16_5_velha'q30_16_5_v15869_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.16. Cr�dito Instala��o do Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_16_0_velha'q30_16_0_v15869_0_0: ...n�o possui a��o espec�fica_30.16. Cr�dito Instala��o do Programa Nacional de Reforma Agr�ria-  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_17_1_velha'q30_17_1_v15880_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.17. Identidade Jovem (ID Jovem) -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_17_2_velha'q30_17_2_v15880_2_2: ...presta orienta��es_30.17. Identidade Jovem (ID Jovem) -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_17_3_velha'q30_17_3_v15880_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.17. Identidade Jovem (ID Jovem) -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_17_4_velha'q30_17_4_v15880_4_4: ...realiza atividades de gest�o/oferta neste posto_30.17. Identidade Jovem (ID Jovem) -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_17_5_velha'q30_17_5_v15880_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.17. Identidade Jovem (ID Jovem) -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_17_6_velha'q30_17_6_v15880_0_0: ...n�o possui a��o espec�fica_30.17. Identidade Jovem (ID Jovem) -  Em rela��o � outros programas/atividades/benef�cios, este posto.'
q30_18_1_velha'q30_18_1_v15883_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.18. A��o de Distribui��o de Alimentos'
q30_18_2_velha'q30_18_2_v15883_2_2: ...presta orienta��es_30.18. A��o de Distribui��o de Alimentos'
q30_18_3_velha'q30_18_3_v15883_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.18. A��o de Distribui��o de Alimentos'
q30_18_4_velha'q30_18_4_v15883_4_4: ...realiza atividades de gest�o/oferta neste posto_30.18. A��o de Distribui��o de Alimentos'
q30_18_5_velha'q30_18_5_v15883_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.18. A��o de Distribui��o de Alimentos'
q30_18_0_velha'q30_18_0_v15883_0_0: ...n�o possui a��o espec�fica_30.18. A��o de Distribui��o de Alimentos'
q30_19_1_velha'q30_19_1_v15885_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.19. Concede bolsas por entidades com CEBAS-Educa��o)'
q30_19_2_velha'q30_19_2_v15885_2_2: ...presta orienta��es_30.19. Concess�o de bolsas por entidades com Certifica��o de Entidades Beneficentes de Assist�ncia Social com atua��o na �rea da educa��o (CEBAS-Educa��o)'
q30_19_3_velha'q30_19_3_v15885_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.19. Concess�o de bolsas por entidades com Certifica��o de Entidades Beneficentes de Assist�ncia Social com atua��o na �rea da educa��o (CEBAS-Educa��o)'
q30_19_4_velha'q30_19_4_v15885_4_4: ...realiza atividades de gest�o/oferta neste posto_30.19. Concess�o de bolsas por entidades com Certifica��o de Entidades Beneficentes de Assist�ncia Social com atua��o na �rea da educa��o (CEBAS-Educa��o)'
q30_19_5_velha'q30_19_5_v15885_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.19. Concess�o de bolsas  (CEBAS-Educa��o)'
q30_19_0_velha'q30_19_0_v15885_0_0: ...n�o possui a��o espec�fica_30.19. Concess�o de bolsas por entidades com Certifica��o de Entidades Beneficentes de Assist�ncia Social com atua��o na �rea da educa��o (CEBAS-Educa��o)'
q30_20_1_velha'q30_20_1_v15886_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.20. Isen��es na taxa de inscri��o para o Exame Nacional do Ensino M�dio (Enem)'
q30_20_2_velha'q30_20_2_v15886_2_2: ...presta orienta��es_30.20. Isen��es na taxa de inscri��o para o Exame Nacional do Ensino M�dio (Enem)'
q30_20_3_velha'q30_20_3_v15886_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.20. Isen��es na taxa de inscri��o para o Exame Nacional do Ensino M�dio (Enem)'
q30_20_4_velha'q30_20_4_v15886_4_4: ...realiza atividades de gest�o/oferta neste posto_30.20. Isen��es na taxa de inscri��o para o Exame Nacional do Ensino M�dio (Enem)'
q30_20_5_velha'q30_20_5_v15886_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.20. Isen��es na taxa de inscri��o para o Exame Nacional do Ensino M�dio (Enem)'
q30_20_0_velha'q30_20_0_v15886_0_0: ...n�o possui a��o espec�fica_30.20. Isen��es na taxa de inscri��o para o Exame Nacional do Ensino M�dio (Enem)'
q30_21_1_velha'q30_21_1_v15887_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.21. Sistema de Sele��o Unificada - Sisu/Lei de cotas'
q30_21_2_velha'q30_21_2_v15887_2_2: ...presta orienta��es_30.21. Sistema de Sele��o Unificada - Sisu/Lei de cotas'
q30_21_3_velha'q30_21_3_v15887_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.21. Sistema de Sele��o Unificada - Sisu/Lei de cotas'
q30_21_4_velha'q30_21_4_v15887_4_4: ...realiza atividades de gest�o/oferta neste posto_30.21. Sistema de Sele��o Unificada - Sisu/Lei de cotas'
q30_21_5_velha'q30_21_5_v15887_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.21. Sistema de Sele��o Unificada - Sisu/Lei de cotas'
q30_21_0_velha'q30_21_0_v15887_6_0: ...n�o possui a��o espec�fica_30.21. Sistema de Sele��o Unificada - Sisu/Lei de cotas'
q30_22_1_velha'q30_22_1_v15888_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.22. Programa de Urbaniza��o de Assentamento Prec�rios'
q30_22_2_velha'q30_22_2_v15888_2_2: ...presta orienta��es_30.22. Programa de Urbaniza��o de Assentamento Prec�rios'
q30_22_3_velha'q30_22_3_v15888_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.22. Programa de Urbaniza��o de Assentamento Prec�rios'
q30_22_4_velha'q30_22_4_v15888_4_4: ...realiza atividades de gest�o/oferta neste posto_30.22. Programa de Urbaniza��o de Assentamento Prec�rios'
q30_22_5_velha'q30_22_5_v15888_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.22. Programa de Urbaniza��o de Assentamento Prec�rios'
q30_22_0_velha'q30_22_0_v15888_0_0: ...n�o possui a��o espec�fica_30.22. Programa de Urbaniza��o de Assentamento Prec�rios'
q30_24_1_velha'q30_24_1_v15889_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.23. Programa Estrat�gia Brasil Amigo da Pessoa Idosa'
q30_24_2_velha'q30_24_2_v15889_2_2: ...presta orienta��es_30.23. Programa Estrat�gia Brasil Amigo da Pessoa Idosa'
q30_24_3_velha'q30_24_3_v15889_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.23. Programa Estrat�gia Brasil Amigo da Pessoa Idosa'
q30_24_4_velha'q30_24_4_v15889_4_4: ...realiza atividades de gest�o/oferta neste posto_30.23. Programa Estrat�gia Brasil Amigo da Pessoa Idosa'
q30_24_5_velha'q30_24_5_v15889_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.23. Programa Estrat�gia Brasil Amigo da Pessoa Idosa'
q30_24_0_velha'q30_24_0_v15889_0_0: ...n�o possui a��o espec�fica_30.23. Programa Estrat�gia Brasil Amigo da Pessoa Idosa'
q30_23_1_velha'q30_23_1_v15890_1_1: ...realiza cadastro de pessoas que j� s�o ou poder�o ser usu�rias/benefici�rias do programa/atividade/benef�cio_30.23. Projeto Dom H�lder C�mara'
q30_23_2_velha'q30_23_2_v15890_2_2: ...presta orienta��es_30.23. Projeto Dom H�lder C�mara'
q30_23_3_velha'q30_23_3_v15890_3_3: ...encaminha a fam�lia para os locais de gest�o/oferta_30.23. Projeto Dom H�lder C�mara'
q30_23_4_velha'q30_23_4_v15890_4_4: ...realiza atividades de gest�o/oferta neste posto_30.23. Projeto Dom H�lder C�mara'
q30_23_5_velha'q30_23_5_v15890_5_5: .... na� tem informa��es suficientes sobre o programa/atividade/benef�cio_30.23. Projeto Dom H�lder C�mara'
q30_23_0_velha'q30_23_0_v15890_0_0: ...n�o possui a��o espec�fica_30.23. Projeto Dom H�lder C�mara'
q32_1_velha'q32_1_v15764_1_1: Este posto encaminha as fam�lias para a rede socioassistencial de refer�ncia para inclus�o em servi�os socioassistenciais (CRAS, CREAS, Centro Pop, outros)_32. rela��o deste posto de Cad�nico com os outros equipamentos'
q32_2_velha'q32_2_v15764_2_2: Este posto encaminha as fam�lias para a rede socioassistencial de refer�ncia para acesso a benef�cios eventuais_32. Qual a rela��o deste posto de Cadastro �nico com os outros equipamentos da rede socioassistencial?'
q32_3_velha'q32_3_v15764_3_3: Este posto atende fam�lias para inclus�o e atualiza��o cadastral encaminhadas pela rede socioassistencial_32. Qual a rela��o deste posto de Cadastro �nico com os outros equipamentos da rede socioassistencial?'
q32_4_velha'q32_4_v15764_4_4: profissional da equipe do Cad�nico deste posto est� alocado em outro equipamento para interlocu��o do Cad�nico com os programas, servi�os e benef�cios socioassistenciais;?'
q32_5_velha'q32_5_v15764_5_5: Este posto realiza Busca Ativa (cadastramento domiciliar, a��es itinerantes, mutir�es, etc) em conjunto com a rede socioassistencial;' 
q32_0_velha'q32_0_v15764_0_0: Este posto n�o se relaciona com outros equipamentos da rede socioassitencial_32. Qual a rela��o deste posto de Cadastro �nico com os outros equipamentos da rede socioassistencial?'
q33_1_velha'q33_1_v15765_1_1: Sim, atividades relacionadas ao acompanhamento e gest�o do BPC_33. Este posto realiza atividades relacionadas ao BPC?'
q33_2_velha'q33_2_v15765_2_2: Sim, assist�ncia a requerentes do BPC quanto ao preenchimento de requerimento ao INSS_33. Este posto realiza atividades relacionadas ao BPC?'
q33_3_velha'q33_3_v15765_3_3: Sim, realizam requerimento para obten��o do BPC (prescindem de Acordos de Coopera��o T�cnica)_33. Este posto realiza atividades relacionadas ao BPC?'
q33_99_velha'q33_99_v15765_99_99: Sim, outras._33. Este posto realiza atividades relacionadas ao BPC?'
q33_0_velha'q33_0_v15765_0_0: N�o_33. Este posto realiza atividades relacionadas ao BPC?'
q34_0_velha'q34_0_v16241_34.0. Este posto ficou fechado em todo tempo da pandemia_34. como se deu funcionamento durante a pandemia'
q34_1_velha'q34_1_v15768_34.1. Ofertou atendimento presencial ao p�blico em geral_34. como se deu funcionamento durante a pandemia'
q34_2_velha'q34_2_v15769_34.2. Ofertou apenas os atendimentos presenciais agendados_34. como se deu funcionamento durante a pandemia'
q34_3_velha'q34_3_v15770_34.3. Ofertou atendimentos/acompanhamento apenas para o p�blico priorit�rio_34. como se deu funcionamento durante a pandemia'
q34_4_velha'q34_4_v15771_34.4. Ofertou os atendimento das demandas do Cadastro �nico_34. como se deu funcionamento durante a pandemia'
q34_5_velha'q34_5_v15772_34.5. Ofertou os atendimento das demandas do Aux�lio Emergencial_34. como se deu funcionamento durante a pandemia'
q34_6_velha'q34_6_v15774_34.6. Ofertou os atendimentos das demandas do Programa Bolsa Fam�lia_34. como se deu funcionamento durante a pandemia'
q34_7_velha'q34_7_v15775_34.7. Ofertou atendimento remoto por telefone e aplicativos de videoconfer�ncia_34. como se deu funcionamento durante a pandemia'
q34_8_velha'q34_8_v15776_34.8. Realizou visitas domiciliares_34. como se deu funcionamento durante a pandemia'
q34_99_velha'q34_99_v15777_34.99. Outro._34. como se deu funcionamento durante a pandemia'
q35_1_velha'q35_1_v15779_1_1: Teve que ampliar o n�mero de profissionais_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q35_2_velha'q35_2_v15779_2_2: Com jornada de trabalho normal (semelhante a jornada anterior a pandemia)_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q35_3_velha'q35_3_v15779_3_3: Com jornada de trabalho reduzida_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q35_99_velha'q35_99_v15779_99_99: Outros_35. Como estava a jornada de trabalho das(os) profissionais durante a pandemia ?'
q36_velha'q36_v15781_36. Os trabalhadores deste posto tiveram acesso a Equipamentos de Prote��o Individual?'
q37_0_velha'q37_0_v15782_0_0: N�o realizou nenhuma atividade em rela��o ao Aux�lio Emergencial (siga para a quest�o 40)_37. Este posto realizou algumas destas atividades em rela��o ao Aux�lio Emergencial'
q37_1_velha'q37_1_v15782_2_2: Prestou orienta��o �s fam�lias j� atendidas/acompanhadas por este posto_37. Este posto realizou algumas destas atividades em rela��o ao Aux�lio Emergencial'
q37_2_velha'q37_2_v15782_3_3: Prestou orienta��es �s fam�lias da comunidades em geral_37. Este posto realizou algumas destas atividades em rela��o ao Aux�lio Emergencial'
q37_3_velha'q37_3_v15782_4_4: Auxiliou as fam�lias no preenchimento das solicita��es_37. Este posto realizou algumas destas atividades em rela��o ao Aux�lio Emergencial'
q37_4_velha'q37_4_v15782_5_5: Realizou busca ativa de fam�lias para preenchimento das solicita��es_37. Este posto realizou algumas destas atividades em rela��o ao Aux�lio Emergencial'
q37_5_velha'q37_5_v15782_6_6: Realizou parcerias com as Defensorias P�blicas, judici�rio e outros �rg�os para orienta��o e atendimento de fam�lias para preenchimento das solicita��es_37. em rela��o ao Aux�lio Emergencial'
q37_99_velha'q37_99_v15782_99_99: Outros_37. Este posto realizou algumas destas atividades em rela��o ao Aux�lio Emergencial'
q38_1_velha'q38_1_v15784_1_1: Conhecimento em LIBRAS_38. Indique se h� na equipe do Cadastro �nico e Programa Bolsa Fam�lia trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_2_velha'q38_2_v15784_2_2: Conhecimento em l�nguas estrangeiras (espanhol, ingl�s e franc�s)_38. Indique se h� na equipe do Cadastro �nico e Programa Bolsa Fam�lia trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_3_velha'q38_3_v15784_3_3: Conhecimento em l�nguas ind�genas_38. Indique se h� na equipe do Cadastro �nico e Programa Bolsa Fam�lia trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_99_velha'q38_99_v15784_99_99: Outros_38. Indique se h� na equipe do Cadastro �nico e Programa Bolsa Fam�lia trabalhadores aptos a realizar o atendimento com conhecimento em:'
q38_0_velha'q38_0_v15784_0_0: Nenhuma das anteriores_38. Indique se h� na equipe do Cadastro �nico e Programa Bolsa Fam�lia trabalhadores aptos a realizar o atendimento com conhecimento em:'
.
