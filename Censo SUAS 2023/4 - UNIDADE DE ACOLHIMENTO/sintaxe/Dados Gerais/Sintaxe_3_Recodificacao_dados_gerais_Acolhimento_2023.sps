
*****recodificar

*q3*********************************

compute q5_1_velha = q5_1. 
compute q5_2_velha = q5_2. 
compute q5_3_velha = q5_3. 
compute q5_0_velha = q5_0. 
compute q5_98_velha = q5_98. 
execute. 

DO IF (q3=1).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_0 (ELSE=SYSMIS).
RECODE q5_98 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q5*********************************

DO IF (q5_98=1 | q5_0=1 ).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q6*********************************

compute q6_1_velha = q6_1. 
compute q6_2_velha = q6_2. 
compute q6_3_velha = q6_3. 
compute q6_0_velha = q6_0. 
compute q6_99_velha = q6_99. 
execute. 

DO IF (q6_0=1).
RECODE q6_1 (ELSE=SYSMIS).
RECODE q6_2 (ELSE=SYSMIS).
RECODE q6_3 (ELSE=SYSMIS).
RECODE q6_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q3=1).
RECODE q6_1 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q8*****************

compute q9_velha = q9.
execute. 

DO IF (q8=0).
RECODE q9 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q24*****************

compute q25_velha = q25.
execute. 

DO IF (q24=0).
RECODE q25 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q25*****************

DO IF (q3=1).
RECODE q25 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q30*****************

compute q31_velha = q31.
execute. 

DO IF (q30=0).
RECODE q31 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q32*****************

compute q32_0_velha = q32_0. 
compute q32_1_velha = q32_1. 
compute q32_2_velha = q32_2. 
compute q32_3_velha = q32_3. 
compute q32_4_velha = q32_4. 
compute q32_99_velha = q32_99. 
execute. 

DO IF (q32_0=1).
RECODE q32_1 (ELSE=SYSMIS).
RECODE q32_2 (ELSE=SYSMIS).
RECODE q32_3 (ELSE=SYSMIS).
RECODE q32_4 (ELSE=SYSMIS).
RECODE q32_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q33*****************

compute q33_0_velha = q33_0. 
compute q33_1_velha = q33_1. 
compute q33_2_velha = q33_2. 
compute q33_3_velha = q33_3. 
compute q33_4_velha = q33_4. 
compute q33_99_velha = q33_99. 
execute. 

DO IF (q33_0=1).
RECODE q33_1 (ELSE=SYSMIS).
RECODE q33_2 (ELSE=SYSMIS).
RECODE q33_3 (ELSE=SYSMIS).
RECODE q33_4 (ELSE=SYSMIS).
RECODE q33_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



**q34*****************

compute q34_0_velha = q34_0. 
compute q34_1_velha = q34_1. 
compute q34_2_velha = q34_2. 
compute q34_3_velha = q34_3. 
compute q34_4_velha = q34_4. 
compute q34_5_velha = q34_5. 
compute q34_6_velha = q34_6. 
compute q34_7_velha = q34_7. 
compute q34_8_velha = q34_8. 
compute q34_9_velha = q34_9. 
compute q34_10_velha = q34_10. 
compute q34_11_velha = q34_11. 
compute q34_12_velha = q34_12. 
compute q34_13_velha = q34_13. 
compute q34_14_velha = q34_14. 
compute q34_15_velha = q34_15. 
compute q34_16_velha = q34_16. 
compute q34_17_velha = q34_17. 
compute q34_18_velha = q34_18. 
compute q34_19_velha = q34_19. 
execute. 

DO IF (q34_0=1).
RECODE q34_1 (ELSE=SYSMIS).
RECODE q34_2 (ELSE=SYSMIS).
RECODE q34_3 (ELSE=SYSMIS).
RECODE q34_4 (ELSE=SYSMIS).
RECODE q34_5 (ELSE=SYSMIS).
RECODE q34_6 (ELSE=SYSMIS).
RECODE q34_7 (ELSE=SYSMIS).
RECODE q34_8 (ELSE=SYSMIS).
RECODE q34_9 (ELSE=SYSMIS).
RECODE q34_10 (ELSE=SYSMIS).
RECODE q34_11 (ELSE=SYSMIS).
RECODE q34_12 (ELSE=SYSMIS).
RECODE q34_13 (ELSE=SYSMIS).
RECODE q34_14 (ELSE=SYSMIS).
RECODE q34_15 (ELSE=SYSMIS).
RECODE q34_16 (ELSE=SYSMIS).
RECODE q34_17 (ELSE=SYSMIS).
RECODE q34_18 (ELSE=SYSMIS).
RECODE q34_19 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q35*****************

compute q35_0_velha = q35_0. 
compute q35_1_velha = q35_1. 
compute q35_2_velha = q35_2. 
compute q35_3_velha = q35_3. 
compute q35_4_velha = q35_4. 
compute q35_5_velha = q35_5. 
compute q35_6_velha = q35_6. 
compute q35_7_velha = q35_7. 
compute q35_97_velha = q35_97. 
execute. 

