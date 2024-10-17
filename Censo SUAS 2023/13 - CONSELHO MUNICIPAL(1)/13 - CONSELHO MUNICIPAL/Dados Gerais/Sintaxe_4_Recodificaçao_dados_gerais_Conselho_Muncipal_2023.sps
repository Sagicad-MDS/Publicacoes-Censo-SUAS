
****q1***********************************************************

compute q1_velha = q1. 
compute q1_1_velha = q1_1. 
compute q2_velha = q2. 
compute q3_velha = q3. 
compute q5_velha = q5. 
compute q6_velha = q6. 
execute. 

*DO IF (MISSING(q1)).
*RECODE q1_1 (ELSE=1).
*END IF.
*EXECUTE.


DO IF (q1_1=1).
RECODE q2 (ELSE=SYSMIS).
RECODE q3 (ELSE=SYSMIS).
END IF.
EXECUTE.

*******q2***************************

DO IF (q2=0).
RECODE q3 (ELSE=SYSMIS).
END IF.
EXECUTE.

*******q4***************************


DO IF (q4=0).
RECODE q5 (ELSE=SYSMIS).
END IF.
EXECUTE.

*******q7***************************

compute q8_1_velha = q8_1. 
compute q8_2_velha = q8_2. 
compute q8_3_velha = q8_3. 
compute q8_4_velha = q8_4. 
compute q8_5_velha = q8_5. 
compute q8_6_velha = q8_6. 
compute q8_7_velha = q8_7. 
compute q8_8_velha = q8_8. 
compute q8_9_velha = q8_9. 
compute q8_10_velha = q8_10. 
compute q8_11_velha = q8_11. 
compute q8_99_velha = q8_99. 
execute. 

DO IF (q7=0).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).
RECODE q8_3 (ELSE=SYSMIS).
RECODE q8_4 (ELSE=SYSMIS).
RECODE q8_5 (ELSE=SYSMIS).
RECODE q8_6 (ELSE=SYSMIS).
RECODE q8_7 (ELSE=SYSMIS).
RECODE q8_8 (ELSE=SYSMIS).
RECODE q8_9 (ELSE=SYSMIS).
RECODE q8_10 (ELSE=SYSMIS).
RECODE q8_11 (ELSE=SYSMIS).
RECODE q8_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q12*************************************************

compute q13_velha = q13. 
compute q14_1_velha = q14_1. 
compute q14_2_velha = q14_2. 
execute. 


DO IF (q12=0).
RECODE q13 (ELSE=SYSMIS).
RECODE q14_1 (ELSE=SYSMIS).
RECODE q14_2 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q21************************************************

compute q21_0_velha = q21_0. 
compute q21_1_velha = q21_1. 
compute q21_2_velha = q21_2. 
compute q21_3_velha = q21_3. 
compute q21_4_velha = q21_4. 
compute q21_5_velha = q21_5. 
compute q21_6_velha = q21_6. 
compute q21_7_velha = q21_7. 
compute q22_velha = q22. 
compute q23_0_velha = q23_0. 
compute q23_1_velha = q23_1. 
compute q23_2_velha = q23_2. 
compute q23_3_velha = q23_3. 
compute q23_4_velha = q23_4. 
compute q23_5_velha = q23_5. 
compute q23_6_velha = q23_6. 
compute q23_7_velha = q23_7. 
compute q24_velha = q24. 


DO IF (q21_0=1).
RECODE q21_1 (ELSE=SYSMIS).
RECODE q21_2 (ELSE=SYSMIS).
RECODE q21_3 (ELSE=SYSMIS).
RECODE q21_4 (ELSE=SYSMIS).
RECODE q21_5 (ELSE=SYSMIS).
RECODE q21_6 (ELSE=SYSMIS).
RECODE q21_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q21_0=1).
RECODE q22 (ELSE=SYSMIS).
RECODE q23_0 (ELSE=SYSMIS).
RECODE q23_1 (ELSE=SYSMIS).
RECODE q23_2 (ELSE=SYSMIS).
RECODE q23_3 (ELSE=SYSMIS).
RECODE q23_4 (ELSE=SYSMIS).
RECODE q23_5 (ELSE=SYSMIS).
RECODE q23_6 (ELSE=SYSMIS).
RECODE q23_7 (ELSE=SYSMIS).
RECODE q24 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q23***********************************************

