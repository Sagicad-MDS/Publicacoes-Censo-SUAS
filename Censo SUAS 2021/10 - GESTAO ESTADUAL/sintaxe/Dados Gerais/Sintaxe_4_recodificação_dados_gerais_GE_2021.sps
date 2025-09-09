* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARI�VEIS DERIVADAS GEST�O ESTADUAL - CENSO SUAS 2021
****************************************************************************************************


****q7**********************************************************************************************

COMPUTE q7_1_1_velha=q7_1_1.
COMPUTE q7_1_2_velha=q7_1_2.
COMPUTE q7_1_0_velha=q7_1_0.
COMPUTE q7_2_1_velha=q7_2_1.
COMPUTE q7_2_2_velha=q7_2_2.
COMPUTE q7_2_3_velha=q7_2_3.
COMPUTE q7_2_4_velha=q7_2_4.
COMPUTE q7_2_5_velha=q7_2_5.
COMPUTE q7_2_0_velha=q7_2_0.
COMPUTE q7_3_1_velha=q7_3_1.
COMPUTE q7_3_2_velha=q7_3_2.
COMPUTE q7_3_3_velha=q7_3_3.
COMPUTE q7_3_4_velha=q7_3_4.
COMPUTE q7_3_0_velha=q7_3_0.
EXECUTE.

DO IF (q7_1_0=1).
RECODE q7_1_1 (ELSE=SYSMIS).
RECODE q7_1_2 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q7_2_0=1).
RECODE q7_2_1 (ELSE=SYSMIS).
RECODE q7_2_2 (ELSE=SYSMIS).
RECODE q7_2_3 (ELSE=SYSMIS).
RECODE q7_2_4 (ELSE=SYSMIS).
RECODE q7_2_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q7_3_0=1).
RECODE q7_3_1 (ELSE=SYSMIS).
RECODE q7_3_2 (ELSE=SYSMIS).
RECODE q7_3_3 (ELSE=SYSMIS).
RECODE q7_3_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q8*****************************************************************************************************

COMPUTE q8_0_velha=q8_0.
COMPUTE q8_1_velha=q8_1.
COMPUTE q8_2_velha=q8_2.
COMPUTE q8_3_velha=q8_3.
COMPUTE q8_4_velha=q8_4.


DO IF (q8_0=1).
RECODE q8_1 (ELSE=SYSMIS).
RECODE q8_2 (ELSE=SYSMIS).
RECODE q8_3 (ELSE=SYSMIS).
RECODE q8_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q12*****************************************************************************************************

COMPUTE q12_0_velha=q12_0.
COMPUTE q12_1_velha=q12_1.
COMPUTE q12_2_velha=q12_2.
COMPUTE q12_3_velha=q12_3.
COMPUTE q12_4_velha=q12_4.
COMPUTE q12_5_velha=q12_5.
COMPUTE q12_6_velha=q12_6.
COMPUTE q12_7_velha=q12_7.
COMPUTE q12_8_velha=q12_8.
COMPUTE q12_9_velha=q12_9.
COMPUTE q12_10_velha=q12_10.
COMPUTE q12_11_velha=q12_11.
COMPUTE q12_99_velha=q12_99.
EXECUTE.


DO IF (q12_0=1).
RECODE q12_1 (ELSE=SYSMIS).
RECODE q12_2 (ELSE=SYSMIS).
RECODE q12_3 (ELSE=SYSMIS).
RECODE q12_4 (ELSE=SYSMIS).
RECODE q12_5 (ELSE=SYSMIS).
RECODE q12_6 (ELSE=SYSMIS).
RECODE q12_7 (ELSE=SYSMIS).
RECODE q12_8 (ELSE=SYSMIS).
RECODE q12_9 (ELSE=SYSMIS).
RECODE q12_10 (ELSE=SYSMIS).
RECODE q12_11 (ELSE=SYSMIS).
RECODE q12_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q13*****************************************************************************************************