DO IF (q35_0=1   | q35_97=1 ). 
RECODE q35_1 (ELSE=SYSMIS).
RECODE q35_2 (ELSE=SYSMIS).
RECODE q35_3 (ELSE=SYSMIS).
RECODE q35_4 (ELSE=SYSMIS).
RECODE q35_5 (ELSE=SYSMIS).
RECODE q35_6 (ELSE=SYSMIS).
RECODE q35_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q1_1=316  | q1_1=318   | q1_1=319 | q1_1=321 | q1_1=322 ).
RECODE q35_1 (ELSE=SYSMIS).
RECODE q35_2 (ELSE=SYSMIS).
RECODE q35_3 (ELSE=SYSMIS).
RECODE q35_4 (ELSE=SYSMIS).
RECODE q35_5 (ELSE=SYSMIS).
RECODE q35_6 (ELSE=SYSMIS).
RECODE q35_0 (ELSE=SYSMIS).
RECODE q35_97 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q36*****************

compute q36_0_velha = q36_0. 
compute q36_1_velha = q36_1. 
compute q36_2_velha = q36_2. 
compute q36_3_velha = q36_3. 
compute q36_99_velha = q36_99. 
execute. 

DO IF (q36_0=1 ). 
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q40****************

compute q40_1_velha = q40_1.
compute q40_2_velha = q40_2.
compute q40_3_velha = q40_3.
compute q40_4_velha = q40_4.
compute q40_99_velha = q40_99.
compute q40_98_velha = q40_98.
compute q40_0_velha = q40_0.
compute q41_velha = q41.
execute. 


DO IF (q40_0 =1 | q40_98=1 ). 
RECODE q40_1(ELSE=SYSMIS).
RECODE q40_2(ELSE=SYSMIS).
RECODE q40_3(ELSE=SYSMIS).
RECODE q40_4(ELSE=SYSMIS).
RECODE q40_99(ELSE=SYSMIS).
RECODE q41(ELSE=SYSMIS).
END IF.
EXECUTE.



**q42*****************


compute q42_1_1_velha = q42_1_1.
compute q42_1_2_velha = q42_1_2.
compute q42_1_3_velha = q42_1_3.
compute q42_1_4_velha = q42_1_4.
compute q42_1_5_velha = q42_1_5.
compute q42_1_6_velha = q42_1_6.
compute q42_1_7_velha = q42_1_7.
compute q42_1_8_velha = q42_1_8.
compute q42_1_0_velha = q42_1_0.
compute q42_1_97_velha = q42_1_97.
compute q42_2_1_velha = q42_2_1.
compute q42_2_2_velha = q42_2_2.
compute q42_2_3_velha = q42_2_3.
compute q42_2_4_velha = q42_2_4.
compute q42_2_5_velha = q42_2_5.
compute q42_2_6_velha = q42_2_6.
compute q42_2_7_velha = q42_2_7.
compute q42_2_8_velha = q42_2_8.
compute q42_2_0_velha = q42_2_0.
compute q42_2_97_velha = q42_2_97.
compute q42_3_1_velha = q42_3_1.
compute q42_3_2_velha = q42_3_2.
compute q42_3_3_velha = q42_3_3.
compute q42_3_4_velha = q42_3_4.
compute q42_3_5_velha = q42_3_5.
compute q42_3_6_velha = q42_3_6.
compute q42_3_7_velha = q42_3_7.
compute q42_3_8_velha = q42_3_8.
compute q42_3_0_velha = q42_3_0.
compute q42_3_97_velha = q42_3_97.
compute q42_4_1_velha = q42_4_1.
compute q42_4_2_velha = q42_4_2.
compute q42_4_3_velha = q42_4_3.
compute q42_4_4_velha = q42_4_4.
compute q42_4_5_velha = q42_4_5.
compute q42_4_6_velha = q42_4_6.
compute q42_4_7_velha = q42_4_7.
compute q42_4_8_velha = q42_4_8.
compute q42_4_0_velha = q42_4_0.
compute q42_4_97_velha = q42_4_97.
compute q42_5_1_velha = q42_5_1.
compute q42_5_2_velha = q42_5_2.
compute q42_5_3_velha = q42_5_3.
compute q42_5_4_velha = q42_5_4.
compute q42_5_5_velha = q42_5_5.
compute q42_5_6_velha = q42_5_6.
compute q42_5_7_velha = q42_5_7.
compute q42_5_8_velha = q42_5_8.
compute q42_5_0_velha = q42_5_0.
compute q42_5_97_velha = q42_5_97.
compute q42_6_1_velha = q42_6_1.
compute q42_6_2_velha = q42_6_2.
compute q42_6_3_velha = q42_6_3.
compute q42_6_4_velha = q42_6_4.
compute q42_6_5_velha = q42_6_5.
compute q42_6_6_velha = q42_6_6.
compute q42_6_7_velha = q42_6_7.
compute q42_6_8_velha = q42_6_8.
compute q42_6_0_velha = q42_6_0.
compute q42_6_97_velha = q42_6_97.
compute q42_7_1_velha = q42_7_1.
compute q42_7_2_velha = q42_7_2.
compute q42_7_3_velha = q42_7_3.
compute q42_7_4_velha = q42_7_4.
compute q42_7_5_velha = q42_7_5.
compute q42_7_6_velha = q42_7_6.
compute q42_7_7_velha = q42_7_7.
compute q42_7_8_velha = q42_7_8.
compute q42_7_0_velha = q42_7_0.
compute q42_7_97_velha = q42_7_97.
compute q42_8_1_velha = q42_8_1.
compute q42_8_2_velha = q42_8_2.
compute q42_8_3_velha = q42_8_3.
compute q42_8_4_velha = q42_8_4.
compute q42_8_5_velha = q42_8_5.
compute q42_8_6_velha = q42_8_6.
compute q42_8_7_velha = q42_8_7.
compute q42_8_8_velha = q42_8_8.
compute q42_8_0_velha = q42_8_0.
compute q42_8_97_velha = q42_8_97.
compute q42_9_1_velha = q42_9_1.
compute q42_9_2_velha = q42_9_2.
compute q42_9_3_velha = q42_9_3.
compute q42_9_4_velha = q42_9_4.
compute q42_9_5_velha = q42_9_5.
compute q42_9_6_velha = q42_9_6.
compute q42_9_7_velha = q42_9_7.
compute q42_9_8_velha = q42_9_8.
compute q42_9_0_velha = q42_9_0.
compute q42_9_97_velha = q42_9_97.
compute q42_10_1_velha = q42_10_1.
compute q42_10_2_velha = q42_10_2.
compute q42_10_3_velha = q42_10_3.
compute q42_10_4_velha = q42_10_4.
compute q42_10_5_velha = q42_10_5.
compute q42_10_6_velha = q42_10_6.
compute q42_10_7_velha = q42_10_7.
compute q42_10_8_velha = q42_10_8.
compute q42_10_0_velha = q42_10_0.
compute q42_10_97_velha = q42_10_97.
compute q42_11_1_velha = q42_11_1.
compute q42_11_2_velha = q42_11_2.
compute q42_11_3_velha = q42_11_3.
compute q42_11_4_velha = q42_11_4.
compute q42_11_5_velha = q42_11_5.
compute q42_11_6_velha = q42_11_6.
compute q42_11_7_velha = q42_11_7.
compute q42_11_8_velha = q42_11_8.
compute q42_11_0_velha = q42_11_0.
compute q42_11_97_velha = q42_11_97.
execute. 





