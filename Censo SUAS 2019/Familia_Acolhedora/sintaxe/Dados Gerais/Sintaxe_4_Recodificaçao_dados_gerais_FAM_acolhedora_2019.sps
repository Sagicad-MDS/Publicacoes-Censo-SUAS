
*****recodificar
*q2*********************************

compute q2_velha = q2. 
compute q4_1_velha = q4_1. 
compute q4_2_velha = q4_2. 
compute q4_3_velha = q4_3. 
compute q4_0_velha = q4_0. 
compute q4_98_velha = q4_98. 
compute q5_1_velha = q5_1. 
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
END IF.
EXECUTE.

**q6*****************

compute q6_velha = q6. 
compute q7_velha = q7. 
compute q9_1_velha = q9_1. 
compute q9_2_velha = q9_2. 
compute q9_3_velha = q9_3. 
compute q9_4_velha = q9_4. 
compute q10_velha = q10. 
execute. 


DO IF (q6=2).
RECODE q7 (ELSE=SYSMIS).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


****************q7

DO IF (q2=2 & q7=0).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

**q12*****************

compute q12_velha = q12. 
compute q13_velha = q13. 
compute q13_98_velha = q13_98. 
execute. 


DO IF (q12=0).
RECODE q13_98 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q16**************

compute q16_1_1_velha = q16_1_1. 
compute q16_1_2_velha = q16_1_2.
compute q16_1_3_velha = q16_1_3.
compute q16_1_4_velha = q16_1_4.
compute q16_1_5_velha = q16_1_5.
compute q16_1_6_velha = q16_1_6.
compute q16_1_7_velha = q16_1_7.
compute q16_2_1_velha = q16_2_1. 
compute q16_2_2_velha = q16_2_2.
compute q16_2_3_velha = q16_2_3.
compute q16_2_4_velha = q16_2_4.
compute q16_2_5_velha = q16_2_5.
compute q16_2_6_velha = q16_2_6.
compute q16_2_7_velha = q16_2_7.
execute. 



COMPUTE q16_total=SUM(q16_1_7,q16_2_7).
EXECUTE.


DO IF (q16_total ~= q15).
RECODE q16_1_1 (ELSE=SYSMIS).
RECODE q16_1_2 (ELSE=SYSMIS).
RECODE q16_1_3 (ELSE=SYSMIS).
RECODE q16_1_4 (ELSE=SYSMIS).
RECODE q16_1_5 (ELSE=SYSMIS).
RECODE q16_1_6 (ELSE=SYSMIS).
RECODE q16_1_7 (ELSE=SYSMIS).
RECODE q16_2_1 (ELSE=SYSMIS).
RECODE q16_2_2 (ELSE=SYSMIS).
RECODE q16_2_3 (ELSE=SYSMIS).
RECODE q16_2_4 (ELSE=SYSMIS).
RECODE q16_2_5 (ELSE=SYSMIS).
RECODE q16_2_6 (ELSE=SYSMIS).
RECODE q16_2_7 (ELSE=SYSMIS).
END IF.
EXECUTE.

*************q17***


compute q17_1_velha = q17_1. 
compute q17_2_velha = q17_2.
compute q17_3_velha = q17_3.
compute q17_4_velha = q17_4.
compute q17_5_velha = q17_5.
compute q17_6_velha = q17_6.
compute q17_7_velha = q17_7.
compute q17_8_velha = q17_8. 
compute q17_9_velha = q17_9.
execute. 


DO IF (q17_9 ~= q15).
RECODE q17_1 (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3 (ELSE=SYSMIS).
RECODE q17_4 (ELSE=SYSMIS).
RECODE q17_5 (ELSE=SYSMIS).
RECODE q17_6 (ELSE=SYSMIS).
RECODE q17_7 (ELSE=SYSMIS).
RECODE q17_8 (ELSE=SYSMIS).
RECODE q17_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q19***************************

compute q19_1_velha = q19_1. 
compute q19_2_velha = q19_2.
compute q19_3_velha = q19_3.
compute q19_4_velha = q19_4.
execute. 


DO IF (q19_1 > q15).
RECODE q19_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q19_2 > q15).
RECODE q19_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q19_3 > q15).
RECODE q19_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q19_4 > q15).
RECODE q19_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q26**********************

