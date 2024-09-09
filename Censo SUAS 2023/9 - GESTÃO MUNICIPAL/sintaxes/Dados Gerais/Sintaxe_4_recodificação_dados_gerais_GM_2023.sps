* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO MUNICIPAL - CENSO SUAS 2023
****************************************************************************************************

****q1**********************************************************************************************

COMPUTE q1_velha=q1.
EXECUTE.

DO IF (q1=1 | q1=3  | q1=4 ).
RECODE q2_1 (ELSE=SYSMIS).
RECODE q2_2 (ELSE=SYSMIS).
RECODE q2_3 (ELSE=SYSMIS).
RECODE q2_4 (ELSE=SYSMIS).
RECODE q2_5 (ELSE=SYSMIS).
RECODE q2_6 (ELSE=SYSMIS).
RECODE q2_7 (ELSE=SYSMIS).
RECODE q2_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q9**********************************************************************************************

COMPUTE q9_0_velha=q9_0.
COMPUTE q9_1_velha=q9_1.
COMPUTE q9_2_velha=q9_2.
COMPUTE q9_3_velha=q9_3.
COMPUTE q9_4_velha=q9_4.
COMPUTE q9_99_velha=q9_99.
EXECUTE.

DO IF (q9_0=1).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
RECODE q9_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q10**********************************************************************************************

COMPUTE q10_1_velha=q10_1.
COMPUTE q10_2_velha=q10_2.
COMPUTE q10_3_velha=q10_3.
COMPUTE q10_4_velha=q10_4.
COMPUTE q10_99_velha=q10_99.
COMPUTE q10_5_velha=q10_5.
COMPUTE q10_0_velha=q10_0.
EXECUTE.

DO IF (q10_5=1 | q10_0=1 ).
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

****q15**********************************************************************************************

COMPUTE q15_1_velha=q15_1.
COMPUTE q15_2_velha=q15_2.
COMPUTE q15_3_velha=q15_3.
COMPUTE q15_4_velha=q15_4.
COMPUTE q15_99_velha=q15_99.
COMPUTE q15_0_velha=q15_0.
EXECUTE.

DO IF (q15_0=1 ).
RECODE q15_1 (ELSE=SYSMIS).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_3 (ELSE=SYSMIS).
RECODE q15_4 (ELSE=SYSMIS).
RECODE q15_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q16**********************************************************************************************

COMPUTE q17_1_velha=q17_1.
COMPUTE q17_2_velha=q17_2.
COMPUTE q17_3_velha=q17_3.
COMPUTE q17_4_velha=q17_4.
COMPUTE q17_5_velha=q17_5.
COMPUTE q17_6_velha=q17_6.
COMPUTE q17_7_velha=q17_7.
COMPUTE q17_8_velha=q17_8.
COMPUTE q17_9_velha=q17_9.
COMPUTE q17_10_velha=q17_10.
COMPUTE q17_99_velha=q15_99.
EXECUTE.