DO IF (q42_1_0=1 | q42_1_97=1).
RECODE q42_1_1(ELSE=SYSMIS).
RECODE q42_1_2(ELSE=SYSMIS).
RECODE q42_1_3(ELSE=SYSMIS).
RECODE q42_1_4(ELSE=SYSMIS).
RECODE q42_1_5(ELSE=SYSMIS).
RECODE q42_1_6(ELSE=SYSMIS).
RECODE q42_1_7(ELSE=SYSMIS).
RECODE q42_1_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_2_0=1 | q42_2_97=1).
RECODE q42_2_1(ELSE=SYSMIS).
RECODE q42_2_2(ELSE=SYSMIS).
RECODE q42_2_3(ELSE=SYSMIS).
RECODE q42_2_4(ELSE=SYSMIS).
RECODE q42_2_5(ELSE=SYSMIS).
RECODE q42_2_6(ELSE=SYSMIS).
RECODE q42_2_7(ELSE=SYSMIS).
RECODE q42_2_8(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q42_3_0=1 | q42_3_97=1).
RECODE q42_3_1(ELSE=SYSMIS).
RECODE q42_3_2(ELSE=SYSMIS).
RECODE q42_3_3(ELSE=SYSMIS).
RECODE q42_3_4(ELSE=SYSMIS).
RECODE q42_3_5(ELSE=SYSMIS).
RECODE q42_3_6(ELSE=SYSMIS).
RECODE q42_3_7(ELSE=SYSMIS).
RECODE q42_3_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_4_0=1 | q42_4_97=1).
RECODE q42_3_1(ELSE=SYSMIS).
RECODE q42_3_2(ELSE=SYSMIS).
RECODE q42_3_3(ELSE=SYSMIS).
RECODE q42_3_4(ELSE=SYSMIS).
RECODE q42_3_5(ELSE=SYSMIS).
RECODE q42_3_6(ELSE=SYSMIS).
RECODE q42_3_7(ELSE=SYSMIS).
RECODE q42_3_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_3_0=1 | q42_3_97=1).
RECODE q42_4_1(ELSE=SYSMIS).
RECODE q42_4_2(ELSE=SYSMIS).
RECODE q42_4_3(ELSE=SYSMIS).
RECODE q42_4_4(ELSE=SYSMIS).
RECODE q42_4_5(ELSE=SYSMIS).
RECODE q42_4_6(ELSE=SYSMIS).
RECODE q42_4_7(ELSE=SYSMIS).
RECODE q42_4_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_5_0=1 | q42_5_97=1).
RECODE q42_5_1(ELSE=SYSMIS).
RECODE q42_5_2(ELSE=SYSMIS).
RECODE q42_5_3(ELSE=SYSMIS).
RECODE q42_5_4(ELSE=SYSMIS).
RECODE q42_5_5(ELSE=SYSMIS).
RECODE q42_5_6(ELSE=SYSMIS).
RECODE q42_5_7(ELSE=SYSMIS).
RECODE q42_5_8(ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q42_6_0=1 | q42_6_97=1).
RECODE q42_6_1(ELSE=SYSMIS).
RECODE q42_6_2(ELSE=SYSMIS).
RECODE q42_6_3(ELSE=SYSMIS).
RECODE q42_6_4(ELSE=SYSMIS).
RECODE q42_6_5(ELSE=SYSMIS).
RECODE q42_6_6(ELSE=SYSMIS).
RECODE q42_6_7(ELSE=SYSMIS).
RECODE q42_6_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_7_0=1 | q42_7_97=1).
RECODE q42_7_1(ELSE=SYSMIS).
RECODE q42_7_2(ELSE=SYSMIS).
RECODE q42_7_3(ELSE=SYSMIS).
RECODE q42_7_4(ELSE=SYSMIS).
RECODE q42_7_5(ELSE=SYSMIS).
RECODE q42_7_6(ELSE=SYSMIS).
RECODE q42_7_7(ELSE=SYSMIS).
RECODE q42_7_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_8_0=1 | q42_8_97=1).
RECODE q42_8_1(ELSE=SYSMIS).
RECODE q42_8_2(ELSE=SYSMIS).
RECODE q42_8_3(ELSE=SYSMIS).
RECODE q42_8_4(ELSE=SYSMIS).
RECODE q42_8_5(ELSE=SYSMIS).
RECODE q42_8_6(ELSE=SYSMIS).
RECODE q42_8_7(ELSE=SYSMIS).
RECODE q42_8_8(ELSE=SYSMIS).
END IF.
EXECUTE.