compute q26_1_velha = q26_1. 
compute q26_2_velha = q26_2. 
compute q26_3_velha = q26_3. 
compute q26_4_velha = q26_4. 
compute q26_5_velha = q26_5. 
compute q26_6_velha = q26_6. 
compute q26_7_velha = q26_7. 
compute q26_8_velha = q26_8. 
compute q26_9_velha = q26_9. 
compute q26_10_velha = q26_10. 
compute q26_11_velha = q26_11. 
compute q26_12_velha = q26_12. 
compute q26_13_velha = q26_13. 
compute q26_14_velha = q26_14. 
compute q26_15_velha = q26_15. 
compute q26_16_velha = q26_16. 
compute q26_17_velha = q26_17. 
compute q26_18_velha = q26_18. 
compute q26_19_velha = q26_19. 
compute q26_20_velha = q26_20. 
compute q26_21_velha = q26_21. 
compute q26_22_velha = q26_22. 
compute q26_23_velha = q26_23. 
compute q26_24_velha = q26_24. 
compute q26_25_velha = q26_25. 
compute q26_0_velha = q26_0. 
execute. 


DO IF (q26_0=1).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS).
RECODE q26_6 (ELSE=SYSMIS).
RECODE q26_7 (ELSE=SYSMIS).
RECODE q26_8 (ELSE=SYSMIS).
RECODE q26_9 (ELSE=SYSMIS).
RECODE q26_10 (ELSE=SYSMIS).
RECODE q26_11 (ELSE=SYSMIS).
RECODE q26_12 (ELSE=SYSMIS).
RECODE q26_13 (ELSE=SYSMIS).
RECODE q26_14 (ELSE=SYSMIS).
RECODE q26_15 (ELSE=SYSMIS).
RECODE q26_16 (ELSE=SYSMIS).
RECODE q26_17 (ELSE=SYSMIS).
RECODE q26_18 (ELSE=SYSMIS).
RECODE q26_19 (ELSE=SYSMIS).
RECODE q26_20 (ELSE=SYSMIS).
RECODE q26_21 (ELSE=SYSMIS).
RECODE q26_22 (ELSE=SYSMIS).
RECODE q26_23 (ELSE=SYSMIS).
RECODE q26_24 (ELSE=SYSMIS).
RECODE q26_25 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q28**********************************

compute q28_1_velha = q28_1. 
compute q28_2_velha = q28_2. 
compute q28_3_velha = q28_3. 
compute q28_98_velha = q28_98. 
compute q28_99_velha = q28_99. 
compute q28_0_velha = q28_0. 
compute q29_velha = q29. 
execute. 


DO IF (q28_98 = 1 | q28_0=1).
RECODE q29 (ELSE=SYSMIS).
END IF.
EXECUTE.



 VARIABLE LABELS
