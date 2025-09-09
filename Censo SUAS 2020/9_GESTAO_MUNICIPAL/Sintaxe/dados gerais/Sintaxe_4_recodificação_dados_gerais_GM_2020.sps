* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARI�VEIS DERIVADAS GEST�O MUNICIPAL - CENSO SUAS 2020
****************************************************************************************************
****q4**********************************************************************************************

COMPUTE q5_1_velha=q5_1.
COMPUTE q5_2_velha=q5_2.
COMPUTE q5_3_velha=q5_3.
COMPUTE q5_4_velha=q5_4.
COMPUTE q5_5_velha=q5_5.
COMPUTE q5_99_velha=q5_99.
EXECUTE.


DO IF (q4=0 | q4=98).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_4 (ELSE=SYSMIS).
RECODE q5_5 (ELSE=SYSMIS).
RECODE q5_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q8**********************************************************************************************

COMPUTE q8_0_velha=q8_0.
COMPUTE q8_1_velha=q8_1.
COMPUTE q8_2_velha=q8_2.
COMPUTE q8_3_velha=q8_3.
COMPUTE q8_4_velha=q8_4.
COMPUTE q8_99_velha=q8_99.
EXECUTE.


DO IF (q8_0=1).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).
RECODE q8_3 (ELSE=SYSMIS).
RECODE q8_4 (ELSE=SYSMIS).
RECODE q8_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q10**********************************************************************************************

COMPUTE q10_0_velha=q10_0.
COMPUTE q10_1_velha=q10_1.
COMPUTE q10_2_velha=q10_2.
COMPUTE q10_3_velha=q10_3.
COMPUTE q10_4_velha=q10_4.
COMPUTE q10_5_velha=q10_5.
COMPUTE q10_99_velha=q10_99.
EXECUTE.


DO IF (q10_0=1 | q10_5=1).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q11**********************************************************************************************

COMPUTE q12_velha=q12.
COMPUTE q13_velha=q13.
COMPUTE q14_velha=q14.
EXECUTE.

DO IF (q11=0).
RECODE q12 (ELSE=SYSMIS).
RECODE q13 (ELSE=SYSMIS).
RECODE q14 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q16**********************************************************************************************

COMPUTE q16_0_velha=q16_0.
COMPUTE q16_1_velha=q16_1.
COMPUTE q16_2_velha=q16_2.
COMPUTE q16_3_velha=q16_3.
COMPUTE q16_4_velha=q16_4.
COMPUTE q16_99_velha=q16_99.
EXECUTE.


