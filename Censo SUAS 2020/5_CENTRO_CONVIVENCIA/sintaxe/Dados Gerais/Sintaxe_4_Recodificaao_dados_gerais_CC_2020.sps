
*****recodificar
***q6*********************************


compute q7_1_velha  =   q7_1.
compute q7_2_velha  =  q7_2.
compute q7_3_velha  =   q7_3 .
compute q7_4_velha  =  q7_4.
compute q7_5_velha  =   q7_5 .
compute q7_6_velha  =  q7_6.
compute q7_7_velha  =   q7_7 .
compute q7_8_velha  =  q7_8.
compute q7_9_velha  =   q7_9 .
compute q7_10_velha  =  q7_10.
compute q7_11_velha  =   q7_11 .
compute q7_12_velha  =  q7_12.
compute q7_13_velha  =   q7_13 .
compute q7_14_velha  =  q7_14.
compute q7_15_velha  =  q7_15.
compute q7_16_velha  =   q7_16 .
compute q7_17_velha  =  q7_17.
compute q7_99_velha  =   q7_99 .
execute. 


DO IF (q6=0).
RECODE q7_1 (ELSE=SYSMIS).
RECODE q7_2 (ELSE=SYSMIS).
RECODE q7_3 (ELSE=SYSMIS).
RECODE q7_4 (ELSE=SYSMIS).
RECODE q7_5 (ELSE=SYSMIS).
RECODE q7_6 (ELSE=SYSMIS).
RECODE q7_7 (ELSE=SYSMIS).
RECODE q7_8 (ELSE=SYSMIS).
RECODE q7_9 (ELSE=SYSMIS).
RECODE q7_10 (ELSE=SYSMIS).
RECODE q7_11 (ELSE=SYSMIS).
RECODE q7_12 (ELSE=SYSMIS).
RECODE q7_13 (ELSE=SYSMIS).
RECODE q7_14 (ELSE=SYSMIS).
RECODE q7_15 (ELSE=SYSMIS).
RECODE q7_16 (ELSE=SYSMIS).
RECODE q7_17 (ELSE=SYSMIS).
RECODE q7_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



**q8*****************

compute q8_0_velha  =   q8_0.
compute q8_1_velha  =   q8_1.
compute q8_2_velha  =  q8_2.
compute q8_3_velha  =   q8_3 .
compute q8_4_velha  =  q8_4.
compute q8_5_velha  =   q8_5 .
compute q8_6_velha  =  q8_6.
compute q8_7_velha  =   q8_7 .
compute q8_8_velha  =  q8_8.
compute q8_9_velha  =   q8_9 .
compute q8_99_velha  =   q8_99 .



DO IF (q8_0=1).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).
RECODE q8_3 (ELSE=SYSMIS).
RECODE q8_4 (ELSE=SYSMIS).
RECODE q8_5 (ELSE=SYSMIS).
RECODE q8_6 (ELSE=SYSMIS).
RECODE q8_7 (ELSE=SYSMIS).
RECODE q8_8 (ELSE=SYSMIS).
RECODE q8_9 (ELSE=SYSMIS).
RECODE q8_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q9*****************

compute q9_1_velha  =   q9_1.
compute q9_2_velha  =  q9_2.
compute q9_3_velha  =   q9_3 .
compute q9_4_velha  =  q9_4.
compute q9_5_velha  =   q9_5 .
compute q9_6_velha  =  q9_6.
compute q9_7_velha  =   q9_7 .
compute q9_8_velha  =  q9_8.
compute q9_9_velha  =   q9_9 .
compute q9_10_velha  =   q9_10 .
compute q9_99_velha  =   q9_99 .


DO IF (q9_1=1).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
RECODE q9_5 (ELSE=SYSMIS).
RECODE q9_6 (ELSE=SYSMIS).
RECODE q9_7 (ELSE=SYSMIS).
RECODE q9_8 (ELSE=SYSMIS).
RECODE q9_9 (ELSE=SYSMIS).
RECODE q9_10 (ELSE=SYSMIS).
RECODE q9_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q12*************

compute  q12_1_velha = q12_1. 
compute q12_2_velha = q12_2.
compute q12_3_velha = q12_3.
compute q12_4_velha = q12_4.
compute q12_5_velha = q12_5.
compute q12_6_velha = q12_6.
compute q12_7_velha = q12_7.
compute q12_8_velha = q12_8. 
compute q12_99_velha = q12_99.
compute q12_0_velha = q12_0.
execute. 


