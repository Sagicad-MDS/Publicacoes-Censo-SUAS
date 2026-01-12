
*****recodificar
*q2*********************************

compute q2_velha = q2. 
compute q4_1_velha = q4_1. 
compute q4_2_velha = q4_2. 
compute q4_3_velha = q4_3. 
compute q4_0_velha = q4_0. 
compute q4_98_velha = q4_98. 
compute q5_1_velha = q5_1. 
compute q5_2_velha = q5_2. 
compute q5_0_velha = q5_0. 
compute q5_99_velha = q5_99. 
execute. 

DO IF (q2=1).
RECODE q4_1 (ELSE=SYSMIS).
RECODE q4_2 (ELSE=SYSMIS).
RECODE q4_3 (ELSE=SYSMIS).
RECODE q4_0 (ELSE=SYSMIS).
RECODE q4_98 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q2 = 1).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_0 (ELSE=SYSMIS).
RECODE q5_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q6*****************

compute q7_velha = q7. 
execute. 


DO IF (q6=2).
RECODE q7 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q11*****************

compute q12_velha = q12. 
compute q12_98_velha = q12_98. 
execute. 

DO IF (q11=0).
RECODE q12 (ELSE=SYSMIS).
RECODE q12_98 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q17**************

compute q17_1_1_velha = q17_1_1. 
compute q17_1_2_velha = q17_1_2.
compute q17_1_3_velha = q17_1_3.
compute q17_1_4_velha = q17_1_4.
compute q17_1_5_velha = q17_1_5.
compute q17_1_6_velha = q17_1_6.
compute q17_1_7_velha = q17_1_7.
compute q17_1_8_velha = q17_1_8.
compute q17_1_9_velha = q17_1_9.
compute q17_2_1_velha = q17_2_1. 
compute q17_2_2_velha = q17_2_2.
compute q17_2_3_velha = q17_2_3.
compute q17_2_4_velha = q17_2_4.
compute q17_2_5_velha = q17_2_5.
compute q17_2_6_velha = q17_2_6.
compute q17_2_7_velha = q17_2_7.
compute q17_2_8_velha = q17_2_8.
compute q17_2_9_velha = q17_2_9.
execute. 



COMPUTE q17_total=SUM(q17_1_9,q17_2_9).
EXECUTE.


DO IF (q17_total ~= q15).
RECODE q17_1_1 (ELSE=SYSMIS).
RECODE q17_1_2 (ELSE=SYSMIS).
RECODE q17_1_3 (ELSE=SYSMIS).
RECODE q17_1_4 (ELSE=SYSMIS).
RECODE q17_1_5 (ELSE=SYSMIS).
RECODE q17_1_6 (ELSE=SYSMIS).
RECODE q17_1_7 (ELSE=SYSMIS).
RECODE q17_1_8 (ELSE=SYSMIS).
RECODE q17_1_9 (ELSE=SYSMIS).
RECODE q17_2_1 (ELSE=SYSMIS).
RECODE q17_2_2 (ELSE=SYSMIS).
RECODE q17_2_3 (ELSE=SYSMIS).
RECODE q17_2_4 (ELSE=SYSMIS).
RECODE q17_2_5 (ELSE=SYSMIS).
RECODE q17_2_6 (ELSE=SYSMIS).
RECODE q17_2_7 (ELSE=SYSMIS).
RECODE q17_2_8 (ELSE=SYSMIS).
RECODE q17_2_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q18***

compute q18_1_velha = q18_1.
compute q18_2_velha = q18_2.
compute q18_3_velha = q18_3.
execute. 

DO IF (q18_1 > q15).
RECODE q18_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q18_2 > q15).
RECODE q18_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q18_3 > q15).
RECODE q18_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q19***