DO IF (q16=0 ).
RECODE q17_1 (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3 (ELSE=SYSMIS).
RECODE q17_4 (ELSE=SYSMIS).
RECODE q17_5 (ELSE=SYSMIS).
RECODE q17_6 (ELSE=SYSMIS).
RECODE q17_7 (ELSE=SYSMIS).
RECODE q17_8 (ELSE=SYSMIS).
RECODE q17_9 (ELSE=SYSMIS).
RECODE q17_10 (ELSE=SYSMIS).
RECODE q17_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q18**********************************************************************************************

COMPUTE q19_1_velha=q19_1.
COMPUTE q19_2_velha=q19_2.
COMPUTE q19_3_velha=q19_3.
COMPUTE q19_4_velha=q19_4.
COMPUTE q19_5_velha=q19_5.
COMPUTE q19_99_velha=q19_99.
EXECUTE.

DO IF (q18=0 ).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q21**********************************************************************************************

COMPUTE q22_1_velha=q22_1.
COMPUTE q22_2_velha=q22_2.
COMPUTE q22_3_velha=q22_3.
COMPUTE q22_4_velha=q22_4.
COMPUTE q22_5_velha=q22_5.
COMPUTE q22_6_velha=q22_6.
COMPUTE q22_7_velha=q22_7.
COMPUTE q22_8_velha=q22_8.
COMPUTE q22_9_velha=q22_9.
COMPUTE q22_10_velha=q22_10.
EXECUTE.

DO IF (q21=0 ).
RECODE q22_1 (ELSE=SYSMIS).
RECODE q22_2 (ELSE=SYSMIS).
RECODE q22_3 (ELSE=SYSMIS).
RECODE q22_4 (ELSE=SYSMIS).
RECODE q22_5 (ELSE=SYSMIS).
RECODE q22_6 (ELSE=SYSMIS).
RECODE q22_7 (ELSE=SYSMIS).
RECODE q22_8 (ELSE=SYSMIS).
RECODE q22_9 (ELSE=SYSMIS).
RECODE q22_10 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q23**********************************************************************************************

COMPUTE q24_velha=q24.
COMPUTE q25_velha=q25.
EXECUTE.

DO IF (q23=0 ).
RECODE q24 (ELSE=SYSMIS).
RECODE q25 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q27**********************************************************************************************

COMPUTE q28_velha=q28.
EXECUTE.

DO IF (q27=0 ).
RECODE q28 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q29**********************************************************************************************

COMPUTE q30_velha=q30.
EXECUTE.

DO IF (q29=0 ).
RECODE q30 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q38**********************************************************************************************

COMPUTE q39_1_velha=q39_1.
COMPUTE q39_2_velha=q39_2.
COMPUTE q39_3_velha=q39_3.
COMPUTE q39_4_velha=q39_4.
COMPUTE q39_5_velha=q39_5.
COMPUTE q39_6_velha=q39_6.
COMPUTE q39_7_velha=q39_7.
EXECUTE.


DO IF (q38=0 ).
RECODE q39_1 (ELSE=SYSMIS).
RECODE q39_2 (ELSE=SYSMIS).
RECODE q39_3 (ELSE=SYSMIS).
RECODE q39_4 (ELSE=SYSMIS).
RECODE q39_5 (ELSE=SYSMIS).
RECODE q39_6 (ELSE=SYSMIS).
RECODE q39_7 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q40**********************************************************************************************

COMPUTE q40_1_velha=q40_1.
COMPUTE q40_2_velha=q40_2.
COMPUTE q40_3_velha=q40_3.
COMPUTE q40_4_velha=q40_4.
COMPUTE q40_5_velha=q40_5.
COMPUTE q40_6_velha=q40_6.
COMPUTE q40_99_velha=q40_99.
COMPUTE q40_0_velha=q40_0.
EXECUTE.

DO IF (q40_1=1 | q40_0=1  ).
RECODE q40_2 (ELSE=SYSMIS).
RECODE q40_3 (ELSE=SYSMIS).
RECODE q40_4 (ELSE=SYSMIS).
RECODE q40_5 (ELSE=SYSMIS).
RECODE q40_6 (ELSE=SYSMIS).
RECODE q40_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.




***q41*********************************************************************************************

COMPUTE q41_1_velha=q41_1.
COMPUTE q41_2_velha=q41_2.
COMPUTE q41_3_velha=q41_3.
COMPUTE q41_4_velha=q41_4.
COMPUTE q41_5_velha=q41_5.
COMPUTE q41_6_velha=q41_6.
COMPUTE q41_7_velha=q41_7.
COMPUTE q41_8_velha=q41_8.
COMPUTE q41_0_velha=q41_0.
COMPUTE q42_1_velha=q42_1.
COMPUTE q42_1_98_velha=q42_1_98.
COMPUTE q42_2_velha=q42_2.
COMPUTE q42_2_98_velha=q42_2_98.
COMPUTE q42_3_velha=q42_3.
COMPUTE q42_3_98_velha=q42_3_98.
COMPUTE q43_1_velha=q43_1.
COMPUTE q43_2_velha=q43_2.
COMPUTE q43_3_velha=q43_3.
COMPUTE q43_4_velha=q43_4.
COMPUTE q43_5_velha=q43_5.
COMPUTE q43_6_velha=q43_6.
COMPUTE q43_7_velha=q43_7.
COMPUTE q43_8_velha=q43_8.
COMPUTE q43_9_velha=q43_9.
COMPUTE q43_10_velha=q43_10.
COMPUTE q43_11_velha=q43_11.
COMPUTE q43_12_velha=q43_12.
COMPUTE q43_13_velha=q43_13.
COMPUTE q43_99_velha=q43_99.
EXECUTE.

DO IF (q41_0=1  ).
RECODE q41_1 (ELSE=SYSMIS).
RECODE q41_2 (ELSE=SYSMIS).
RECODE q41_3 (ELSE=SYSMIS).
RECODE q41_4 (ELSE=SYSMIS).
RECODE q41_5 (ELSE=SYSMIS).
RECODE q41_6 (ELSE=SYSMIS).
RECODE q41_7 (ELSE=SYSMIS).
RECODE q41_8 (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q41_2=1  |  q41_3=1  |  q41_0=1 ).
RECODE q42_1 (ELSE=SYSMIS).
RECODE q42_1_98 (ELSE=SYSMIS).
RECODE q42_2 (ELSE=SYSMIS).
RECODE q42_2_98 (ELSE=SYSMIS).
RECODE q42_3 (ELSE=SYSMIS).
RECODE q42_3_98 (ELSE=SYSMIS).
RECODE q43_1 (ELSE=SYSMIS).
RECODE q43_2 (ELSE=SYSMIS).
RECODE q43_3 (ELSE=SYSMIS).
RECODE q43_4 (ELSE=SYSMIS).
RECODE q43_5 (ELSE=SYSMIS).
RECODE q43_6 (ELSE=SYSMIS).
RECODE q43_7 (ELSE=SYSMIS).
RECODE q43_8 (ELSE=SYSMIS).
RECODE q43_9 (ELSE=SYSMIS).
RECODE q43_10 (ELSE=SYSMIS).
RECODE q43_11 (ELSE=SYSMIS).
RECODE q43_12 (ELSE=SYSMIS).
RECODE q43_13 (ELSE=SYSMIS).
RECODE q43_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q42*********************************************************************************************

DO IF (q42_2=0 ).
RECODE q43_1 (ELSE=SYSMIS).
RECODE q43_2 (ELSE=SYSMIS).
RECODE q43_3 (ELSE=SYSMIS).
RECODE q43_4 (ELSE=SYSMIS).
RECODE q43_5 (ELSE=SYSMIS).
RECODE q43_6 (ELSE=SYSMIS).
RECODE q43_7 (ELSE=SYSMIS).
RECODE q43_8 (ELSE=SYSMIS).
RECODE q43_9 (ELSE=SYSMIS).
RECODE q43_10 (ELSE=SYSMIS).
RECODE q43_11 (ELSE=SYSMIS).
RECODE q43_12 (ELSE=SYSMIS).
RECODE q43_13 (ELSE=SYSMIS).
RECODE q43_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q44*********************************************************************************************

COMPUTE q45_1_velha=q45_1.
COMPUTE q45_2_velha=q45_2.
COMPUTE q45_3_velha=q45_3.
COMPUTE q45_4_velha=q45_4.
COMPUTE q45_5_velha=q45_5.
EXECUTE.

DO IF (q44= 0 ).
RECODE q45_1 (ELSE=SYSMIS).
RECODE q45_2 (ELSE=SYSMIS).
RECODE q45_3 (ELSE=SYSMIS).
RECODE q45_4 (ELSE=SYSMIS).
RECODE q45_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

***q46********************************************************************************************

COMPUTE q46_1_velha=q46_1.
COMPUTE q46_2_velha=q46_2.
COMPUTE q46_3_velha=q46_3.
COMPUTE q46_4_velha=q46_4.
COMPUTE q46_5_velha=q46_5.
COMPUTE q46_6_velha=q46_6.
COMPUTE q46_7_velha=q46_7.
COMPUTE q46_8_velha=q46_8.
COMPUTE q46_9_velha=q46_9.
COMPUTE q46_0_velha=q46_0.
COMPUTE q46_10_velha=q46_10.
EXECUTE.

DO IF (q46_0=1 ).
RECODE q46_1 (ELSE=SYSMIS).
RECODE q46_2 (ELSE=SYSMIS).
RECODE q46_3 (ELSE=SYSMIS).
RECODE q46_4 (ELSE=SYSMIS).
RECODE q46_5 (ELSE=SYSMIS).
RECODE q46_6 (ELSE=SYSMIS).
RECODE q46_7 (ELSE=SYSMIS).
RECODE q46_8 (ELSE=SYSMIS).
RECODE q46_9 (ELSE=SYSMIS).
RECODE q46_10 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q47********************************************************************************************

COMPUTE q47_0_velha=q47_0.
COMPUTE q47_1_velha=q47_1.
COMPUTE q47_2_velha=q47_2.
COMPUTE q47_3_velha=q47_3.
COMPUTE q47_4_velha=q47_4.
COMPUTE q47_5_velha=q47_5.
COMPUTE q47_6_velha=q47_6.
COMPUTE q47_7_velha=q47_7.
COMPUTE q47_8_velha=q47_8.
COMPUTE q47_9_velha=q47_9.
COMPUTE q47_0_velha=q47_0.
COMPUTE q47_10_velha=q47_10.
COMPUTE q47_11_velha=q47_11.
COMPUTE q47_12_velha=q47_12.
EXECUTE.

DO IF (q47_0=1 ).
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
RECODE q47_12 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q48********************************************************************************************

COMPUTE q49_velha=q49.
COMPUTE q50_velha=q50.
EXECUTE.

DO IF (q48=0 ).
RECODE q49 (ELSE=SYSMIS).
RECODE q50 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q51********************************************************************************************

COMPUTE q52_velha=q52.
EXECUTE.

DO IF (q51=0 ).
RECODE q52 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q53********************************************************************************************

COMPUTE q54_velha=q54.
COMPUTE q55_98_velha=q55_98.
COMPUTE q55_1_velha=q55_1.
COMPUTE q55_2_velha=q55_2.
COMPUTE q55_3_velha=q55_3.
COMPUTE q55_4_velha=q55_4.
COMPUTE q55_5_velha=q55_5.
COMPUTE q55_6_velha=q55_6.
COMPUTE q55_99_velha=q55_99.
EXECUTE.

DO IF (q53=0 ).
RECODE q54 (ELSE=SYSMIS).
RECODE q55_98 (ELSE=SYSMIS).
RECODE q55_1 (ELSE=SYSMIS).
RECODE q55_2 (ELSE=SYSMIS).
RECODE q55_3 (ELSE=SYSMIS).
RECODE q55_4 (ELSE=SYSMIS).
RECODE q55_5 (ELSE=SYSMIS).
RECODE q55_6 (ELSE=SYSMIS).
RECODE q55_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

***q55********************************************************************************************

DO IF (q55_98=1 ).
RECODE q55_1 (ELSE=SYSMIS).
RECODE q55_2 (ELSE=SYSMIS).
RECODE q55_3 (ELSE=SYSMIS).
RECODE q55_4 (ELSE=SYSMIS).
RECODE q55_5 (ELSE=SYSMIS).
RECODE q55_6 (ELSE=SYSMIS).
RECODE q55_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

***q56********************************************************************************************

COMPUTE q56_0_velha=q56_0.
COMPUTE q56_1_velha=q56_1.
COMPUTE q56_2_velha=q56_2.
COMPUTE q56_3_velha=q56_3.
COMPUTE q56_4_velha=q56_4.
COMPUTE q56_5_velha=q56_5.
COMPUTE q56_6_velha=q56_6.
COMPUTE q56_7_velha=q56_7.
COMPUTE q56_8_velha=q56_8.
COMPUTE q56_9_velha=q56_9.
COMPUTE q56_99_velha=q56_99.
EXECUTE.


DO IF (q56_0=1 ).
RECODE q56_1 (ELSE=SYSMIS).
RECODE q56_2 (ELSE=SYSMIS).
RECODE q56_3 (ELSE=SYSMIS).
RECODE q56_4 (ELSE=SYSMIS).
RECODE q56_5 (ELSE=SYSMIS).
RECODE q56_6 (ELSE=SYSMIS).
RECODE q56_7 (ELSE=SYSMIS).
RECODE q56_8 (ELSE=SYSMIS).
RECODE q56_9 (ELSE=SYSMIS).
RECODE q56_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q58********************************************************************************************

COMPUTE q58_1_velha=q58_1.
COMPUTE q58_2_velha=q58_2.
COMPUTE q58_3_velha=q58_3.
COMPUTE q58_4_velha=q58_4.
COMPUTE q58_99_velha=q58_99.
COMPUTE q58_0_velha=q58_0.
EXECUTE.

DO IF (q58_0=1 ).
RECODE q58_1 (ELSE=SYSMIS).
RECODE q58_2 (ELSE=SYSMIS).
RECODE q58_3 (ELSE=SYSMIS).
RECODE q58_4 (ELSE=SYSMIS).
RECODE q58_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



***q59********************************************************************************************

COMPUTE q59_1_velha=q59_1.
COMPUTE q59_2_velha=q59_2.
COMPUTE q59_3_velha=q59_3.
COMPUTE q59_4_velha=q59_4.
COMPUTE q59_5_velha=q59_5.
COMPUTE q59_6_velha=q59_6.
COMPUTE q59_7_velha=q59_7.
COMPUTE q59_8_velha=q59_8.
COMPUTE q59_9_velha=q59_9.
COMPUTE q59_99_velha=q59_99.
COMPUTE q59_0_velha=q59_0.
EXECUTE.

DO IF (q59_0=1 ).
RECODE q59_1 (ELSE=SYSMIS).
RECODE q59_2 (ELSE=SYSMIS).
RECODE q59_3 (ELSE=SYSMIS).
RECODE q59_4 (ELSE=SYSMIS).
RECODE q59_5 (ELSE=SYSMIS).
RECODE q59_6 (ELSE=SYSMIS).
RECODE q59_7 (ELSE=SYSMIS).
RECODE q59_8 (ELSE=SYSMIS).
RECODE q59_9 (ELSE=SYSMIS).
RECODE q59_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


***q60********************************************************************************************

COMPUTE q60_1_velha=q60_1.
COMPUTE q60_1_1_velha=q60_1_1.
COMPUTE q60_2_velha=q60_2.
COMPUTE q60_2_1_velha=q60_2_1.
COMPUTE q60_3_velha=q60_3.
COMPUTE q60_3_1_velha=q60_3_1.
COMPUTE q60_4_velha=q60_4.
COMPUTE q60_4_1_velha=q60_4_1.
EXECUTE.

DO IF (q60_1=0 ).
RECODE q60_1_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q60_2=0 ).
RECODE q60_2_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q60_3=0 ).
RECODE q60_3_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q60_4=0 ).
RECODE q60_4_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.