DO IF (q16_0=1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q17**********************************************************************************************

COMPUTE q17_0_velha=q17_0.
COMPUTE q17_1_velha=q17_1.
COMPUTE q17_2_velha=q17_2.
COMPUTE q17_3_velha=q17_3.
COMPUTE q17_4_velha=q17_4.
COMPUTE q17_99_velha=q17_99.
EXECUTE.


DO IF (q17_0=1).
RECODE q17_1 (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3 (ELSE=SYSMIS).
RECODE q17_4 (ELSE=SYSMIS).
RECODE q17_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q18*********************************************************************************************

COMPUTE q18_0_velha=q18_0.
COMPUTE q18_1_velha=q18_1.
COMPUTE q18_2_velha=q18_2.
COMPUTE q18_3_velha=q18_3.
COMPUTE q18_4_velha=q18_4.
COMPUTE q18_5_velha=q18_5.
COMPUTE q18_6_velha=q18_6.
COMPUTE q18_7_velha=q18_7.
COMPUTE q18_8_velha=q18_8.
COMPUTE q18_9_velha=q18_9.
COMPUTE q18_99_velha=q18_99.
EXECUTE.


DO IF (q18_0=1).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2 (ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_4 (ELSE=SYSMIS).
RECODE q18_5 (ELSE=SYSMIS).
RECODE q18_6 (ELSE=SYSMIS).
RECODE q18_7 (ELSE=SYSMIS).
RECODE q18_8 (ELSE=SYSMIS).
RECODE q18_9 (ELSE=SYSMIS).
RECODE q18_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q19*********************************************************************************************

COMPUTE q20_1_velha=q20_1.
COMPUTE q20_2_velha=q20_2.
COMPUTE q20_3_velha=q20_3.
COMPUTE q20_4_velha=q20_4.
COMPUTE q20_5_velha=q20_5.
COMPUTE q20_6_velha=q20_6.
COMPUTE q20_7_velha=q20_7.
COMPUTE q21_velha=q21.
EXECUTE.


DO IF (q19=0).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
RECODE q20_6 (ELSE=SYSMIS).
RECODE q20_7 (ELSE=SYSMIS).
RECODE q21 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q22*********************************************************************************************

COMPUTE q22_0_velha=q22_0.
COMPUTE q22_1_velha=q22_1.
COMPUTE q22_2_velha=q22_2.
COMPUTE q22_3_velha=q22_3.
COMPUTE q22_4_velha=q22_4.
COMPUTE q22_5_velha=q22_5.
COMPUTE q22_6_velha=q22_6.
COMPUTE q22_99_velha=q22_99.
EXECUTE.


DO IF (q22_0=1).
RECODE q22_1 (ELSE=SYSMIS).
RECODE q22_2 (ELSE=SYSMIS).
RECODE q22_3 (ELSE=SYSMIS).
RECODE q22_4 (ELSE=SYSMIS).
RECODE q22_5 (ELSE=SYSMIS).
RECODE q22_6 (ELSE=SYSMIS).
RECODE q22_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q23*********************************************************************************************

COMPUTE q23_0_velha=q23_0.
COMPUTE q23_1_velha=q23_1.
COMPUTE q23_2_velha=q23_2.
COMPUTE q23_3_velha=q23_3.
COMPUTE q23_4_velha=q23_4.
COMPUTE q23_5_velha=q23_5.
COMPUTE q23_6_velha=q23_6.
COMPUTE q23_7_velha=q23_7.
COMPUTE q23_8_velha=q23_8.
COMPUTE q24_1_velha=q24_1.
COMPUTE q24_1_98_velha=q24_1_98.
COMPUTE q24_2_velha=q24_2.
COMPUTE q24_2_98_velha=q24_2_98.
COMPUTE q24_3_velha=q24_3.
COMPUTE q24_3_98_velha=q24_3_98.
COMPUTE q25_1_velha=q25_1.
COMPUTE q25_2_velha=q25_2.
COMPUTE q25_3_velha=q25_3.
COMPUTE q25_4_velha=q25_4.
COMPUTE q25_5_velha=q25_5.
COMPUTE q25_6_velha=q25_6.
COMPUTE q25_7_velha=q25_7.
COMPUTE q25_8_velha=q25_8.
COMPUTE q25_9_velha=q25_9.
COMPUTE q25_10_velha=q25_10.
COMPUTE q25_11_velha=q25_11.
COMPUTE q25_12_velha=q25_12.
COMPUTE q25_13_velha=q25_13.
COMPUTE q25_99_velha=q25_99.
COMPUTE q26_1_velha=q26_1.
COMPUTE q26_2_velha=q26_2.
COMPUTE q26_3_velha=q26_3.
COMPUTE q26_4_velha=q26_4.
COMPUTE q26_5_velha=q26_5.
COMPUTE q26_6_velha=q26_6.
COMPUTE q26_7_velha=q26_7.
COMPUTE q26_99_velha=q26_99.
EXECUTE.


DO IF ( q23_0=1 | q23_1=1).
RECODE q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS).
RECODE q23_6 (ELSE=SYSMIS).
RECODE q23_7 (ELSE=SYSMIS).
RECODE q23_8 (ELSE=SYSMIS).
END IF. 
EXECUTE.



DO IF ( q23_0=1 | q23_2=1 | q23_3=1).
RECODE q24_1(ELSE=SYSMIS).
RECODE q24_1_98 (ELSE=SYSMIS).
RECODE q24_2 (ELSE=SYSMIS).
RECODE q24_2_98 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_3_98 (ELSE=SYSMIS).
RECODE q25_1 (ELSE=SYSMIS).
RECODE q25_2 (ELSE=SYSMIS).
RECODE q25_3 (ELSE=SYSMIS).
RECODE q25_4 (ELSE=SYSMIS).
RECODE q25_5 (ELSE=SYSMIS).
RECODE q25_6 (ELSE=SYSMIS).
RECODE q25_7 (ELSE=SYSMIS).
RECODE q25_8 (ELSE=SYSMIS).
RECODE q25_9 (ELSE=SYSMIS).
RECODE q25_10 (ELSE=SYSMIS).
RECODE q25_11 (ELSE=SYSMIS).
RECODE q25_12 (ELSE=SYSMIS).
RECODE q25_13 (ELSE=SYSMIS).
RECODE q25_99 (ELSE=SYSMIS).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS).
RECODE q26_6 (ELSE=SYSMIS).
RECODE q26_7 (ELSE=SYSMIS).
RECODE q26_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q27*********************************************************************************************

COMPUTE q28_1_velha=q28_1.
COMPUTE q28_2_velha=q28_2.
COMPUTE q28_3_velha=q28_3.
COMPUTE q28_4_velha=q28_4.
COMPUTE q28_5_velha=q28_5.
EXECUTE.


DO IF (q27=0).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q29*********************************************************************************************

COMPUTE q29_0_velha = q29_0 .
COMPUTE q29_1_velha = q29_1 .
COMPUTE q29_2_velha= q29_2.
COMPUTE q29_3_velha= q29_3 .
COMPUTE q29_4_velha=q29_4 .
COMPUTE q29_5_velha=q29_5 .
COMPUTE q29_6_velha= q29_6 .
COMPUTE q29_7_velha= q29_7 .
COMPUTE q29_8_velha= q29_8 .
COMPUTE q29_9_velha= q29_9 .
EXECUTE.


DO IF (q29_0=1).
RECODE q29_1 (ELSE=SYSMIS).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
RECODE q29_6 (ELSE=SYSMIS).
RECODE q29_7 (ELSE=SYSMIS).
RECODE q29_8 (ELSE=SYSMIS).
RECODE q29_9 (ELSE=SYSMIS).
END IF. 
EXECUTE.




****q30*********************************************************************************************

COMPUTE q30_0_velha =  q30_0 .
COMPUTE q30_1_velha =  q30_1 .
COMPUTE q30_2_velha =  q30_2 .
COMPUTE q30_3_velha =  q30_3 .
COMPUTE q30_4_velha =  q30_4 .
COMPUTE q30_5_velha =  q30_5 .
COMPUTE q30_6_velha =  q30_6 .
COMPUTE q30_7_velha =  q30_7 .
COMPUTE q30_8_velha =  q30_8 .
COMPUTE q30_9_velha =  q30_9 .
COMPUTE q30_10_velha =  q30_10 .
COMPUTE q30_11_velha =  q30_11 .
COMPUTE q30_12_velha =  q30_12 .
EXECUTE.


DO IF (q30_0=1).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_6 (ELSE=SYSMIS).
RECODE q30_7 (ELSE=SYSMIS).
RECODE q30_8 (ELSE=SYSMIS).
RECODE q30_9 (ELSE=SYSMIS).
RECODE q30_10 (ELSE=SYSMIS).
RECODE q30_11 (ELSE=SYSMIS).
RECODE q30_12 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q31*********************************************************************************************

COMPUTE q32_velha = q32 .
COMPUTE q33_velha =q33 .
EXECUTE.


DO IF (q31=0).
RECODE q32 (ELSE=SYSMIS).
RECODE q33 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q34********************************************************************************************

COMPUTE q35_velha=q35.
COMPUTE q36_0_velha=q36_0.
COMPUTE q36_1_velha=q36_1 .
COMPUTE q36_2_velha=q36_2.
COMPUTE q36_3_velha=q36_3.
COMPUTE q36_4_velha=q36_4.
COMPUTE q36_5_velha=q36_5 .
COMPUTE q36_6_velha=q36_6.
COMPUTE q36_7_velha=q36_7.
COMPUTE q36_8_velha=q36_8.
COMPUTE q36_9_velha=q36_9 .
COMPUTE q36_10_velha=q36_10.
COMPUTE q36_11_velha=q36_11.
COMPUTE q36_12_velha=q36_12 .
COMPUTE q36_13_velha=q36_13.
COMPUTE q36_14_velha=q36_14.
COMPUTE q37_velha=q37.
EXECUTE.


DO IF (q34=0).
RECODE q35 (ELSE=SYSMIS).
RECODE q36_0 (ELSE=SYSMIS).
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
RECODE q36_13 (ELSE=SYSMIS).
RECODE q36_14 (ELSE=SYSMIS).
RECODE q37 (ELSE=SYSMIS).
END IF. 
EXECUTE.




****q36********************************************************************************************

DO IF (q36_0=1).
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
RECODE q36_13 (ELSE=SYSMIS).
RECODE q36_14 (ELSE=SYSMIS).
END IF. 
EXECUTE.




****q42********************************************************************************************

RECODE q42_98 (ELSE=SYSMIS).
RECODE q42_2 (ELSE=SYSMIS).
RECODE q42_3 (ELSE=SYSMIS).
RECODE q42_4 (ELSE=SYSMIS).
RECODE q42_5 (ELSE=SYSMIS).
RECODE q42_6 (ELSE=SYSMIS).
RECODE q42_7 (ELSE=SYSMIS).
RECODE q42_8 (ELSE=SYSMIS).
EXECUTE.


DO IF (q42_98=1).
RECODE q42_2 (ELSE=SYSMIS).
RECODE q42_3 (ELSE=SYSMIS).
RECODE q42_4 (ELSE=SYSMIS).
RECODE q42_5 (ELSE=SYSMIS).
RECODE q42_6 (ELSE=SYSMIS).
RECODE q42_7 (ELSE=SYSMIS).
RECODE q42_8 (ELSE=SYSMIS).
END IF. 
EXECUTE.





****q43********************************************************************************************


COMPUTE q44_0_velha=q44_0.
COMPUTE q44_1_velha=q44_1 .
COMPUTE q44_2_velha=q44_2.
COMPUTE q44_3_velha=q44_3.
COMPUTE q44_4_velha=q44_4.
COMPUTE q44_5_velha=q44_5 .
COMPUTE q44_6_velha=q44_6.
COMPUTE q44_7_velha=q44_7.
COMPUTE q44_8_velha=q44_8.
COMPUTE q44_9_velha=q44_9 .
COMPUTE q44_10_velha=q44_10.
COMPUTE q44_11_velha=q44_11.
COMPUTE q44_12_velha=q44_12 .
COMPUTE q45_velha=q45.
COMPUTE q46_0_velha=q46_0.
COMPUTE q46_1_velha=q46_1 .
COMPUTE q46_2_velha=q46_2.
COMPUTE q46_3_velha=q46_3.
COMPUTE q46_4_velha=q46_4.
COMPUTE q47_0_velha=q47_0.
COMPUTE q47_1_velha=q47_1 .
COMPUTE q47_2_velha=q47_2.
COMPUTE q47_3_velha=q47_3.
COMPUTE q47_4_velha=q47_4.
COMPUTE q47_5_velha=q47_5 .
COMPUTE q47_6_velha=q47_6.
COMPUTE q47_7_velha=q47_7.
COMPUTE q47_8_velha=q47_8.
COMPUTE q47_9_velha=q47_9 .
COMPUTE q47_10_velha=q47_10.
COMPUTE q47_11_velha=q47_11.
COMPUTE q47_99_velha=q47_99.
EXECUTE.



DO IF (q43=0).
RECODE q44_0 (ELSE=SYSMIS).
RECODE q44_1 (ELSE=SYSMIS).
RECODE q44_2 (ELSE=SYSMIS).
RECODE q44_3 (ELSE=SYSMIS).
RECODE q44_4 (ELSE=SYSMIS).
RECODE q44_5 (ELSE=SYSMIS).
RECODE q44_6 (ELSE=SYSMIS).
RECODE q44_7 (ELSE=SYSMIS).
RECODE q44_8 (ELSE=SYSMIS).
RECODE q44_9 (ELSE=SYSMIS).
RECODE q44_10 (ELSE=SYSMIS).
RECODE q44_11 (ELSE=SYSMIS).
RECODE q44_12 (ELSE=SYSMIS).
RECODE q45 (ELSE=SYSMIS).
RECODE q46_0 (ELSE=SYSMIS).
RECODE q46_1 (ELSE=SYSMIS).
RECODE q46_2 (ELSE=SYSMIS).
RECODE q46_3 (ELSE=SYSMIS).
RECODE q46_4 (ELSE=SYSMIS).
RECODE q47_0 (ELSE=SYSMIS).
RECODE q47_1 (ELSE=SYSMIS).
RECODE q47_2 (ELSE=SYSMIS).
RECODE q47_3 (ELSE=SYSMIS).
RECODE q47_4 (ELSE=SYSMIS).
RECODE q47_5 (ELSE=SYSMIS).
RECODE q47_6 (ELSE=SYSMIS).
RECODE q47_7 (ELSE=SYSMIS).
RECODE q47_8 (ELSE=SYSMIS).
RECODE q47_9 (ELSE=SYSMIS).
RECODE q47_10 (ELSE=SYSMIS).
RECODE q47_11 (ELSE=SYSMIS).
RECODE q47_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.




****q44**********************************************************************************************

DO IF (q44_0=1).
RECODE q44_1 (ELSE=SYSMIS).
RECODE q44_2 (ELSE=SYSMIS).
RECODE q44_3 (ELSE=SYSMIS).
RECODE q44_4 (ELSE=SYSMIS).
RECODE q44_5 (ELSE=SYSMIS).
RECODE q44_6 (ELSE=SYSMIS).
RECODE q44_7 (ELSE=SYSMIS).
RECODE q44_8 (ELSE=SYSMIS).
RECODE q44_9 (ELSE=SYSMIS).
RECODE q44_10 (ELSE=SYSMIS).
RECODE q44_11 (ELSE=SYSMIS).
RECODE q44_12 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q45**********************************************************************************************

DO IF (q45=0).
RECODE q46_0 (ELSE=SYSMIS).
RECODE q46_1 (ELSE=SYSMIS).
RECODE q46_2 (ELSE=SYSMIS).
RECODE q46_3 (ELSE=SYSMIS).
RECODE q46_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q46**********************************************************************************************

DO IF (q46_0=1).
RECODE q46_1 (ELSE=SYSMIS).
RECODE q46_2 (ELSE=SYSMIS).
RECODE q46_3 (ELSE=SYSMIS).
RECODE q46_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q47**********************************************************************************************

DO IF (q47_0=1).
RECODE q47_1 (ELSE=SYSMIS).
RECODE q47_2 (ELSE=SYSMIS).
RECODE q47_3 (ELSE=SYSMIS).
RECODE q47_4 (ELSE=SYSMIS).
RECODE q47_5 (ELSE=SYSMIS).
RECODE q47_6 (ELSE=SYSMIS).
RECODE q47_7 (ELSE=SYSMIS).
RECODE q47_8 (ELSE=SYSMIS).
RECODE q47_9 (ELSE=SYSMIS).
RECODE q47_10 (ELSE=SYSMIS).
RECODE q47_11 (ELSE=SYSMIS).
RECODE q47_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q52**********************************************************************************************


COMPUTE q52_0_velha=q52_0.
COMPUTE q52_1_velha=q52_1 .
COMPUTE q52_2_velha=q52_2.
COMPUTE q52_3_velha=q52_3.
COMPUTE q52_4_velha=q52_4.
COMPUTE q52_99_velha=q52_99.
EXECUTE.


DO IF (q52_0=1).
RECODE q52_1 (ELSE=SYSMIS).
RECODE q52_2 (ELSE=SYSMIS).
RECODE q52_3 (ELSE=SYSMIS).
RECODE q52_4 (ELSE=SYSMIS).
RECODE q52_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q54**********************************************************************************************


COMPUTE q54_0_velha=q54_0.
COMPUTE q54_1_velha=q54_1 .
COMPUTE q54_2_velha=q54_2.
COMPUTE q54_3_velha=q54_3.
COMPUTE q54_4_velha=q54_4.
COMPUTE q54_99_velha=q54_99.
EXECUTE.


DO IF (q54_0=1).
RECODE q54_1 (ELSE=SYSMIS).
RECODE q54_2 (ELSE=SYSMIS).
RECODE q54_3 (ELSE=SYSMIS).
RECODE q54_4 (ELSE=SYSMIS).
RECODE q54_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q55**********************************************************************************************


COMPUTE q55_0_velha=q55_0.
COMPUTE q55_1_velha=q55_1 .
COMPUTE q55_2_velha=q55_2.
COMPUTE q55_3_velha=q55_3.
COMPUTE q55_4_velha=q55_4.
COMPUTE q55_5_velha=q55_5 .
COMPUTE q55_6_velha=q55_6.
COMPUTE q55_7_velha=q55_7.
COMPUTE q55_8_velha=q55_8.
COMPUTE q55_9_velha=q55_9.
COMPUTE q55_99_velha=q55_99.
EXECUTE.


DO IF (q55_0=1).
RECODE q55_1 (ELSE=SYSMIS).
RECODE q55_2 (ELSE=SYSMIS).
RECODE q55_3 (ELSE=SYSMIS).
RECODE q55_4 (ELSE=SYSMIS).
RECODE q55_5 (ELSE=SYSMIS).
RECODE q55_6 (ELSE=SYSMIS).
RECODE q55_7 (ELSE=SYSMIS).
RECODE q55_8 (ELSE=SYSMIS).
RECODE q55_9 (ELSE=SYSMIS).
RECODE q55_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q56*********************************************************************************************


COMPUTE q56_1_1_velha=q56_1_1.
COMPUTE q56_1_2_velha=q56_1_2 .
COMPUTE q56_1_3_velha=q56_1_3.
COMPUTE q56_2_1_velha=q56_2_1.
COMPUTE q56_2_2_velha=q56_2_2 .
COMPUTE q56_2_3_velha=q56_2_3.
COMPUTE q56_3_1_velha=q56_3_1.
COMPUTE q56_3_2_velha=q56_3_2 .
COMPUTE q56_3_3_velha=q56_3_3.
COMPUTE q56_4_1_velha=q56_4_1.
COMPUTE q56_4_2_velha=q56_4_2 .
COMPUTE q56_4_3_velha=q56_4_3.
EXECUTE.


DO IF (q56_1_1=0).
RECODE q56_1_2 (ELSE=SYSMIS).
RECODE q56_1_3  (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q56_2_1=0).
RECODE q56_2_2 (ELSE=SYSMIS).
RECODE q56_2_3  (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q56_3_1=0).
RECODE q56_3_2 (ELSE=SYSMIS).
RECODE q56_3_3  (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q56_4_1=0).
RECODE q56_4_2 (ELSE=SYSMIS).
RECODE q56_4_3  (ELSE=SYSMIS).
END IF. 
EXECUTE.




****q57**********************************************************************************************

COMPUTE q57_0_velha=q57_0.
COMPUTE q57_1_velha=q57_1 .
COMPUTE q57_2_velha=q57_2.
COMPUTE q57_3_velha=q57_3.
COMPUTE q57_4_velha=q57_4.
COMPUTE q57_5_velha=q57_5 .
COMPUTE q57_6_velha=q57_6.
COMPUTE q57_7_velha=q57_7.
COMPUTE q57_8_velha=q57_8.
COMPUTE q57_9_velha=q57_9.
COMPUTE q57_10_velha=q57_10 .
COMPUTE q57_11_velha=q57_11.
COMPUTE q57_12_velha=q57_12.
COMPUTE q57_13_velha=q57_13.
COMPUTE q57_99_velha=q57_99.
EXECUTE.


DO IF (q57_0=1).
RECODE q57_1 (ELSE=SYSMIS).
RECODE q57_2 (ELSE=SYSMIS).
RECODE q57_3 (ELSE=SYSMIS).
RECODE q57_4 (ELSE=SYSMIS).
RECODE q57_5 (ELSE=SYSMIS).
RECODE q57_6 (ELSE=SYSMIS).
RECODE q57_7 (ELSE=SYSMIS).
RECODE q57_8 (ELSE=SYSMIS).
RECODE q57_9 (ELSE=SYSMIS).
RECODE q57_10 (ELSE=SYSMIS).
RECODE q57_11 (ELSE=SYSMIS).
RECODE q57_12 (ELSE=SYSMIS).
RECODE q57_13 (ELSE=SYSMIS).
RECODE q55_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q59**********************************************************************************************

COMPUTE q59_0_velha=q59_0.
COMPUTE q59_1_velha=q59_1 .
COMPUTE q59_2_velha=q59_2.
COMPUTE q59_3_velha=q59_3.
COMPUTE q59_4_velha=q59_4.
COMPUTE q59_5_velha=q59_5 .
COMPUTE q59_6_velha=q59_6.
COMPUTE q59_7_velha=q59_7.
EXECUTE.


DO IF (q59_0=1).
RECODE q59_1 (ELSE=SYSMIS).
RECODE q59_2 (ELSE=SYSMIS).
RECODE q59_3 (ELSE=SYSMIS).
RECODE q59_4 (ELSE=SYSMIS).
RECODE q59_5 (ELSE=SYSMIS).
RECODE q59_6 (ELSE=SYSMIS).
RECODE q59_7 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q60**********************************************************************************************

COMPUTE q60_0_velha=q60_0.
COMPUTE q60_1_velha=q60_1 .
COMPUTE q60_2_velha=q60_2.
COMPUTE q60_3_velha=q60_3.
EXECUTE.


DO IF (q60_0=1).
RECODE q60_1 (ELSE=SYSMIS).
RECODE q60_2 (ELSE=SYSMIS).
RECODE q60_3 (ELSE=SYSMIS).
END IF. 
EXECUTE.




****q62**********************************************************************************************

COMPUTE q62_0_velha=q62_0.
COMPUTE q62_1_velha=q62_1 .
COMPUTE q62_2_velha=q62_2.
COMPUTE q62_3_velha=q62_3.
COMPUTE q62_4_velha=q62_4.
COMPUTE q62_5_velha=q62_5 .
COMPUTE q62_6_velha=q62_6.
COMPUTE q62_7_velha=q62_7.
COMPUTE q62_8_velha=q62_8.
COMPUTE q62_9_velha=q62_9.
COMPUTE q62_10_velha=q62_10 .
COMPUTE q62_11_velha=q62_11.
COMPUTE q62_12_velha=q62_12.
COMPUTE q62_13_velha=q62_13.
COMPUTE q62_14_velha=q62_14.
COMPUTE qq62_99_velha=q62_99.
EXECUTE.


DO IF (q62_0=1).
RECODE q62_1 (ELSE=SYSMIS).
RECODE q62_2 (ELSE=SYSMIS).
RECODE q62_3 (ELSE=SYSMIS).
RECODE q62_4 (ELSE=SYSMIS).
RECODE q62_5 (ELSE=SYSMIS).
RECODE q62_6 (ELSE=SYSMIS).
RECODE q62_7 (ELSE=SYSMIS).
RECODE q62_8 (ELSE=SYSMIS).
RECODE q62_9 (ELSE=SYSMIS).
RECODE q62_10 (ELSE=SYSMIS).
RECODE q62_11 (ELSE=SYSMIS).
RECODE q62_12 (ELSE=SYSMIS).
RECODE q62_13 (ELSE=SYSMIS).
RECODE q62_14 (ELSE=SYSMIS).
RECODE q62_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.




****q63**********************************************************************************************

COMPUTE q62_0_velha=q62_0.
COMPUTE q62_1_velha=q62_1 .
COMPUTE q62_2_velha=q62_2.
COMPUTE q62_3_velha=q62_3.
COMPUTE q62_4_velha=q62_4.
COMPUTE q62_5_velha=q62_5 .
COMPUTE q62_6_velha=q62_6.
COMPUTE q62_7_velha=q62_7.
COMPUTE q62_8_velha=q62_8.
COMPUTE q62_9_velha=q62_9.
COMPUTE q62_10_velha=q62_10 .
COMPUTE q62_11_velha=q62_11.
COMPUTE q62_12_velha=q62_12.
COMPUTE q62_13_velha=q62_13.
COMPUTE q62_14_velha=q62_14.
COMPUTE qq62_99_velha=q62_99.
EXECUTE.


DO IF (q62_0=1).
RECODE q62_1 (ELSE=SYSMIS).
RECODE q62_2 (ELSE=SYSMIS).
RECODE q62_3 (ELSE=SYSMIS).
RECODE q62_4 (ELSE=SYSMIS).
RECODE q62_5 (ELSE=SYSMIS).
RECODE q62_6 (ELSE=SYSMIS).
RECODE q62_7 (ELSE=SYSMIS).
RECODE q62_8 (ELSE=SYSMIS).
RECODE q62_9 (ELSE=SYSMIS).
RECODE q62_10 (ELSE=SYSMIS).
RECODE q62_11 (ELSE=SYSMIS).
RECODE q62_12 (ELSE=SYSMIS).
RECODE q62_13 (ELSE=SYSMIS).
RECODE q62_14 (ELSE=SYSMIS).
RECODE q62_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



**q63***********************************************************************************************************

COMPUTE q63_1_0_velha=q63_1_0.
COMPUTE q63_1_1_velha=q63_1_1.
COMPUTE q63_1_2_velha=q63_1_2.
COMPUTE q63_1_3_velha=q63_1_3.
COMPUTE q63_1_4_velha=q63_1_4.
COMPUTE q63_1_5_velha=q63_1_5.
COMPUTE q63_1_99_velha=q63_1_99.
COMPUTE q63_2_0_velha=q63_2_0.
COMPUTE q63_2_1_velha=q63_2_1.
COMPUTE q63_2_2_velha=q63_2_2.
COMPUTE q63_2_3_velha=q63_2_3.
COMPUTE q63_2_4_velha=q63_2_4.
COMPUTE q63_2_5_velha=q63_2_5.
COMPUTE q63_2_99_velha=q63_2_99.
COMPUTE q63_3_0_velha=q63_3_0.
COMPUTE q63_3_1_velha=q63_3_1.
COMPUTE q63_3_2_velha=q63_3_2.
COMPUTE q63_3_3_velha=q63_3_3.
COMPUTE q63_3_4_velha=q63_3_4.
COMPUTE q63_3_5_velha=q63_3_5.
COMPUTE q63_3_99_velha=q63_3_99.
COMPUTE q63_4_0_velha=q63_4_0.
COMPUTE q63_4_1_velha=q63_4_1.
COMPUTE q63_4_2_velha=q63_4_2.
COMPUTE q63_4_3_velha=q63_4_3.
COMPUTE q63_4_4_velha=q63_4_4.
COMPUTE q63_4_5_velha=q63_4_5.
COMPUTE q63_4_99_velha=q63_4_99.
COMPUTE q63_5_0_velha=q63_5_0.
COMPUTE q63_5_1_velha=q63_5_1.
COMPUTE q63_5_2_velha=q63_5_2.
COMPUTE q63_5_3_velha=q63_5_3.
COMPUTE q63_5_4_velha=q63_5_4.
COMPUTE q63_5_5_velha=q63_5_5.
COMPUTE q63_5_99_velha=q63_5_99.
COMPUTE q63_6_0_velha=q63_6_0.
COMPUTE q63_6_1_velha=q63_6_1.
COMPUTE q63_6_2_velha=q63_6_2.
COMPUTE q63_6_3_velha=q63_6_3.
COMPUTE q63_6_4_velha=q63_6_4.
COMPUTE q63_6_5_velha=q63_6_5.
COMPUTE q63_6_99_velha=q63_6_99.
COMPUTE q63_7_0_velha=q63_7_0.
COMPUTE q63_7_1_velha=q63_7_1.
COMPUTE q63_7_2_velha=q63_7_2.
COMPUTE q63_7_3_velha=q63_7_3.
COMPUTE q63_7_4_velha=q63_7_4.
COMPUTE q63_7_5_velha=q63_7_5.
COMPUTE q63_7_99_velha=q63_7_99.
COMPUTE q63_8_0_velha=q63_8_0.
COMPUTE q63_8_1_velha=q63_8_1.
COMPUTE q63_8_2_velha=q63_8_2.
COMPUTE q63_8_3_velha=q63_8_3.
COMPUTE q63_8_4_velha=q63_8_4.
COMPUTE q63_8_5_velha=q63_8_5.
COMPUTE q63_8_99_velha=q63_8_99.
EXECUTE.

DO IF (q63_1_0=1).
RECODE q63_1_1 (ELSE=SYSMIS).
RECODE q63_1_2 (ELSE=SYSMIS).
RECODE q63_1_3 (ELSE=SYSMIS).
RECODE q63_1_4 (ELSE=SYSMIS).
RECODE q63_1_5 (ELSE=SYSMIS).
RECODE q63_1_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



DO IF (q63_2_0=1).
RECODE q63_2_1 (ELSE=SYSMIS).
RECODE q63_2_2 (ELSE=SYSMIS).
RECODE q63_2_3 (ELSE=SYSMIS).
RECODE q63_2_4 (ELSE=SYSMIS).
RECODE q63_2_5 (ELSE=SYSMIS).
RECODE q63_2_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q63_3_0=1).
RECODE q63_3_1 (ELSE=SYSMIS).
RECODE q63_3_2 (ELSE=SYSMIS).
RECODE q63_3_3 (ELSE=SYSMIS).
RECODE q63_3_4 (ELSE=SYSMIS).
RECODE q63_3_5 (ELSE=SYSMIS).
RECODE q63_3_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q63_4_0=1).
RECODE q63_4_1 (ELSE=SYSMIS).
RECODE q63_4_2 (ELSE=SYSMIS).
RECODE q63_4_3 (ELSE=SYSMIS).
RECODE q63_4_4 (ELSE=SYSMIS).
RECODE q63_4_5 (ELSE=SYSMIS).
RECODE q63_4_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q63_5_0=1).
RECODE q63_5_1 (ELSE=SYSMIS).
RECODE q63_5_2 (ELSE=SYSMIS).
RECODE q63_5_3 (ELSE=SYSMIS).
RECODE q63_5_4 (ELSE=SYSMIS).
RECODE q63_5_5 (ELSE=SYSMIS).
RECODE q63_5_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q63_6_0=1).
RECODE q63_6_1 (ELSE=SYSMIS).
RECODE q63_6_2 (ELSE=SYSMIS).
RECODE q63_6_3 (ELSE=SYSMIS).
RECODE q63_6_4 (ELSE=SYSMIS).
RECODE q63_6_5 (ELSE=SYSMIS).
RECODE q63_6_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q63_7_0=1).
RECODE q63_7_1 (ELSE=SYSMIS).
RECODE q63_7_2 (ELSE=SYSMIS).
RECODE q63_7_3 (ELSE=SYSMIS).
RECODE q63_7_4 (ELSE=SYSMIS).
RECODE q63_7_5 (ELSE=SYSMIS).
RECODE q63_7_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q63_8_0=1).
RECODE q63_8_1 (ELSE=SYSMIS).
RECODE q63_8_2 (ELSE=SYSMIS).
RECODE q63_8_3 (ELSE=SYSMIS).
RECODE q63_8_4 (ELSE=SYSMIS).
RECODE q63_8_5 (ELSE=SYSMIS).
RECODE q63_8_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q65**********************************************************************************************

