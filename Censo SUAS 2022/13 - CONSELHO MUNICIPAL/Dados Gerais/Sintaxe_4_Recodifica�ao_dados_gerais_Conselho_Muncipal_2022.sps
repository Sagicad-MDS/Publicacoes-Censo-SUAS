
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


DO IF (q1=0).
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


***q16*************************************************

compute q16_0_velha = q16_0. 
compute q16_1_velha = q16_1. 
compute q16_2_velha = q16_2. 
compute q16_3_velha = q16_3. 
compute q16_4_velha = q16_4. 
compute q16_99_velha = q16_99. 

DO IF (q16_0=1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.




***q24************************************************

compute q24_0_velha = q24_0. 
compute q24_1_velha = q24_1. 
compute q24_2_velha = q24_2. 
compute q24_3_velha = q24_3. 
compute q24_4_velha = q24_4. 
compute q24_5_velha = q24_5. 
compute q24_6_velha = q24_6. 
compute q24_7_velha = q24_7. 

DO IF (q24_0=1).
RECODE q24_1 (ELSE=SYSMIS).
RECODE q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_5 (ELSE=SYSMIS).
RECODE q24_6 (ELSE=SYSMIS).
RECODE q24_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q26***********************************************

compute q26_0_velha = q26_0. 
compute q26_1_velha = q26_1. 
compute q26_2_velha = q26_2. 
compute q26_3_velha = q26_3. 
compute q26_4_velha = q26_4. 
compute q26_5_velha = q26_5. 
compute q26_6_velha = q26_6. 
compute q26_7_velha = q26_7. 

DO IF (q26_0=1).
RECODE q26_1 (ELSE=SYSMIS).
RECODE q26_2 (ELSE=SYSMIS).
RECODE q26_3 (ELSE=SYSMIS).
RECODE q26_4 (ELSE=SYSMIS).
RECODE q26_5 (ELSE=SYSMIS).
RECODE q26_6 (ELSE=SYSMIS).
RECODE q26_7 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q28***********************************************

compute q28_0_velha = q28_0. 
compute q28_1_velha = q28_1. 
compute q28_2_velha = q28_2. 
compute q28_3_velha = q28_3. 
compute q28_4_velha = q28_4. 
compute q28_5_velha = q28_5. 
compute q28_99_velha = q28_99. 


DO IF (q28_0=1).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
RECODE q28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q29***********************************************

compute q29_0_velha = q29_0. 
compute q29_1_velha = q29_1. 
compute q29_2_velha = q29_2. 
compute q29_3_velha = q29_3. 
compute q29_4_velha = q29_4. 
compute q29_5_velha = q29_5. 
compute q29_99_velha = q29_99. 


DO IF (q29_0=1).
RECODE q29_1 (ELSE=SYSMIS).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
RECODE q29_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q32***********************************************

compute q32_0_velha = q32_0. 
compute q32_1_velha = q32_1. 
compute q32_2_velha = q32_2. 
compute q32_3_velha = q32_3. 
compute q32_4_velha = q32_4. 
compute q32_5_velha = q32_5. 


DO IF (q32_0=1).
RECODE q32_1 (ELSE=SYSMIS).
RECODE q32_2 (ELSE=SYSMIS).
RECODE q32_3 (ELSE=SYSMIS).
RECODE q32_4 (ELSE=SYSMIS).
RECODE q32_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q36***********************************************

compute q37_velha = q37. 

DO IF (q36=0).
RECODE q37 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q53**********************************************

compute q54_velha = q54. 
compute q55_velha = q55. 
compute q56_1_velha = q56_1. 
compute q56_1_98_velha = q56_1_98. 
compute q56_2_velha = q56_2. 
compute q56_2_98_velha = q56_2_98. 


DO IF (q53=0).
RECODE q54 (ELSE=SYSMIS).
RECODE q55 (ELSE=SYSMIS).
RECODE q56_1 (ELSE=SYSMIS).
RECODE q56_1_98 (ELSE=SYSMIS).
RECODE q56_2  (ELSE=SYSMIS).
RECODE q56_2_98 (ELSE=SYSMIS).
END IF.
EXECUTE.


***q58**********************************************


compute q60_1_velha = q60_1. 
compute q60_2_velha = q60_2. 
compute q60_3_velha = q60_3. 
compute q60_4_velha = q60_4. 
compute q60_5_velha = q60_5. 
compute q60_6_velha = q60_6. 
compute q60_7_velha = q60_7. 
compute q60_8_velha = q60_8. 
compute q60_9_velha = q60_9. 
compute q60_99_velha = q60_99. 


DO IF (q58=0).
RECODE q60_1 (ELSE=SYSMIS).
RECODE q60_2 (ELSE=SYSMIS).
RECODE q60_3  (ELSE=SYSMIS).
RECODE q60_4 (ELSE=SYSMIS).
RECODE q60_5 (ELSE=SYSMIS).
RECODE q60_6 (ELSE=SYSMIS).
RECODE q60_7  (ELSE=SYSMIS).
RECODE q60_8 (ELSE=SYSMIS).
RECODE q60_9  (ELSE=SYSMIS).
RECODE q60_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***q64***********************************************

compute q64_0_velha = q64_0. 
compute q64_1_velha = q64_1. 
compute q64_2_velha = q64_2. 
compute q64_3_velha = q64_3. 
compute q64_99_velha = q64_99. 


DO IF (q64_0=1).
RECODE q64_1 (ELSE=SYSMIS).
RECODE q64_2 (ELSE=SYSMIS).
RECODE q64_3 (ELSE=SYSMIS).
RECODE q64_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q76**********************************************

compute q76_0_velha = q76_0. 
compute q76_1_velha = q76_1. 
compute q76_2_velha = q76_2. 
compute q76_3_velha = q76_3. 


DO IF (q76_0=1).
RECODE q76_1 (ELSE=SYSMIS).
RECODE q76_2 (ELSE=SYSMIS).
RECODE q76_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q77**********************************************

compute q77_1_velha = q77_1. 
compute q77_2_velha = q77_2. 
compute q77_0_velha = q77_0. 
compute q78_1_velha = q78_1. 
compute q78_2_velha = q78_2. 
compute q78_3_velha = q78_3. 
compute q78_4_velha = q78_4. 
compute q78_5_velha = q78_5. 
compute q78_6_velha = q78_6. 
compute q78_99_velha = q78_99. 
 

DO IF (q77_0=1).
RECODE q77_1 (ELSE=SYSMIS).
RECODE q77_2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q77_0=1).
RECODE q78_1 (ELSE=SYSMIS).
RECODE q78_2 (ELSE=SYSMIS).
RECODE q78_3 (ELSE=SYSMIS).
RECODE q78_4 (ELSE=SYSMIS).
RECODE q78_5 (ELSE=SYSMIS).
RECODE q78_2 (ELSE=SYSMIS).
RECODE q78_6  (ELSE=SYSMIS).
RECODE q78_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q79*********************************************