q2_velha'q2_v12693_2. Indique a Natureza da Unidade:'
q4_1_velha'q4_1_v12695_1_4. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?1: Sim, com o Estado (governo estadual)'
q4_2_velha'q4_2_v12695_2_4. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?2: Sim, com o município no qual esta unidade se localiza (com a prefeitura na qual a sede da unidade se localiza)'
q4_3_velha'q4_3_v12695_3_4. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?3: Sim, com outros municípios'
q4_0_velha'q4_0_v12695_0_4. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?0: Não'
q4_98_velha'q4_98_v12695_98_4. Esta entidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?98: Não sabe informar'
q5_1_velha'q5_1_v12696_1_5. Assinale o(s) Conselho(s) no(s) qual(is) a entidade possui inscrição/registro:1: Conselho de Assistência Social'
q6_velha'q6_v12698_6. Dados provenientes da gestão estadual ou municipal:'
q7_velha'q7_v12700_7. Em caso de unidades estaduais, esta unidade possui municípios vinculados conforme os parâmetros estabelecidos pela Resolução CIT nº 31/2013?'
q9_1_velha'q9_1_v12705_9.1. Provisão da estrutura física da Unidade (imóvel)'
q9_2_velha'q9_2_v12706_9.2. Provisão de equipamentos e materiais'
q9_3_velha'q9_3_v12707_9.3. Provisão de recursos humanos - equipe de referência'
q9_4_velha'q9_4_v12708_9.4. Provisão de transporte (veículo ou ajuda de custo)'
q10_velha'q10_v12709_10. Este Serviço é regulamentado?'
q12_velha'q12_v12712_12. Existe repasse de subsídio financeiro para as famílias acolhedoras deste serviço?'
q13_velha'q13_v12713_13. Qual é o valor do subsídio financeiro repassado às famílias?'
q13_98_velha'q13_98_v12714_98_13. Qual é o valor do subsídio financeiro repassado às famílias? Não sabe'
q16_1_1_velha'q16_1_1_v12718_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.1.1. Masculino - 0 a 2'
q16_1_2_velha'q16_1_2_v12719_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.1.2. Masculino - 3 a 5'
q16_1_3_velha'q16_1_3_v12720_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.1.3. Masculino - 6 a 11'
q16_1_4_velha'q16_1_4_v12721_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.1.4. Masculino - 12 a 13'
q16_1_5_velha'q16_1_5_v12722_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.1.5. Masculino - 14 a 15'
q16_1_6_velha'q16_1_6_v12723_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.1.6. Masculino - 16 a 17'
q16_1_7_velha'q16_1_7_v12724_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.1.7. Masculino - Total'
q16_2_1_velha'q16_2_1_v12725_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.2.1. Feminino - 0 a 2'
q16_2_2_velha'q16_2_2_v12726_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.2.2. Feminino - 3 a 5'
q16_2_3_velha'q16_2_3_v12727_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.2.3. Feminino - 6 a 11'
q16_2_4_velha'q16_2_4_v12728_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.2.4. Feminino - 12 a 13'
q16_2_5_velha'q16_2_5_v12729_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.2.5. Feminino - 14 a 15'
q16_2_6_velha'q16_2_6_v12730_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.2.6. Feminino - 16 a 17'
q16_2_7_velha'q16_2_7_v12731_16. Informe o sexo e faixa etária das crianças/adolescentes que estão acolhidas na Unidade neste momento:16.2.7. Feminino - Total'
q16_total 'q16_total de crianças/adolescentes que estão acolhidas na Unidade neste momento'
q17_1_velha'q17_1_v12741_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: Menos de 1 Mês'
q17_2_velha'q17_2_v12742_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: De 1 a 3 meses'
q17_3_velha'q17_3_v12743_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: De 4 a 6 meses'
q17_4_velha'q17_4_v12744_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: De 7 a 12 meses'
q17_5_velha'q17_5_v12745_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: De 13 a 24 meses'
q17_6_velha'q17_6_v12746_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: De 25 a 48 meses'
q17_7_velha'q17_7_v12747_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: De 49 a 72 meses'
q17_8_velha'q17_8_v12748_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: Mais de 72 meses (mais de 6 anos)'
q17_9_velha'q17_9_v12749_Das crianças/adolescentes que estão acolhidas neste momento, informe o tempo que estão no serviço: Total de Pessoas Acolhidas'
q19_1_velha'q19_1_v12738_19. Das crianças/adolescentes neste momento acolhidas, quantas delas:vieram encaminhadas de outro município?'
q19_2_velha'q19_2_v14594_19. Das crianças/adolescentes neste momento acolhidas, quantas delas:vieram encaminhadas de outro município? são pessoas com deficiência que sejam beneficiárias do Benefício de Prestação Continuada – BPC?'
q19_3_velha'q19_3_v14595_19. Das crianças/adolescentes neste momento acolhidas, quantas delas:são beneficiárias do Programa Bolsa Família – PBF?'
q19_4_velha'q19_4_v14596_19. Das crianças/adolescentes neste momento acolhidas, quantas delas:vieram encaminhadas de Unidades de Acolhimento Institucional para este Serviço de Família Acolhedora?'
q26_1_velha'q26_1_v12753_1_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:1: Atividades de mobilização, tais como anúncios, panfletos, entre outros'
q26_2_velha'q26_2_v12753_2_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:2: Palestras/oficinas'
q26_3_velha'q26_3_v12753_3_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:3: Seleção e Preparação das famílias candidatas'
q26_4_velha'q26_4_v12753_4_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:4: Capacitação das famílias'
q26_5_velha'q26_5_v12753_5_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:5: Identificação da família extensa ou ampliada'
q26_6_velha'q26_6_v12753_6_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:6: Estudo diagnóstico das crianças/adolescentes para inclusão no serviço'
q26_7_velha'q26_7_v12753_7_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:7: Encaminhamento para retirada de documentos'
q26_8_velha'q26_8_v12753_8_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:8: Preparação da criança/adolescente para entrada no serviço'
q26_9_velha'q26_9_v12753_9_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:9: Aproximação supervisionada entre a criança/adolescente e família acolhedora'
q26_10_velha'q26_10_v12753_10_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:10: Atendimento psicossocial individualizado da criança/adolescente'
q26_11_velha'q26_11_v12753_11_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:11: Acompanhamento escolar'
q26_12_velha'q26_12_v12753_12_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:12: Acompanhamento na saúde'
q26_13_velha'q26_13_v12753_13_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:13: Viabilização de encontro com a família de origem quando autorizado'
q26_14_velha'q26_14_v12753_14_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:14: Construção de um plano de acompanhamento da família acolhedora'
q26_15_velha'q26_15_v12753_15_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:15: Atendimento psicossocial individualizado da família acolhedora'
q26_16_velha'q26_16_v12753_16_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:16: Reuniões em grupo com as famílias acolhedoras'
q26_17_velha'q26_17_v12753_17_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:17: Construção de um plano de acompanhamento da família de origem'
q26_18_velha'q26_18_v12753_18_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:18: Atendimento psicossocial individualizado da família de origem'
q26_19_velha'q26_19_v12753_19_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:19: Reuniões em grupo com as famílias de origem'
q26_20_velha'q26_20_v12753_20_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:20: Visitas domiciliares'
q26_21_velha'q26_21_v12753_21_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:21: Elaboração de relatórios técnicos'
q26_22_velha'q26_22_v12753_22_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:22: Envio de relatório semestral para o Judiciário'
q26_23_velha'q26_23_v12753_23_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:23: Estudo de caso pela equipe do serviço'
q26_24_velha'q26_24_v12753_24_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:24: Encaminhamento para a rede (socioassistencial ou setorial)'
q26_25_velha'q26_25_v12753_25_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:25: Discussão de casos com outros profissionais da rede'
q26_0_velha'q26_0_v12753_0_26. Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço:0: Não realiza nenhuma das atividades acima'
q28_1_velha'q28_1_v12754_1_28. Quem realiza o acompanhamento das crianças/adolescentes após o seu desligamento do serviço?1: A própria unidade/serviço de acolhimento'
q28_2_velha'q28_2_v12754_2_28. Quem realiza o acompanhamento das crianças/adolescentes após o seu desligamento do serviço?2: O CRAS'
q28_3_velha'q28_3_v12754_3_28. Quem realiza o acompanhamento das crianças/adolescentes após o seu desligamento do serviço?3: O CREAS'
q28_98_velha'q28_98_v12754_98_28. Quem realiza o acompanhamento das crianças/adolescentes após o seu desligamento do serviço?98: Não sabe informar'
q28_99_velha'q28_99_v12754_99_28. Quem realiza o acompanhamento das crianças/adolescentes após o seu desligamento do serviço?99: Outro'
q28_0_velha'q28_0_v12754_0_28. Quem realiza o acompanhamento das crianças/adolescentes após o seu desligamento do serviço?0: Não é realizado acompanhamento de egressos'
q29_velha'q29_v12756_29. Por quanto tempo, em média, a criança/adolescente é acompanhada após seu desligamento?'
.