COMPUTE q65_0_velha=q65_0.
COMPUTE q65_1_velha=q65_1 .
COMPUTE q65_2_velha=q65_2.
COMPUTE q65_3_velha=q65_3.
COMPUTE q65_4_velha=q65_4.
EXECUTE.


DO IF (q65_0=1).
RECODE q65_1 (ELSE=SYSMIS).
RECODE q65_2 (ELSE=SYSMIS).
RECODE q65_3 (ELSE=SYSMIS).
RECODE q65_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q70**********************************************************************************************

COMPUTE q70_0_velha=q70_0.
COMPUTE q70_1_velha=q70_1 .
COMPUTE q70_2_velha=q70_2.
COMPUTE q70_3_velha=q70_3.
COMPUTE q70_4_velha=q70_4.
COMPUTE q70_5_velha=q70_5 .
COMPUTE q70_6_velha=q70_6.
COMPUTE q70_7_velha=q70_7.
COMPUTE q70_8_velha=q70_8.
COMPUTE q70_99_velha=q70_99.



DO IF (q70_0=1).
RECODE q70_1 (ELSE=SYSMIS).
RECODE q70_2 (ELSE=SYSMIS).
RECODE q70_3 (ELSE=SYSMIS).
RECODE q70_4 (ELSE=SYSMIS).
RECODE q70_5 (ELSE=SYSMIS).
RECODE q70_6 (ELSE=SYSMIS).
RECODE q70_7 (ELSE=SYSMIS).
RECODE q70_8 (ELSE=SYSMIS).
RECODE q70_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q71**********************************************************************************************