compute q79_0_velha = q79_0. 
compute q79_1_velha = q79_1. 
compute q79_2_velha = q79_2. 
compute q79_3_velha = q78_3. 
compute q79_4_velha = q78_4. 
compute q79_99_velha = q78_99. 


DO IF (q79_0=1).
RECODE q79_1 (ELSE=SYSMIS).
RECODE q79_2 (ELSE=SYSMIS).
RECODE q79_3 (ELSE=SYSMIS).
RECODE q79_4 (ELSE=SYSMIS).
RECODE q79_99 (ELSE=SYSMIS).
END IF.
EXECUTE.





***q80********************************************

compute q81_1_velha = q81_1. 
compute q81_2_velha = q81_2. 
compute q81_3_velha = q81_3. 
compute q81_4_velha = q81_4. 
compute q81_5_velha = q81_5. 
compute q81_6_velha = q81_6. 
compute q81_7_velha = q81_7. 
compute q81_8_velha = q81_8. 
compute q81_99_velha = q81_99. 
 
DO IF (q80=0).
RECODE q81_1 (ELSE=SYSMIS).
RECODE q81_2 (ELSE=SYSMIS).
RECODE q81_3 (ELSE=SYSMIS).
RECODE q81_4 (ELSE=SYSMIS).
RECODE q81_5 (ELSE=SYSMIS).
RECODE q81_6 (ELSE=SYSMIS).
RECODE q81_7 (ELSE=SYSMIS).
RECODE q81_8 (ELSE=SYSMIS).
RECODE q81_99 (ELSE=SYSMIS).
END IF.
EXECUTE.