DO IF (q42_9_0=1 | q42_9_97=1).
RECODE q42_9_1(ELSE=SYSMIS).
RECODE q42_9_2(ELSE=SYSMIS).
RECODE q42_9_3(ELSE=SYSMIS).
RECODE q42_9_4(ELSE=SYSMIS).
RECODE q42_9_5(ELSE=SYSMIS).
RECODE q42_9_6(ELSE=SYSMIS).
RECODE q42_9_7(ELSE=SYSMIS).
RECODE q42_9_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_10_0=1 | q42_10_97=1).
RECODE q42_10_1(ELSE=SYSMIS).
RECODE q42_10_2(ELSE=SYSMIS).
RECODE q42_10_3(ELSE=SYSMIS).
RECODE q42_10_4(ELSE=SYSMIS).
RECODE q42_10_5(ELSE=SYSMIS).
RECODE q42_10_6(ELSE=SYSMIS).
RECODE q42_10_7(ELSE=SYSMIS).
RECODE q42_10_8(ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q42_11_0=1 | q42_11_97=1).
RECODE q42_11_1(ELSE=SYSMIS).
RECODE q42_11_2(ELSE=SYSMIS).
RECODE q42_11_3(ELSE=SYSMIS).
RECODE q42_11_4(ELSE=SYSMIS).
RECODE q42_11_5(ELSE=SYSMIS).
RECODE q42_11_6(ELSE=SYSMIS).
RECODE q42_11_7(ELSE=SYSMIS).
RECODE q42_11_8(ELSE=SYSMIS).
END IF.
EXECUTE.


**q52****************

compute q52_0_velha = q52_0.
compute q52_1_velha = q52_1.
compute q52_2_velha = q52_2.
compute q52_3_velha = q52_3.
compute q52_4_velha = q52_4.
compute q52_5_velha = q52_5.
compute q52_6_velha = q52_6.
compute q52_7_velha = q52_7.
compute q52_8_velha = q52_8.
compute q52_9_velha = q52_9.
compute q52_10_velha = q52_10.
compute q52_98_velha = q52_98.
execute. 


DO IF (q52_0 =1 ). 
RECODE q52_1(ELSE=SYSMIS).
RECODE q52_2(ELSE=SYSMIS).
RECODE q52_3(ELSE=SYSMIS).
RECODE q52_4(ELSE=SYSMIS).
RECODE q52_5(ELSE=SYSMIS).
RECODE q52_6(ELSE=SYSMIS).
RECODE q52_7(ELSE=SYSMIS).
RECODE q52_8(ELSE=SYSMIS).
RECODE q52_9(ELSE=SYSMIS).
RECODE q52_10(ELSE=SYSMIS).
RECODE q52_98(ELSE=SYSMIS).
END IF.
EXECUTE.
