COMPUTE q13_0_velha=q13_0.
COMPUTE q13_1_velha=q13_1.
COMPUTE q13_2_velha=q13_2.
COMPUTE q13_3_velha=q13_3.
COMPUTE q13_4_velha=q13_4.
COMPUTE q13_5_velha=q13_5.
COMPUTE q13_6_velha=q13_6.
COMPUTE q13_7_velha=q13_7.
COMPUTE q13_99_velha=q13_99.
EXECUTE.


DO IF (q13_0=1).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3 (ELSE=SYSMIS).
RECODE q13_4 (ELSE=SYSMIS).
RECODE q13_5 (ELSE=SYSMIS).
RECODE q13_6 (ELSE=SYSMIS).
RECODE q13_7 (ELSE=SYSMIS).
RECODE q13_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q14*****************************************************************************************************

COMPUTE q14_0_velha=q14_0.
COMPUTE q14_1_velha=q14_1.
COMPUTE q14_2_velha=q14_2.
COMPUTE q14_3_velha=q14_3.
COMPUTE q14_4_velha=q14_4.
COMPUTE q14_5_velha=q14_5.
COMPUTE q14_6_velha=q14_6.
COMPUTE q14_7_velha=q14_7.
COMPUTE q14_8_velha=q14_8.
COMPUTE q14_9_velha=q14_9.
COMPUTE q14_10_velha=q14_10.
COMPUTE q14_99_velha=q14_99.
EXECUTE.


DO IF (q14_0=1).
RECODE q14_1 (ELSE=SYSMIS).
RECODE q14_2 (ELSE=SYSMIS).
RECODE q14_3 (ELSE=SYSMIS).
RECODE q14_4 (ELSE=SYSMIS).
RECODE q14_5 (ELSE=SYSMIS).
RECODE q14_6 (ELSE=SYSMIS).
RECODE q14_7 (ELSE=SYSMIS).
RECODE q14_8 (ELSE=SYSMIS).
RECODE q14_9 (ELSE=SYSMIS).
RECODE q14_10 (ELSE=SYSMIS).
RECODE q14_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q15*****************************************************************************************************

COMPUTE q16_1_velha=q16_1.
COMPUTE q16_2_velha=q16_2.
COMPUTE q16_1_1_velha=q16_1_1.
COMPUTE q16_2_1_velha=q16_2_1.
COMPUTE q17_1_velha=q17_1.
COMPUTE q17_2_velha=q17_2.
COMPUTE q17_3_velha=q17_3.
COMPUTE q17_4_velha=q17_4.
COMPUTE q17_5_velha=q17_5.
COMPUTE q17_6_velha=q17_6.
COMPUTE q17_7_velha=q17_7.
COMPUTE q17_8_velha=q17_8.
COMPUTE q17_9_velha=q17_9.
COMPUTE q17_99_velha=q17_99.