compute q19_1_velha = q19_1. 
compute q19_2_velha = q19_2.
compute q19_3_velha = q19_3.
compute q19_4_velha = q19_4.
compute q19_5_velha = q19_5.
compute q19_6_velha = q19_6.
compute q19_7_velha = q19_7.
compute q19_8_velha = q19_8. 
compute q19_9_velha = q19_9.
compute q19_10_velha = q19_10.
execute. 


DO IF (q19_10 ~= q15).
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
END IF.
EXECUTE.

*q20***************************

compute q20_1_velha = q20_1. 
compute q20_2_velha = q20_2.
compute q20_3_velha = q20_3.
compute q20_4_velha = q20_4.
compute q20_5_velha = q20_5.
compute q20_6_velha = q20_6.
execute. 


DO IF (q20_1 > q15).
RECODE q20_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20_2 > q15).
RECODE q20_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20_3 > q15).
RECODE q20_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20_4 > q15).
RECODE q20_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20_5 > q15).
RECODE q20_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q20_6 > q15).
RECODE q20_6 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q21***************************

compute q21_1_velha = q21_1. 
compute q21_2_velha = q21_2.
compute q21_3_velha = q21_3.
execute. 


DO IF (q21_1 > q15).
RECODE q21_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q21_2 > q15).
RECODE q21_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q21_3 > q15).
RECODE q21_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q22***************************

compute q22_1_velha = q22_1. 
compute q22_2_velha = q22_2.
compute q22_3_velha = q22_3.
compute q22_4_velha = q22_4.
compute q22_5_velha = q22_5.
execute. 


DO IF (q22_1 > q15).
RECODE q22_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q22_2 > q15).
RECODE q22_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q22_3 > q15).
RECODE q22_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q22_4 > q15).
RECODE q22_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q22_5 > q15).
RECODE q22_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q23***********************************************************

compute q23_velha = q23.
execute. 

DO IF (q23 > q15).
RECODE q23 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q24**********************

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
compute q24_18_velha = q24_18. 
compute q24_19_velha = q24_19. 
compute q24_20_velha = q24_20. 
compute q24_21_velha = q24_21. 
compute q24_22_velha = q24_22. 
compute q24_23_velha = q24_23. 
compute q24_24_velha = q24_24. 
compute q24_25_velha = q24_25. 
compute q24_26_velha = q24_26. 
execute. 


DO IF (q24_26=1).
RECODE q24_1 (ELSE=SYSMIS).
RECODE q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_5 (ELSE=SYSMIS).
RECODE q24_6 (ELSE=SYSMIS).
RECODE q24_7 (ELSE=SYSMIS).
RECODE q24_8 (ELSE=SYSMIS).
RECODE q24_9 (ELSE=SYSMIS).
RECODE q24_10 (ELSE=SYSMIS).
RECODE q24_11 (ELSE=SYSMIS).
RECODE q24_12 (ELSE=SYSMIS).
RECODE q24_13 (ELSE=SYSMIS).
RECODE q24_14 (ELSE=SYSMIS).
RECODE q24_15 (ELSE=SYSMIS).
RECODE q24_16 (ELSE=SYSMIS).
RECODE q24_17 (ELSE=SYSMIS).
RECODE q24_18 (ELSE=SYSMIS).
RECODE q24_19 (ELSE=SYSMIS).
RECODE q24_20 (ELSE=SYSMIS).
RECODE q24_21 (ELSE=SYSMIS).
RECODE q24_22 (ELSE=SYSMIS).
RECODE q24_23 (ELSE=SYSMIS).
RECODE q24_24 (ELSE=SYSMIS).
RECODE q24_25 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q27*********************************

compute q27_1_velha = q27_1. 
compute q27_2_velha = q27_2. 
compute q27_3_velha = q27_3. 
compute q27_99_velha = q27_99. 
compute q27_0_velha = q27_0. 
execute. 



