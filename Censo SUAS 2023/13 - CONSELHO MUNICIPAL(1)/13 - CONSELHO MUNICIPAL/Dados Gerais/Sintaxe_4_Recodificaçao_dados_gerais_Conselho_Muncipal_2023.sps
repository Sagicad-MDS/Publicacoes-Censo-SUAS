
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
q1_velha 'q1. Informe o ano de publica��o da Lei que criou o Conselho:'
q1_1_velha 'q1_1. N�o est� criado em Lei'
q2_velha 'q2. Houve altera��o da Lei original por alguma Lei posteriormente aprovada?'
q3_velha 'q3. Caso sim, informe o ano da Lei que alterou a Lei original de cria��o do Conselho:'
q5_velha 'q5. Caso sim, informe o ano da �ltima atualiza��o do Regimento:'
q6_velha 'q6. O Conselho possui um local/sede espec�fico para o seu funcionamento?'
q8_1_velha 'q8_1: Secretaria de Assist�ncia Social ou cong�nere8. Caso sim, indique quais:'
q8_2_velha 'q8_2: Outra unidade administrativa (Sede de Prefeitura, Sede de Governo, Administra��o Regional, etc)8. Caso sim, indique quais:'
q8_3_velha 'q8_3: CRAS � Centro de Refer�ncia de Assist�ncia Social8. Caso sim, indique quais:'
q8_4_velha 'q8_4: CREAS � Centro de Refer�ncia Especializado de Assist�ncia Social8. Caso sim, indique quais:'
q8_5_velha 'q8_5: Outra unidade p�blica de servi�os da Assist�ncia Social8. Caso sim, indique quais:'
q8_6_velha 'q8_6: Unidade de Sa�de8. Caso sim, indique quais:'
q8_7_velha 'q8_7: Escola8. Caso sim, indique quais:'
q8_8_velha 'q8_8: Associa��o Comunit�ria8. Caso sim, indique quais:'
q8_9_velha 'q8_9: Entidade ou Organiza��o da Sociedade Civil8. Caso sim, indique quais:'
q8_10_velha ' q8_10: Conselho Tutelar8. Caso sim, indique quais:'
q8_11_velha 'q8_11: Outros Conselhos8. Caso sim, indique quais:'
q8_99_velha 'q8_99: Outros8. Caso sim, indique quais:'
q13_velha 'q13. O(a) Secret�rio(a) Executivo(a) trabalha exclusivamente no Conselho de Assist�ncia Social?'
q14_1_velha 'q14_1. funcion�rias(os) exclusivas(os) da Secretaria Executiva do Conselho de Assist�ncia Social'
q14_2_velha 'q14_2. funcion�rias(os) n�o exclusivas(os) da Secretaria Executiva do Conselho de Assist�ncia Social'
q21_0_velha 'q21_0: N�o � publicizado21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q21_1_velha 'q21_1: Fica no Conselho em local de livre acesso para a popula��o usu�ria21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q21_2_velha 'q21_2: Enviado �s(aos) Conselheiras(os) e/ou suas entidades21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q21_3_velha 'q21_3: Enviado �s entidades de Assist�ncia Social que n�o est�o representadas no conselho21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q21_4_velha 'q21_4: Enviado �s(aos) representantes e organiza��es de usu�rias(os) que n�o est�o representadas no conselho21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q21_5_velha 'q21_5: Enviado �s organiza��es e entidades de trabalhadoras(es) do setor que n�o est�o representadas no conselho21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q21_6_velha 'q21_6: Disponibilizado no site do Conselho21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q21_7_velha 'q21_7: Em Boletins produzidos pela �rea de assist�ncia social21. De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado (torna-se de conhecimento para a sociedade)?'
q22_velha  'q22. Considerando todas as reuni�es plen�rias do Conselho (ordin�rias e extraordin�rias), quantas reuni�es foram realizadas no ano de 2022? De que forma o calend�rio de reuni�es ordin�rias do Conselho � publicizado?'
q23_0_velha 'q23_0: N�o s�o publicizadas23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_1_velha 'q23_1: Ficam no Conselho em local de livre acesso para a popula��o usu�ria23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_2_velha 'q23_2: S�o enviados �s(aos) Conselheiras(os) e/ou suas entidades23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_3_velha 'q23_3: S�o enviados �s entidades de Assist�ncia Social que n�o est�o representadas no conselho23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_4_velha 'q23_4: S�o enviados �s(aos) representantes e organiza��es de usu�rias(os) que n�o est�o representadas no conselho23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_5_velha 'q23_5: S�o enviados �s organiza��es e entidades de trabalhadoras(es) do setor que n�o est�o representadas no conselho23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_6_velha 'q23_6: Disponibilizados no site do Conselho23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q23_7_velha 'q23_7: Em Boletins produzidos pela �rea de assist�ncia social23. De que forma as atas do Conselho s�o publicizadas (tornam-se de conhecimento para a sociedade)?'
q24_velha 'q24. As delibera��es/resolu��es do Conselho s�o publicadas em di�rio oficial?'
q25_0_velha 'q25_0: N�o h� mecanismos de comunica��o25. O Conselho possui algum meio/canal/mecanismo de comunica��o com as(os) usu�rias(os) do SUAS?'
q25_1_velha 'q25_1: O Conselho divulga e disponibiliza seus contatos (e-mail/ telefone/WhatsApp) para o p�blico25. O Conselho possui algum meio/canal/mecanismo de comunica��o com as(os) usu�rias(os) do SUAS?'
q25_2_velha 'q25_2: O Conselho tem p�gina nas redes sociais (Facebook, blog etc.)25. O Conselho possui algum meio/canal/mecanismo de comunica��o com as(os) usu�rias(os) do SUAS?'
q25_3_velha 'q25_3: O Conselho tem canal de recebimento de den�ncias25. O Conselho possui algum meio/canal/mecanismo de comunica��o com as(os) usu�rias(os) do SUAS?'
q25_4_velha 'q25_4: O Conselho divulga a��es e temas discutidos pelo Conselho nos equipamentos da Assist�ncia Social25. O Conselho possui algum meio/canal/mecanismo de comunica��o com as(os) usu�rias(os) do SUAS?'
q25_99_velha 'q25_99: Outros25. O Conselho possui algum meio/canal/mecanismo de comunica��o com as(os) usu�rias(os) do SUAS?'
q26_0_velha 'q26_0: N�o desenvolve26. O Conselho desenvolve alguma das seguintes atividades para estimular a participa��odos usu�rios do SUAS?'
q26_1_velha 'q26_1: O Conselho convida usu�rias(os), al�m das(os) conselheiras(os), para a participa��o nas reuni�es plen�rias26. O Conselho desenvolve alguma das seguintes atividades para estimular a participa��odos usu�rios do SUAS?'
q26_2_velha 'q26_2: Estimula a forma��o de coletivo/comit� de usu�rias(os) (por ex. F�rum Municipal de Usu�rias/os)26. O Conselho desenvolve alguma das seguintes atividades para estimular a participa��odos usu�rios do SUAS?'
q26_3_velha 'q26_3: Realiza reuni�es ampliadas em diferentes locais do munic�pio26. O Conselho desenvolve alguma das seguintes atividades para estimular a participa��odos usu�rios do SUAS?'
q26_4_velha 'q26_4: Desenvolve a��es junto aos equipamentos da pol�tica de assist�ncia para estimular a participa��o dos usu�rios26. O Conselho desenvolve alguma das seguintes atividades para estimular a participa��odos usu�rios do SUAS?'
q26_99_velha 'q26_99: Sim, outros26. O Conselho desenvolve alguma das seguintes atividades para estimular a participa��odos usu�rios do SUAS?'
q27_velha 'q27. O Conselho tem conhecimento da exist�ncia de f�runs/colegiados/movimentos de usu�rios da Assist�ncia Social no munic�pio (ou no Estado, para os CEAS)?'
q28_1_velha 'q28_1: Organiza��o e estrutura��o do Conselho (processo de elei��o dos conselheiros, regimento interno, institui��o de comiss�es etc.)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_2_velha 'q28_2: Plano de A��o28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_3_velha 'q28_3: Demonstrativo de Execu��o F�sico-Financeira28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_4_velha 'q28_4: Plano de Assist�ncia Social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_5_velha 'q28_5: Plano Plurianual (PPA), Lei de Diretrizes Or�ament�rias (LDO) e/ou Lei Or�ament�ria Anual (LOA)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_6_velha 'q28_6: Delibera��es da(s) Confer�ncia(s)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_7_velha 'q28_7: Reuni�es regionais pr�-confer�ncia28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_8_velha 'q28_8: Divulga��o da confer�ncia por meio de panfletos, carro de som, cartazes, etc.28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_9_velha 'q28_9: Reuni�es espec�ficas com usu�rios da pol�tica de assist�ncia social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_10_velha 'q28_10: Planejamento das atividades do Conselho28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_11_velha 'q28_11: Acompanhamento do Programa Bolsa Fam�lia28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_12_velha 'q28_12: Acompanhamento do Benef�cio de Presta��o Continuada28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_13_velha 'q28_13: Benef�cios eventuais28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_14_velha 'q28_14: Financiamento, implanta��o, organiza��o e oferta de Servi�os Socioassistenciais, programas, projetos e benef�cios de Prote��o Social B�sica28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_15_velha 'q28_15: Financiamento, implanta��o, organiza��o e oferta de Servi�os Socioassistenciais, programas, projetos e benef�cios de Prote��o Social Especial28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_16_velha 'q28_16: Reprograma��o de recursos/saldos da Assist�ncia Social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_17_velha 'q28_17: Inscri��o de entidades ou Organiza��es da Sociedade Civil (OSC) de assist�ncia social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_18_velha 'q28_18: Visitas as entidades ou OSC de assist�ncia social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_19_velha 'q28_19: Fiscaliza��o das ofertas prestadas pelos equipamentos p�blicos da assist�ncia social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_20_velha 'q28_20: Fiscaliza��o das ofertas prestadas pelas entidades ou OSC de assist�ncia social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_21_velha 'q28_21: Intersetorialidade e transversalidade na Pol�tica de Assist�ncia Social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_22_velha 'q28_22: Participa��o popular e mobiliza��o social28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_23_velha 'q28_23: Capacita��o para trabalhadores, gestores ou conselheiros28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_24_velha 'q28_24: Utiliza��o de no m�nimo 3% dos recursos do IGD-SUAS e IGD-PBF para o desenvolvimento das atividades do Conselho28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_25_velha 'q28_25: Avalia��o da evolu��o do SUAS no �mbito municipal ou estadual28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_26_velha 'q28_26: Den�ncias28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_27_velha 'q28_27: Plano Decenal28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_28_velha 'q28_28: Acompanhamento de programas e projetos da pol�tica de assist�ncia social nacional e local28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_29_velha 'q28_29: Mobiliza��o de usu�rias(os) da Assist�ncia Social para integra��o ao mundo do trabalho28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_30_velha 'q28_30: Grupos Populacionais Tradicionais e Espec�ficos (ind�genas, quilombolas, ribeirinhos, ciganos e outros)28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_31_velha 'q28_31 Inser��o de crian�as e adolescentes com defici�ncia benefici�rios do BPC na escola28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_32_velha 'q28_32: Viol�ncia e Viola��o de Direitos28. Assinale os temas discutidos pelo Conselho em 2022:'
q28_99_velha ' q28_99: Outros28. Assinale os temas discutidos pelo Conselho em 2022:'
q45_1_velha 'q45_1_45.1. Quantos conselheiros titulares'
q45_2_velha 'q45_2_45.2. Quantos suplentes representando o COEGEMAS'
q47_velha 'q47. Se sim, informe como a fiscaliza��o � realizada:'
q48_1_velha 'q48_1. Quantidade de Visitas a unidades p�blicas da rede socioassistencial'
q48_1_98_velha 'q48_1_98_ N�o Sabe'
q48_2_velha 'q48_2. Quantidade de Visitas a entidades/organiza��es da sociedade civil'
q48_2_98_velha 'q48_2_98_ N�o Sabe'
q48_3_velha 'q48_3. Quantidade Total de visitas'
q48_3_98_velha 'q48_3_98_ N�o Sabe'
q49_velha 'q49. O conselho tem planejamento das fiscaliza��es realizadas anualmente?'
q55_0_velha 'q55_0: N�o houve indeferimentos55. Quais os principais motivos de indeferimento?'
q55_1_velha 'q55_1: Falta de documenta��o55. Quais os principais motivos de indeferimento?'
q55_2_velha 'q55_2: As entidades n�o ofertam servi�os de Assist�ncia Social55. Quais os principais motivos de indeferimento?'
q55_3_velha 'q55_3: As ofertas n�o est�o em conformidade55. Quais os principais motivos de indeferimento?'
q55_99_velha 'q55_99: Outros55. Quais os principais motivos de indeferimento?'
q65_1_velha 'q65_1: Benefici�rias(os) do Programa Bolsa Fam�lia65. As(Os) representantes de usu�rias(os) ou organiza��o de usu�rias(os) s�o:'
q65_2_velha 'q65_2: Benefici�ria(o) ou fam�lia de benefici�rias(os) do BPC � Benef�cio de Presta��o Continuada65. As(Os) representantes de usu�rias(os) ou organiza��o de usu�rias(os) s�o:'
q65_3_velha 'q65_3: Usu�ria(o) de servi�os socioassistenciais de Prote��o Social B�sica65. As(Os) representantes de usu�rias(os) ou organiza��o de usu�rias(os) s�o:'
q65_4_velha 'q65_4: Usu�ria(o) de servi�os socioassistenciais de Prote��o Social Especial65. As(Os) representantes de usu�rias(os) ou organiza��o de usu�rias(os) s�o:'
q65_5_velha 'q65_5: Representante de associa��o comunit�ria ou de moradores65. As(Os) representantes de usu�rias(os) ou organiza��o de usu�rias(os) s�o:'
q65_6_velha 'q65_6: Representante de f�rum ou coletivo de usu�rias(os)65. As(Os) representantes de usu�rias(os) ou organiza��o de usu�rias(os) s�o:'
q65_99_velha 'q65_99: Outros65. As(Os) representantes de usu�rias(os) ou organiza��o de usu�rias(os) s�o:'
q66_0_velha 'q66_0: Este Conselho n�o possui representantes de trabalhadoras(es)66. As(Os) representantes de trabalhadoras(es) s�o:'
q66_1_velha 'q66_1: Representante de sindicato de trabalhadoras(es)66. As(Os) representantes de trabalhadoras(es) s�o:'
q66_2_velha 'q66_2: Representante de conselho de classe profissional (Conselho Regional de Servi�o Social � CRESS, Conselho Regional de Psicologia � CFP, outros conselhos de classe)66. As(Os) representantes de trabalhadoras(es) s�o:'
q66_3_velha 'q66_3: Representante de associa��o, f�rum ou coletivo de trabalhadoras(es)66. As(Os) representantes de trabalhadoras(es) s�o:'
q66_4_velha 'q66_4: A(O) pr�pria(o) trabalhador(a) do SUAS, sem vincula��o a nenhum coletivo66. As(Os) representantes de trabalhadoras(es) s�o:'
q66_99_velha 'q66_99: Outros66. As(Os) representantes de trabalhadoras(es) s�o:'.