***q63********************************************************************************************

COMPUTE q64_1_velha=q64_1.
COMPUTE q64_1_98_velha=q64_1_98.
COMPUTE q64_2_velha=q64_2.
COMPUTE q64_2_98_velha=q64_2_98.
EXECUTE.

DO IF (q63=0 ).
RECODE q64_1 (ELSE=SYSMIS).
RECODE q64_1_98 (ELSE=SYSMIS).
RECODE q64_2 (ELSE=SYSMIS).
RECODE q64_2_98 (ELSE=SYSMIS).
END IF. 
EXECUTE.



VARIABLE LABELS
q1_velha 'q1_De acordo com a estrutura administrativa do município, o órgão gestor da assistência social caracteriza-se como'
q9_0_velha'q9_0_Não acompanha_  acompanha as discussões e decisões da CIB'
q9_1_velha'q9_1_É membro da CIB_  acompanha as discussões e decisões da CIB'
q9_2_velha'q9_2_Participa como convidado das reuniões_  acompanha as discussões e decisões da CIB'
q9_3_velha'q9_3_Recebe boletins informativos_  acompanha as discussões e decisões da CIB'
q9_4_velha'q9_4_Solicita à Secretaria Técnica da CIB o envio de informações sobre as reuniões_  acompanha as discussões e decisões da CIB'
q9_99_velha'q9_99_Outros_  acompanha as discussões e decisões da CIB'
q10_1_velha'q10_1_Participa das reuniões_  acompanha as discussões e decisões do Coegemas ou congênere'
q10_2_velha'q10_2_Recebe boletins informativos_  acompanha as discussões e decisões do Coegemas ou congênere'
q10_3_velha'q10_3_Solicita à diretoria o envio de informações sobre as reuniões_  acompanha as discussões e decisões do Coegemas ou congênere'
q10_4_velha'q10_4_Participa de algum grupo de discussão_  acompanha as discussões e decisões do Coegemas ou congênere'
q10_99_velha'q10_99_Outros_  acompanha as discussões e decisões do Coegemas ou congênere'
q10_5_velha'q10_5_O município faz parte, mas não acompanha_  acompanha as discussões e decisões do Coegemas ou congênere'
q10_0_velha'q10_0_O município não faz parte do COEGEMAS_  acompanha as discussões e decisões do Coegemas ou congênere'
q12_velha'q12_Caso sim, quantas pessoas?'
q13_velha'q13_Este quantitativo considera:'
q14_velha'q14_Como foi realizado este levantamento ou pesquisa?'
q15_1_velha'q15_1_Realiza visitas técnicas à rede socioassistencial_  O órgão gestor realiza as seguintes atividades de monitoramento'
q15_2_velha'q15_2_Realiza a gestão/validação das informações prestadas sobre as unidades, como o preenchimento do RMA, Censo SUAS e demais instrumentais nacionais, estaduais ou municipais_  O órgão gestor realiza'
q15_3_velha'q15_3_Possui instrumentos de coleta de dados próprios para levantamento de informações junto aos serviços_  O órgão gestor realiza as seguintes atividades de monitoramento'
q15_4_velha'q15_4_Produção de Indicadores próprios para aferição volume e qualidade dos serviços socioassistenciais_  O órgão gestor realiza as seguintes atividades de monitoramento'
q15_99_velha'q15_99_Outros_  O órgão gestor realiza as seguintes atividades de monitoramento'
q15_0_velha'q15_0_Não realiza atividades de monitoramento da qualidade dos serviços_  O órgão gestor realiza as seguintes atividades de monitoramento'
q17_1_velha'q17_1_Elaborar e armazenar Prontuário Eletrônico dos usuários dos Serviços Socioassistenciais_  O(s) sistema(s) utilizado(s) permite(m):'
q17_2_velha'q17_2_Registrar execução física/atendimentos/ concessão de benefícios_  O(s) sistema(s) utilizado(s) permite(m):'
q17_3_velha'q17_3_Gerenciar a execução financeira e orçamentária_  O(s) sistema(s) utilizado(s) permite(m):'
q17_4_velha'q17_4_Registrar unidades da rede socioassistencial pública_  O(s) sistema(s) utilizado(s) permite(m):'
q17_5_velha'q17_5_Registrar unidades da rede socioassistencial privada_  O(s) sistema(s) utilizado(s) permite(m):'
q17_6_velha'q17_6_Registrar repasses de recursos para entidades_  O(s) sistema(s) utilizado(s) permite(m):'
q17_7_velha'q17_7_Registrar prestação de contas das entidades_  O(s) sistema(s) utilizado(s) permite(m):'
q17_8_velha'q17_8_Gerenciar/visualizar a alocação de RH_  O(s) sistema(s) utilizado(s) permite(m):'
q17_9_velha'q17_9_Registrar os encaminhamentos e fluxo entre unidades diferentes da rede_  O(s) sistema(s) utilizado(s) permite(m):'
q17_10_velha'q17_10_Permite(m) interoperabilidade com sistemas de governo_  O(s) sistema(s) utilizado(s) permite(m):'
q17_99_velha'q17_99_Outros_  O(s) sistema(s) utilizado(s) permite(m):'
q19_1_velha'q19_1_Oferta de serviços de acolhimento_  Caso participe do consorcio'
q19_2_velha'q19_2_Oferta de serviços socioassistenciais exceto acolhimento_  Caso participe do consorcio'
q19_3_velha'q19_3_Apoio técnico/Capacitação_  Caso participe do consorcio'
q19_4_velha'q19_4_Serviços administrativos_  Caso participe do consorcio'
q19_5_velha'q19_5_Compras e logística_  Caso participe do consorcio'
q19_99_velha'q19_99_Outros_  Caso participe do consorcio'
q22_1_velha'q22_1_Nas ruas, em atividades de venda de produtos_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_2_velha'q22_2_Nas ruas, em atividade de mendicância_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_3_velha'q22_3_No comércio, em contexto familiar_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_4_velha'q22_4_No comércio, como empregado_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_5_velha'q22_5_Nos serviços, em contexto familiar (oficinas, borracharias, salões de beleza etc)_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_6_velha'q22_6_Nos serviços, como empregado (trabalho doméstico, oficinas, borracharias, salões de beleza etc)_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_7_velha'q22_7_Na indústria, em contexto familiar_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_8_velha'q22_8_Na indústria, como empregado_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_9_velha'q22_9_Na agricultura ou criação de animais, em contexto familiar_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q22_10_velha'q22_10_Na agricultura ou criação de animais, como empregado_ Locais ou atividades  com ocorrência de Trabalho Infantil'
q24_velha'q24_O Conselho Tutelar é vinculado administrativamente ao Órgão Gestor da Assistência Social?'
q25_velha'q24_O Conselho Tutelar é vinculado administrativamente ao Órgão Gestor da Assistência Social?'
q28_velha'q28_O Programa próprio de transferência de renda do município está sob gestão do órgão gestor da assistência social?'
q30_velha'q30_Qual o ano de elaboração (ou atualização) do diagnóstico'
q39_1_velha'q39_1_Na própria sede do órgão gestor, com equipe exclusiva para o Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas_  o Serviço é ofertado?'
q39_2_velha'q39_2_Na própria sede do órgão gestor, com equipe que realiza outras atividades_  o Serviço é ofertado?'
q39_3_velha'q39_3_No CRAS, com equipe exclusiva para o Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas_  o Serviço é ofertado?'
q39_4_velha'q39_4_No CRAS, com a equipe técnica do Serviço de Proteção e Atendimento Integral à Família (PAIF)_  o Serviço é ofertado?'
q39_5_velha'q39_5_No CRAS, com equipe que realiza outras atividades_  o Serviço é ofertado?'
q39_6_velha'q39_6_Em outra Unidade Pública_  o Serviço é ofertado?'
q39_7_velha'q39_7_Em Entidade ou Organização da Sociedade Civil_  o Serviço é ofertado?'
q40_1_velha'q40_1_Atende no CREAS do município_  questões de violações de direitos'
q40_2_velha'q40_2_Encaminha para o CREAS de outro município_  questões de violações de direitos'
q40_3_velha'q40_3_Encaminha para o CREAS Regional ao qual está vinculado_  questões de violações de direitos'
q40_4_velha'q40_4_Atende no CRAS_  questões de violações de direitos'
q40_5_velha'q40_5_Atende em entidade ou organização da sociedade civil no município_  questões de violações de direitos'
q40_6_velha'q40_6_É atendido pela equipe de referência/técnica do órgão gestor (equipes específicas para o atendimento - não são equipes de gestão)_  questões de violações de direitos'
q40_99_velha'q40_99_Outro_  questões de violações de direitos'
q40_0_velha'q40_0_Não é atendido pela Assistência Social_  questões de violações de direitos'
q41_1_velha'q41_1_Atende no CREAS do município_  município atende adolescentes em MSE'
q41_2_velha'q41_2_Encaminha para o CREAS de outro município_  município atende adolescentes em MSE'
q41_3_velha'q41_3_Encaminha para o CREAS Regional ao qual está vinculado_  município atende adolescentes em MSE'
q41_4_velha'q41_4_Executa no CRAS_  município atende adolescentes em MSE'
q41_5_velha'q41_5_Executa em entidade no município_  município atende adolescentes em MSE'
q41_6_velha'q41_6_Executa em outra unidade pública da Assistência Social (exceto CREAS) de acompanhamento de adolescentes em cumprimento MSE_  município atende adolescentes em MSE'
q41_7_velha'q41_7_É atendido por unidades de outras política pública do município (saúde, educação, direitos humanos, etc.)_  município atende adolescentes em MSE'
q41_8_velha'q41_8_É atendido pela equipe de referência/técnica do órgão gestor (equipes específicas para o atendimento - não são equipes de gestão)_  município atende adolescentes em MSE'
q41_0_velha'q41_0_Não atende_  município atende adolescentes em MSE'
q42_1_velha'q42_1_Total de adolescentes em cumprimento de LA'
q42_1_98_velha'q42_1_98_NÃO SABE - Total de adolescentes em cumprimento de LA.'
q42_2_velha'q42_2_Total de adolescentes em cumprimento de PSC'
q42_2_98_velha'q42_2_98_NÃO SABE - Total de adolescentes em cumprimento de PSC.'
q42_3_velha'q42_3_Total de adolescentes em cumprimento de Medidas Socioeducativas (LA e/ou PSC)'
q42_3_98_velha'q42_3_98_NÃO SABE - Total de adolescentes em cumprimento de Medidas Socioeducativas (LA e/ou PSC)'
q43_1_velha'q43_1_CRAS_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_2_velha'q43_2_CREAS_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_3_velha'q43_3_Biblioteca_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_4_velha'q43_4_Hospitais_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_5_velha'q43_5_Unidades de Acolhimento para Idosas(os) (asilos)_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_6_velha'q43_6_Defensoria Pública/ Fórum_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_7_velha'q43_7_Projetos de Cultura_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_8_velha'q43_8_Projetos de Esporte_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_9_velha'q43_9_Igrejas_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_10_velha'q43_10_Conselho Tutelar_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_11_velha'q43_11_Sistema S (SENAI, SESC, SESI, etc.)_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_12_velha'q43_12_Atividades da Secretaria de Obras ou similares_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_13_velha'q43_13_Polícia/ Corpo de Bombeiros_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q43_99_velha'q43_99_Outros_  principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
q45_1_velha'q45_1_No(s) CREAS -  Em qual(is) unidade(s) o serviço é ofertado?'
q45_2_velha'q45_2_No(s) Centro POP -  Em qual(is) unidade(s) o serviço é ofertado?'
q45_3_velha'q45_3_Na sede/órgão gestor do município -  Em qual(is) unidade(s) o serviço é ofertado?'
q45_4_velha'q45_4_Em outra unidade pública -  Em qual(is) unidade(s) o serviço é ofertado?'
q45_5_velha'q45_5_Em entidade ou Organização da Sociedade Civil -  Em qual(is) unidade(s) o serviço é ofertado?'
q46_1_velha'q46_1_Controla o acesso às vagas (controle da porta de entrada), sendo responsável por indicar a Unidade de Acolhimento que receberá a criança/adolescente_  atividades de gestão e monitoramento'
q46_2_velha'q46_2_Acompanha/monitora o fluxo de entradas e saídas de crianças e adolescentes nas Unidades_  atividades de gestão e monitoramento'
q46_3_velha'q46_3_Centraliza as informações das medidas de acolhimento determinadas pelo poder Judiciário_  atividades de gestão e monitoramento'
q46_4_velha'q46_4_Centraliza as informações dos acolhimentos emergenciais realizados pelo Conselho Tutelar_  atividades de gestão e monitoramento'
q46_5_velha'q46_5_Promove a articulação dos serviços de acolhimento com os demais serviços da rede socioassistencial_  atividades de gestão e monitoramento'
q46_6_velha'q46_6_Promove a articulação dos serviços de acolhimento com as demais políticas públicas e órgãos de defesa de direitos_  atividades de gestão e monitoramento'
q46_7_velha'q46_7_Realiza supervisão e suporte técnico aos serviços de acolhimento_  atividades de gestão e monitoramento'
q46_8_velha'q46_8_Monitora o tempo de permanência das crianças e adolescentes nos serviços de acolhimento_  atividades de gestão e monitoramento'
q46_9_velha'q46_9_Fiscaliza a qualidade dos serviços_  atividades de gestão e monitoramento'
q46_0_velha'q46_0_Não realiza nenhuma das atividades listadas acima_  atividades de gestão e monitoramento'
q46_10_velha'q46_10_O município não possui Serviço de Acolhimento para Crianças e Adolescentes_  atividades de gestão e monitoramento'
q47_0_velha'q47_0_Não realiza_  ações de enfrentamento do Trabalho Infantil'
q47_1_velha'q47_1_Realiza campanhas, mobilização e sensibilização_  ações de enfrentamento do Trabalho Infantil'
q47_2_velha'q47_2_Realiza atividades de abordagem social em espaços_  ações de enfrentamento do Trabalho Infantil'
q47_3_velha'q47_3_Realiza busca ativa de famílias com situação de trabalho infantil para inclusão no CadÚnico_  ações de enfrentamento do Trabalho Infantil'
q47_4_velha'q47_4_Encaminha/inclui crianças e adolescentes em trabalho infantil para os Serviços de Convivência_  ações de enfrentamento do Trabalho Infantil'
q47_5_velha'q47_5_Encaminha/inclui famílias com situação de trabalho infantil para o PAIF/CRAS_  ações de enfrentamento do Trabalho Infantil'
q47_6_velha'q47_6_Encaminha/inclui famílias com situação de trabalho infantil para o PAEFI/CREAS_  ações de enfrentamento do Trabalho Infantil'
q47_7_velha'q47_7_Encaminha famílias e indivíduos para a aplicação de medidas protetivas à família_  ações de enfrentamento do Trabalho Infantil'
q47_8_velha'q47_8_Encaminha famílias com situação de trabalho infantil para programas e projetos de capacitação profissional_  ações de enfrentamento do Trabalho Infantil'
q47_9_velha'q47_9_Encaminha famílias com situação de trabalho infantil para programas e projetos de inclusão produtiva e/ou geração de trabalho e renda_  ações de enfrentamento do Trabalho Infantil'
q47_10_velha'q47_10_Encaminha famílias com situação de trabalho infantil para atendimento em outras políticas públicas_  ações de enfrentamento do Trabalho Infantil'
q47_11_velha'q47_11_Encaminha famílias com situação de trabalho infantil para os órgãos de defesa e responsabilização_  ações de enfrentamento do Trabalho Infantil'
q47_12_velha'q47_12_Elabora estudos e diagnósticos sobre o trabalho infantil no município_  ações de enfrentamento do Trabalho Infantil'
q49_velha'q49_Atualmente, quantas crianças e/ou adolescente estão acolhidos em famílias guardiãs na família extensa inseridas no Programa?'
q50_velha'q50_Atualmente, quantas famílias recebem recursos pelo Programa?'
q52_velha'q52_Caso sim, indique a quantidade de pessoas desabrigadas que foram acolhidas em alojamentos provisórios nos últimos 12 (doze) meses:'
q54_velha'q54_Caso sim, para quantos imigrantes/refugiados?'
q55_98_velha'q55_98_Não sabe informar  o número de migrantes/refugiados por nacionalidade.'
q55_1_velha'q55_1_Informe o número de migrantes/refugiados por nacionalidade. Venezuelanos.'
q55_2_velha'q55_2_Informe o número de migrantes/refugiados por nacionalidade. Haitianos.'
q55_3_velha'q55_3_Informe o número de migrantes/refugiados por nacionalidade. Bolivianos.'
q55_4_velha'q55_4_Informe o número de migrantes/refugiados por nacionalidade. Colombianos.'
q55_5_velha'q55_5_Informe o número de migrantes/refugiados por nacionalidade. Argentinos'
q55_6_velha'q55_6_Informe o número de migrantes/refugiados por nacionalidade. Chineses.'
q55_99_velha'q55_99_Informe o número de migrantes/refugiados por nacionalidade. Outros.'
q56_0_velha'q56_0_Não realiza encaminhamentos para o mundo do trabalho_  oportunidades do mundo do trabalho'
q56_1_velha'q56_1_Órgãos de intermediação de mão de obra (Serviço Nacional do Emprego – SINE, entre outros)_  oportunidades do mundo do trabalho'
q56_2_velha'q56_2_Cursos de qualificação profissional_  oportunidades do mundo do trabalho'
q56_3_velha'q56_3_Socioaprendizagem_  oportunidades do mundo do trabalho'
q56_4_velha'q56_4_Cursos técnicos de instituições municipais/estaduais_  oportunidades do mundo do trabalho'
q56_5_velha'q56_5_Cooperativas, Associações e Ações de economia solidária_  oportunidades do mundo do trabalho'
q56_6_velha'q56_6_Acesso a Microcrédito_  oportunidades do mundo do trabalho'
q56_7_velha'q56_7_Micro empreendedorismo individual_  oportunidades do mundo do trabalho'
q56_8_velha'q56_8_Sistema S (SESC, SENAC, SESI, SENAR, etc)_  oportunidades do mundo do trabalho'
q56_9_velha'q56_9_ Organizações de trabalhadores (sindicatos, conselhos etc)_  oportunidades do mundo do trabalho'
q56_99_velha'q56_99_Outros_  oportunidades do mundo do trabalho'
q58_1_velha'q58_1_Sim , ofertada pelo próprio gestor do Cadastro Único_  capacitação sobre o Cadastro Único'
q58_2_velha'q58_2_Sim, por servidores da equipe do Cadastro Único e/ou Assistencia Social_  capacitação sobre o Cadastro Único'
q58_3_velha'q58_3_Sim, por consultores externos_  capacitação sobre o Cadastro Único'
q58_4_velha'q58_4_Sim, por instituições de ensino_  capacitação sobre o Cadastro Único'
q58_99_velha'q58_99_Outros_  capacitação sobre o Cadastro Único'
q58_0_velha'q58_0_Não_  capacitação sobre o Cadastro Único'
q59_1_velha'q59_1_Realizar estudos sobre as condições de vulnerabilidade das famílias com pessoas idosas e com deficiência_  ações BPC'
q59_2_velha'q59_2_Orientar a população usuária sobre seus direitos e procedimentos para acesso ao BPC_  ações BPC'
q59_3_velha'q59_3_Apoiar e acompanhar o processo de concessão do BPC_  ações BPC'
q59_4_velha'q59_4_Distribuir aos CRAS e CREAS do município listas territorializadas das famílias com beneficiárias(os) do BPC_  ações BPC'
q59_5_velha'q59_5_Articular com outros setores a inserção das(os) beneficiárias(os) nas diversas políticas sociais_  ações BPC'
q59_6_velha'q59_6_ Realizar e acompanhar a inserção e atualização das(os) beneficiárias(os) do BPC no Cadastro Único_  ações BPC'
q59_7_velha'q59_7_Articular ações com INSS acerca do requerimento e manutenção do BPC_  ações BPC'
q59_8_velha'q59_8_Realizar e acompanhar a inserção de crianças e adolescentes com deficiência beneficiárias do BPC na escola, em articulação com o Grupo Gestor Local_  ações BPC'
q59_9_velha'q59_9_Acompanhar a inserção de jovens e adultas(os) com deficiência beneficiárias(os) do BPC no mundo do trabalho_  ações BPC'
q59_99_velha'q59_99_Outros_  ações BPC'
q59_0_velha'q59_0_Não realiza_  ações BPC'
q60_1_velha'q60_1_Benefício Eventual por Situação de morte: O Benefício é concedido no município?'
q60_1_1_velha'q60_1_1_Benefício Eventual por Situação de morte: Local onde o Benefício é concedido:'
q60_2_velha'q60_2_Benefício Eventual por Situação de Natalidade:O Benefício é concedido no município?'
q60_2_1_velha'q60_2_1_Benefício Eventual por Situação de Natalidade: Local onde o Benefício é concedido:'
q60_3_velha'q60_3_Benefício Eventual para situação de calamidade pública: O Benefício é concedido no município?'
q60_3_1_velha'q60_3_1_Benefício Eventual para situação de calamidade pública: Local onde o Benefício é concedido:'
q60_4_velha'q60_4_Outros benefícios eventuais para famílias em situação de vulnerabilidade temporária: O Benefício é concedido no município?'
q60_4_1_velha'q60_4_1_Outros benefícios eventuais para famílias em situação de vulnerabilidade temporária: Local onde o Benefício é concedido:'
q64_1_velha'q64_1_Informe o total de profissionais capacitados.'
q64_1_98_velha'q64_1_98_Não sabe _ total de profissionais capacitados.'
q64_2_velha'q64_2_Informe o total de conselheiras (os) capacitadas(os).'
q64_2_98_velha'q64_2_98_Não sabe _ total de conselheiras (os) capacitadas(os).'
.