compute q25_0_velha = q25_0. 
compute q25_1_velha = q25_1. 
compute q25_2_velha = q25_2. 
compute q25_3_velha = q25_3. 
compute q25_4_velha = q25_4. 
compute q25_99_velha = q25_99. 
compute q26_0_velha = q26_0. 
compute q26_1_velha = q26_1. 
compute q26_2_velha = q26_2. 
compute q26_3_velha = q26_3. 
compute q26_4_velha = q26_4. 
compute q26_99_velha = q26_99. 


DO IF (q23_0=1).
RECODE q24 (ELSE=SYSMIS).
RECODE q25_0 (ELSE=SYSMIS).
RECODE q25_1 (ELSE=SYSMIS).
RECODE q25_2 (ELSE=SYSMIS).
RECODE q25_3 (ELSE=SYSMIS).
RECODE q25_4 (ELSE=SYSMIS).
RECODE q25_99 (ELSE=SYSMIS).
RECODE q26_0 (ELSE=SYSMIS).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q25***********************************************


compute q27_velha = q27. 
compute q28_1_velha = q28_1. 
compute q28_2_velha = q28_2. 
compute q28_3_velha = q28_3. 
compute q28_4_velha = q28_4. 
compute q28_5_velha = q28_5. 
compute q28_6_velha = q28_6. 
compute q28_7_velha = q28_7. 
compute q28_8_velha = q28_8. 
compute q28_9_velha = q28_9. 
compute q28_10_velha = q28_10. 
compute q28_11_velha = q28_11. 
compute q28_12_velha = q28_12. 
compute q28_13_velha = q28_13. 
compute q28_14_velha = q28_14. 
compute q28_15_velha = q28_15. 
compute q28_16_velha = q28_16. 
compute q28_17_velha = q28_17. 
compute q28_18_velha = q28_18. 
compute q28_19_velha = q28_19. 
compute q28_20_velha = q28_20. 
compute q28_21_velha = q28_21. 
compute q28_22_velha = q28_22. 
compute q28_23_velha = q28_23. 
compute q28_24_velha = q28_24. 
compute q28_25_velha = q28_25. 
compute q28_26_velha = q28_26. 
compute q28_27_velha = q28_27. 
compute q28_28_velha = q28_28. 
compute q28_29_velha = q28_29. 
compute q28_30_velha = q28_30. 
compute q28_31_velha = q28_31. 
compute q28_32_velha = q28_32. 
compute q28_99_velha = q28_99. 



DO IF (q25_0=1).
RECODE q25_1 (ELSE=SYSMIS).
RECODE q25_2 (ELSE=SYSMIS).
RECODE q25_3 (ELSE=SYSMIS).
RECODE q25_4 (ELSE=SYSMIS).
RECODE q25_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q25_0=1).
RECODE q26_0 (ELSE=SYSMIS).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_99 (ELSE=SYSMIS).
RECODE q27 (ELSE=SYSMIS).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
RECODE q28_6 (ELSE=SYSMIS).
RECODE q28_7 (ELSE=SYSMIS).
RECODE q28_8 (ELSE=SYSMIS).
RECODE q28_9 (ELSE=SYSMIS).
RECODE q28_10 (ELSE=SYSMIS).
RECODE q28_11 (ELSE=SYSMIS).
RECODE q28_12 (ELSE=SYSMIS).
RECODE q28_13 (ELSE=SYSMIS).
RECODE q28_14 (ELSE=SYSMIS).
RECODE q28_15 (ELSE=SYSMIS).
RECODE q28_16 (ELSE=SYSMIS).
RECODE q28_17 (ELSE=SYSMIS).
RECODE q28_18 (ELSE=SYSMIS).
RECODE q28_19 (ELSE=SYSMIS).
RECODE q28_20 (ELSE=SYSMIS).
RECODE q28_21 (ELSE=SYSMIS).
RECODE q28_22 (ELSE=SYSMIS).
RECODE q28_23 (ELSE=SYSMIS).
RECODE q28_24 (ELSE=SYSMIS).
RECODE q28_25 (ELSE=SYSMIS).
RECODE q28_26 (ELSE=SYSMIS).
RECODE q28_27 (ELSE=SYSMIS).
RECODE q28_28 (ELSE=SYSMIS).
RECODE q28_29 (ELSE=SYSMIS).
RECODE q28_30 (ELSE=SYSMIS).
RECODE q28_31 (ELSE=SYSMIS).
RECODE q28_32 (ELSE=SYSMIS).
RECODE q28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q44**********************************************