DO IF (q27_0=1).
RECODE q27_1 (ELSE=SYSMIS).
RECODE q27_2 (ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q30*********************************

compute q30_1_velha = q30_1. 
compute q30_2_velha = q30_2. 
compute q30_3_velha = q30_3.
compute q30_4_velha = q30_4. 
compute q30_99_velha = q30_99. 
compute q30_98_velha = q30_98. 
compute q30_0_velha = q30_0. 
compute q31_velha = q31. 
execute. 



DO IF (q30_98 = 1 | q30_0=1).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q30_98 = 1 | q30_0=1).
RECODE q31(ELSE=SYSMIS).
END IF.
EXECUTE.


***q35*********************************

compute q35_1_velha = q35_1. 
compute q35_2_velha = q35_2. 
compute q35_3_velha = q35_3.
compute q35_4_velha = q35_4. 
compute q35_5_velha = q35_5.
compute q35_6_velha = q35_6. 
compute q35_99_velha = q35_99. 
compute q35_0_velha = q35_0. 
execute. 

DO IF (q35_0=1).
RECODE q35_1 (ELSE=SYSMIS).
RECODE q35_2 (ELSE=SYSMIS).
RECODE q35_3 (ELSE=SYSMIS).
RECODE q35_4 (ELSE=SYSMIS).
RECODE q35_5 (ELSE=SYSMIS).
RECODE q35_6 (ELSE=SYSMIS).
RECODE q35_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q36*********************************

compute q36_1_velha = q36_1. 
compute q36_2_velha = q36_2. 
compute q36_3_velha = q36_3.
compute q36_98_velha = q36_98. 
execute. 


DO IF (q36_98=1).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
END IF.
EXECUTE.






 VARIABLE LABELS