COMPUTE q71_0_velha=q71_0.
COMPUTE q71_1_velha=q71_1 .
COMPUTE q71_2_velha=q71_2.
COMPUTE q71_3_velha=q71_3.
COMPUTE q71_4_velha=q71_4.
COMPUTE q71_5_velha=q71_5 .
COMPUTE q71_6_velha=q71_6.
COMPUTE q71_7_velha=q71_7.
COMPUTE q71_8_velha=q71_8.
COMPUTE q71_99_velha=q71_99.



DO IF (q71_0=1).
RECODE q71_1 (ELSE=SYSMIS).
RECODE q71_2 (ELSE=SYSMIS).
RECODE q71_3 (ELSE=SYSMIS).
RECODE q71_4 (ELSE=SYSMIS).
RECODE q71_5 (ELSE=SYSMIS).
RECODE q71_6 (ELSE=SYSMIS).
RECODE q71_7 (ELSE=SYSMIS).
RECODE q71_8 (ELSE=SYSMIS).
RECODE q71_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q73*********************************************************************************************

COMPUTE q74_velha=q74.
COMPUTE q74_98_velha=q74_98 .


DO IF (q73=0).
RECODE q74 (ELSE=SYSMIS).
RECODE q74_98 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q75*********************************************************************************************

COMPUTE q76_1_velha=q76_1.
COMPUTE q76_1_98_velha=q76_1_98 .
COMPUTE q76_2_velha=q76_2.
COMPUTE q76_2_98_velha=q76_2_98 .

DO IF (q75=0).
RECODE q76_1 (ELSE=SYSMIS).
RECODE q76_1_98 (ELSE=SYSMIS).
RECODE q76_2 (ELSE=SYSMIS).
RECODE q76_2_98 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q78*********************************************************************************************

COMPUTE q79_velha=q79.

DO IF (q78=0).
RECODE q79 (ELSE=SYSMIS).
END IF. 
EXECUTE.