compute q45_1_velha = q45_1. 
compute q45_2_velha = q45_2. 


DO IF (q44=0).
RECODE q45_1 (ELSE=SYSMIS).
RECODE q45_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q46**********************************************

compute q47_velha = q47. 
compute q48_1_velha = q48_1. 
compute q48_1_98_velha = q48_1_98. 
compute q48_2_velha = q48_2. 
compute q48_2_98_velha = q48_2_98. 
compute q48_3_velha = q48_3. 
compute q48_3_98_velha = q48_3_98. 
compute q49_velha = q49. 


DO IF (q46=0).
RECODE q47 (ELSE=SYSMIS).
RECODE q48_1 (ELSE=SYSMIS).
RECODE q48_1_98 (ELSE=SYSMIS).
RECODE q48_2 (ELSE=SYSMIS).
RECODE q48_2_98 (ELSE=SYSMIS).
RECODE q48_3 (ELSE=SYSMIS).
RECODE q48_3_98 (ELSE=SYSMIS).
RECODE q49 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q47**********************************************

DO IF (q47=2).
RECODE q48_1 (ELSE=SYSMIS).
RECODE q48_1_98 (ELSE=SYSMIS).
RECODE q48_2 (ELSE=SYSMIS).
RECODE q48_2_98 (ELSE=SYSMIS).
RECODE q48_3 (ELSE=SYSMIS).
RECODE q48_3_98 (ELSE=SYSMIS).
RECODE q49 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q55**********************************************

compute q55_0_velha = q55_0. 
compute q55_1_velha = q55_1. 
compute q55_2_velha = q55_2. 
compute q55_3_velha = q55_3. 
compute q55_99_velha = q55_99. 


DO IF (q55_0=1).
RECODE q55_1 (ELSE=SYSMIS).
RECODE q55_2 (ELSE=SYSMIS).
RECODE q55_3 (ELSE=SYSMIS).
RECODE q55_99  (ELSE=SYSMIS).
END IF.
EXECUTE.




***q64***********************************************

compute q65_1_velha = q65_1. 
compute q65_2_velha = q65_2. 
compute q65_3_velha = q65_3. 
compute q65_4_velha = q65_4. 
compute q65_5_velha = q65_5. 
compute q65_6_velha = q65_6. 
compute q65_99_velha = q65_99. 


DO IF (q64_0=1).
RECODE q64_1 (ELSE=SYSMIS).
RECODE q64_2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q64_0=1).
RECODE q65_1 (ELSE=SYSMIS).
RECODE q65_2 (ELSE=SYSMIS).
RECODE q65_3 (ELSE=SYSMIS).
RECODE q65_4 (ELSE=SYSMIS).
RECODE q65_5 (ELSE=SYSMIS).
RECODE q65_6 (ELSE=SYSMIS).
RECODE q65_99 (ELSE=SYSMIS).
END IF.
EXECUTE.





***q66***********************************************

compute q66_0_velha = q66_0. 
compute q66_1_velha = q66_1. 
compute q66_2_velha = q66_2. 
compute q66_3_velha = q66_3. 
compute q66_4_velha = q66_4. 
compute q66_99_velha = q66_99. 


DO IF (q66_0=1).
RECODE q66_1 (ELSE=SYSMIS).
RECODE q66_2 (ELSE=SYSMIS).
RECODE q66_3 (ELSE=SYSMIS).
RECODE q66_4 (ELSE=SYSMIS).
RECODE q66_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