DO IF (q15=0).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2  (ELSE=SYSMIS).
RECODE q16_1_1 (ELSE=SYSMIS).
RECODE q16_2_1  (ELSE=SYSMIS).
RECODE q17_1  (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3  (ELSE=SYSMIS).
RECODE q17_4 (ELSE=SYSMIS).
RECODE q17_5 (ELSE=SYSMIS).
RECODE q17_6  (ELSE=SYSMIS).
RECODE q17_7 (ELSE=SYSMIS).
RECODE q17_8  (ELSE=SYSMIS).
RECODE q17_9 (ELSE=SYSMIS).
RECODE q17_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



**q18*******************************************************************

COMPUTE q19_1_velha=q19_1.
COMPUTE q19_2_velha=q19_2.
COMPUTE q19_3_velha=q19_3.
COMPUTE q19_4_velha=q19_4.
COMPUTE q19_5_velha=q19_5.
COMPUTE q19_6_velha=q19_6.
COMPUTE q19_7_velha=q19_7.
COMPUTE q19_8_velha=q19_8.
COMPUTE q19_9_velha=q19_9.
EXECUTE.

DO IF (q18=0).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q23*******************************************************************

COMPUTE q24_1_velha=q24_1.
COMPUTE q24_2_velha=q24_2.
COMPUTE q24_3_velha=q24_3.
COMPUTE q24_4_velha=q24_4.
COMPUTE q24_99_velha=q24_99.
COMPUTE q25_velha=q25.
EXECUTE.


DO IF (q23=0).
RECODE q24_1 (ELSE=SYSMIS).
RECODE q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_99 (ELSE=SYSMIS).
RECODE q25 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q27*******************************************************************

COMPUTE q28_velha=q28.
EXECUTE.

DO IF (q27=0).
RECODE q28 (ELSE=SYSMIS).
END IF. 
EXECUTE.


**q36*******************************************************************

COMPUTE q36_1_velha=q36_1.
COMPUTE q36_2_velha=q36_2.
COMPUTE q36_3_velha=q36_3.
COMPUTE q36_4_velha=q36_4.
COMPUTE q36_5_velha=q36_5.
COMPUTE q36_0_velha=q36_0.
EXECUTE.


DO IF (q36_0=1).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2 (ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
RECODE q36_4 (ELSE=SYSMIS).
RECODE q36_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.



**q37*******************************************************************

COMPUTE q37_0_velha=q37_0.
COMPUTE q37_1_velha=q37_1.
COMPUTE q37_2_velha=q37_2.
COMPUTE q37_3_velha=q37_3.
COMPUTE q37_4_velha=q37_4.
COMPUTE q37_5_velha=q37_5.
COMPUTE q37_6_velha=q37_6.
COMPUTE q37_7_velha=q37_7.
COMPUTE q37_8_velha=q37_8.
COMPUTE q37_99_velha=q37_99.
EXECUTE.


DO IF (q37_0=1).
RECODE q37_1 (ELSE=SYSMIS).
RECODE q37_2 (ELSE=SYSMIS).
RECODE q37_3 (ELSE=SYSMIS).
RECODE q37_4 (ELSE=SYSMIS).
RECODE q37_5 (ELSE=SYSMIS).
RECODE q37_6 (ELSE=SYSMIS).
RECODE q37_7 (ELSE=SYSMIS).
RECODE q37_8 (ELSE=SYSMIS).
RECODE q37_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



**q43*******************************************************************

COMPUTE q44_velha=q44.
COMPUTE q45_velha=q45.


DO IF (q43=0).
RECODE q44 (ELSE=SYSMIS).
RECODE q45 (ELSE=SYSMIS).
END IF. 
EXECUTE.



**q49*******************************************************************

COMPUTE q50_velha=q50.


DO IF (q49=0).
RECODE q50 (ELSE=SYSMIS).
END IF. 
EXECUTE.






VARIABLE LABELS
q7_1_1_velha 'q7_1_1_v8443_1_1: Servi�o de Conviv�ncia e Fortalecimento de V�nculos_7_1_ Prote��o Social B�sica:'
q7_1_2_velha 'q7_1_2_v8443_2_2: Servi�o de Prote��o Social B�sica no domic�lio para pessoas com defici�ncia e idosas_7_1_ Prote��o Social B�sica:'
q7_1_0_velha 'q7_1_0_v8443_0_0: N�o executa diretamente Servi�os de Prote��o Social B�sica_7_1_ Prote��o Social B�sica:'
q7_2_1_velha 'q7_2_1_v8445_1_1: Servi�o de Prote��o e Atendimento Especializado a Fam�lias e Indiv�duos - PAEFI_7_2_ Prote��o Social Especial de M�dia Complexidade:'
q7_2_2_velha 'q7_2_2_v8445_2_2: Servi�o Especializado em Abordagem Social_7_2_ Prote��o Social Especial de M�dia Complexidade:'
q7_2_3_velha 'q7_2_3_v8445_3_3: Servi�o de Prote��o Social a Adolescentes em Cumprimento de Medida Socioeducativa de Liberdade Assistida - LA, e de Presta��o de Servi�os � Comunidade - PSC_7_2_ Prote��o Social Especial de M�dia Complexidade:'
q7_2_4_velha 'q7_2_4_v8445_4_4: Servi�o de Prote��o Social Especial para Pessoas com Defici�ncia, Idosos(as) e suas Fam�lias_7_2_ Prote��o Social Especial de M�dia Complexidade:'
q7_2_5_velha 'q7_2_5_v8445_5_5: Servi�o Especializado para Pessoas em Situa��o de Rua_7_2_ Prote��o Social Especial de M�dia Complexidade:'
q7_2_0_velha 'q7_2_0_v8445_0_0: N�o executa diretamente os Servi�os de Prote��o Social Especial de M�dia Complexidade_7_2_ Prote��o Social Especial de M�dia Complexidade:'
q7_3_1_velha 'q7_3_1_v8471_1_1: Servi�o de Acolhimento Institucional (Abrigo Institucional; Casa-lar; Casa de Passagem)_7_3_ Prote��o Social Especial de Alta Complexidade:'
q7_3_2_velha 'q7_3_2_v8471_2_2: Servi�o de Acolhimento em Rep�blica_7_3_ Prote��o Social Especial de Alta Complexidade:'
q7_3_3_velha 'q7_3_3_v8471_3_3: Servi�o de Acolhimento em Fam�lia Acolhedora_7_3_ Prote��o Social Especial de Alta Complexidade:'
q7_3_4_velha 'q7_3_4_v8471_4_4: Servi�o de Prote��o em Situa��es de Calamidades P�blicas e de Emerg�ncias_7_3_ Prote��o Social Especial de Alta Complexidade:'
q7_3_0_velha' q7_3_0_v8471_0_0: N�o executa diretamente os Servi�os de Prote��o Social Especial de Alta Complexidade_7_3_ Prote��o Social Especial de Alta Complexidade:'
q8_0_velha 'q8_0_v8534_0_0: N�o_8_ O estado realiza diretamente oferta de Benef�cios Eventuais da assist�ncia social e quais s�o os Benef�cios Eventuais concedidos?'
q8_1_velha 'q8_1_v8534_1_1: Sim, Benef�cio Eventual em situa��o de morte_8_ O estado realiza diretamente oferta de Benef�cios Eventuais da assist�ncia social e quais s�o os Benef�cios Eventuais concedidos?'
q8_2_velha 'q8_2_v8534_2_2: Sim, Benef�cio Eventual por nascimento_8_ O estado realiza diretamente oferta de Benef�cios Eventuais da assist�ncia social e quais s�o os Benef�cios Eventuais concedidos?'
q8_3_velha 'q8_3_v8534_3_3: Sim, Benef�cio Eventual em situa��o de calamidade (inclui desastres e emerg�ncias)_8_ O estado realiza diretamente oferta de Benef�cios Eventuais da assist�ncia social e quais s�o os Benef�cios Eventuais concedidos?'
q8_4_velha 'q8_4_v8534_4_4: Sim, Benef�cio Eventual em situa��o de vulnerabilidade tempor�ria_8_ O estado realiza diretamente oferta de Benef�cios Eventuais da assist�ncia social e quais s�o os Benef�cios Eventuais concedidos?'
q12_0_velha 'q12_0_v13309_0_0: N�o realiza a��es relativas � gest�o de benef�cios_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_1_velha 'q12_1_v13309_1_1: Monitoramento das concess�es de benef�cios do PBF_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_2_velha 'q12_2_v13309_2_2: Monitoramento dos cancelamentos de benef�cios do PBF_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_3_velha 'q12_3_v13309_3_3: Acompanhamento de processos que impactam em suspens�es ou bloqueios de benef�cios do PBF_12. Indique a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_4_velha 'q12_4_v13309_4_4: Gerenciamento de a��es relacionadas aos processos de Averigua��o e Revis�o Cadastral_12. Indique a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_5_velha 'q12_5_v13309_5_5: Monitoramento da situa��o de entrega de cart�es para benefici�rios do PBF_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_6_velha 'q12_6_v13309_6_6: A��es articuladas com a CAIXA para entrega de cart�es do PBF_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_7_velha 'q12_7_v13309_7_7: Acompanhamento das condi��es de atendimento de benefici�rios do PBF nos canais de pagamento da CAIXA_12. Indique a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_8_velha 'q12_8_v13309_8_8: Monitoramento da efetividade de pagamentos do PBF no Estado_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_9_velha 'q12_9_v13309_9_9: Promo��o de capacita��o presencial sobre o PBF para agentes municipais_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_10_velha 'q12_10_v13309_10_10: Orienta��o t�cnica sobre o PBF para agentes municipais_12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_11_velha 'q12_11_v13309_11_11: Produ��o de material de capacita��o ou orienta��o t�cnica sobre o PBF para agentes municipais_12. Indique a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no estado:'
q12_99_velha 'q12_11_v13309_11_11: Produ��o de material de capacita��o ou orienta��o t�cnica sobre o PBF para agentes municipais_12. Indique a��es relativas � gest�o de benef�cios do PBF s�o desenvolvidas pela Assist�ncia Social no estado:'
q13_0_velha 'q13_0_v13308_0_0: N�o h� dificuldades_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q13_1_velha 'q13_1_v13308_1_1: informa��es disponibilizadas Minist�rio da Cidadania s�o de dif�cil compreens�o e/ou dif�cil acesso (Instru��es Operacionais, Informes, Comunicados)13.dificuldades enfrentadas em rela��o � gest�o de benef�cios do PBF:'
q13_2_velha 'q13_2_v13308_2_2: Falta de informa��es sobre as regras do Programa_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q13_3_velha 'q13_3_v13308_3_3: Falta de acesso � internet e/ou baixa qualidade da internet_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q13_4_velha' q13_4_v13308_4_4: Equipe n�o tem acesso ao SIBEC_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q13_5_velha' q13_5_v13308_5_5: Instabilidade do SIBEC_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q13_6_velha'q13_6_v13308_6_6: Equipe n�o tem acesso ao SigPBF_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q13_7_velha 'q13_7_v13308_7_7: Instabilidade do SigPBF_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q13_99_velha 'q13_7_v13308_7_7: Instabilidade do SigPBF_13. Indique quais s�o as dificuldades enfrentadas pelo Estado em rela��o � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF):'
q14_0_velha  'q14_0_v13311_0_0: N�o realizou nenhuma das atividades acima._14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_1_velha 'q14_1_v13311_1_1: Realizou apoio t�cnico/estudos/grupos/capacita��o de discuss�o sobre o tema_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_2_velha 'q14_2_v13311_2_2: Regulamentou os benef�cios eventuais em situa��o de calamidade no �mbito dos estados_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_3_velha 'q14_3_v13311_3_3: Regulamentou o cofinanciamento estadual aos munic�pios para benef�cios eventuais em situa��o de calamidade_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_4_velha 'q14_4_v13311_4_4: Regulamentou benef�cio eventual espec�fico para situa��o de calamidade no �mbito estadual_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_5_velha 'q14_5_v13311_5_5: Regulamentou o cofinanciamento estadual para o Servi�os de Prote��o Social em situa��es de emerg�ncia e calamidade p�blica no SUAS_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_6_velha 'q14_6_v13311_6_6: Definiu fluxos de trabalho para serem executados durante a emerg�ncia_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_7_velha 'q14_7_v13311_7_7: Elaborou planos de conting�ncia (seja intersetorial ou no �mbito da Assist�ncia Social)_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_8_velha 'q14_8_v13311_8_8: Produziu dados que subsidiaram a vigil�ncia socioassistencial na preven��o de desastres_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_9_velha 'q14_9_v13311_9_9: Monitorou a ocorr�ncia de emerg�ncias no Estado visando � aplica��o, quando necess�rio, de a��es especiais do Programa Bolsa Fam�lia_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_10_velha 'q14_10_v13311_10_10: Mobilizou a comunidade para preven��o de desastres_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q14_99_velha 'q14_99_v13311_99_99: Outros_14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
q16_1_velha 'q16_1_v13306_1_Execu��o direta do servi�o pelo governo estadual por meio de CREAS Regional (Modelo I) _16.  Caso oferte PAEFI de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades'
q16_2_velha 'q16_2_v13306_2_Repasse de recursos do estado para CREAS municipal regionalizado (Modelo II)  (_16.  Caso oferte PAEFI de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades'
q16_1_1_velha 'q16_1_1_v13314_16_1_99_ Quantidade de unidades_16.  Caso oferte Servi�o de Prote��o e Atendimento Especializado a Fam�lias e Indiv�duos (PAEFI) de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades'
q16_2_1_velha 'q16_2_1_v16064_16_2_99_ Quantidade de unidades_16.  Caso oferte Servi�o de Prote��o e Atendimento Especializado a Fam�lias e Indiv�duos (PAEFI) de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades'
q17_1_velha 'q17_1_v13315_1_1: Apoio t�cnico a dist�ncia (por telefone ou e-mail)_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_2_velha 'q17_2_v13315_2_2: Apoio t�cnico presencial (visitas t�cnicas)_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_3_velha 'q17_3_v13315_3_3: Capacita��o das equipes de refer�ncia_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_4_velha 'q17_4_v13315_4_4: Fluxos e protocolos entre os servi�os e a rede intersetorial_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_5_velha 'q17_5_v13315_5_5: Fluxos e protocolos entre os servi�os e o Sistema de Justi�a_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_6_velha 'q17_6_v13315_6_6: Efluxos e protocolos entre os servi�os e Sistema de Garantia de Direitos_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_7_velha 'q17_7_v13315_7_7: Monitoramento da aplica��o dos recursos transferidos_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_8_velha 'q17_8_v13315_8_8: Monitoramento da composi��o das equipes t�cnicas, de acordo com a NOB-RH/SUAS_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_9_velha 'q17_9_v13315_9_9: Orienta��o sobre o preenchimento/utiliza��o/atualiza��o de sistemas de informa��es do SUAS (RMA, CadSUAS, Censo SUAS)_17. a��es de apoio t�cnico/monitoramento desenv. com os CREAS municipais regionalizado (Modelo II)'
q17_99_velha 'q17_99_v13315_99_99: Outras_17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q19_1_velha 'q19_1_v13313_1_1: Unidades de Acolhimento Institucional para crian�as e adolescentes_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_2_velha 'q19_2_v13313_2_2: Unidades de Acolhimento Institucional para pessoas idosas_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_3_velha 'q19_3_v13313_3_3: Unidades de Acolhimento Institucional para pessoas em situa��o de rua_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_4_velha 'q19_4_v13313_4_4: Unidades de Acolhimento Institucional para pessoas com defici�ncia_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_5_velha 'q19_5_v13313_5_5: Unidades de Acolhimento Institucional para mulheres v�timas de viol�ncia_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_6_velha 'q19_6_v13313_6_6: Unidades de Acolhimento em Rep�blica para jovens (maiores de 18 anos)_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_7_velha 'q19_7_v13313_7_7: Unidades de Acolhimento em Rep�blica para adultas em processo de sa�da das ruas_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_8_velha 'q19_8_v13313_8_8: Unidades de Acolhimento em Rep�blica para pessoas idosas_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q19_9_velha 'q19_8_v13313_8_8: Unidades de Acolhimento em Rep�blica para pessoas idosas_19. Quais servi�os de alta complexidade de car�ter REGIONAL s�o ofertados no Estado?'
q24_1_velha 'q24_1_v9618_1_1: Adequa��o dos CRAS_24. Quais os principais temas presentes no plano de provid�ncia?'
q24_2_velha 'q24_2_v9618_2_2: Adequa��o dos CREAS_24. Quais os principais temas presentes no plano de provid�ncia?'
q24_3_velha 'q24_3_v9618_3_3: Regulamenta��o da oferta de benef�cios eventuais_24. Quais os principais temas presentes no plano de provid�ncia?'
q24_4_velha 'q24_4_v9618_4_4: Implanta��o da Vigil�ncia Socioassistencial no munic�pio_24. Quais os principais temas presentes no plano de provid�ncia?'
q24_99_velha 'q24_4_v9618_4_4: Implanta��o da Vigil�ncia Socioassistencial no munic�pio_24. Quais os principais temas presentes no plano de provid�ncia?'
q25_velha 'q24_4_v9618_4_4: Implanta��o da Vigil�ncia Socioassistencial no munic�pio_24. Quais os principais temas presentes no plano de provid�ncia?'
q28_velha 'q28_v9632_28_ Se sim, h� rotatividade na representa��o por regi�o do Estado?'
q36_1_velha 'q36_1_v16069_1_1: S�o enviados aos membros da CIB_36. De que maneira as resolu��es e materiais das reuni�es da CIB s�o publicizados (tornam-se de conhecimento para a sociedade)?'
q36_2_velha 'q36_2_v16069_2_2: S�o enviados a todos os munic�pios dos estados_36. De que maneira as resolu��es e materiais das reuni�es da CIB s�o publicizados (tornam-se de conhecimento para a sociedade)?'
q36_3_velha 'q36_2_v16069_2_2: S�o enviados a todos os munic�pios dos estados_36. De que maneira as resolu��es e materiais das reuni�es da CIB s�o publicizados (tornam-se de conhecimento para a sociedade)?'
q36_4_velha 'q36_4_v16069_4_4: S�o enviados ao Conselho Estadual de Assist�ncia Social_36. De que maneira as resolu��es e materiais das reuni�es da CIB s�o publicizados (tornam-se de conhecimento para a sociedade)?'
q36_5_velha 'q36_5_v16069_5_5: Em Boletins produzidos pela �rea de assist�ncia social_36. De que maneira as resolu��es e materiais das reuni�es da CIB s�o publicizados (tornam-se de conhecimento para a sociedade)?'
q36_0_velha 'q36_0_v16069_0_0: N�o s�o publicizados_36. De que maneira as resolu��es e materiais das reuni�es da CIB s�o publicizados (tornam-se de conhecimento para a sociedade)?'
q37_0_velha 'q37_0_v16070_0_0: N�o realizou a��es durante a pandemia decorrente do Coronav�rus_37. Informe as a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'
q37_1_velha 'q37_1_v16070_1_1: Realiza��o de diagn�stico estadual, mapeando os principais riscos � transmissibilidade no territ�rio_37.a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'
q37_2_velha 'q37_2_v16070_2_2: Participou ou Elaborou o plano de conting�ncia/resposta_37. Informe as a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'
q37_3_velha  'q37_3_v16070_3_3: Apoiou os munic�pios na reorganiza��o das unidades de acolhimento_37. Informe as a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'	
q37_4_velha  'q37_4_v16070_4_4: Apoiou os munic�pios no atendimento a popula��o de rua_37. Informe as a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'
q37_5_velha 'q37_5_v16070_5_5: Produziu orienta��es t�cnicas espec�ficas para o atendimento durante o per�odo da pandemia_37. Informe as a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente COVID-19.'
q37_6_velha 'q37_6_v16070_6_6: Pactua��o com o Sistema de Justi�a de fluxos e procedimentos necess�rios � situa��o de emerg�ncia._37. a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'
q37_7_velha 'q37_7_v16070_7_7: Realizou cofinanciamento com recursos extraordin�rios para os munic�pios durante a pandemia._37. Informe as a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente COVID-19.'
q37_8_velha 'q37_8_v16070_8_8: Regulamentou cofinanciamento espec�fico para benef�cio eventual em situa��o de calamidade devido � pandemia_37. a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do COVID-19.'
q37_99_velha 'q37_99_v16070_99_99: Outros_37. Informe as a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'
q44_velha 'q44_v13301_44_ O plano de Cargos, Carreiras e Sal�rios dos servidores do �rg�o gestor da assist�ncia social (PCCS) pertence a qual �rg�o do estado?'
q45_velha 'q45_v13303_45_ Qual o ano da �ltima atualiza��o deste PCCS?'
q50_velha 'q50_v16082_50_ Com qual frequ�ncia ocorreram as reuni�es ordin�rias da Mesa de Gest�o do Trabalho do SUAS no ano de 2019?'
.