VARIABLE LABELS
q5_1_velha 'q5_1_v16088_1_1: Comiss�o, comit� ou similar para tratar localmente de a��es relacionadas ao PNCFC_5. Em rela��o ao PNCFC, indique as principais a��es realizadas pelo munic�pio: '
q5_2_velha ' q5_2_v16088_2_2: Realizou diagn�stico/avalia��o da situa��o de conviv�ncia familiar e comunit�ria no munic�pio_5. Em rela��o ao PNCFC, indique as principais a��es realizadas pelo munic�pio:'
q5_3_velha 'q5_3_v16088_3_3: Criou protocolos de atua��o conjunta/articula��o entre setores do munic�pio com vistas ao cumprimento do PNCFC_5. Em rela��o ao PNCFC, indique as principais a��es realizadas pelo munic�pio:'
q5_4_velha 'q5_4_v16088_4_4: Criou protocolos de atua��o conjunta/articula��o com o Sistema de_5. Em rela��o ao PNCFC, indique as principais a��es realizadas pelo munic�pio:'
q5_5_velha 'q5_5_v16088_5_5: Acompanhamento da implementa��o das a��es do PNCFC_5. Em rela��o ao PNCFC, indique as principais a��es realizadas pelo munic�pio:'
q5_99_velha 'q5_99_v16088_99_99: Outros_5. Em rela��o ao PNCFC, indique as principais a��es realizadas pelo munic�pio:'
q8_0_velha 'q8_0_v12010_0_0: N�o acompanha_8. De que maneira o munic�pio acompanha as discuss�es e decis�es da Comiss�o Intergestores Bipartite do SUAS (CIB)?'
q8_1_velha 'q8_1_v12010_1_1: � membro da CIB_8. De que maneira o munic�pio acompanha as discuss�es e decis�es da Comiss�o Intergestores Bipartite do SUAS (CIB)?'
q8_2_velha 'q8_2_v12010_2_2: Participa como convidado das reuni�es_8. De que maneira o munic�pio acompanha as discuss�es e decis�es da Comiss�o Intergestores Bipartite do SUAS (CIB)?'
q8_3_velha 'q8_3_v12010_3_3: Recebe boletins informativos_8. De que maneira o munic�pio acompanha as discuss�es e decis�es da Comiss�o Intergestores Bipartite do SUAS (CIB)?'
q8_4_velha 'q8_4_v12010_4_4: Solicita � Secretaria T�cnica da CIB o envio de informa��es sobre as reuni�es_8. De que maneira o munic�pio acompanha as discuss�es e decis�es da Comiss�o Intergestores Bipartite do SUAS (CIB)?'
q8_99_velha 'q8_99_v12010_99_99: Outros_8. De que maneira o munic�pio acompanha as discuss�es e decis�es da Comiss�o Intergestores Bipartite do SUAS (CIB)?'
q10_0_velha 'q10_0_v16091_0_0: O munic�pio n�o faz parte do COEGEMAS_10. De que maneira o munic�pio acompanha as discuss�es e decis�es do Colegiado Estadual de Gestores Municipais da Assist�ncia Social (Coegemas ou cong�nere):'
q10_1_velha 'q10_1_v16091_1_1: Participa das reuni�es_10. De que maneira o munic�pio acompanha as discuss�es e decis�es do Colegiado Estadual de Gestores Municipais da Assist�ncia Social (Coegemas ou cong�nere):'
q10_2_velha 'q10_2_v16091_2_2: Recebe boletins informativos_10. De que maneira o munic�pio acompanha as discuss�es e decis�es do Colegiado Estadual de Gestores Municipais da Assist�ncia Social (Coegemas ou cong�nere):'
q10_3_velha 'q10_3_v16091_3_3: Solicita � diretoria o envio de informa��es sobre as reuni�es_10. De que maneira o munic�pio acompanha as discuss�es e decis�es do Colegiado Estadual de Gestores Municipais da Assist�ncia Social (Coegemas ou cong�nere):'
q10_4_velha 'q10_4_v16091_4_4: Participa de algum grupo de discuss�o_10. De que maneira o munic�pio acompanha as discuss�es e decis�es do Colegiado Estadual de Gestores Municipais da Assist�ncia Social (Coegemas ou cong�nere):'
q10_5_velha 'q10_5_v16091_5_5: O munic�pio faz parte, mas n�o acompanha_10. De que maneira o munic�pio acompanha as discuss�es e decis�es do Colegiado Estadual de Gestores Municipais da Assist�ncia Social (Coegemas ou cong�nere):'
q10_99_velha 'q10_99_v16091_99_99: Outros_10. De que maneira o munic�pio acompanha as discuss�es e decis�es do Colegiado Estadual de Gestores Municipais da Assist�ncia Social (Coegemas ou cong�nere):'
q12_velha 'q12_v11340_12. Caso sim, quantas pessoas?'
q13_velha 'q13_v13084_13. Este quantitativo considera:'
q14_velha 'q14_v11342_14. Como foi realizado este levantamento ou pesquisa?'
q16_0_velha 'q16_0_v16094_0_0: N�o registra_16. Como o munic�pio registra os casos de viola��o de direitos atendidos?'
q16_1_velha 'q16_1_v16094_1_1: No Sistema de Informa��o de Agravos de Notifica��o da Sa�de (SINAN)_16. Como o munic�pio registra os casos de viola��o de direitos atendidos?'
q16_2_velha 'q16_2_v16094_2_2: No Registro Mensal de Atendimentos do CREAS (caso tenha CREAS)_16. Como o munic�pio registra os casos de viola��o de direitos atendidos?'
q16_3_velha 'q16_3_v16094_3_3: Em sistema informatizado, espec�fico para essa finalidade, existente no munic�pio e/ou estado_16. Como o munic�pio registra os casos de viola��o de direitos atendidos?'
q16_4_velha 'q16_4_v16094_4_4: Em instrumentais n�o informatizados_16. Como o munic�pio registra os casos de viola��o de direitos atendidos?'
q16_99_velha 'q16_99_v16094_99_99: Outros_16. Como o munic�pio registra os casos de viola��o de direitos atendidos?'
q17_0_velha 'q17_99_v16096_99_99: Outros_17. O �rg�o gestor realiza as seguintes atividades de monitoramento da qualidade dos servi�os prestados pela rede socioassistencial?'
q17_1_velha 'q17_1_v16096_1_1: Realiza visitas t�cnicas � rede socioassistencial_17. O �rg�o gestor realiza as seguintes atividades de monitoramento da qualidade dos servi�os prestados pela rede socioassistencial?'
q17_2_velha  'q17_2_v16096_2_2: Realiza a gest�o/valida��o das informa��es prestadas sobre as unidades, como o preenchimento do RMA, Censo SUAS e demais instrumentais nacionais, estaduais ou municipais_17. O �rg�o gestor atividades de monitoramento?'
q17_3_velha 'q17_3_v16096_3_3: Possui instrumentos de coleta de dados pr�prios para levantamento de informa��es junto aos servi�os_17. O �rg�o gestor realiza atividades de monitoramento da qualidade dos servi�os prestados pela rede socioassistencial?'
q17_4_velha 'q17_4_v16096_4_4: Produ��o de Indicadores pr�prios para aferi��o volume e qualidade dos servi�os socioassistenciais_17. O �rg�o gestor realiza atividades de monitoramento da qualidade dos servi�os prestados pela rede socioassistencial?'
q17_99_velha 'q17_99_v16096_99_99: Outros_17. O �rg�o gestor realiza as seguintes atividades de monitoramento da qualidade dos servi�os prestados pela rede socioassistencial?'
q18_0_velha 'q18_0_v14799_0_0: Nenhuma das anteriores_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor da Assist�ncia Social no munic�pio?'
q18_1_velha 'q18_1_v14799_1_1: Estimula a participa��o de usu�rias(os) nas reuni�es do Conselho_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor da Assist�ncia Social no munic�pio?'
q18_2_velha 'q18_2_v14799_2_2: Estimula a participa��o de usu�rias(os) no �mbito das unidades socioassistenciais_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) utilizadas pelo �rg�o gestor da Assist�ncia Social no munic�pio'
q18_3_velha 'q18_3_v14799_3_3: Estimula a forma��o de coletivo/comit� de usu�rias(os) da pol�tica (como por exemplo o F�rum Municipal de Usu�rias(os) do SUAS)_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas'
q18_4_velha 'q18_4_v14799_4_4: Apoio financeiro a coletivo de usu�rias(os) da pol�tica_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor da Assist�ncia Social no munic�pio?'
q18_5_velha 'q18_5_v14799_5_5: Realiza reuni�es/entrevistas espec�ficas a fim de coletar a demanda das(os) usu�rias(os)_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas?'
q18_6_velha  'q18_6_v14799_6_6: Possui mecanismo de ouvidoria/central de relacionamento para recebimento de demandas das(os) usu�rias(os)_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor'
q18_7_velha 'q18_7_v14799_7_7: Realiza pesquisa de opini�o/question�rios juntos a usu�rias(os) da pol�tica (caixa de sugest�es, entre outros)_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor'
q18_8_velha 'q18_8_v14799_8_8: Realiza audi�ncias p�blicas sobre temas da Assist�ncia Social_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor da Assist�ncia Social no munic�pio?'
q18_9_velha 'q18_9_v14799_9_9: Estimula a participa��o de usu�rias(os) nas Confer�ncias Municipais_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor da Assist�ncia Social no munic�pio?'
q18_99_velha 'q18_99_v14799_99_99: Outros_18. Quais estrat�gias de fomento � participa��o de cidad�(o) e usu�ria(o) s�o utilizadas pelo �rg�o gestor da Assist�ncia Social no munic�pio?'
q20_1_velha 'q20_1_v14664_1_1: Na pr�pria sede do �rg�o gestor, com equipe exclusiva para o Servi�o de Prote��o Social B�sica no Domic�lio para Pessoas com defici�ncia e idosas_20. Em qual(is) unidade(s) e com que equipe o Servi�o � ofertado?'
q20_2_velha 'q20_2_v14664_2_2: Na pr�pria sede do �rg�o gestor, com equipe que realiza outras atividades_20. Em qual(is) unidade(s) e com que equipe o Servi�o � ofertado?'
q20_3_velha 'q20_3_v14664_3_3: No CRAS, com equipe exclusiva para o Servi�o de Prote��o Social B�sica no Domic�lio para Pessoas com defici�ncia e idosas_20. Em qual(is) unidade(s) e com que equipe o Servi�o � ofertado?'
q20_4_velha 'q20_4_v14664_4_4: No CRAS, com a equipe t�cnica do Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)_20. Em qual(is) unidade(s) e com que equipe o Servi�o � ofertado?'
q20_5_velha 'q20_5_v14664_5_5: No CRAS, com equipe que realiza outras atividades_20. Em qual(is) unidade(s) e com que equipe o Servi�o � ofertado?'
q20_6_velha 'q20_6_v14664_6_6: Em outra Unidade P�blica_20. Em qual(is) unidade(s) e com que equipe o Servi�o � ofertado?'
q20_7_velha 'q20_7_v14664_7_7: Em Entidade ou Organiza��o da Sociedade Civil_20. Em qual(is) unidade(s) e com que equipe o Servi�o � ofertado?'
q21_velha 'q21_v13201_21. Quantas pessoas foram atendidas pelo Servi�o de Prote��o Social B�sica no Domic�lio para Pessoas com defici�ncia e pessoas idosas no munic�pio, em Agosto/2020?'
q22_0_velha 'q22_0_v11196_0_0: N�o � atendido pela Assist�ncia Social_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q22_1_velha 'q22_1_v11196_1_1: Atende no CREAS do munic�pio_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q22_2_velha 'q22_2_v11196_2_2: Encaminha para o CREAS de outro munic�pio_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q22_3_velha 'q22_3_v11196_3_3: Encaminha para o CREAS Regional ao qual est� vinculado_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q22_4_velha 'q22_4_v11196_4_4: Atende no CRAS_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q22_5_velha 'q22_5_v11196_5_5: Atende em entidade ou organiza��o da sociedade civil no munic�pio_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q22_6_velha 'q22_6_v11196_6_6: � atendido pela equipe de refer�ncia/t�cnica do �rg�o gestor (equipes espec�ficas para o atendimento - n�o s�o equipes de gest�o)_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q22_99_velha 'q22_99_v11196_99_99: Outro_22. Como a Assist�ncia Social atende quest�es de viola��es de direitos no munic�pio?'
q23_0_velha 'q23_0_v14658_0_0: N�o atende_23. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q23_1_velha 'q23_1_v14658_1_1: Atende no CREAS do munic�pio_23. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q23_2_velha 'q23_2_v14658_2_2: Encaminha para o CREAS de outro munic�pio_23. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q23_3_velha 'q23_3_v14658_3_3: Encaminha para o CREAS Regional ao qual est� vinculado_23. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q23_4_velha 'q23_4_v14658_4_4: Executa no CRAS_23. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q23_5_velha 'q23_5_v14658_5_5: Executa em entidade no munic�pio_23. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q23_6_velha 'q23_6_v14658_6_6: Executa em outra unidade p�blica da Assist�ncia Social (exceto CREAS) de acompanhamento de adolescentes em cumprimento de Medida Socioeducativa (LA ou PSC) do munic�pio_23. Como o munic�pio atende adolescentes em MSE'
q23_7_velha 'q23_7_v14658_7_7: � atendido por unidades de outras pol�tica p�blica do munic�pio (sa�de, educa��o, direitos humanos, etc.)_23. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q23_8_velha 'q23_8_v14658_8_8: � atendido pela equipe de refer�ncia/t�cnica do �rg�o gestor (equipes espec�ficas para o atendimento - n�o s�o equipes de gest�o. Como o munic�pio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
q24_1_velha 'q24_1_v16109_24.1. Total de adolescentes em cumprimento de LA'
q24_1_98_velha 'q24_1_98_v16110_0_24.1.98. Total de adolescentes em cumprimento de LA. N�o sabe.'
q24_2_velha 'q24_2_v16111_24.2. Total de adolescentes em cumprimento de PSC'
q24_2_98_velha 'q24_2_98_v16112_0_24.2.98. Total de adolescentes em cumprimento de PSC. N�o sabe.'
q24_3_velha 'q24_3_v16113_24.3. Total de adolescentes'
q24_3_98_velha 'q24_3_98_v16114_0_24.3.98. Total de adolescentes. N�o sabe.'
q25_1_velha 'q25_1_v16195_1_1: CRAS_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_2_velha 'q25_2_v16195_2_2: CREAS_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_3_velha 'q25_3_v16195_3_3: Biblioteca_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_4_velha 'q25_4_v16195_4_4: Hospitais_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_5_velha 'q25_5_v16195_5_5: Unidades de Acolhimento para Idosas(os) (asilos)_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_6_velha 'q25_6_v16195_6_6: Defensoria P�blica/ F�rum_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_7_velha ' q25_7_v16195_7_7: Projetos de Cultura_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_8_velha 'q25_8_v16195_8_8: Projetos de Esporte_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_9_velha 'q25_9_v16195_9_9: Igrejas_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_10_velha 'q25_10_v16195_10_10: Conselho Tutelar_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_11_velha 'q25_11_v16195_11_11: Sistema S (SENAI, SESC, SESI, etc.)_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_12_velha 'q25_12_v16195_12_12: Atividades da Secretaria de Obras ou similares_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_13_velha 'q25_13_v16195_13_13: Pol�cia/ Corpo de Bombeiros_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q25_99_velha 'q25_99_v16195_99_99: Outros_25. Indique os principais locais onde o(a) adolescente presta servi�o � comunidade nesta localidade'
q26_1_velha 'q26_1_v16197_1_1: Servi�os administrativos (secretariado, almoxarifado, apoio geral, etc);_26. Indique quais as principais atividades realizadas pelos adolescentes na PSC'
q26_2_velha 'q26_2_v16197_2_2: Reparos e manuten��o (pintura, conserto de objetos, etc.)'
q26_3_velha 'q26_3_v16197_3_3: Preserva��o de patrim�nio p�blico (pra�as, parques, monumentos, museus, escolas, unidades de sa�de, etc.)'
q26_4_velha 'q26_4_v16197_4_4: Atividades com pessoas em situa��o de vulnerabilidade (pessoas enfermas, pessoas em situa��o de acolhimento, popula��o v�tima de viol�ncias ou viola��es de direitos, etc.)'
q26_5_velha 'q26_5_v16197_5_5: Tarefas de cunho art�stico ou cultural (cineclube, incentivadores da leitura, embaixadores da cultura, monitores do esporte, etc.)'
q26_6_velha 'q26_6_v16197_6_6: Atendimento ao p�blico (portaria, primeiro atendimento, servi�o de atendimento a d�vidas, etc.)'
q26_7_velha 'q26_7_v16197_7_7: Limpeza e conserva��o (faxina, varri��o, limpeza em geral, servi�o de copa)'
q26_99_velha 'q26_99_v16197_99_99: Outro'
q28_1_velha 'q28_1_v16115_1_1: No(s) CREAS_28. Em qual(is) unidade(s) o servi�o � ofertado?'
q28_2_velha 'q28_2_v16115_2_2: No(s) Centro POP_28. Em qual(is) unidade(s) o servi�o � ofertado?'
q28_3_velha 'q28_3_v16115_3_3: Na sede/�rg�o gestor do munic�pio_28. Em qual(is) unidade(s) o servi�o � ofertado?'
q28_4_velha 'q28_4_v16115_4_4: Em outra unidade p�blica_28. Em qual(is) unidade(s) o servi�o � ofertado?'
q28_5_velha 'q28_5_v16115_5_5: Em entidade ou Organiza��o da Sociedade Civil_28. Em qual(is) unidade(s) o servi�o � ofertado?'
q29_0_velha 'q29_0_v14675_0_0: N�o realiza nenhuma das atividades listadas acima_29. Nos casos de acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas pelo �rg�o gestor da Assist�ncia Social?'
q29_1_velha 'q29_1_v14675_1_1: Controla o acesso �s vagas (controle da porta de entrada), sendo respons�vel por indicar a Unidade de Acolhimento que receber� a crian�a/adolescente. realiza quais atividades de gest�o/monitoramento'
q29_2_velha 'q29_2_v14675_2_2: Acompanha/monitora o fluxo de entradas e sa�das de crian�as e adolescentes nas Unidades_29. Nos acolhimneto de crian�as/adolescentes, quais atividades de gest�o/monitoramento s�o realizadas'
q29_3_velha 'q29_3_v14675_3_3: Centraliza as informa��es das medidas de acolhimento determinadas pelo poder Judici�rio_29. Nos acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas'
q29_4_velha 'q29_4_v14675_4_4: Centraliza as informa��es dos acolhimentos emergenciais realizados pelo Conselho Tutelar_29. Nos casos de acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas'
q29_5_velha 'q29_5_v14675_5_5: Promove a articula��o dos servi�os de acolhimento com os demais servi�os da rede socioassistencial_29. Nos casos de acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas'
q29_6_velha 'q29_6_v14675_6_6: Promove a articula��o dos servi�os de acolhimento com as demais pol�ticas p�blicas e �rg�os de defesa de direitos_29. Nos acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas'
q29_7_velha 'q29_7_v14675_7_7: Realiza supervis�o e suporte t�cnico aos servi�os de acolhimento. Nos casos de acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas pelo �rg�o gestor da Assist�ncia Social?'
q29_8_velha 'q29_8_v14675_8_8: Monitora o tempo de perman�ncia das crian�as e adolescentes nos servi�os de acolhimento_29. Nos casos de acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas'
q29_9_velha 'q29_9_v14675_9_9: Fiscaliza a qualidade dos servi�os_29. Nos casos de acolhimento de crian�as e adolescentes, quais atividades de gest�o e monitoramento s�o realizadas pelo �rg�o gestor da Assist�ncia Social?'
q30_0_velha 'q30_0_v16118_0_0: N�o realiza_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_1_velha 'q30_1_v16118_1_1: Realiza campanhas, mobiliza��o e sensibiliza��o_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_2_velha 'q30_2_v16118_2_2: Realiza atividades de abordagem social em espa�os_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_3_velha 'q30_3_v16118_3_3: Realiza busca ativa de fam�lias com situa��o de trabalho infantil para inclus�o no Cad�nico_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_4_velha 'q30_4_v16118_4_4: Encaminha/inclui crian�as e adolescentes em trabalho infantil para os Servi�os de Conviv�ncia_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_5_velha 'q30_5_v16118_5_5: Encaminha/inclui fam�lias com situa��o de trabalho infantil para o PAIF/CRAS_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_6_velha 'q30_6_v16118_6_6: Encaminha/inclui fam�lias com situa��o de trabalho infantil para o PAEFI/CREAS_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_7_velha 'q30_7_v16118_7_7: Encaminha fam�lias e indiv�duos para a aplica��o de medidas protetivas � fam�lia_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_8_velha 'q30_8_v16118_8_8: Encaminha fam�lias com situa��o de trabalho infantil para programas e projetos de capacita��o profissional_30. Indique as a��es realizadas  no munic�pio para enfrentamento do Trabalho Infantil'
q30_9_velha 'q30_9_v16118_9_9: Encaminha fam�lias com situa��o de trabalho infantil para programas e projetos de inclus�o produtiva e/ou gera��o de trabalho e renda_30. Indique as a��es realizadas no munic�pio para enfrentamento do Trabalho Infantil'
q30_10_velha 'q30_10_v16118_10_10: Encaminha fam�lias com situa��o de trabalho infantil para atendimento em outras pol�ticas p�blicas. Indique a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_11_velha 'q30_11_v16118_11_11: Encaminha fam�lias com situa��o de trabalho infantil para os �rg�os de defesa e responsabiliza��o. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q30_12_velha 'q30_12_v16118_12_12: Elabora estudos e diagn�sticos sobre o trabalho infantil no munic�pio_30. Indique as a��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
q32_velha 'q32_v14671_32. Atualmente, quantas crian�as e/ou adolescente est�o acolhidos em fam�lias guardi�s na fam�lia extensa inseridas no Programa?'
q33_velha 'q33_v14672_33. Atualmente, quantas fam�lias recebem recursos pelo Programa?'
q36_0_velha 'q36_0_v16121_0_0: N�o realiza nenhuma das atividades acima_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_1_velha 'q36_1_v16121_1_1: Mobiliza��o e divulga��o do programa/servi�o no territ�rio_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_2_velha 'q36_2_v16121_2_2: Acolhida, avalia��o inicial e Cadastramento candidatas_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_3_velha 'q36_3_v16121_3_3: Sele��o e Capacita��o das fam�lias candidatas_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_4_velha 'q36_4_v16121_4_4: Atendimento e Acompanhamento das pessoas idosas acolhidas e fam�lias acolhedoras_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_5_velha 'q36_5_v16121_5_5: Atendimento e Acompanhamento das fam�lias de origem_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_6_velha 'q36_6_v16121_6_6: Reuni�es com a rede socioassistencial e intersetorial_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_7_velha 'q36_7_v16121_7_7: Encaminhamento de pessoas acolhidas para programas, projetos ou servi�os da rede_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_8_velha 'q36_8_v16121_8_8: Visitas domiciliares_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_9_velha 'q36_9_v16121_9_9: Reuni�es em grupo com as fam�lias_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_10_velha 'q36_10_v16121_10_10: Projeto Pol�tico-Pedag�gico_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_11_velha 'q36_11_v16121_11_11: Prontu�rio Individualizado_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_12_velha 'q36_12_v16121_12_12: Plano de Atendimento Individualizado_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_13_velha 'q36_13_v16121_13_13: Elabora��o de relat�rios t�cnicos_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q36_14_velha 'q36_14_v16121_14_14: Repassa subs�dio para a fam�lia acolhedora suprir os gastos com a pessoa idosa acolhida_36. Quais s�o as atividades do programa/servi�o de acolhimento para pessoas idosas?'
q37_velha 'q37_v16122_37. Atualmente, quantos idosos est�o acolhidos em fam�lias acolhedoras?'
q35_velha 'q35_v16120_35. O programa � ofertado por unidade governamental ou por Organiza��o da Sociedade Civil (OSC)?'
q44_0_velha 'q44_0_v13186_0_0: N�o h� delimita��o de usu�rios priorit�rios para o atendimento do Acesuas Trabalho_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_1_velha 'q44_1_v13186_1_1: Pessoas inscritas no Cadastro �nico_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_2_velha 'q44_2_v13186_2_2: Pessoas  Benefici�rias(os) do Programa Bolsa Fam�lia_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_3_velha 'q44_3_v13186_3_3: Pessoas com defici�ncia_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_4_velha 'q44_4_v13186_4_4: Pessoas do Servi�o de Conviv�ncia e Fortalecimento de V�nculos_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_5_velha 'q44_5_v13186_5_5: Adolescentes e jovens no sistema socioeducativo e egressas(os)_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_6_velha 'q44_6_v13186_6_6: Adultas(os) em Fam�lias com presen�a de trabalho infantil_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_7_velha 'q44_7_v13186_7_7: Fam�lias com pessoas em situa��o de priva��o de liberdade_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_8_velha 'q44_8_v13186_8_8: Indiv�duos egressos do sistema penal_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_9_velha 'q44_9_v13186_9_9: Fam�lias com crian�as em situa��o de acolhimento provis�rio_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_10_velha 'q44_10_v13186_10_10: Adolescentes e jovens no servi�o de acolhimento e egressos_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_11_velha 'q44_11_v13186_11_11: Popula��o em Situa��o de Rua_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q44_12_velha 'q44_12_v13186_12_12: Povos e comunidades tradicionais_44. Existe delimita��o de usu�rias(os) priorit�rias(os) para o atendimento do Acessuas Trabalho?'
q45_velha 'q45_v16132_45. Por quanto tempo, em m�dia, a equipe do Programa Acessuas Trabalho realiza o monitoramento do percurso dos usu�rios?_'
q46_0_velha 'q46_0_v16133_0_0: N�o realiza articula��o para o monitoramento do percurso dos usu�rios._46. A equipe do Programa Acessuas Trabalho realiza o monitoramento do percurso dos usu�rios a partir da articula��o com outras ofertas?'
q46_1_velha 'q46_1_v16133_1_1: Articula��o com o PAIF para o monitoramento do percurso dos usu�rios._46. A equipe do Programa Acessuas Trabalho realiza o monitoramento do percurso dos usu�rios a partir da articula��o com outras ofertas?'
q46_2_velha 'q46_2_v16133_2_2: Articula��o com o PAEFI para o monitoramento do percurso dos usu�rios._46. A equipe do Programa Acessuas Trabalho realiza o monitoramento do percurso dos usu�rios a partir da articula��o com outras ofertas?'
q46_3_velha 'q46_3_v16133_3_3: Articula��o com outros servi�os socioassistenciais para o monitoramento do percurso dos usu�rios. A equipe Acessuas Trabalho realiza o monitoramento do percurso dos usu�rios a partir da articula��o com outras ofertas?'
q46_4_velha 'q46_4_v16133_4_4: Articula��o com outras pol�ticas setoriais para o monitoramento do percurso dos usu�rios. A equipe do Acessuas Trabalho realiza o monitoramento do percurso dos usu�rios a partir da articula��o com outras ofertas?'
q47_0_velha 'q47_0_v13166_0_0: N�o realiza encaminhamentos para o mundo do trabalho_47. Para quais oportunidades do mundo do trabalho o munic�pio encaminha, de forma rotineira, as(os) usu�rias(os) da assist�ncia social?'
q47_1_velha 'q47_1_v13166_1_1: �rg�os de intermedia��o de m�o de obra (Servi�o Nacional do Emprego � SINE, entre outros)'
q47_2_velha 'q47_2_v13166_2_2: Cursos de qualifica��o profissional'
q47_3_velha 'q47_3_v13166_3_3: Socioaprendizagem'
q47_4_velha 'q47_4_v13166_4_4: Cursos t�cnicos de institui��es municipais/estaduais'
q47_5_velha 'q47_5_v13166_5_5: Cooperativas, Associa��es e A��es de economia solid�ria'
q47_6_velha 'q47_6_v13166_6_6: Acesso a Microcr�dito'
q47_7_velha 'q47_7_v13166_7_7: Micro empreendedorismo individual'
q47_8_velha 'q47_8_v13166_8_8: Sistema S (SESC, SENAC, SESI, SENAR, etc)'
q47_9_velha 'q47_9_v13166_9_9: Organiza��es de trabalhadores (sindicatos, conselhos etc)'
q47_10_velha 'q47_10_v13166_10_10: Pol�ticas Setoriais (educa��o, sa�de, outros)'
q47_11_velha 'q47_11_v13166_11_11: Rede Socioassistencial'
q47_99_velha 'q47_99_v13166_12_12: Outros'
q52_0_velha 'q52_0_v16137_0_0: Nenhuma das anteriores_52. Quais das atividades abaixo s�o realizadas pela gest�o do Cadastro �nico?'
q52_1_velha 'q52_1_v16137_1_1: Levantamento do n�mero de fam�lias que precisam ter seus cadastros inclu�dos ou atualizados_52. Quais das atividades abaixo s�o realizadas pela gest�o do Cadastro �nico?'
q52_2_velha 'q52_2_v16137_2_2: Monitoramento das a��es de gest�o do Cadastro �nico_52. Quais das atividades abaixo s�o realizadas pela gest�o do Cadastro �nico?'
q52_3_velha 'q52_3_v16137_3_3: Elabora��o de an�lises, s�nteses e documentos utilizando os dados do Cadastro �nico_52. Quais das atividades abaixo s�o realizadas pela gest�o do Cadastro �nico?'
q52_4_velha 'q52_4_v16137_4_4: Recebimento e tratamento de den�ncias de presta��o de informa��o inver�dica ao Cadastro �nico_52. Quais das atividades abaixo s�o realizadas pela gest�o do Cadastro �nico?'
q52_99_velha 'q52_99_v16137_5_5: Outros_52. Quais das atividades abaixo s�o realizadas pela gest�o do Cadastro �nico?'
q54_0_velha 'q54_0_v16140_0_0: N�o_54. O munic�pio promoveu capacita��o sobre o Cadastro �nico?'
q54_1_velha 'q54_1_v16140_1_1: Sim , ofertada pelo pr�prio gestor do Cadastro �nico_54. O munic�pio promoveu capacita��o sobre o Cadastro �nico?'
q54_2_velha 'q54_2_v16140_2_2: Sim, por servidores da equipe do Cadastro �nico e/ou Assistencia Social_54. O munic�pio promoveu capacita��o sobre o Cadastro �nico?'
q54_3_velha 'q54_3_v16140_3_3: Sim, por consultores externos_54. O munic�pio promoveu capacita��o sobre o Cadastro �nico?'
q54_4_velha 'q54_4_v16140_4_4: Sim, por institui��es de ensino_54. O munic�pio promoveu capacita��o sobre o Cadastro �nico?'
q54_99_velha 'q54_99_v16140_99_99: Outros_54. O munic�pio promoveu capacita��o sobre o Cadastro �nico?'
q55_0_velha 'q55_0_v13187_0_0: N�o realiza_55. Especifique quais as a��es relativas ao Benef�cio de Presta��o Continuada (BPC) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_1_velha 'q55_1_v13187_1_1: Realizar estudos sobre as condi��es de vulnerabilidade das fam�lias com pessoas idosas e com defici�ncia_55. Especifique quais as a��es relativas ao BPC s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_2_velha 'q55_2_v13187_2_2: Orientar a popula��o usu�ria sobre seus direitos e procedimentos para acesso ao BPC_55. Especifique quais as a��es relativas ao BPC s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_3_velha 'q55_3_v13187_3_3: Apoiar e acompanhar o processo de concess�o do BPC_55. Especifique quais as a��es relativas ao Benef�cio de Presta��o Continuada (BPC) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_4_velha 'q55_4_v13187_4_4: Distribuir aos CRAS e CREAS do munic�pio listas territorializadas das fam�lias com benefici�rias(os) do BPC_55. Especifique quais as a��es relativas ao BPC s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_5_velha 'q55_5_v13187_5_5: Articular com outros setores a inser��o das(os) benefici�rias(os) nas diversas pol�ticas sociais_55. Especifique quais as a��es relativas ao BP s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_6_velha 'q55_6_v13187_6_6: Realizar e acompanhar a inser��o e atualiza��o das(os) benefici�rias(os) do BPC no Cadastro �nico_55. Especifique quais as a��es relativas ao BPC s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_7_velha 'q55_7_v13187_7_7: Articular a��es com INSS acerca do requerimento e manuten��o do BPC_55. Especifique quais as a��es relativas ao Benef�cio de Presta��o Continuada (BPC) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_8_velha 'q55_8_v13187_8_8: Realizar e acompanhar a inser��o de crian�as e adolescentes com defici�ncia benefici�rias do BPC na escola, em articula��o com o Grupo Gestor Local.quais as a��es relativas ao BPC s�o desenvolvidas no munic�pio:'
q55_9_velha 'q55_9_v13187_9_9: Acompanhar a inser��o de jovens e adultas(os) com defici�ncia benefici�rias(os) do BPC no mundo do trabalho_55. Especifique quais as a��es relativas ao BPC s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q55_99_velha 'q55_99_v13187_99_99: Outros_55. Especifique quais as a��es relativas ao Benef�cio de Presta��o Continuada (BPC) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q56_1_1_velha 'q56_1_1_v13188_56.1. Benef�cio Eventual por Situa��o de morte: O Benef�cio � concedido no munic�pio?'
q56_1_2_velha 'q56_1_2_v14681_56.2. Benef�cio Eventual por Situa��o de morte: O Benef�cio � regulamentado?'
q56_1_3_velha 'q56_1_3_v14680_56.3. Benef�cio Eventual por Situa��o de morte: Local onde o Benef�cio � concedido:'
q56_2_1_velha 'q56_2_1_v14682_56.4. Benef�cio Eventual por Situa��o de Natalidade:O Benef�cio � concedido no munic�pio?'
q56_2_2_velha 'q56_2_2_v14683_56.5. Benef�cio Eventual por Situa��o de Natalidade:O Benef�cio � regulamentado?'
q56_2_3_velha 'q56_2_3_v14685_56.6. Benef�cio Eventual por Situa��o de Natalidade: Local onde o Benef�cio � concedido:'
q56_3_1_velha 'q56_3_1_v14686_56.7. Benef�cio Eventual para situa��o de calamidade p�blica: O Benef�cio � concedido no munic�pio?'
q56_3_2_velha 'q56_3_2_v14687_56.8. Benef�cio Eventual para situa��o de calamidade p�blica: O Benef�cio � regulamentado?'
q56_3_3_velha 'q56_3_3_v14689_56.9. Benef�cio Eventual para situa��o de calamidade p�blica: Local onde o Benef�cio � concedido:'
q56_4_1_velha 'q56_4_1_v14690_56.10. Outros benef�cios eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria: O Benef�cio � concedido no munic�pio?'
q56_4_2_velha 'q56_4_2_v14742_56.11. Outros benef�cios eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria: O Benef�cio � regulamentado?'
q56_4_3_velha 'q56_4_3_v14692_56.12. Outros benef�cios eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria: Local onde o Benef�cio � concedido:'
q57_0_velha 'q57_0_v16142_0_0: N�o realiza a��es relativas � gest�o de benef�cios_57. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_1_velha 'q57_1_v16142_1_1: Monitoramento da concess�o de benef�cios do PBF_57. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_2_velha 'q57_2_v16142_2_2: Monitoramento dos cancelamentos de benef�cios do PBF_57. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_3_velha 'q57_3_v16142_3_3: Acompanhamento de processos que impactam os benef�cios do PBF com suspens�es e bloqueios_57. Indique quais as a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_4_velha 'q57_4_v16142_4_4: Gerenciamento de a��es relacionadas aos processos de Averigua��o e Revis�o Cadastral_57. Indique quais as a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_5_velha 'q57_5_v16142_5_5: Monitoramento da situa��o de entrega de cart�es para benefici�rios do PBF. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_6_velha 'q57_6_v16142_6_6: A��es articuladas com a CAIXA para entrega de cart�es do PBF_57. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_7_velha 'q57_7_v16142_7_7: Acompanhamento das condi��es de atendimento de benefici�rios do PBF nos canais de pagamento da CAIXA. Indique relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_8_velha 'q57_8_v16142_8_8: Monitoramento da efetividade de pagamentos do PBF no munic�pio. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_9_velha 'q57_9_v16142_9_9: A��es articuladas com a CAIXA para entrega de cart�es do PBF_57. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q57_10_velha 'q57_10_v16142_10_10: Emiss�o de declara��o de Substitui��o de Respons�vel Familiar, para permitir o saque do benef�cio em caso de impedimento do titular. Indique quais as a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas'
q57_11_velha 'q57_11_v16142_11_11: Monitoramento da ocorr�ncia de emerg�ncias no munic�pio, que incorram na necessidade de a��es especiais para o pagamento do PBF_57. Indique quais as a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas'
q57_12_velha 'q57_12_v16142_12_12: Emiss�o de declara��o especial de pagamento para benefici�rios do PBF que tenham perdido o cart�o e os documentos em contexto de emerg�ncias. Indique a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas'
q57_13_velha 'q57_12_v16142_12_12: Emiss�o de declara��o especial de pagamento para benefici�rios do PBF que tenham perdido o cart�o e os documentos em contexto de emerg�ncias. Indique a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas'
q57_99_velha 'q57_99_v16142_99_99: Outros_57. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q59_0_velha 'q59_0_v16144_0_0: N�o realiza_59. Indique quais as a��es relativas � gest�o de condicionalidades do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q59_1_velha 'q59_1_v16144_1_1: Atendimento das fam�lias benefici�rias do PBF para registro de recurso por descumprimento de condicionalidades. Indique quais as a��es relativas � gest�o de condicionalidades do PBF s�o desenvolvidas'
q59_2_velha 'q59_2_v16144_2_2: Extra��o e territorializa��o da lista de fam�lias em fase de suspens�o por descumprimento de condicionalidades e distribui��o aos CRAS e CREAS. quais a��es de gest�o de condicionalidades do PBF s�o desenvolvidas'
q59_3_velha 'q59_3_v16144_3_3: Busca ativa das fam�lias (visita domiciliar e a��es itinerantes) com a finalidade de inclus�o nos servi�os socioassistenciais para supera��o da situa��o que gerou o descumprimento. gest�o de condicionalidades do PBF'
q59_4_velha 'q59_4_v16144_4_4: Prioriza��o das fam�lias em fase de suspens�o por descumprimento de condicionalidades nos servi�os ofertados pela assist�ncia social.A��es relativas � gest�o de condicionalidades do PBF s�o desenvolvidas no munic�pio:'
q59_5_velha 'q59_5_v16144_5_5: Registro no Sistema de Condicionalidades (Sicon) dos atendimentos/acompanhamentos realizados pela assist�ncia social com as fam�lias PBF em descumprimento de condicionalidades. A�oes PBF s�o desenvolvidas'
q59_6_velha 'q59_6_v16144_6_6: Ativa��o da interrup��o tempor�ria dos efeitos do descumprimento no Sicon_59. Indique quais as a��es relativas � gest�o de condicionalidades do PBF s�o desenvolvidas pela Assist�ncia Social no munic�pio:'
q59_7_velha 'q59_7_v16144_7_7: Utiliza��o das informa��es do acompanhamento de condicionalidades para diagn�stico de demandas sociais no territ�rio. a��es de gest�o de condicionalidades do PBF s�o desenvolvidas pela Assist�ncia Social no munic�pio'
q60_0_velha 'q60_0_v14716_0_0: N�o realiza registro no Sicon dos atendimentos/acompanhamentos realizados pela assist�ncia social com as fam�lias PBF em descumprimento de condicionalidades.'
q60_1_velha 'q60_1_v14716_1_1: Na sede do �rg�o gestor, a partir das informa��es enviadas pelos CRAS e CREAS. registro no Sicon dos atendimentos/acompanhamentos realizados com as fam�lias PBF em descumprimento de condicionalidades s�o realizados'
q60_2_velha 'q60_2_v14716_2_2: Diretamente no sistema pelas equipes dos CRAS e CREAS. o registro no Sicon dos atendimentos/acompanhamentos realizados pela com as fam�lias PBF em descumprimento de condicionalidades s�o realizados por qual setor'
q60_3_velha 'q60_3_v14716_3_3: Pela equipe da gest�o do PBF, a partir das informa��es enviadas pelos CRAS e CREAS. Onde � realizado o registro no Sicon dos atendimentos/acompanhamentos das fam�lias PBF em descumprimento de condicionalidades'
q62_0_velha 'q62_0_v16166_0_0: N�o atendeu a popula��o durante a situa��o de emerg�ncia._62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_1_velha 'q62_1_v16166_1_1: Identifica��o/Mapeamento de demandas sociais imediatas_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_2_velha 'q62_2_v16166_2_2: Mapeamento de riscos � transmissibilidade no territ�rio_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_3_velha 'q62_3_v16166_3_3: Mapeamento de riscos � transmissibilidade nas unidades da rede socioassistencial_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_4_velha 'q62_4_v16166_4_4: Divulga��o de informa��o sobre a situa��o junto aos usu�rios sobre preven��o da COVID_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_5_velha 'q62_5_v16166_5_5: Impress�o de material orientativo para o enfrentamento a COVID_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_6_velha 'q62_6_v16166_6_6: Elabora��o de Plano de Conting�ncia/Resposta/A��o_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_7_velha 'q62_7_v16166_7_7: Plant�o social para o atendimento dos afetados_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_8_velha 'q62_8_v16166_8_8: Participa��o em Gabiente/Comit� de Gest�o de Enfrentamento ao Coronav�rus (Centro de Opera��es de Emerg�ncia, por exemplo)_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_9_velha 'q62_9_v16166_9_9: Articula��o com organiza��es da sociedade civil_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_10_velha 'q62_10_v16166_10_10: Apoio financeiro �s organiza��es da sociedade civil_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_11_velha 'q62_11_v16166_11_11: Organiza��o e Orienta��o de volunt�rios_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_12_velha 'q62_12_v16166_12_12: Cria��o de fluxos e meios para comunica��o com as unidades da rede socioassistencial_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_13_velha 'q62_13_v16166_13_13: Pactua��o com o Sistema de Justi�a de fluxos e procedimentos necess�rios � situa��o de emerg�ncia. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q62_14_velha 'q62_14_v16166_14_14: Pactua��o com a gest�o da Sa�de de fluxos e procedimentos nos casos de suspeita ou confirma��o de COVID-19 entre profissionais e usu�rios dos servi�os socioassistenciais.A��o durante a situa��o de emerg�ncia:'
qq62_99_velha 'q62_99_v16166_99_99: Outras_62. Quais a��es foram realizadas para atender a popula��o durante a situa��o de emerg�ncia:'
q63_1_0_velha 'q63_1_0_v16150_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos_63.1. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Cria��o de novas vagas de acolhimento'
q63_1_1_velha 'q63_1_1_v16150_1_1: Crian�as e Adolescentes_63.1. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Cria��o de novas vagas de acolhimento'
q63_1_2_velha 'q63_1_2_v16150_2_2: Pessoas em situa��o de rua_63.1. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Cria��o de novas vagas de acolhimento'
q63_1_3_velha 'q63_1_3_v16150_3_3: Pessoas Idosas_63.1. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Cria��o de novas vagas de acolhimento'
q63_1_4_velha 'q63_1_4_v16150_4_4: Pessoas com defici�ncia_63.1. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Cria��o de novas vagas de acolhimento'
q63_1_5_velha 'q63_1_5_v16150_5_5: Migrantes/ Refugiados_63.1. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Cria��o de novas vagas de acolhimento'
q63_1_99_velha 'q63_1_99_v16150_99_99: Outros._63.1. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Cria��o de novas vagas de acolhimento'
q63_2_0_velha  'q63_2_0_v16152_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos_63.2. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Reorganiza��o das vagas de acolhimento j� existentes'
q63_2_1_velha 'q63_2_1_v16152_1_1: Crian�as e Adolescentes_63.2. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Reorganiza��o das vagas de acolhimento j� existentes'
q63_2_2_velha 'q63_2_2_v16152_2_2: Pessoas em situa��o de rua_63.2. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Reorganiza��o das vagas de acolhimento j� existentes'
q63_2_3_velha 'q63_2_3_v16152_3_3: Pessoas Idosas_63.2. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Reorganiza��o das vagas de acolhimento j� existentes'
q63_2_4_velha 'q63_2_4_v16152_4_4: Pessoas com defici�ncia_63.2. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Reorganiza��o das vagas de acolhimento j� existentes'
q63_2_5_velha 'q63_2_5_v16152_5_5: Migrantes/ Refugiados_63.2. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Reorganiza��o das vagas de acolhimento j� existentes'
q63_2_99_velha 'q63_2_99_v16152_99_99: Outros._63.2. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Reorganiza��o das vagas de acolhimento j� existentes'
q63_3_0_velha 'q63_3_0_v16154_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos_63.3. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da distribui��o de alimentos'
q63_3_1_velha 'q63_3_1_v16154_1_1: Crian�as e Adolescentes_63.3. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da distribui��o de alimentos'
q63_3_2_velha 'q63_3_2_v16154_2_2: Pessoas em situa��o de rua_63.3. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da distribui��o de alimentos'
q63_3_3_velha 'q63_3_3_v16154_3_3: Pessoas Idosas_63.3. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da distribui��o de alimentos'
q63_3_4_velha 'q63_3_4_v16154_4_4: Pessoas com defici�ncia_63.3. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da distribui��o de alimentos'
q63_3_5_velha 'q63_3_5_v16154_5_5: Migrantes/ Refugiados_63.3. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da distribui��o de alimentos'
q63_3_99_velha 'q63_3_99_v16154_99_99: Outros._63.3. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da distribui��o de alimentos'
q63_4_0_velha 'q63_4_0_v16156_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos_63.4. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o de Kits de Higiene Pessoal e Limpeza'
q63_4_1_velha 'q63_4_1_v16156_1_1: Crian�as e Adolescentes_63.4. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o de Kits de Higiene Pessoal e Limpeza'
q63_4_2_velha 'q63_4_2_v16156_2_2: Pessoas em situa��o de rua_63.4. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o de Kits de Higiene Pessoal e Limpeza'
q63_4_3_velha 'q63_4_3_v16156_3_3: Pessoas Idosas_63.4. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o de Kits de Higiene Pessoal e Limpeza'
q63_4_4_velha 'q63_4_4_v16156_4_4: Pessoas com defici�ncia_63.4. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o de Kits de Higiene Pessoal e Limpeza'
q63_4_5_velha 'q63_4_5_v16156_5_5: Migrantes/ Refugiados_63.4. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o de Kits de Higiene Pessoal e Limpeza'
q63_4_99_velha 'q63_4_99_v16156_99_99: Outros._63.4. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o de Kits de Higiene Pessoal e Limpeza'
q63_5_0_velha 'q63_5_0_v16158_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos.informe quais as atividades foram realizadas: Distribui��o para os usu�rios de Equipamentos de Prote��o Individual (mascaras, �lcool gel, etc)'
q63_5_1_velha 'q63_5_1_v16158_1_1: Crian�as e Adolescentes_63.5. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o para os usu�rios de Equipamentos de Prote��o Individual (mascaras, �lcool gel, etc)'
q63_5_2_velha 'q63_5_2_v16158_2_2: Pessoas em situa��o de rua_63.5. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o para os usu�rios de Equipamentos de Prote��o Individual (mascaras, �lcool gel, etc)'
q63_5_3_velha 'q63_5_3_v16158_3_3: Pessoas Idosas_63.5. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o para os usu�rios de Equipamentos de Prote��o Individual (mascaras, �lcool gel, etc)'
q63_5_4_velha 'q63_5_4_v16158_4_4: Pessoas com defici�ncia_63.5. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o para os usu�rios de Equipamentos de Prote��o Individual (mascaras, �lcool gel, etc)'
q63_5_5_velha 'q63_5_5_v16158_5_5: Migrantes/ Refugiados_63.5. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o para os usu�rios de Equipamentos de Prote��o Individual (mascaras, �lcool gel, etc)'
q63_5_99_velha 'q63_5_99_v16158_99_99: Outros._63.5. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Distribui��o para os usu�rios de Equipamentos de Prote��o Individual (mascaras, �lcool gel, etc)'
q63_6_0_velha 'q63_6_0_v16160_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos_63.6. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da concess�o de materiais e/ou pec�nia/dinheiro'
q63_6_1_velha 'q63_6_1_v16160_1_1: Crian�as e Adolescentes_63.6. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da concess�o de materiais e/ou pec�nia/dinheiro'
q63_6_2_velha 'q63_6_2_v16160_2_2: Pessoas em situa��o de rua_63.6. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da concess�o de materiais e/ou pec�nia/dinheiro'
q63_6_3_velha 'q63_6_3_v16160_3_3: Pessoas Idosas_63.6. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da concess�o de materiais e/ou pec�nia/dinheiro'
q63_6_4_velha 'q63_6_4_v16160_4_4: Pessoas com defici�ncia_63.6. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da concess�o de materiais e/ou pec�nia/dinheiro'
q63_6_5_velha 'q63_6_5_v16160_5_5: Migrantes/ Refugiados_63.6. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da concess�o de materiais e/ou pec�nia/dinheiro'
q63_6_99_velha 'q63_6_99_v16160_99_99: Outros._63.6. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Apoio atrav�s da concess�o de materiais e/ou pec�nia/dinheiro'
q63_7_0_velha 'q63_7_0_v16162_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos_63.7. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Busca Ativa / Abordagem Social dos usu�rios'
q63_7_1_velha 'q63_7_1_v16162_1_1: Crian�as e Adolescentes_63.7. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Busca Ativa / Abordagem Social dos usu�rios'
q63_7_2_velha 'q63_7_2_v16162_2_2: Pessoas em situa��o de rua_63.7. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Busca Ativa / Abordagem Social dos usu�rios'
q63_7_3_velha 'q63_7_3_v16162_3_3: Pessoas Idosas_63.7. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Busca Ativa / Abordagem Social dos usu�rios'
q63_7_4_velha 'q63_7_4_v16162_4_4: Pessoas com defici�ncia_63.7. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Busca Ativa / Abordagem Social dos usu�rios'
q63_7_5_velha 'q63_7_5_v16162_5_5: Migrantes/ Refugiados_63.7. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Busca Ativa / Abordagem Social dos usu�rios'
q63_7_99_velha 'q63_7_99_v16162_99_99: Outros._63.7. Em rela��o aos seguintes p�blicos, informe quais as atividades foram realizadas: Busca Ativa / Abordagem Social dos usu�rios'
q63_8_0_velha 'q63_8_0_v16164_0_0: Esta a��o n�o foi realizada para nenhum destes p�blicos. informe quais as atividades foram realizadas: Disponibiliza��o de locais para higiene pessoal e limpeza'
q63_8_1_velha 'q63_8_1_v16164_1_1: Crian�as e Adolescentes. informe quais as atividades foram realizadas: Disponibiliza��o de locais para higiene pessoal e limpeza (como disponibiliza��o de banheiros, pias, pontos de acesso � �gua pot�vel,etc)'
q63_8_2_velha 'q63_8_2_v16164_2_2: Pessoas em situa��o de rua. informe quais as atividades foram realizadas: Disponibiliza��o de locais para higiene pessoal e limpeza (como disponibiliza��o de banheiros, pias, pontos de acesso � �gua pot�vel,etc)'
q63_8_3_velha 'q63_8_3_v16164_3_3: Pessoas Idosas. informe quais as atividades foram realizadas: Disponibiliza��o de locais para higiene pessoal e limpeza (como disponibiliza��o de banheiros, pias, pontos de acesso � �gua pot�vel,etc)'
q63_8_4_velha 'q63_8_4_v16164_4_4: Pessoas com defici�ncia. informe quais as atividades foram realizadas: Disponibiliza��o de locais para higiene pessoal e limpeza (como disponibiliza��o de banheiros, pias, pontos de acesso � �gua pot�vel,etc)'
q63_8_5_velha 'q63_8_5_v16164_5_5: Migrantes/ Refugiados. informe quais as atividades foram realizadas: Disponibiliza��o de locais para higiene pessoal e limpeza (como disponibiliza��o de banheiros, pias, pontos de acesso � �gua pot�vel,etc)'
q63_8_99_velha 'q63_8_99_v16164_99_99: Outros. informe quais as atividades foram realizadas: Disponibiliza��o de locais para higiene pessoal e limpeza (como disponibiliza��o de banheiros, pias, pontos de acesso � �gua pot�vel,etc)'
q65_0_velha 'q65_0_v16169_0_0: N�o foram concedidos nenhum dos benef�cios_65. Foram concedidos benef�cios eventuais em decorr�ncia da pandemia de COVID-19?'
q65_1_velha 'q65_1_v16169_1_1: Sim, Benef�cio Eventual por Situa��o de morte_65. Foram concedidos benef�cios eventuais em decorr�ncia da pandemia de COVID-19?'
q65_2_velha 'q65_2_v16169_2_2: Sim, Benef�cio Eventual por Situa��o de nascimento_65. Foram concedidos benef�cios eventuais em decorr�ncia da pandemia de COVID-19?'
q65_3_velha 'q65_3_v16169_3_3: Sim, Benef�cio Eventual para situa��o de calamidade p�blica_65. Foram concedidos benef�cios eventuais em decorr�ncia da pandemia de COVID-19?'
q65_4_velha 'q65_4_v16169_4_4: Benef�cio eventual por situa��o de vulnerabilidade tempor�ria_65. Foram concedidos benef�cios eventuais em decorr�ncia da pandemia de COVID-19?'
q70_0_velha 'q70_0_v16176_0_0: Nenhuma das anteriores_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q70_1_velha 'q70_1_v16176_1_1: Contrata��o de profissionais tempor�rios_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q70_2_velha 'q70_2_v16176_2_2: Remanejamento tempor�rio de trabalhadores entre as unidades/servi�os socioassistenciais. (deslocar profissionais de um servi�o para outro).  informe as medidas que foram necess�rias:'
q70_3_velha 'q70_3_v16176_3_3: Remanejamento tempor�rio de trabalhadores de trabalhadores de outras pol�ticas p�blicas para o SUAS. (deslocar profissionais de um servi�o para outro). informe as medidas que foram necess�rias:'
q70_4_velha 'q70_4_v16176_4_4: Fez escalas diferenciadas_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q70_5_velha 'q70_5_v16176_5_5: Capacita��o de profissionais para a situa��o de emerg�ncia_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q70_6_velha 'q70_6_v16176_6_6: Capacita��o para o adequado uso de EPIs_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q70_7_velha 'q70_7_v16176_7_7: Medidas de suporte emocional aos trabalhadores_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q70_8_velha 'q70_8_v16176_8_8: Colocou os trabalhadores em risco em trabalho remoto_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q70_99_velha 'q70_99_v16176_99_99: Outros_70. Em rela��o aos trabalhadores (gest�o e unidades), informe as medidas que foram necess�rias:'
q71_0_velha 'q71_0_v16178_0_0: N�o houve dificuldades_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_1_velha 'q71_1_v16178_1_1: Falta de apoio do setor de sa�de_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_2_velha 'q71_2_v16178_2_2: Aus�ncia de EPIs_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_3_velha 'q71_3_v16178_3_3: Falta de capacita��o da equipe sobre a atua��o da Assist�ncia Social em situa��es de calamidade_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_4_velha 'q71_4_v16178_4_4: As orienta��es disponibilizadas pelo Minist�rio da Cidadania sobre a situa��o eram complexas (Instru��es Operacionais, Informes, Comunicados). Quais as principais dificuldades enfrentadas'
q71_5_velha 'q71_5_v16178_5_5: Grande n�mero de atendimentos em decorr�ncia do Aux�lio Emergencial_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_6_velha 'q71_6_v16178_6_6: N�mero reduzido de pessoas na equipe para suprir a demanda de atendimento_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_7_velha 'q71_7_v16178_7_7: Necessidade de reordenar os servi�os de acolhimento_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_8_velha 'q71_8_v16178_8_8: Necessidade de reestruturar os servi�os para a popula��o de rua_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q71_99_velha 'q71_99_v16178_99_99: Outros_71. Quais as principais dificuldades enfrentadas pelo munic�pio devido a pandemia de COVID-19'
q74_velha 'q74_v14791_74. Em que ano ocorreu a �ltima atualiza��o do Plano de Capacita��o e Educa��o Permanente?'
q74_98_velha 'q74_98_v16189_98_74.98. Em que ano ocorreu a �ltima atualiza��o do Plano de Capacita��o e Educa��o Permanente? N�o sabe'
q76_1_velha 'q76_1_v16190_76.1. Informe o total de profissionais capacitados'
q76_1_98_velha 'q76_1_98_v16191_98_76.1.98. Informe o total de profissionais capacitados. N�o sabe.'
q76_2_velha 'q76_2_v16192_76.2. Informe o total de conselheiras (os) capacitadas(os).'
q76_2_98_velha 'q76_2_98_v16193_98_76.2.98. Informe o total de conselheiras(os) capacitados. N�o sabe.'.