VARIABLE LABELS
q1_velha 'q1. Informe o ano de publicação da Lei que criou o Conselho:'
q1_1_velha 'q1_1. Não está criado em Lei'
q2_velha 'q2. Houve alteração da Lei original por alguma Lei posteriormente aprovada?'
q3_velha 'q3. Caso sim, informe o ano da Lei que alterou a Lei original de criação do Conselho:'
q5_velha 'q5. Caso sim, informe o ano da última atualização do Regimento:'
q6_velha 'q6. O Conselho possui um local/sede específico para o seu funcionamento?'
q8_1_velha 'q8_1: Secretaria de Assistência Social ou congênere8. Caso sim, indique quais:'
q8_2_velha 'q8_2: Outra unidade administrativa (Sede de Prefeitura, Sede de Governo, Administração Regional, etc)8. Caso sim, indique quais:'
q8_3_velha 'q8_3: CRAS – Centro de Referência de Assistência Social8. Caso sim, indique quais:'
q8_4_velha 'q8_4: CREAS – Centro de Referência Especializado de Assistência Social8. Caso sim, indique quais:'
q8_5_velha 'q8_5: Outra unidade pública de serviços da Assistência Social8. Caso sim, indique quais:'
q8_6_velha 'q8_6: Unidade de Saúde8. Caso sim, indique quais:'
q8_7_velha 'q8_7: Escola8. Caso sim, indique quais:'
q8_8_velha 'q8_8: Associação Comunitária8. Caso sim, indique quais:'
q8_9_velha 'q8_9: Entidade ou Organização da Sociedade Civil8. Caso sim, indique quais:'
q8_10_velha ' q8_10: Conselho Tutelar8. Caso sim, indique quais:'
q8_11_velha 'q8_11: Outros Conselhos8. Caso sim, indique quais:'
q8_99_velha 'q8_99: Outros8. Caso sim, indique quais:'
q13_velha 'q13. O(a) Secretário(a) Executivo(a) trabalha exclusivamente no Conselho de Assistência Social?'
q14_1_velha 'q14_1. funcionárias(os) exclusivas(os) da Secretaria Executiva do Conselho de Assistência Social'
q14_2_velha 'q14_2. funcionárias(os) não exclusivas(os) da Secretaria Executiva do Conselho de Assistência Social'
q21_0_velha 'q21_0: Não é publicizado21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q21_1_velha 'q21_1: Fica no Conselho em local de livre acesso para a população usuária21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q21_2_velha 'q21_2: Enviado às(aos) Conselheiras(os) e/ou suas entidades21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q21_3_velha 'q21_3: Enviado às entidades de Assistência Social que não estão representadas no conselho21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q21_4_velha 'q21_4: Enviado às(aos) representantes e organizações de usuárias(os) que não estão representadas no conselho21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q21_5_velha 'q21_5: Enviado às organizações e entidades de trabalhadoras(es) do setor que não estão representadas no conselho21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q21_6_velha 'q21_6: Disponibilizado no site do Conselho21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q21_7_velha 'q21_7: Em Boletins produzidos pela área de assistência social21. De que forma o calendário de reuniões ordinárias do Conselho é publicizado (torna-se de conhecimento para a sociedade)?'
q22_velha  'q22. Considerando todas as reuniões plenárias do Conselho (ordinárias e extraordinárias), quantas reuniões foram realizadas no ano de 2022? De que forma o calendário de reuniões ordinárias do Conselho é publicizado?'
q23_0_velha 'q23_0: Não são publicizadas23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_1_velha 'q23_1: Ficam no Conselho em local de livre acesso para a população usuária23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_2_velha 'q23_2: São enviados às(aos) Conselheiras(os) e/ou suas entidades23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_3_velha 'q23_3: São enviados às entidades de Assistência Social que não estão representadas no conselho23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_4_velha 'q23_4: São enviados às(aos) representantes e organizações de usuárias(os) que não estão representadas no conselho23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_5_velha 'q23_5: São enviados às organizações e entidades de trabalhadoras(es) do setor que não estão representadas no conselho23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_6_velha 'q23_6: Disponibilizados no site do Conselho23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_7_velha 'q23_7: Em Boletins produzidos pela área de assistência social23. De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?'
q24_velha 'q24. As deliberações/resoluções do Conselho são publicadas em diário oficial?'
q25_0_velha 'q25_0: Não há mecanismos de comunicação25. O Conselho possui algum meio/canal/mecanismo de comunicação com as(os) usuárias(os) do SUAS?'
q25_1_velha 'q25_1: O Conselho divulga e disponibiliza seus contatos (e-mail/ telefone/WhatsApp) para o público25. O Conselho possui algum meio/canal/mecanismo de comunicação com as(os) usuárias(os) do SUAS?'
q25_2_velha 'q25_2: O Conselho tem página nas redes sociais (Facebook, blog etc.)25. O Conselho possui algum meio/canal/mecanismo de comunicação com as(os) usuárias(os) do SUAS?'
q25_3_velha 'q25_3: O Conselho tem canal de recebimento de denúncias25. O Conselho possui algum meio/canal/mecanismo de comunicação com as(os) usuárias(os) do SUAS?'
q25_4_velha 'q25_4: O Conselho divulga ações e temas discutidos pelo Conselho nos equipamentos da Assistência Social25. O Conselho possui algum meio/canal/mecanismo de comunicação com as(os) usuárias(os) do SUAS?'
q25_99_velha 'q25_99: Outros25. O Conselho possui algum meio/canal/mecanismo de comunicação com as(os) usuárias(os) do SUAS?'
q26_0_velha 'q26_0: Não desenvolve26. O Conselho desenvolve alguma das seguintes atividades para estimular a participaçãodos usuários do SUAS?'
q26_1_velha 'q26_1: O Conselho convida usuárias(os), além das(os) conselheiras(os), para a participação nas reuniões plenárias26. O Conselho desenvolve alguma das seguintes atividades para estimular a participaçãodos usuários do SUAS?'
q26_2_velha 'q26_2: Estimula a formação de coletivo/comitê de usuárias(os) (por ex. Fórum Municipal de Usuárias/os)26. O Conselho desenvolve alguma das seguintes atividades para estimular a participaçãodos usuários do SUAS?'
q26_3_velha 'q26_3: Realiza reuniões ampliadas em diferentes locais do município26. O Conselho desenvolve alguma das seguintes atividades para estimular a participaçãodos usuários do SUAS?'
q26_4_velha 'q26_4: Desenvolve ações junto aos equipamentos da política de assistência para estimular a participação dos usuários26. O Conselho desenvolve alguma das seguintes atividades para estimular a participaçãodos usuários do SUAS?'
q26_99_velha 'q26_99: Sim, outros26. O Conselho desenvolve alguma das seguintes atividades para estimular a participaçãodos usuários do SUAS?'
q27_velha 'q27. O Conselho tem conhecimento da existência de fóruns/colegiados/movimentos de usuários da Assistência Social no município (ou no Estado, para os CEAS)?'
q28_1_velha 'q28_1: Organização e estruturação do Conselho (processo de eleição dos conselheiros, regimento interno, instituição de comissões etc.)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_2_velha 'q28_2: Plano de Ação28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_3_velha 'q28_3: Demonstrativo de Execução Físico-Financeira28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_4_velha 'q28_4: Plano de Assistência Social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_5_velha 'q28_5: Plano Plurianual (PPA), Lei de Diretrizes Orçamentárias (LDO) e/ou Lei Orçamentária Anual (LOA)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_6_velha 'q28_6: Deliberações da(s) Conferência(s)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_7_velha 'q28_7: Reuniões regionais pré-conferência28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_8_velha 'q28_8: Divulgação da conferência por meio de panfletos, carro de som, cartazes, etc.28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_9_velha 'q28_9: Reuniões específicas com usuários da política de assistência social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_10_velha 'q28_10: Planejamento das atividades do Conselho28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_11_velha 'q28_11: Acompanhamento do Programa Bolsa Família28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_12_velha 'q28_12: Acompanhamento do Benefício de Prestação Continuada28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_13_velha 'q28_13: Benefícios eventuais28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_14_velha 'q28_14: Financiamento, implantação, organização e oferta de Serviços Socioassistenciais, programas, projetos e benefícios de Proteção Social Básica28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_15_velha 'q28_15: Financiamento, implantação, organização e oferta de Serviços Socioassistenciais, programas, projetos e benefícios de Proteção Social Especial28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_16_velha 'q28_16: Reprogramação de recursos/saldos da Assistência Social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_17_velha 'q28_17: Inscrição de entidades ou Organizações da Sociedade Civil (OSC) de assistência social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_18_velha 'q28_18: Visitas as entidades ou OSC de assistência social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_19_velha 'q28_19: Fiscalização das ofertas prestadas pelos equipamentos públicos da assistência social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_20_velha 'q28_20: Fiscalização das ofertas prestadas pelas entidades ou OSC de assistência social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_21_velha 'q28_21: Intersetorialidade e transversalidade na Política de Assistência Social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_22_velha 'q28_22: Participação popular e mobilização social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_23_velha 'q28_23: Capacitação para trabalhadores, gestores ou conselheiros28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_24_velha 'q28_24: Utilização de no mínimo 3% dos recursos do IGD-SUAS e IGD-PBF para o desenvolvimento das atividades do Conselho28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_25_velha 'q28_25: Avaliação da evolução do SUAS no âmbito municipal ou estadual28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_26_velha 'q28_26: Denúncias28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_27_velha 'q28_27: Plano Decenal28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_28_velha 'q28_28: Acompanhamento de programas e projetos da política de assistência social nacional e local28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_29_velha 'q28_29: Mobilização de usuárias(os) da Assistência Social para integração ao mundo do trabalho28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_30_velha 'q28_30: Grupos Populacionais Tradicionais e Específicos (indígenas, quilombolas, ribeirinhos, ciganos e outros)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_31_velha 'q28_31 Inserção de crianças e adolescentes com deficiência beneficiários do BPC na escola28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_32_velha 'q28_32: Violência e Violação de Direitos28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_99_velha ' q28_99: Outros28. Assinale os temas discutidos pelo Conselho em 2022:'
q45_1_velha 'q45_1_45.1. Quantos conselheiros titulares'
q45_2_velha 'q45_2_45.2. Quantos suplentes representando o COEGEMAS'
q47_velha 'q47. Se sim, informe como a fiscalização é realizada:'
q48_1_velha 'q48_1. Quantidade de Visitas a unidades públicas da rede socioassistencial'
q48_1_98_velha 'q48_1_98_ Não Sabe'
q48_2_velha 'q48_2. Quantidade de Visitas a entidades/organizações da sociedade civil'
q48_2_98_velha 'q48_2_98_ Não Sabe'
q48_3_velha 'q48_3. Quantidade Total de visitas'
q48_3_98_velha 'q48_3_98_ Não Sabe'
q49_velha 'q49. O conselho tem planejamento das fiscalizações realizadas anualmente?'
q55_0_velha 'q55_0: Não houve indeferimentos55. Quais os principais motivos de indeferimento?'
q55_1_velha 'q55_1: Falta de documentação55. Quais os principais motivos de indeferimento?'
q55_2_velha 'q55_2: As entidades não ofertam serviços de Assistência Social55. Quais os principais motivos de indeferimento?'
q55_3_velha 'q55_3: As ofertas não estão em conformidade55. Quais os principais motivos de indeferimento?'
q55_99_velha 'q55_99: Outros55. Quais os principais motivos de indeferimento?'
q65_1_velha 'q65_1: Beneficiárias(os) do Programa Bolsa Família65. As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:'
q65_2_velha 'q65_2: Beneficiária(o) ou família de beneficiárias(os) do BPC – Benefício de Prestação Continuada65. As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:'
q65_3_velha 'q65_3: Usuária(o) de serviços socioassistenciais de Proteção Social Básica65. As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:'
q65_4_velha 'q65_4: Usuária(o) de serviços socioassistenciais de Proteção Social Especial65. As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:'
q65_5_velha 'q65_5: Representante de associação comunitária ou de moradores65. As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:'
q65_6_velha 'q65_6: Representante de fórum ou coletivo de usuárias(os)65. As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:'
q65_99_velha 'q65_99: Outros65. As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:'
q66_0_velha 'q66_0: Este Conselho não possui representantes de trabalhadoras(es)66. As(Os) representantes de trabalhadoras(es) são:'
q66_1_velha 'q66_1: Representante de sindicato de trabalhadoras(es)66. As(Os) representantes de trabalhadoras(es) são:'
q66_2_velha 'q66_2: Representante de conselho de classe profissional (Conselho Regional de Serviço Social – CRESS, Conselho Regional de Psicologia – CFP, outros conselhos de classe)66. As(Os) representantes de trabalhadoras(es) são:'
q66_3_velha 'q66_3: Representante de associação, fórum ou coletivo de trabalhadoras(es)66. As(Os) representantes de trabalhadoras(es) são:'
q66_4_velha 'q66_4: A(O) própria(o) trabalhador(a) do SUAS, sem vinculação a nenhum coletivo66. As(Os) representantes de trabalhadoras(es) são:'
q66_99_velha 'q66_99: Outros66. As(Os) representantes de trabalhadoras(es) são:'.