VARIABLE LABELS
q1_velha 'v12958_q11. Informe o ano de publica��o da Lei que criou o Conselho:'
q1_1_velha 'v13022_0_q1_11.1. N�o est� criado em Lei'
q2_velha 'v12959_q22. Houve altera��o da Lei original por alguma Lei posteriormente aprovada?'
q3_velha 'v12960_q33. Caso sim, informe o ano da Lei que alterou a Lei original de cria��o do Conselho:'
q5_velha 'v10771_q55. Caso sim, informe o ano da �ltima atualiza��o do Regimento:'
q6_velha 'v10804_q66. O Conselho possui um local/sede espec�fico para o seu funcionamento?'
q8_1_velha 'v10806_1_q8_11: Secretaria de Assist�ncia Social ou cong�nere'
q8_2_velha 'v10806_2_q8_22: Outra unidade administrativa (Sede de Prefeitura, Sede de Governo, Administra��o Regional, etc)'
q8_3_velha 'v10806_3_q8_33: CRAS � Centro de Refer�ncia de Assist�ncia Social'
q8_4_velha 'v10806_4_q8_44: CREAS � Centro de Refer�ncia Especializado de Assist�ncia Social'
q8_5_velha 'v10806_5_q8_55: Outra unidade p�blica de servi�os da Assist�ncia Social'
q8_6_velha 'v10806_6_q8_66: Unidade de Sa�de'
q8_7_velha 'v10806_7_q8_77: Escola'
q8_8_velha 'v10806_8_q8_88: Associa��o Comunit�ria'
q8_9_velha 'v10806_9_q8_99: Entidade ou Organiza��o da Sociedade Civil'
q8_10_velha 'v10806_10_q8_1010: Conselho Tutelar'
q8_11_velha 'v10806_11_q8_1111: Outros Conselhos'
q8_99_velha 'v10806_99_q8_9999: Outros'
q13_velha 'v10828_q1313. O(a) Secret�rio(a) Executivo(a) trabalha exclusivamente no Conselho de Assist�ncia Social?'
q14_1_velha 'v12961_q14_114.1. Funcion�rias(os) exclusivas(os) da Secretaria Executiva do Conselho'
q14_2_velha 'v12962_q14_214.2. Funcion�rias(os) n�o exclusivas(os) da Secretaria Executiva do Conselho'
q16_0_velha 'v16203_0_q16_00: N�o'
q16_1_velha 'v16203_1_q16_11: Sim, pesquisa e divulga materiais informativos e/ou cadernos de orienta��es'
q16_2_velha 'v16203_2_q16_22: Sim, pesquisa e divulga a��es de capacita��o e/ou apoio t�cnico'
q16_3_velha 'v16203_3_q16_33: Sim, o pr�prio Conselho realiza atividades formativas'
q16_4_velha 'v16203_4_q16_44: Sim, sugere o Tutorial de Boas-Vindas aos(�s) Conselheiros(as) da Assist�ncia Social dispon�vel na p�gina de EaD do Minist�rio'
q16_99_velha 'v16203_99_q16_9999: Sim, outros'
q24_0_velha 'v16207_0_q24_00: N�o � publicizado'
q24_1_velha 'v16207_1_q24_11: Fica no Conselho em local de livre acesso para a popula��o usu�ria'
q24_2_velha 'v16207_2_q24_22: Enviado �s(aos) Conselheiras(os) e/ou suas entidades'
q24_3_velha 'v16207_3_q24_33: Enviado �s entidades de Assist�ncia Social que n�o est�o representadas no conselho'
q24_4_velha 'v16207_4_q24_44: Enviado �s(aos) representantes e organiza��es de usu�rias(os) que n�o est�o representadas no conselho'
q24_5_velha 'v16207_5_q24_55: Enviado �s organiza��es e entidades de trabalhadoras(es) do setor que n�o est�o representadas no conselho'
q24_6_velha 'v16207_6_q24_66: Disponibilizado no site do Conselho'
q24_7_velha 'v16207_7_q24_77: Em Boletins produzidos pela �rea de assist�ncia social'
q26_0_velha 'v10838_0_q26_00: N�o s�o publicizadas'
q26_1_velha 'v10838_1_q26_11: Ficam no Conselho em local de livre acesso para a popula��o usu�ria'
q26_2_velha 'v10838_2_q26_22: S�o enviados �s(aos) Conselheiras(os) e/ou suas entidades'
q26_3_velha 'v10838_3_q26_33: S�o enviados �s entidades de Assist�ncia Social que n�o est�o representadas no conselho'
q26_4_velha 'v10838_4_q26_44: S�o enviados �s(aos) representantes e organiza��es de usu�rias(os) que n�o est�o representadas no conselho'
q26_5_velha 'v10838_5_q26_55: S�o enviados �s organiza��es e entidades de trabalhadoras(es) do setor que n�o est�o representadas no conselho'
q26_6_velha 'v10838_6_q26_66: Disponibilizados no site do Conselho'
q26_7_velha 'v10838_7_q26_77: Em Boletins produzidos pela �rea de assist�ncia social'
q28_0_velha 'v14609_0_q28_00: N�o h� mecanismos de comunica��o'
q28_1_velha 'v14609_2_q28_12: O Conselho disponibiliza contatos (e-mail/ telefone/whatsapp) para o p�blico'
q28_2_velha 'v14609_3_q28_23: O Conselho tem p�gina nas redes sociais (Facebook, blog etc)'
q28_3_velha 'v14609_4_q28_34: O Conselho tem canal de recebimento de den�ncias'
q28_4_velha 'v14609_5_q28_45: O Conselho convida usu�rias(os), al�m das(os) conselheiras(os), para a participa��o nas reuni�es plen�rias'
q28_5_velha 'v14609_6_q28_56: O Conselho divulga a��es e temas discutidos pelo Conselho nos equipamentos da Assist�ncia Social'
q28_99_velha 'v14609_99_q28_9999: Outros'
q29_0_velha 'v16208_0_q29_00: N�o desenvolve'
q29_1_velha 'v16208_1_q29_11: Estimula a participa��o de usu�rias(os) (que n�o sejam conselheiros) nas reuni�es do Conselho'
q29_2_velha 'v16208_2_q29_22: Estimula a forma��o de coletivo/comit� de usu�rias(os) (por ex. F�rum Municipal de Usu�rias(os))'
q29_3_velha 'v16208_3_q29_33: Realiza reuni�es ampliadas em diferentes locais do munic�pio'
q29_4_velha 'v16208_4_q29_44: Desenvolve a��es junto aos equipamentos da pol�tica de assist�ncia para estimular a participa��o dos usu�rios'
q29_5_velha 'v16208_5_q29_55: Possui diferentes mecanismos de comunica��o com a sociedade civil (sites, grupos de whatsapp, boletim, etc.)'
q29_99_velha 'v16208_99_q29_9999: Sim, outros.'
q32_0_velha 'v16213_0_q32_00: N�o'
q32_1_velha 'v16213_1_q32_11: Sim, apoio t�cnico'
q32_2_velha 'v16213_2_q32_22: Sim, supervis�o t�cnica'
q32_3_velha 'v16213_3_q32_33: Sim, assessoramento t�cnico (inclusive reuni�es) promovido pelo Conselho Nacional de Assist�ncia Social'
q32_4_velha 'v16213_4_q32_44: Sim, assessoramento t�cnico (inclusive reuni�es) promovido pelo Conselho Estadual de Assist�ncia Social (apenas para Conselhos Municipais)'
q32_5_velha 'v16213_5_q32_55: Sim, outros. Quais?'
q37_velha 'v16216_q3737. Os crit�rios e prazos de acesso a Benef�cios Eventuais previstos nessa Resolu��o foram observados na Lei/norma que trata dos Benef�cios Eventuais?'
q54_velha 'v10847_q5454. Se sim, informe como a fiscaliza��o � realizada:'
q55_velha 'v10848_q5555. O conselho tem planejamento das fiscaliza��es realizadas anualmente?'
q56_1_velha 'v12997_q56_156.1. Visitas a unidades p�blicas da rede socioassistencial'
q56_1_98_velha 'v13026_98_q56_1_98n�o sabe'
q56_2_velha 'v12998_q56_256.2. Visitas a entidades/organiza��es da sociedade civil'
q56_2_98_velha 'v13027_98_q56_2_98n�o sabe'
q60_1_velha 'v13003_1_q60_11: Caracteriza��o das entidades/organiza��es'
q60_2_velha 'v13003_2_q60_22: Documenta��o exigida'
q60_3_velha 'v13003_3_q60_33: Local para entrega da documenta��o'
q60_4_velha 'v13003_4_q60_44: Tempo para deferimento/indeferimento'
q60_5_velha 'v13003_5_q60_55: Procedimentos e an�lise do processo de inscri��o'
q60_6_velha 'v13003_6_q60_66: Condi��es para visita �s unidades'
q60_7_velha 'v13003_7_q60_77: Pedido de reconsidera��o/recurso'
q60_8_velha 'v13003_8_q60_88: Cancelamento da inscri��o'
q60_9_velha 'v13003_9_q60_99: Acompanhamento e fiscaliza��o das entidades'
q60_99_velha 'v13003_99_q60_9999: Outros'
q64_0_velha 'v14615_0_q64_00: N�o houve indeferimentos'
q64_1_velha 'v14615_1_q64_11: Falta de documenta��o'
q64_2_velha 'v14615_2_q64_22: As entidades n�o ofertam servi�os de Assist�ncia Social'
q64_3_velha 'v14615_3_q64_33: As ofertas n�o est�o em conformidade'
q64_99_velha 'v14615_99_q64_9999: Outros'
q76_0_velha 'v16231_0_q76_00: N�o'
q76_1_velha 'v16231_1_q76_11: Sim, usu�ria(o)'
q76_2_velha 'v16231_2_q76_22: Sim, trabalhador(a)'
q76_3_velha 'v16231_3_q76_33: Sim, entidade'
q77_1_velha 'v10885_1_q77_11: A(O) pr�pria(o) usu�ria(o)'
q77_2_velha 'v10885_2_q77_22: As(Os) representantes e organiza��es de usu�rias(os)'
q77_0_velha 'v10885_0_q77_00: Este Conselho n�o possui representantes de usu�rias(os)'
q78_1_velha 'v10888_1_q78_11: Benefici�rias(os) do Programa Bolsa Fam�lia'
q78_2_velha 'v10888_2_q78_22: Benefici�ria(o) ou fam�lia de benefici�rias(os) do BPC � Benef�cio de Presta��o Continuada'
q78_3_velha 'v10888_3_q78_33: Usu�ria(o) de servi�os socioassistenciais de Prote��o Social B�sica'
q78_4_velha 'v10888_4_q78_44: Usu�ria(o) de servi�os socioassistenciais de Prote��o Social Especial'
q78_5_velha 'v10888_5_q78_55: Representante de associa��o comunit�ria ou de moradores'
q78_6_velha 'v10888_6_q78_66: Representante de f�rum ou coletivo de usu�rias(os)'
q78_99_velha 'v10888_99_q78_9999: Outros'
q79_0_velha 'v11956_0_q79_00: Este Conselho n�o possui representantes de trabalhadoras(es)'
q79_1_velha 'v11956_1_q79_11: Representante de sindicato de trabalhadoras(es)'
q79_2_velha 'v11956_2_q79_22: Representante de conselho de classe profissional (Conselho Regional de Servi�o Social � CRESS,Conselho Regional de Psicologia � CFP, outros conselhos de classe)'
q79_3_velha 'v11956_3_q79_33: Representante de associa��o, f�rum ou coletivo de trabalhadoras(es)'
q79_4_velha 'v11956_4_q79_44: A(O) pr�pria(o) trabalhador(a) do SUAS, sem vincula��o a nenhum coletivo'
q79_99_velha 'v11956_99_q79_9999: Outros'
q81_1_velha 'v10891_1_q81_11: Comiss�o de normas'
q81_2_velha 'v10891_2_q81_22: Comiss�o de pol�tica'
q81_3_velha 'v10891_3_q81_33: Comiss�o de financiamento'
q81_4_velha 'v10891_4_q81_44: Comiss�o de acompanhamento de conselhos'
q81_5_velha 'v10891_5_q81_55: Comiss�o de �tica'
q81_6_velha 'v10891_6_q81_66: Comiss�o de acompanhamento de benef�cios e transfer�ncia de renda (BPC, Programa Bolsa Fam�lia, etc.)'
q81_7_velha 'v10891_7_q81_77: Comiss�o de fiscaliza��o/monitoramento/cadastro de entidades'
q81_8_velha 'v10891_8_q81_88: Comiss�o de comunica��o'
q81_99_velha 'v10891_99_q81_9999: Outras'
.