VARIABLE LABELS
q5_1_velha'q5_1_1: Sim, com o Estado (governo estadual)_ possui conv�nio/termo de parceria'
q5_2_velha'q5_2_2: Sim, com o munic�pio no qual esta unidade se localiza (com a prefeitura na qual a sede da unidade se localiza)_ possui conv�nio/termo de parceria'
q5_3_velha'q5_3_3: Sim, com outros munic�pios_ possui conv�nio/termo de parceria'
q5_0_velha'q5_0_0: N�o_ possui conv�nio/termo de parceria'
q5_98_velha'q5_98_98: N�o sabe informar_ possui conv�nio/termo de parceria'
q6_1_velha'q6_1_1: Conselho de Assist�ncia Social_possui inscri��o/registro'
q6_2_velha'q6_2_2: Conselho de Direitos da Crian�a e Adolescente_possui inscri��o/registro'
q6_3_velha'q6_3_3: Conselho dos Direitos das Pessoas Idosas_possui inscri��o/registro'
q6_0_velha'q6_00_0: Em nenhum Conselho_possui inscri��o/registro'
q6_99_velha'q6_00_0: Em nenhum Conselho_possui inscri��o/registro'
q9_velha'q9_9. Informe o n�mero de munic�pios atendidos pelo servi�o regionalizado (considere tamb�m o munic�pio-sede e os vinculados)'
q25_velha'q25_25. Caso sim, entre os usu�rios acolhidos, quantos contribuem com o custeio da Unidade? (Exclusivo para Unidades N�o Governamentais)'
q31_velha'q31_31. Caso sim, quantos?'
q32_0_velha'q32_0_0: N�o_profissionais de sa�de contratados'
q32_1_velha'q32_1_1: Sim, m�dicos_profissionais de sa�de contratados'
q32_2_velha'q32_2_2: Sim, enfermeiros_profissionais de sa�de contratados'
q32_3_velha'q32_3_3: Sim, fisioterapeutas_profissionais de sa�de contratados'
q32_4_velha'q32_4_4: Sim, t�cnicos de enfermagem_profissionais de sa�de contratados'
q32_99_velha'q32_99_99: Sim, outros (n�o considerar psic�logos)._profissionais de sa�de contratados'
q33_0_velha'q33_0_0: N�o_profissionais de sa�de atuando como volunt�rios'
q33_1_velha'q33_1_1: Sim, m�dicos_profissionais de sa�de atuando como volunt�rios'
q33_2_velha'q33_2_2: Sim, enfermeiros_profissionais de sa�de atuando como volunt�rios'
q33_3_velha'q33_3_3: Sim, fisioterapeutas_profissionais de sa�de atuando como volunt�rios'
q33_4_velha'q33_4_4: Sim, t�cnicos de enfermagem_profissionais de sa�de atuando como volunt�rios'
q33_99_velha'q33_99_99: Sim, outros (n�o considerar psic�logos)._profissionais de sa�de atuando como volunt�rios'
q34_0_velha'q34_19_19: Apoio para atividades de cuidados instrumentais da vida di�ria (ex: cuidar das pr�prias finan�as, preparar alimenta��o_atividades promovidas sistematicamente'
q34_1_velha'q34_1_1: Visitas domiciliares da equipe t�cnica da Unidade � fam�lia da(o) usu�ria(o)_atividades promovidas sistematicamente'
q34_2_velha'q34_2_2: Reuni�es com grupos de fam�lias das(os) usu�rias(os)_atividades promovidas sistematicamente'
q34_3_velha'q34_2_2: Reuni�es com grupos de fam�lias das(os) usu�rias(os)_atividades promovidas sistematicamente'
q34_4_velha'q34_4_4: Atendimento psicossocial em grupos_atividades promovidas sistematicamente'
q34_5_velha'q34_5_5: Atendimento psicossocial das fam�lias das pessoas acolhidas (orienta��o familiar)_atividades promovidas sistematicamente'
q34_6_velha'q34_6_6: Palestras / oficinas_atividades promovidas sistematicamente'
q34_7_velha'q34_6_6: Palestras / oficinas_atividades promovidas sistematicamente'
q34_8_velha'q34_8_8: Discuss�o de casos com outras(os) profissionais da rede_atividades promovidas sistematicamente'
q34_9_velha'q34_9_9: Encaminhamento para retirada de documentos_atividades promovidas sistematicamente'
q34_10_velha'q34_10_10: Passeios com usu�rias(os)_atividades promovidas sistematicamente'
q34_11_velha'q34_11_11: Promove contato e a participa��o da fam�lia na vida da(o) usu�ria(o)_atividades promovidas sistematicamente'
q34_12_velha'q34_12_12: Promove atividades com participa��o da Comunidade_atividades promovidas sistematicamente'
q34_13_velha'q34_13_13: Promove a participa��o das pessoas acolhidas em servi�os, projetos ou atividades existentes na comunidade_atividades promovidas sistematicamente'
q34_14_velha'q34_14_14: Envio de relat�rio semestral para o Judici�rio (exclusivo para acolhimento de crian�a/adolescente)_atividades promovidas sistematicamente'
q34_15_velha'q34_15_15: Acompanhamento Escolar_atividades promovidas sistematicamente'
q34_16_velha'q34_15_15: Acompanhamento Escolar_atividades promovidas sistematicamente'
q34_17_velha'q34_17_17: Apoio e encaminhamento das pessoas acolhidas para qualifica��o profissional e mercado de trabalho_atividades promovidas sistematicamente'
q34_18_velha'q34_18_18: Apoio para a realiza��o de cuidados b�sicos de vida di�ria e de autocuidado (ex: higiene, alimenta��o, descanso)_atividades promovidas sistematicamente'
q34_19_velha'q34_19_19: Apoio para atividades de cuidados instrumentais da vida di�ria (ex: cuidar das pr�prias finan�as, preparar alimenta��o_atividades promovidas sistematicamente'
q35_0_velha'q35_0_0: n�o realiza a��es para o desligamento_para crian�as/adolescentes'
q35_1_velha'q35_1_1: apoio para o jovem egresso para a qualifica��o profissional e trabalho remunerado_para crian�as/adolescentes'
q35_2_velha'q35_2_2: apoio para continuidade dos estudos_para crian�as/adolescentes'
q35_3_velha'q35_3_3: encaminhamento para rep�blica_para crian�as/adolescentes'
q35_4_velha'q35_4_4: identifica��o de rede parental, amigos que possam apoiar o adolescente nessa nova fase_para crian�as/adolescentes'
q35_5_velha'q35_5_5: atividades que desenvolvam a autonomia quanto ao uso e gest�o do dinheiro_para crian�as/adolescentes'
q35_6_velha'q35_5_5: atividades que desenvolvam a autonomia quanto ao uso e gest�o do dinheiro_para crian�as/adolescentes'
q35_7_velha'q35_7_7: atividades que desenvolvam a autonomia quanto a utiliza��o de servi�os p�blicos e comunit�rios_para crian�as/adolescentes'
q35_97_velha'q35_97_97: n�o atende adolescentes at� a maioridade_para crian�as/adolescentes'
q36_0_velha'q36_0_0: N�o possui nenhum dos instrumentais acima mencionados_possui os instrumentais'
q36_1_velha'q36_1_1: Pol�tico-Pedag�gico (PPP)_possui os instrumentais'
q36_2_velha'q36_2_2: Prontu�rios de atendimento individualizados das(os) acolhidas(os)_possui os instrumentais'
q36_3_velha'q36_3_3: Plano Individual de Atendimento (PIA) de cada pessoa acolhida_possui os instrumentais'
q36_99_velha'q36_99_99: Outro_possui os instrumentais'
q40_1_velha'q40_1_1: A pr�pria unidade/servi�o de acolhimento_acompanhamento das(os) usu�rias(os) ap�s o seu desligamento'
q40_2_velha'q40_2_2: O CREAS_acompanhamento das(os) usu�rias(os) ap�s o seu desligamento'
q40_3_velha'q40_3_3: O CRAS_acompanhamento das(os) usu�rias(os) ap�s o seu desligamento'
q40_4_velha'q40_4_4: Unidades do Sistema de Justi�a (Varas, Minist�rio P�blico, Defensoria)_acompanhamento das(os) usu�rias(os) ap�s o seu desligamento'
q40_99_velha'q40_99_99: Outro_acompanhamento das(os) usu�rias(os) ap�s o seu desligamento'
q40_98_velha'q40_98_98: N�o sabe informar (pule para a quest�o 42)_acompanhamento das(os) usu�rias(os) ap�s o seu desligamento'
q40_0_velha'q40_0_0: N�o � realizado acompanhamento de egressos (pule para a quest�o 42)_acompanhamento das(os) usu�rias(os) ap�s o seu desligamento'
q41_velha'q41_41. Por quanto tempo, em m�dia, a(o) usu�ria(o) � acompanhada(o) ap�s seu desligamento?'
q42_1_1_velha'q42_1_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Conselho Tutelar'
q42_1_2_velha'q42_1_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Conselho Tutelar'
q42_1_3_velha'q42_1_3_3: Encaminha usu�rias(os) para esta unidade_Conselho Tutelar'
q42_1_4_velha'q42_1_4_4: Acompanha os encaminhamentos_Conselho Tutelar'
q42_1_5_velha'q42_1_5_5: Realiza reuni�es peri�dicas_Conselho Tutelar'
q42_1_6_velha'q42_1_5_5: Realiza reuni�es peri�dicas_Conselho Tutelar'
q42_1_7_velha'q42_1_7_7: Realiza estudos de caso em conjunto_Conselho Tutelar'
q42_1_8_velha'q42_1_8_8: Desenvolve ativiades em parceria_Conselho Tutelar'
q42_1_0_velha'q42_1_0_0: N�o tem nenhuma articula��o_Conselho Tutelar'
q42_1_97_velha'q42_1_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Conselho Tutelar'
q42_2_1_velha'q42_1_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Conselho Tutelar'
q42_2_2_velha'q42_2_2_2: Recebe usu�rias(os) encaminhados por esta unidade_CRAS'
q42_2_3_velha'q42_2_3_3: Encaminha usu�rias(os) para esta unidade_CRAS'
q42_2_4_velha'q42_2_4_4: Acompanha os encaminhamentos_CRAS'
q42_2_5_velha'q42_2_5_5: Realiza reuni�es peri�dicas_CRAS'
q42_2_6_velha'q42_2_6_6: Troca informa��es_CRAS'
q42_2_7_velha'q42_2_7_7: Realiza estudos de caso em conjunto_CRAS'
q42_2_8_velha'q42_2_8_8: Desenvolve ativiades em parceria_CRAS'
q42_2_0_velha'q42_2_0_0: N�o tem nenhuma articula��o_CRAS'
q42_2_97_velha'q42_2_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_CRAS'
q42_3_1_velha'q42_3_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_CREAS'
q42_3_2_velha'q42_3_2_2: Recebe usu�rias(os) encaminhados por esta unidade_CREAS'
q42_3_3_velha'q42_3_3_3: Encaminha usu�rias(os) para esta unidade_CREAS'
q42_3_4_velha'q42_3_4_4: Acompanha os encaminhamentos_CREAS'
q42_3_5_velha'q42_3_5_5: Realiza reuni�es peri�dicas_CREAS'
q42_3_6_velha'q42_3_6_6: Troca informa��es_CREAS'
q42_3_7_velha'q42_3_7_7: Realiza estudos de caso em conjunto_CREAS'
q42_3_8_velha'q42_3_8_8: Desenvolve ativiades em parceria_CREAS'
q42_3_0_velha'q42_3_0_0: N�o tem nenhuma articula��o_CREAS'
q42_3_97_velha'q42_3_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_CREAS'
q42_4_1_velha'q42_4_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Centro Dia'
q42_4_2_velha'q42_4_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Centro Dia'
q42_4_3_velha'q42_4_3_3: Encaminha usu�rias(os) para esta unidade_Centro Dia'
q42_4_4_velha'q42_4_4_4: Acompanha os encaminhamentos_Centro Dia'
q42_4_5_velha'q42_4_5_5: Realiza reuni�es peri�dicas_Centro Dia'
q42_4_6_velha'q42_4_6_6: Troca informa��es_Centro Dia'
q42_4_7_velha'q42_4_7_7: Realiza estudos de caso em conjunto_Centro Dia'
q42_4_8_velha'q42_4_8_8: Desenvolve ativiades em parceria_Centro Dia'
q42_4_0_velha'q42_4_0_0: N�o tem nenhuma articula��o_Centro Dia'
q42_4_97_velha'q42_4_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Centro Dia'
q42_5_1_velha'q42_5_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Centro POP'
q42_5_2_velha'q42_5_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Centro POP'
q42_5_3_velha'q42_5_3_3: Encaminha usu�rias(os) para esta unidade_Centro POP'
q42_5_4_velha'q42_5_4_4: Acompanha os encaminhamentos_Centro POP'
q42_5_5_velha'q42_5_5_5: Realiza reuni�es peri�dicas_Centro POP'
q42_5_6_velha'q42_5_6_6: Troca informa��es_Centro POP'
q42_5_7_velha'q42_5_7_7: Realiza estudos de caso em conjunto_Centro POP'
q42_5_8_velha'q42_5_8_8: Desenvolve ativiades em parceria_Centro POP'
q42_5_0_velha'q42_5_0_0: N�o tem nenhuma articula��o_Centro POP'
q42_5_97_velha'q42_5_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Centro POP'
q42_6_1_velha'q42_6_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Outras unidades de acolhimento'
q42_6_2_velha'q42_6_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Outras unidades de acolhimento'
q42_6_3_velha'q42_6_3_3: Encaminha usu�rias(os) para esta unidade_Outras unidades de acolhimento'
q42_6_4_velha'q42_6_4_4: Acompanha os encaminhamentos_Outras unidades de acolhimento'
q42_6_5_velha'q42_6_5_5: Realiza reuni�es peri�dicas_Outras unidades de acolhimento'
q42_6_6_velha'q42_6_6_6: Troca informa��es_Outras unidades de acolhimento'
q42_6_7_velha'q42_6_7_7: Realiza estudos de caso em conjunto_Outras unidades de acolhimento'
q42_6_8_velha'q42_6_8_8: Desenvolve ativiades em parceria_Outras unidades de acolhimento'
q42_6_0_velha'q42_6_0_0: N�o tem nenhuma articula��o_Outras unidades de acolhimento'
q42_6_97_velha'q42_6_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Outras unidades de acolhimento'
q42_7_1_velha'q42_7_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Unidades Educacionais'
q42_7_2_velha'q42_7_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Unidades Educacionais'
q42_7_3_velha'q42_7_3_3: Encaminha usu�rias(os) para esta unidade_Unidades Educacionais'
q42_7_4_velha'q42_7_4_4: Acompanha os encaminhamentos_Unidades Educacionais'
q42_7_5_velha'q42_7_5_5: Realiza reuni�es peri�dicas_Unidades Educacionais'
q42_7_6_velha'q42_7_6_6: Troca informa��es_Unidades Educacionais'
q42_7_7_velha'q42_7_7_7: Realiza estudos de caso em conjunto_Unidades Educacionais'
q42_7_8_velha'q42_7_8_8: Desenvolve ativiades em parceria_Unidades Educacionais'
q42_7_0_velha'q42_7_0_0: N�o tem nenhuma articula��o_Unidades Educacionais'
q42_7_97_velha'q42_7_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Unidades Educacionais'
q42_8_1_velha'q42_8_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os de Sa�de'
q42_8_2_velha'q42_8_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Servi�os de Sa�de'
q42_8_3_velha'q42_8_3_3: Encaminha usu�rias(os) para esta unidade_Servi�os de Sa�de'
q42_8_4_velha'q42_8_4_4: Acompanha os encaminhamentos_Servi�os de Sa�de'	
q42_8_5_velha'q42_8_5_5: Realiza reuni�es peri�dicas_Servi�os de Sa�de'	
q42_8_6_velha'q42_8_6_6: Troca informa��es_Servi�os de Sa�de'	
q42_8_7_velha'q42_8_7_7: Realiza estudos de caso em conjunto_Servi�os de Sa�de'	
q42_8_8_velha'q42_8_8_8: Desenvolve ativiades em parceria_Servi�os de Sa�de'	
q42_8_0_velha'q42_8_0_0: N�o tem nenhuma articula��o_Servi�os de Sa�de'
q42_8_97_velha'q42_8_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Servi�os de Sa�de'
q42_9_1_velha'q42_9_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Sistema judici�rio'
q42_9_2_velha'q42_9_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Sistema judici�rio'
q42_9_3_velha'q42_9_3_3: Encaminha usu�rias(os) para esta unidade_Sistema judici�rio'
q42_9_4_velha'q42_9_4_4: Acompanha os encaminhamentos_Sistema judici�rio'
q42_9_5_velha'q42_9_5_5: Realiza reuni�es peri�dicas_Sistema judici�rio'
q42_9_6_velha'q42_9_6_6: Troca informa��es_Sistema judici�rio'
q42_9_7_velha'q42_9_6_6: Troca informa��es_Sistema judici�rio'
q42_9_8_velha'q42_9_6_6: Troca informa��es_Sistema judici�rio'
q42_9_0_velha'q42_9_0_0: N�o tem nenhuma articula��o_Sistema judici�rio'
q42_9_97_velha'q42_9_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Sistema judici�rio'
q42_10_1_velha'q42_10_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Defensoria P�blica'
q42_10_2_velha'q42_10_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Defensoria P�blica'
q42_10_3_velha'q42_10_3_3: Encaminha usu�rias(os) para esta unidade_Defensoria P�blica'
q42_10_4_velha'q42_10_4_4: Acompanha os encaminhamentos_Defensoria P�blica'
q42_10_5_velha'q42_10_5_5: Realiza reuni�es peri�dicas_Defensoria P�blica'
q42_10_6_velha'q42_10_6_6: Troca informa��es_Defensoria P�blica'
q42_10_7_velha'q42_10_7_7: Realiza estudos de caso em conjunto_Defensoria P�blica'
q42_10_8_velha'q42_10_8_8: Desenvolve ativiades em parceria_Defensoria P�blica'
q42_10_0_velha'q42_10_0_0: N�o tem nenhuma articula��o_Defensoria P�blica'
q42_10_97_velha'q42_10_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Defensoria P�blica'
q42_11_1_velha'q42_11_1_1: Possui dados de localiza��o (endere�o, telefone, etc.)_Servi�os e programas de seguran�a alimentar'
q42_11_2_velha'q42_11_2_2: Recebe usu�rias(os) encaminhados por esta unidade_Servi�os e programas de seguran�a alimentar'
q42_11_3_velha'q42_11_3_3: Encaminha usu�rias(os) para esta unidade_Servi�os e programas de seguran�a alimentar'
q42_11_4_velha'q42_11_4_4: Acompanha os encaminhamentos_Servi�os e programas de seguran�a alimentar'
q42_11_5_velha'q42_11_5_5: Realiza reuni�es peri�dicas_Servi�os e programas de seguran�a alimentar'
q42_11_6_velha'q42_11_6_6: Troca informa��es_Servi�os e programas de seguran�a alimentar'
q42_11_7_velha'q42_11_7_7: Realiza estudos de caso em conjunto_Servi�os e programas de seguran�a alimentar'
q42_11_8_velha'q42_11_8_8: Desenvolve ativiades em parceria_Servi�os e programas de seguran�a alimentar'
q42_11_0_velha'q42_11_0_0: N�o tem nenhuma articula��o_Servi�os e programas de seguran�a alimentar'
q42_11_97_velha'q42_11_97_97: Servi�o ou institui��o n�o existente no Munic�pio ou no DF_Servi�os e programas de seguran�a alimentar'
q52_0_velha'q52_0_0: N�o recebe nenhuma outra forma de apoio do poder p�blico _outras formas de apoio do poder p�blico'
q52_1_velha'q52_1_1: Cess�o de recursos humanos_outras formas de apoio do poder p�blico'
q52_2_velha'q52_2_2: Cess�o imobili�ria_outras formas de apoio do poder p�blico'
q52_3_velha'q52_3_3: Pagamento de aluguel_outras formas de apoio do poder p�blico'
q52_4_velha'q52_4_4: Pagamento de contas de �gua_outras formas de apoio do poder p�blico'
q52_5_velha'q52_5_5: Pagamento de contas de luz ou telefone_outras formas de apoio do poder p�blico'
q52_6_velha'q52_6_6: Fornecimento de g�neros aliment�cios_outras formas de apoio do poder p�blico'
q52_7_velha'q52_7_7: Fornecimento de materiais de higiene e limpeza_outras formas de apoio do poder p�blico'
q52_8_velha'q52_8_8: Fornecimento de materiais did�ticos_outras formas de apoio do poder p�blico'
q52_9_velha'q52_9_9: Isen��o de taxas ou tributos municipais_outras formas de apoio do poder p�blico'
q52_10_velha'q52_9_9: Isen��o de taxas ou tributos municipais_outras formas de apoio do poder p�blico'
q52_98_velha'q52_98_98: Outros_outras formas de apoio do poder p�blico'
.







 