DO IF (q12_0=1).
RECODE q12_1 (ELSE=SYSMIS).
RECODE q12_2 (ELSE=SYSMIS).
RECODE q12_3 (ELSE=SYSMIS).
RECODE q12_4 (ELSE=SYSMIS).
RECODE q12_5 (ELSE=SYSMIS).
RECODE q12_6 (ELSE=SYSMIS).
RECODE q12_7 (ELSE=SYSMIS).
RECODE q12_8 (ELSE=SYSMIS).
RECODE q12_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q13***

compute q14_velha = q14.
compute q15_1_velha = q15_1.
compute q15_2_velha = q15_2.
compute q15_3_velha = q15_3. 
compute q15_4_velha = q15_4.
compute q15_5_velha = q15_5.
compute q15_6_velha = q15_6.
compute q15_7_velha = q15_7.
compute q15_8_velha = q15_8.
compute q15_9_velha = q15_9. 
compute q15_10_velha = q15_10.
compute q15_99_velha = q15_99. 
compute q15_0_velha = q15_0.
compute q16_velha = q16.
execute. 


DO IF (q15_0= 1).
RECODE q15_1 (ELSE=SYSMIS).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_3 (ELSE=SYSMIS).
RECODE q15_4 (ELSE=SYSMIS).
RECODE q15_5 (ELSE=SYSMIS).
RECODE q15_6 (ELSE=SYSMIS).
RECODE q15_7 (ELSE=SYSMIS).
RECODE q15_8 (ELSE=SYSMIS).
RECODE q15_9 (ELSE=SYSMIS).
RECODE q15_10 (ELSE=SYSMIS).
RECODE q15_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q13= 0).
RECODE q14 (ELSE=SYSMIS).
RECODE q15_1 (ELSE=SYSMIS).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_3 (ELSE=SYSMIS).
RECODE q15_4 (ELSE=SYSMIS).
RECODE q15_5 (ELSE=SYSMIS).
RECODE q15_6 (ELSE=SYSMIS).
RECODE q15_7 (ELSE=SYSMIS).
RECODE q15_8 (ELSE=SYSMIS).
RECODE q15_9 (ELSE=SYSMIS).
RECODE q15_10 (ELSE=SYSMIS).
RECODE q15_99 (ELSE=SYSMIS).
RECODE q15_0 (ELSE=SYSMIS).
RECODE q16 (ELSE=SYSMIS).
END IF.
EXECUTE.



*q17**************************

compute q17_1_velha = q17_1.
compute q17_2_velha = q17_2.
compute q17_3_velha = q17_3. 
compute q17_4_velha = q17_4.
compute q17_5_velha = q17_5.
compute q17_99_velha = q17_99. 
compute q17_0_velha = q17_0.
execute. 