q2_velha 'q2_v12693_2. Indique a Natureza da Unidade:'
q4_1_velha 'q4_1_v12695_1_Sim, com o Estado (governo estadual)  - entidade possui convênio/termo de parceria'
q4_2_velha 'q4_2_v12695_2_Sim, com o município no qual esta unidade se localiza  - entidade possui convênio/termo de parceria'
q4_3_velha 'q4_3_v12695_3_Sim, com outros municípios - entidade possui convênio/termo de parceria'
q4_0_velha 'q4_0_v12695_0_Não -  entidade possui convênio/termo de parceria'
q4_98_velha 'q4_98_v12695_98_Não sabe informar  -  entidade possui convênio/termo de parceria'
q5_1_velha 'q5_1_v12696_1_Conselho de Assistência Social -  a entidade possui inscrição/registro'
q5_2_velha 'q5_2_v12696_2_Conselho de Direitos da Criança e Adolescente  -  a entidade possui inscrição/registro'
q5_0_velha 'q5_0_v12696_0_Em nenhum Conselho - a entidade possui inscrição/registro'
q5_99_velha 'q5_99_v12696_99_Outros -  a entidade possui inscrição/registro'
q7_velha 'q7_v12700_7. Em caso de unidades estaduais, esta unidade possui municípios vinculados conforme os parâmetros estabelecidos pela Resolução CIT nº 31/2013?'
q12_velha 'q12_v12713_12. Qual é o valor do subsídio financeiro repassado às famílias, por criança?'
q12_98_velha 'q12_98_v12714_98_Não sabe informar  -  Qual é o valor do subsídio financeiro repassado às famílias, por criança'
q17_1_1_velha 'q17_1_1_v12718_17.1.1. Masculino - 0 a 2 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_2_velha 'q17_1_2_v12719_17.1.2. Masculino - 3 a 5- crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_3_velha 'q17_1_3_v12720_17.1.3. Masculino - 6 a 11 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_4_velha 'q17_1_4_v12721_17.1.4. Masculino - 12 a 13 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_5_velha 'q17_1_5_v12722_17.1.5. Masculino - 14 a 15 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_6_velha 'q17_1_6_v12723_17.1.6. Masculino - 16 a 17 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_7_velha 'q17_1_7_v15813_17.1.7. Masculino - 18 a 21 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_8_velha 'q17_1_8_v15814_17.1.8. Masculino - acima de 21 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_1_9_velha 'q17_1_9_v12724_17.1.9. Masculino - Total - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_1_velha 'q17_2_1_v12725_17.2.1. Feminino - 0 a 2 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_2_velha 'q17_2_2_v12726_17.2.2. Feminino - 3 a 5 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_3_velha 'q17_2_3_v12727_17.2.3. Feminino - 6 a 11 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_4_velha 'q17_2_4_v12728_17.2.4. Feminino - 12 a 13 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_5_velha 'q17_2_5_v12729_17.2.5. Feminino - 14 a 15 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_6_velha 'q17_2_6_v12730_17.2.6. Feminino - 16 a 17 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_7_velha 'q17_2_7_v15815_17.2.7. Feminino - 18 a 21 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_8_velha 'q17_2_8_v15816_17.2.8. Feminino - acima de 21 - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_2_9_velha 'q17_2_9_v12731_17.2.9. Feminino - Total - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q17_total 'Total - crianças/adolescentes que estão acolhidas por meio do Serviço de Família Acolhedora neste momento'
q18_1_velha 'q18_1_v12738_Vieram de outro município do estado  - quantas crianças/adolescentes vieram encaminhadas de outras localidades atualmente'
q18_2_velha 'q18_2_v14602_Vieram de outros estados   - quantas crianças/adolescentes vieram encaminhadas de outras localidades atualmente'
q18_3_velha 'q18_3_v15868_Vieram de outros países (refugiada(o)/imigrante)   - quantas crianças/adolescentes vieram encaminhadas de outras localidades atualmente'
q19_1_velha 'q19_1_v12741_19.1. Qtde de Crianças/Adolescentes – menos de 1 mês'
q19_2_velha 'q19_2_v12742_19.2. Qtd de Crianças/Adolescentes – De 1 a 3 meses'
q19_3_velha 'q19_3_v12743_19.3. Qtd de Crianças/Adolescentes – De 4 a 6 meses'
q19_4_velha 'q19_4_v12744_19.4. Qtd de Crianças/Adolescentes – De 7 a 12 meses'
q19_5_velha 'q19_5_v12745_19.5. Qtd de Crianças/Adolescentes – De 13 a 18 meses'
q19_6_velha 'q19_6_v12746_19.6. Qtd de Crianças/Adolescentes – De 19 a 24 meses'
q19_7_velha 'q19_7_v12747_19.7. Qtd de Crianças/Adolescentes – De 25 a 48 meses'
q19_8_velha 'q19_8_v12748_19.8. Qtd de Crianças/Adolescentes – 49 a 72 meses'
q19_9_velha 'q19_9_v15817_19.9. Qtd de Crianças/Adolescentes – mais de 72 meses (mais de 6 anos)'
q19_10_velha 'q19_10_v12749_19.10. Qtd de Crianças/Adolescentes – Total de Pessoas Acolhidas'
q20_1_velha 'q20_1_v12732_Qtd de Crianças/Adolescentes - Retornaram às suas famílias de naturais/família de origem (pai e/ou mãe)'
q20_2_velha 'q20_2_v14588_Qtd de Crianças/Adolescentes - Retornaram às suas famílias extensas (avós, tias(os) etc.)'
q20_3_velha 'q20_3_v15834_Qtd de Crianças/Adolescentes - Foram encaminhadas a famílias adotivas'
q20_4_velha 'q20_4_v15835_Qtd de Crianças/Adolescentes - Vieram transferidos de outras unidades de acolhimento'
q20_5_velha 'q20_5_v15836_Qtd de Crianças/Adolescentes - Deixaram a Unidade encaminhados para outras unidades de acolhimento'
q20_6_velha 'q20_6_v15837_Qtd de Crianças/Adolescentes - Foram desligados por completarem 18 anos'
q21_1_velha 'q21_1_v15843_Qtd de Crianças/Adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias de naturais/família de origem (pai e/ou mãe)'
q21_2_velha 'q21_2_v15844_Qtd de Crianças/Adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias extensas (avós, tias(os) etc.)'
q21_3_velha 'q21_3_v15845_Qtd de Crianças/Adolescentes - Foram acolhidas novamente APÓS terem sido encaminhadas a famílias adotivas'
q22_1_velha 'q22_1_v15849_Qtd de Crianças/Adolescentes - São filhas(os) de pais privados de liberdade (encarcerados)'
q22_2_velha 'q22_2_v15850_Qtd de Crianças/Adolescentes - São filhas(os) de pais adolescentes'
q22_3_velha 'q22_3_v15851_Qtd de Crianças/Adolescentes - Estão aptas a adoção'
q22_4_velha 'q22_4_v15852_Qtd de Crianças/Adolescentes - Estão ameaçadas de morte'
q22_5_velha 'q22_5_v15931_Qtd de Crianças/Adolescentes - Participam de Programa de Apadrinhamento Afetivo'
q23_velha 'q23_v14603_23. Caso seja um serviço para crianças e adolescentes, quantas famílias de origem são beneficiárias do PBF?'
q24_1_velha 'q24_1_v12753_1_1: Atividades de mobilização, tais como anúncios, panfletos, entre outros - atividades  promovidas sistematicamente'
q24_2_velha 'q24_2_v12753_2_2: Palestras/oficinas - atividades  promovidas sistematicamente'
q24_3_velha 'q24_3_v12753_3_3: Seleção e Preparação das famílias candidatas - atividades  promovidas sistematicamente'
q24_4_velha 'q24_4_v12753_4_4: Capacitação das famílias - atividades  promovidas sistematicamente'
q24_5_velha 'q24_5_v12753_5_5: Identificação da família extensa ou ampliada - atividades  promovidas sistematicamente'
q24_6_velha 'q24_6_v12753_6_6: Estudo diagnóstico das crianças/adolescentes para inclusão no serviço - atividades  promovidas sistematicamente'
q24_7_velha 'q24_7_v12753_7_7: Encaminhamento para retirada de documentos - atividades  promovidas sistematicamente'
q24_8_velha 'q24_8_v12753_8_8: Preparação da criança/adolescente para entrada no serviço - atividades  promovidas sistematicamente'
q24_9_velha 'q24_9_v12753_9_9: Aproximação supervisionada entre a criança/adolescente e família acolhedora - atividades  promovidas sistematicamente'
q24_10_velha 'q24_10_v12753_10_10: Atendimento psicossocial individualizado da criança/adolescente - atividades  promovidas sistematicamente'
q24_11_velha 'q24_11_v12753_11_11: Acompanhamento escolar - atividades  promovidas sistematicamente'
q24_12_velha 'q24_12_v12753_12_12: Acompanhamento na saúde - atividades  promovidas sistematicamente'
q24_13_velha 'q24_13_v12753_13_13: Viabilização de encontro com a família de origem quando autorizado - atividades  promovidas sistematicamente'
q24_14_velha 'q24_14_v12753_14_14: Construção de um plano de acompanhamento da família acolhedora - atividades  promovidas sistematicamente'
q24_15_velha 'q24_15_v12753_15_15: Atendimento psicossocial individualizado da família acolhedora - atividades  promovidas sistematicamente'
q24_16_velha ' q24_16_v12753_16_16: Reuniões em grupo com as famílias acolhedoras - atividades  promovidas sistematicamente'
q24_17_velha 'q24_17_v12753_17_17: Construção de um plano de acompanhamento da família de origem - atividades  promovidas sistematicamente'
q24_18_velha 'q24_18_v12753_18_18: Atendimento psicossocial individualizado da família de origem - atividades  promovidas sistematicamente'
q24_19_velha 'q24_19_v12753_19_19: Reuniões em grupo com as famílias de origem - atividades  promovidas sistematicamente'
q24_20_velha 'q24_20_v12753_20_20: Visitas domiciliares - atividades  promovidas sistematicamente'
q24_21_velha 'q24_21_v12753_21_21: Elaboração de relatórios técnicos - atividades  promovidas sistematicamente'
q24_22_velha 'q24_22_v12753_22_22: Envio de relatório semestral para o Judiciário - atividades  promovidas sistematicamente'
q24_23_velha 'q24_23_v12753_23_23: Estudo de caso pela equipe do serviço - atividades  promovidas sistematicamente'
q24_24_velha 'q24_24_v12753_24_24: Encaminhamento para a rede (socioassistencial ou setorial) - atividades  promovidas sistematicamente'
q24_25_velha 'q24_25_v12753_25_25: Discussão de casos com outros profissionais da rede - atividades  promovidas sistematicamente'
q24_26_velha 'q24_26_v12753_0_0: Não realiza nenhuma das atividades acima - atividades  promovidas sistematicamente'
q27_1_velha 'q27_1_v14601_1_1: Político-Pedagógico (PPP) - A unidade possui os  instrumentais'
q27_2_velha 'q27_2_v14601_2_2: Prontuários de atendimento individualizados das(os) acolhidas(os) A unidade possui os  instrumentais'
q27_3_velha 'q27_3_v14601_3_3: Plano Individual de Atendimento (PIA) de cada pessoa acolhida A unidade possui os  instrumentais'
q27_99_velha 'q27_99_v14601_99_99: Outro A unidade possui os  instrumentais'
q27_0_velha 'q27_0_v14601_0_0: Não possui nenhum dos instrumentais acima mencionados'
q30_1_velha 'q30_1_v15935_1_1: A própria unidade/serviço de acolhimento - Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento'
q30_2_velha 'q30_2_v15935_2_2: O CREAS - Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento'
q30_3_velha 'q30_3_v15935_3_3: O CRAS - Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento'
q30_4_velha 'q30_4_v15935_4_4: Unidades do Sistema de Justiça (Varas, Ministério Público, Defensoria - Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento'
q30_99_velha 'q30_99_v15935_99_99: Outro A unidade possui os  instrumentais - Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento'
q30_98_velha 'q30_98_v15935_98_98: Não sabe informar - Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento'
q30_0_velha 'q30_0_v15935_0_0: Não é realizado acompanhamento'
q31_velha 'q31_v15907_31. Por quanto tempo, em média, a criança/adolescente é acompanhada após seu desligamento?'
q35_1_velha 'q35_1_v15918_1_1: Empreendeu-se esforço para aumentar as medidas de higiene e limpeza  - medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q35_2_velha 'q35_2_v15918_2_2: Foi feita a quarentena de novas pessoas acolhidas - medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q35_3_velha 'q35_3_v15918_3_3: Foram alterados os locais e horários de visitas familiares e pessoas com laços afetivos - medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q35_4_velha 'q35_4_v15918_4_4: Houve agilização da saída de usuárias(os) - medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q35_5_velha 'q35_5_v15918_5_5: Foi facilitado o uso de tecnologias de comunicação (celular, aplicativos de reunião, etc)- medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q35_6_velha 'q35_6_v15918_6_6: Restringiu-se a saída das(os) usuárias(os) - medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q35_99_velha 'q35_99_v15918_99_99: Outros - medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q35_0_velha 'q35_0_v15918_0_0: Nenhuma das anteriores - medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
q36_1_velha 'q36_1_v15920_1_1: Ocorreram novos acolhimentos no mesmo ritmo dos meses anteriores à pandemia'
q36_2_velha 'q36_2_v15920_2_2: O número de acolhimentos aumentou'
q36_3_velha 'q36_3_v15920_3_3: O número de acolhimentos diminuiu'
q36_98_velha 'q36_98_v15920_98_98: Não sabe informar'
.