DO IF (q17_0= 1).
RECODE q17_1 (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3 (ELSE=SYSMIS).
RECODE q17_4 (ELSE=SYSMIS).
RECODE q17_5 (ELSE=SYSMIS).
RECODE q17_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


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



*q19**************************

compute q19_0_velha  =   q19_0.
compute q19_1_velha  =   q19_1.
compute q19_2_velha  =  q19_2.
compute q19_3_velha  =   q19_3 .
compute q19_4_velha  =  q19_4.
compute q19_5_velha  =   q19_5 .
compute q19_6_velha  =  q19_6.
compute q19_7_velha  =   q19_7 .
compute q19_8_velha  =  q19_8.
compute q19_9_velha  =   q19_9 .
compute q19_10_velha  =  q19_10.
compute q19_11_velha  =   q19_11 .
compute q19_12_velha  =  q19_12.
compute q19_13_velha  =   q19_13 .
compute q19_14_velha  =  q19_14.
compute q19_15_velha  =  q19_15.
compute q19_99_velha  =   q19_99 .
execute. 


DO IF (q19_0=1).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
RECODE q19_10 (ELSE=SYSMIS).
RECODE q19_11 (ELSE=SYSMIS).
RECODE q19_12 (ELSE=SYSMIS).
RECODE q19_13 (ELSE=SYSMIS).
RECODE q19_14 (ELSE=SYSMIS).
RECODE q19_15 (ELSE=SYSMIS).
RECODE q19_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*20*********************************

compute q20_0_velha = q20_0.
compute q20_1_velha = q20_1. 
compute q20_2_velha = q20_2.
compute q20_3_velha = q20_3.
compute q20_4_velha = q20_4.
compute q20_5_velha = q20_5.
compute q20_6_velha = q20_6.
compute q20_7_velha = q20_7.
compute q20_97_velha = q20_97.
execute. 


DO IF (q20_0= 1 | q20_97=1 ).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
RECODE q20_6 (ELSE=SYSMIS).
RECODE q20_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q27********************************************************************

compute q29_velha = q29.
compute q30_1_velha = q30_1.
compute q30_2_velha = q30_2.
compute q30_3_velha = q30_3.
compute q30_4_velha = q30_4.
compute q30_5_velha = q30_5.
compute q30_6_velha = q30_6.
compute q30_7_velha = q30_7.
compute q30_8_velha = q30_8.
compute q30_99_velha = q30_99.
execute. 


DO IF (q27=0 ).
RECODE q29 (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4  (ELSE=SYSMIS).
RECODE q30_5  (ELSE=SYSMIS).
RECODE q30_6 (ELSE=SYSMIS).
RECODE q30_7  (ELSE=SYSMIS).
RECODE q30_8  (ELSE=SYSMIS).
RECODE q30_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



*q31**********************************************************************************


compute q31_1_velha = q31_1.
compute q31_2_velha = q31_2.
compute q31_3_velha = q31_3.
compute q31_4_velha = q31_4.
compute q31_5_velha = q31_5.
compute q31_6_velha = q31_6.
compute q31_7_velha = q31_7.
compute q31_8_velha = q31_8.
compute q31_99_velha = q31_99.
compute q31_0_velha = q31_0.
execute. 


DO IF (q31_0= 1).
RECODE q31_1 (ELSE=SYSMIS).
RECODE q31_2 (ELSE=SYSMIS).
RECODE q31_3 (ELSE=SYSMIS).
RECODE q31_4 (ELSE=SYSMIS).
RECODE q31_5 (ELSE=SYSMIS).
RECODE q31_6 (ELSE=SYSMIS).
RECODE q31_7  (ELSE=SYSMIS).
RECODE q31_8  (ELSE=SYSMIS).
RECODE q31_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q32**********************************************************************************

compute q33_1_velha = q33_1.
compute q33_2_velha = q33_2.
compute q33_3_velha = q33_3.
compute q33_4_velha = q33_4.
compute q33_99_velha = q33_99.



DO IF (q32= 0).
RECODE q33_1 (ELSE=SYSMIS).
RECODE q33_2 (ELSE=SYSMIS).
RECODE q33_3 (ELSE=SYSMIS).
RECODE q33_4 (ELSE=SYSMIS).
RECODE q33_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q34*******************************

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
compute q34_99_velha = q34_99.
compute q34_0_velha = q34_0.
execute. 



DO IF (q34_0= 1).
RECODE q34_1 (ELSE=SYSMIS).
RECODE q34_2 (ELSE=SYSMIS).
RECODE q34_3 (ELSE=SYSMIS).
RECODE q34_4 (ELSE=SYSMIS).
RECODE q34_5 (ELSE=SYSMIS).
RECODE q34_6 (ELSE=SYSMIS).
RECODE q34_7  (ELSE=SYSMIS).
RECODE q34_8  (ELSE=SYSMIS).
RECODE q34_99 (ELSE=SYSMIS).
END IF.
EXECUTE.







VARIABLE LABELS
q7_1_velha 'q7_1_v10662_1_1 - Secretaria da Assist�ncia Social ou cong�nere_Centro de Conviv�ncia compartilha im�vel com'
q7_2_velha 'q7_2_v10662_2_2 - Outra unidade administrativa (Sede de Prefeitura, Administra��o Regional, Sub-Prefeitura, etc.)_Centro de Conviv�ncia compartilha im�vel com'
q7_3_velha 'q7_3_v10662_3_3 - Conselho Municipal de Assist�ncia Social_Centro de Conviv�ncia compartilha im�vel com'
q7_4_velha 'q7_4_v10662_4_4 - Conselho Tutelar_Centro de Conviv�ncia compartilha im�vel com'
q7_5_velha 'q7_5_v10662_5_5 - CRAS - Centro de Refer�ncia da Assist�ncia Social_Centro de Conviv�ncia compartilha im�vel com'
q7_6_velha 'q7_6_v10662_6_6 - CREAS � Centro de Refer�ncia Especializado de Assist�ncia Social_Centro de Conviv�ncia compartilha im�vel com'
q7_7_velha 'q7_7_v10662_7_7 - Unidades de Acolhimento_Centro de Conviv�ncia compartilha im�vel com'
q7_8_velha 'q7_8_v10662_8_8 - Centro-dia e similares_Centro de Conviv�ncia compartilha im�vel com'
q7_9_velha 'q7_9_v10662_9_9 - Centro POP - Centro de Refer�ncia Especializado � Popula��o em Situa��o de Rua_Centro de Conviv�ncia compartilha im�vel com'
q7_10_velha 'q7_10_v10662_10_10 - Unidades que executam Servi�o Especializado em Abordagem Social_Centro de Conviv�ncia compartilha im�vel com'
q7_11_velha 'q7_11_v10662_11_11 - Posto de Cadastramento/Cadastro �nico/Programa Bolsa Fam�lia_Centro de Conviv�ncia compartilha im�vel com'
q7_12_velha 'q7_12_v10662_12_12 - Institui��es de Ensino (Escola, Centro de Educa��o Infantil, creches, entre outras)_Centro de Conviv�ncia compartilha im�vel com'
q7_13_velha 'q7_13_v10662_13_13 - Unidade de Sa�de_Centro de Conviv�ncia compartilha im�vel com'
q7_14_velha 'q7_14_v10662_14_14 - Insitui��es religiosas (Igreja, Templo, Centro Esp�rita, entre outros)_Centro de Conviv�ncia compartilha im�vel com'
q7_15_velha 'q7_15_v10662_15_15 - Associa��o Comunit�ria_Centro de Conviv�ncia compartilha im�vel com'
q7_16_velha 'q7_16_v10662_16_16 - Institui��es esportivas/desportivas (Clubes, Associa��es Atl�ticas, entre outros)_Centro de Conviv�ncia compartilha im�vel com'
q7_17_velha 'q7_17_v10662_17_17 - Organiza��o da Sociedade Civil (OSC)/Organiza��o sem fins lucrativos (ONG)_Centro de Conviv�ncia compartilha im�vel com'
q7_99_velha 'q7_99_v10662_99_99 - Outros_Centro de Conviv�ncia compartilha im�vel com'
q8_0_velha 'q8_0_v14367_0_0 - N�o_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_1_velha 'q8_1_v14367_1_1 - Sim, educa��o (escola, creche, refor�o escolar, alfabetiza��o de adultos, entre outros)_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_2_velha 'q8_2_v14367_2_2 - Sim, sa�de (posto de sa�de, terapia ocupacional, cl�nica psicol�gica, entre outros)_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_3_velha 'q8_3_v14367_3_3 - Sim, esporte (pol�ticas espec�ficas do esporte como �Segundo Tempo�, ou atividades f�sicas como futebol, hidrogin�stica, entre outros)_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_4_velha 'q8_4_v14367_4_4 - Sim, cultura (pol�ticas espec�ficas de cultura como �Ponto de Cultura�, entre outras)_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_5_velha 'q8_5_v14367_5_5 - Sim, habita��o_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_6_velha 'q8_6_v14367_6_6 - Sim, trabalho e inclus�o produtiva (cursos profissionalizantes, qualifica��o profissional, �Jovem Aprendiz�)_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_7_velha 'q8_7_v14367_7_7 - Sim, inclus�o digital_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_8_velha 'q8_8_v14367_8_8 - Sim, seguran�a alimentar e nutricional (restaurantes comunit�rios, bancos de alimentos, entre outros)_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_9_velha 'q8_9_v14367_9_9 - Sim, justi�a (orienta��o jur�dica, entre outros)_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q8_99_velha 'q8_99_v14367_99_99 - Sim, outra_S�o prestados servi�os/atividades de outras pol�ticas p�blicas'
q9_1_velha 'q9_1_v12603_1_1 - Uso apenas da sede _Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_2_velha 'q9_2_v12603_2_2 - Em outras unidades/equipamentos p�blicos da Assist�ncia Social_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_3_velha 'q9_3_v12603_3_3 - Em espa�os de entidades ou Organiza��es da Sociedade Civil parceiras com a Assist�ncia Social_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_4_velha 'q9_4_v12603_4_4 - Em espa�os cedidos por organiza��es comunit�rias locais n�o conveniadas com a Assist�ncia Social (Igrejas, Associa��o de Moradores, OSC n�o conveniadas etc)_outros espa�os f�sicos utilizados para a execu��o do servi�o'
q9_5_velha 'q9_5_v12603_5_5 - Em unidades/equipamentos p�blicos da �rea de Educa��o_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_6_velha 'q9_6_v12603_6_6 - Em unidades/equipamentos p�Em unidades/equipamentos p�blicos da �rea de Esporte (gin�sios ou quadras esportivas, campos de futebol, entre outros)_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_7_velha 'q9_7_v12603_7_7 - Em unidades/equipamentos da �rea de Cultura (museus, bibliotecas, centros culturais, entre outros)_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_8_velha 'q9_8_v12603_8_8 - Em unidades/equipamentos p�blicos da �rea de Sa�de_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_9_velha 'q9_9_v12603_9_9 - Em unidades/equipamentos p�blicos de outras pol�ticas p�blicas_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_10_velha 'q9_10_v12603_10_10 - Em espa�os p�blicos como em pra�as, parques, beira de rio, praia, terreno da comunidade, etc_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q9_99_velha 'q9_99_v12603_99_99 - Outro_Que outros espa�os f�sicos s�o utilizados  para a execu��o do servi�o'
q12_1_velha 'q12_1_v10703_1_1 - Visitas domiciliares da equipe t�cnica da Unidade � fam�lia das(os) usu�rias(os)_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_2_velha 'q12_2_v10703_2_2 - Encontros de grupos de fam�lias das(os) usu�rias(os)_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_3_velha 'q12_2_v10703_2_2 - Encontros de grupos de fam�lias das(os) usu�rias(os)_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_4_velha 'q12_4_v10703_4_4 - Atividades l�dicas_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_5_velha 'q12_5_v10703_5_5 - Discuss�o de casos com outras(os) profissionais da rede socioassistencial_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_6_velha 'q12_6_v10703_6_6 - Atividades com participa��o da Comunidade_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_7_velha 'q12_7_v10703_7_7 - Planejamento de atividades_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_8_velha 'q12_8_v10703_8_8 - Registro e monitoramento das informa��es do SCFV_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_99_velha 'q12_99_v10703_99_99 - Outras_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q12_0_velha 'q12_0_v10703_0_0 - N�o realiza nenhuma das atividades acima_ atividades promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia:'
q14_velha 'q14_v15351_Com que frequ�ncia, em m�dia, a(o) t�cnico de refer�ncia do CRAS realiza visitas a este Centro de Conviv�ncia?'
q15_1_velha 'q15_1_v12608_1_1 - Participa no planejamento das atividades que ser�o desenvolvidas_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_2_velha 'q15_2_v12608_2_2 - Participa de reuni�es peri�dicas com a equipe de refer�ncia desta unidade_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_3_velha 'q15_3_v12608_3_3 - Supervisiona as(os) orientadoras(es) sociais_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_4_velha 'q15_4_v12608_4_4 - Capacita as(os) orientadoras(es) sociais_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_5_velha 'q15_5_v12608_5_5 - Acompanha periodicamente os grupos_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_6_velha 'q15_6_v12608_6_6 - Verifica a inclus�o e acompanha a trajet�ria de usu�rias(os) encaminhadas(os) pelo CRAS_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_7_velha 'q15_7_v12608_7_7 - Acompanha as(os) usu�rias(os) encaminhadas(os) do SCFV para o CRAS_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_8_velha 'q15_8_v12608_8_8 - Avalia e monitora as atividades realizadas_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_9_velha 'q15_9_v12608_9_9 - Discute casos em conjunto com a equipe do SCFV_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_10_velha 'q15_10_v12608_10_10 - Registra e monitora as informa��es do SCFV por meio do SISC_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_99_velha 'q15_99_v12608_99_99 - Outras_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q15_0_velha 'q15_0_v12608_0_0 - Nenhum dos itens anteriores_ atividades que o CRAS utilizam para acompanhar este Centro de Conviv�ncia'
q16_velha 'q16_v14371_Em rela��o �s vagas de SCFV desta unidades, informe se:'
q17_1_velha 'q17_1_v14372_1_1 - Atrav�s de diagn�stico da equipe t�cnica do CRAS_como � identificada a situa��o priorit�ria de usu�rias(os) do SCFV'
q17_2_velha 'q17_2_v14372_2_2 - Atrav�s de diagn�stico da equipe t�cnica do CREAS_como � identificada a situa��o priorit�ria de usu�rias(os) do SCFV'
q17_3_velha 'q17_3_v14372_3_3 - Atrav�s de diagn�stico da equipe t�cnica do SCFV deste Centro de Conviv�ncia_como � identificada a situa��o priorit�ria de usu�rias(os) do SCFV'
q17_4_velha 'q17_4_v14372_4_4 - Atrav�s de diagn�stico da equipe do �rg�o gestor de Assist�ncia Social_como � identificada a situa��o priorit�ria de usu�rias(os) do SCFV'
q17_5_velha 'q17_5_v14372_5_5 - Atrav�s de diagn�stico de profissionais do Sistema de Garantia de Direitos (Conselho Tutelar, entre outros)_como � identificada a situa��o priorit�ria de usu�rias(os) do SCFV'
q17_99_velha 'q17_99_v14372_99_99 - Outros_como � identificada a situa��o priorit�ria de usu�rias(os) do SCFV'
q17_0_velha 'q17_0_v14372_0_0 - N�o s�o identificadas as situa��es priorit�rias de usu�rias(os) deste Centro de Conviv�ncia_como � identificada a situa��o priorit�ria de usu�rias(os) do SCFV'
q18_1_velha 'q18_1_v10706_1_1 - Sim, por esta unidade_S�o desenvolvidas atividades socioassistenciais com familiares/respons�veis de participantes dos grupos do SCFV'
q18_2_velha 'q18_2_v10706_2_2 - Sim, pela equipe do CRAS de refer�ncia_S�o desenvolvidas atividades socioassistenciais com familiares/respons�veis de participantes dos grupos do SCFV'
q18_3_velha 'q18_3_v10706_3_3 - Sim, pela equipe do �rg�o gestor da Assist�ncia Social_S�o desenvolvidas atividades socioassistenciais com familiares/respons�veis de participantes dos grupos do SCFV'
q18_99_velha 'q18_99_v10706_99_99 - Sim, por outra equipe. Qual?_S�o desenvolvidas atividades socioassistenciais com familiares/respons�veis de participantes dos grupos do SCFV'
q18_0_velha 'q18_0_v10706_0_0 - N�o_S�o desenvolvidas atividades socioassistenciais com familiares/respons�veis de participantes dos grupos do SCFV'
q19_0_velha 'q19_0_v10711_0_0 - N�o atendeu_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_1_velha 'q19_1_v10711_1_1 - Sim, Povos Ind�genas_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_2_velha 'q19_2_v10711_2_2 - Sim, Comunidade Quilombola_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_3_velha 'q19_3_v10711_3_3 - Sim, Comunidade Ribeirinha_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_4_velha 'q19_4_v10711_4_4 - Sim, Povos Ciganos_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_5_velha 'q19_5_v10711_5_5 - Sim, Povos de Matriz Africana_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_6_velha 'q19_6_v10711_6_6 - Sim, Extrativistas_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_7_velha 'q19_7_v10711_7_7 - Sim, Pescadores artesanais_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_8_velha 'q19_8_v10711_8_8 - Sim, Ribeirinhas (fam�lias em calhas de rios)_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_9_velha 'q19_9_v10711_9_9 - Sim, outros Grupos tradicionais e espec�ficos_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_10_velha 'q19_10_v10711_10_10 - Sim, Trabalho Infantil_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_11_velha 'q19_11_v10711_11_11 - Sim, Atingidos por desastre_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_12_velha 'q19_12_v10711_12_12 - Sim, Familiares de presos e egressos do sistema carcer�rio (em situa��o de priva��o de liberdade/encarcerados)_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_13_velha 'q19_13_v10711_13_13 - Sim, Medida Socioeducativa_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_14_velha 'q19_14_v10711_14_14 - Sim, Pessoas em situa��o de rua e/ou sem teto_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_15_velha 'q19_15_v10711_15_15 - Sim, Pessoas imigrantes (internacional) e ou refugiados_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q19_99_velha 'q19_99_v10711_99_16 - Sim, Transexuais/transg�nero/travestis/l�sbicas/gays/bissexuais/intersexuais_unidade atendeu, no SCFV, pessoas de comunidades espec�ficas e/ou povos tradicionais'
q20_0_velha 'q20_0_v14374_0_0 - N�o atendeu (siga para a quest�o 21)_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_1_velha 'q20_1_v14374_1_1 - Sim, crian�as e adolescentes com defici�ncia benefici�rias do Benef�cio de Presta��o Continuada_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_2_velha 'q20_2_v14374_2_2 - Sim, adultas(os) com defici�ncia benefici�rias(os) do Benef�cio de Presta��o Continuada_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_3_velha 'q20_3_v14374_3_3 - Sim, pessoas idosas benefici�rias do Benef�cio de Presta��o Continuada_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_4_velha 'q20_4_v14374_4_4 - Sim, crian�as e adolescentes de fam�lias benefici�rias do Programa Bolsa Fam�lia_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_5_velha 'q20_5_v14374_5_5 - Sim, adultas(os) benefici�rias(os) do Programa Bolsa Fam�lia_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_6_velha 'q20_6_v14374_6_6 - Sim, pessoas idosas benefici�rias do Programa Bolsa Fam�lia_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_7_velha 'q20_7_v14374_7_7 - Sim, pessoas que receberam benef�cios eventuais_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q20_97_velha 'q20_97_v14374_97_97 - N�o h� o registro se as(os) usu�rias(os) desta unidade recebem benef�cios assistenciais (siga para a quest�o 21)_unidade atendeu, no SCFV, pessoas que recebem benef�cios assistenciais'
q29_velha 'q29_v12575_A entidade ou OSC possui Termo de Parceria ou outra forma de contratualiza��o com o poder p�blico municipal para repasse de recursos financeiros, visando � manuten��o do Servi�o de Conviv�ncia e Fortalecimento de V�nculos?'
q30_1_velha 'q30_1_v12622_1_1 - Recursos p�blicos municipais (parcerias, isen��es fiscais, emendas parlamentares)_Quais s�o as formas de financiamento da entidade'
q30_2_velha 'q30_2_v12622_2_2 - Recursos p�blicos estaduais (parcerias, isen��es fiscais, emendas parlamentares)_Quais s�o as formas de financiamento da entidade'
q30_3_velha 'q30_3_v12622_3_3 - Recursos p�blicos federais (parcerias, isen��es fiscais, emendas parlamentares)_Quais s�o as formas de financiamento da entidade'
q30_4_velha 'q30_4_v12622_4_4 - Doa��es (pessoas f�sicas e jur�dicas)_Quais s�o as formas de financiamento da entidade'
q30_5_velha 'q30_5_v12622_5_5 - Mantenedoras e organiza��es de fomento_Quais s�o as formas de financiamento da entidade'
q30_6_velha 'q30_6_v12622_6_6 - Receitas da comercializa��o de produtos e servi�os_Quais s�o as formas de financiamento da entidade'
q30_7_velha 'q30_7_v12622_7_7 - Receitas de eventos, bazares, etc_Quais s�o as formas de financiamento da entidade'
q30_8_velha 'q30_8_v12622_8_8 - Renda patrimonial (alugu�is, investimentos financeiros, poupan�a)_Quais s�o as formas de financiamento da entidade'
q30_99_velha 'q30_99_v12622_99_99 - Outras fontes_Quais s�o as formas de financiamento da entidade'
q31_1_velha 'q31_1_v15355_1_1 - Realiza��o de reuni�es peri�dicas com a participa��o apenas dos educadores/orientadores sociais._ a��es comuns a este Centro de Conviv�ncia:'
q31_2_velha 'q31_2_v15355_2_2 - Realiza��o de reuni�es peri�dicas com a participa��o dos educadores/orientadores sociais e demais profissionais do Centro de Conviv�ncia, incluindo os da dire��o/coordena��o/chefia._ a��es comuns:'
q31_3_velha 'q31_3_v15355_3_3 - Realiza��o de reuni�es peri�dicas com a participa��o dos profissionais do Centro de Conviv�ncia e os usu�rios do SCFV._ a��es comuns a este Centro de Conviv�ncia:'
q31_4_velha 'q31_4_v15355_4_4 - Participa��o da equipe de profissionais do Centro de Conviv�ncia em reuni�es com a rede socioassistencial, como CRAS e CREAS._ a��es comuns a este Centro de Conviv�ncia:'
q31_5_velha 'q31_5_v15355_5_5 - Elabora��o de instrumentais com a descri��o das atividades que ser�o desenvolvidas durante determinado per�odo e os objetivos/metas a serem alcan�ados_ a��es comuns a este Centro de Conviv�ncia:'
q31_6_velha 'q31_6_v15355_6_6 - Participa��o em a��es que visam qualificar/aperfei�oar as atividades que se destinam ao atendimento do p�blico priorit�rio (Resolu��o CNAS n� 1/2013)._ a��es comuns a este Centro de Conviv�ncia:'
q31_7_velha 'q31_7_v15355_7_7 - Realiza��o de estudos de caso sobre o perfil e as viv�ncias dos usu�rios que participam do SCFV, especialmente dos que est�o em situa��o priorit�ria (Resolu��o CNAS n� 1/2013)._ a��es comuns'
q31_8_velha 'q31_8_v15355_8_8 - Realiza��o peri�dica de avalia��o das atividades realizadas junto aos grupos e produ��o de relat�rios t�cnicos com os resultados alcan�ados._ a��es comuns a este Centro de Conviv�ncia:'
q31_99_velha 'q31_99_v15355_99_99 - Outros_ a��es comuns a este Centro de Conviv�ncia:'
q31_0_velha 'q31_0_v15355_0_0 - N�o realiza nenhuma das atividades acima_ a��es comuns a este Centro de Conviv�ncia:'
q33_1_velha 'q33_1_v15360_1_1 - As(os) usu�rias(os) e/ou familiares participam das reuni�es de planejamento desta unidade._Quais mecanismos de participa��o s�o utilizados nesta unidade'
q33_2_velha 'q33_2_v15360_2_2 - As(os) usu�rias(os) contam com representante que participa do planejamento desta unidade._Quais mecanismos de participa��o s�o utilizados nesta unidade'
q33_3_velha 'q33_3_v15360_3_3 - As(Os) usu�rias(os) escolhem os temas a serem trabalhados nas atividades coletivas (oficinas/palestras) da unidade._Quais mecanismos de participa��o s�o utilizados nesta unidade'
q33_4_velha 'q33_4_v15360_4_4 - A equipe t�cnica disponibiliza outros meios para avalia��o da oferta (question�rio de satisfa��o, pesquisa de opini�o, urna de sugest�es)._Quais mecanismos de participa��o s�o utilizados nesta unidade'
q33_99_velha 'q33_99_v15360_99_99 - Outros_Quais mecanismos de participa��o s�o utilizados nesta unidade'
q34_1_velha 'q34_1_v15353_1_1 - Situa��es de isolamento;_proporcionou capacita��o de profissionais em'
q34_2_velha 'q34_2_v15353_2_2 - Trabalho infantil_proporcionou capacita��o de profissionais em'
q34_3_velha 'q34_3_v15353_3_3 - Viol�ncia e/ou neglig�ncia;_proporcionou capacita��o de profissionais em'
q34_4_velha 'q34_4_v15353_4_4 - Abuso e/ou explora��o sexual;_proporcionou capacita��o de profissionais em'
q34_5_velha 'q34_5_v15353_5_5 - Evas�o ou defasagem escolar de crian�as e adolescentes;_proporcionou capacita��o de profissionais em'
q34_6_velha 'q34_6_v15353_6_6 - Situa��o de acolhimento;_proporcionou capacita��o de profissionais em'
q34_7_velha 'q34_7_v15353_7_7 - Medidas socioeducativas_proporcionou capacita��o de profissionais em'
q34_8_velha 'q34_8_v15353_8_8 - Medidas de prote��o do ECA;_proporcionou capacita��o de profissionais em'
q34_9_velha 'q34_9_v15353_9_9 - Situa��o de rua_proporcionou capacita��o de profissionais em'
q34_10_velha 'q34_10_v15353_10_10 - Defici�ncia_proporcionou capacita��o de profissionais em'
q34_99_velha 'q34_99_v15353_99_99 - Outros_proporcionou capacita��o de profissionais em'
q34_0_velha 'q34_0_v15353_0_0 - N�o proporcionou/facilitou a participa��o dos profissionais_proporcionou capacita��o de profissionais em'
.
