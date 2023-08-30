* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO ESTADUAL - CENSO SUAS 2022
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
q7_1_1_velha 'q7_1_1_v8443_1_1: Serviço de Convivência e Fortalecimento de Vínculos_7_1_ Proteção Social Básica:'
q7_1_2_velha 'q7_1_2_v8443_2_2: Serviço de Proteção Social Básica no domicílio para pessoas com deficiência e idosas_7_1_ Proteção Social Básica:'
q7_1_0_velha 'q7_1_0_v8443_0_0: Não executa diretamente Serviços de Proteção Social Básica_7_1_ Proteção Social Básica:'
q7_2_1_velha 'q7_2_1_v8445_1_1: Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos - PAEFI_7_2_ Proteção Social Especial de Média Complexidade:'
q7_2_2_velha 'q7_2_2_v8445_2_2: Serviço Especializado em Abordagem Social_7_2_ Proteção Social Especial de Média Complexidade:'
q7_2_3_velha 'q7_2_3_v8445_3_3: Serviço de Proteção Social a Adolescentes em Cumprimento de Medida Socioeducativa de Liberdade Assistida - LA, e de Prestação de Serviços à Comunidade - PSC_7_2_ Proteção Social Especial de Média Complexidade:'
q7_2_4_velha 'q7_2_4_v8445_4_4: Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos(as) e suas Famílias_7_2_ Proteção Social Especial de Média Complexidade:'
q7_2_5_velha 'q7_2_5_v8445_5_5: Serviço Especializado para Pessoas em Situação de Rua_7_2_ Proteção Social Especial de Média Complexidade:'
q7_2_0_velha 'q7_2_0_v8445_0_0: Não executa diretamente os Serviços de Proteção Social Especial de Média Complexidade_7_2_ Proteção Social Especial de Média Complexidade:'
q7_3_1_velha 'q7_3_1_v8471_1_1: Serviço de Acolhimento Institucional (Abrigo Institucional; Casa-lar; Casa de Passagem)_7_3_ Proteção Social Especial de Alta Complexidade:'
q7_3_2_velha 'q7_3_2_v8471_2_2: Serviço de Acolhimento em República_7_3_ Proteção Social Especial de Alta Complexidade:'
q7_3_3_velha 'q7_3_3_v8471_3_3: Serviço de Acolhimento em Família Acolhedora_7_3_ Proteção Social Especial de Alta Complexidade:'
q7_3_4_velha 'q7_3_4_v8471_4_4: Serviço de Proteção em Situações de Calamidades Públicas e de Emergências_7_3_ Proteção Social Especial de Alta Complexidade:'
q7_3_0_velha' q7_3_0_v8471_0_0: Não executa diretamente os Serviços de Proteção Social Especial de Alta Complexidade_7_3_ Proteção Social Especial de Alta Complexidade:'
q8_0_velha 'q8_0_v8534_0_0: Não_8_ O estado realiza diretamente oferta de Benefícios Eventuais da assistência social e quais são os Benefícios Eventuais concedidos?'
q8_1_velha 'q8_1_v8534_1_1: Sim, Benefício Eventual em situação de morte_8_ O estado realiza diretamente oferta de Benefícios Eventuais da assistência social e quais são os Benefícios Eventuais concedidos?'
q8_2_velha 'q8_2_v8534_2_2: Sim, Benefício Eventual por nascimento_8_ O estado realiza diretamente oferta de Benefícios Eventuais da assistência social e quais são os Benefícios Eventuais concedidos?'
q8_3_velha 'q8_3_v8534_3_3: Sim, Benefício Eventual em situação de calamidade (inclui desastres e emergências)_8_ O estado realiza diretamente oferta de Benefícios Eventuais da assistência social e quais são os Benefícios Eventuais concedidos?'
q8_4_velha 'q8_4_v8534_4_4: Sim, Benefício Eventual em situação de vulnerabilidade temporária_8_ O estado realiza diretamente oferta de Benefícios Eventuais da assistência social e quais são os Benefícios Eventuais concedidos?'
q12_0_velha 'q12_0_v13309_0_0: Não realiza ações relativas à gestão de benefícios_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_1_velha 'q12_1_v13309_1_1: Monitoramento das concessões de benefícios do PBF_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_2_velha 'q12_2_v13309_2_2: Monitoramento dos cancelamentos de benefícios do PBF_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_3_velha 'q12_3_v13309_3_3: Acompanhamento de processos que impactam em suspensões ou bloqueios de benefícios do PBF_12. Indique ações relativas à gestão de benefícios do PBF são desenvolvidas pela Assistência Social no estado:'
q12_4_velha 'q12_4_v13309_4_4: Gerenciamento de ações relacionadas aos processos de Averiguação e Revisão Cadastral_12. Indique ações relativas à gestão de benefícios do PBF são desenvolvidas pela Assistência Social no estado:'
q12_5_velha 'q12_5_v13309_5_5: Monitoramento da situação de entrega de cartões para beneficiários do PBF_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_6_velha 'q12_6_v13309_6_6: Ações articuladas com a CAIXA para entrega de cartões do PBF_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_7_velha 'q12_7_v13309_7_7: Acompanhamento das condições de atendimento de beneficiários do PBF nos canais de pagamento da CAIXA_12. Indique ações relativas à gestão de benefícios do PBF são desenvolvidas pela Assistência Social no estado:'
q12_8_velha 'q12_8_v13309_8_8: Monitoramento da efetividade de pagamentos do PBF no Estado_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_9_velha 'q12_9_v13309_9_9: Promoção de capacitação presencial sobre o PBF para agentes municipais_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_10_velha 'q12_10_v13309_10_10: Orientação técnica sobre o PBF para agentes municipais_12. Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no estado:'
q12_11_velha 'q12_11_v13309_11_11: Produção de material de capacitação ou orientação técnica sobre o PBF para agentes municipais_12. Indique ações relativas à gestão de benefícios do PBF são desenvolvidas pela Assistência Social no estado:'
q12_99_velha 'q12_11_v13309_11_11: Produção de material de capacitação ou orientação técnica sobre o PBF para agentes municipais_12. Indique ações relativas à gestão de benefícios do PBF são desenvolvidas pela Assistência Social no estado:'
q13_0_velha 'q13_0_v13308_0_0: Não há dificuldades_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q13_1_velha 'q13_1_v13308_1_1: informações disponibilizadas Ministério da Cidadania são de difícil compreensão e/ou difícil acesso (Instruções Operacionais, Informes, Comunicados)13.dificuldades enfrentadas em relação à gestão de benefícios do PBF:'
q13_2_velha 'q13_2_v13308_2_2: Falta de informações sobre as regras do Programa_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q13_3_velha 'q13_3_v13308_3_3: Falta de acesso à internet e/ou baixa qualidade da internet_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q13_4_velha' q13_4_v13308_4_4: Equipe não tem acesso ao SIBEC_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q13_5_velha' q13_5_v13308_5_5: Instabilidade do SIBEC_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q13_6_velha'q13_6_v13308_6_6: Equipe não tem acesso ao SigPBF_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q13_7_velha 'q13_7_v13308_7_7: Instabilidade do SigPBF_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q13_99_velha 'q13_7_v13308_7_7: Instabilidade do SigPBF_13. Indique quais são as dificuldades enfrentadas pelo Estado em relação à gestão de benefícios do Programa Bolsa Família (PBF):'
q14_0_velha  'q14_0_v13311_0_0: Não realizou nenhuma das atividades acima._14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_1_velha 'q14_1_v13311_1_1: Realizou apoio técnico/estudos/grupos/capacitação de discussão sobre o tema_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_2_velha 'q14_2_v13311_2_2: Regulamentou os benefícios eventuais em situação de calamidade no âmbito dos estados_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_3_velha 'q14_3_v13311_3_3: Regulamentou o cofinanciamento estadual aos municípios para benefícios eventuais em situação de calamidade_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_4_velha 'q14_4_v13311_4_4: Regulamentou benefício eventual específico para situação de calamidade no âmbito estadual_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_5_velha 'q14_5_v13311_5_5: Regulamentou o cofinanciamento estadual para o Serviços de Proteção Social em situações de emergência e calamidade pública no SUAS_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_6_velha 'q14_6_v13311_6_6: Definiu fluxos de trabalho para serem executados durante a emergência_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_7_velha 'q14_7_v13311_7_7: Elaborou planos de contingência (seja intersetorial ou no âmbito da Assistência Social)_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_8_velha 'q14_8_v13311_8_8: Produziu dados que subsidiaram a vigilância socioassistencial na prevenção de desastres_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_9_velha 'q14_9_v13311_9_9: Monitorou a ocorrência de emergências no Estado visando à aplicação, quando necessário, de ações especiais do Programa Bolsa Família_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_10_velha 'q14_10_v13311_10_10: Mobilizou a comunidade para prevenção de desastres_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q14_99_velha 'q14_99_v13311_99_99: Outros_14. Em 2022, para prevenção das emergências e calamidade, a Gestão Estadual:'
q16_1_velha 'q16_1_v13306_1_Execução direta do serviço pelo governo estadual por meio de CREAS Regional (Modelo I) _16.  Caso oferte PAEFI de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades'
q16_2_velha 'q16_2_v13306_2_Repasse de recursos do estado para CREAS municipal regionalizado (Modelo II)  (_16.  Caso oferte PAEFI de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades'
q16_1_1_velha 'q16_1_1_v13314_16_1_99_ Quantidade de unidades_16.  Caso oferte Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI) de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades'
q16_2_1_velha 'q16_2_1_v16064_16_2_99_ Quantidade de unidades_16.  Caso oferte Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI) de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades'
q17_1_velha 'q17_1_v13315_1_1: Apoio técnico a distância (por telefone ou e-mail)_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_2_velha 'q17_2_v13315_2_2: Apoio técnico presencial (visitas técnicas)_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_3_velha 'q17_3_v13315_3_3: Capacitação das equipes de referência_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_4_velha 'q17_4_v13315_4_4: Fluxos e protocolos entre os serviços e a rede intersetorial_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_5_velha 'q17_5_v13315_5_5: Fluxos e protocolos entre os serviços e o Sistema de Justiça_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_6_velha 'q17_6_v13315_6_6: Efluxos e protocolos entre os serviços e Sistema de Garantia de Direitos_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_7_velha 'q17_7_v13315_7_7: Monitoramento da aplicação dos recursos transferidos_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_8_velha 'q17_8_v13315_8_8: Monitoramento da composição das equipes técnicas, de acordo com a NOB-RH/SUAS_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q17_9_velha 'q17_9_v13315_9_9: Orientação sobre o preenchimento/utilização/atualização de sistemas de informações do SUAS (RMA, CadSUAS, Censo SUAS)_17. ações de apoio técnico/monitoramento desenv. com os CREAS municipais regionalizado (Modelo II)'
q17_99_velha 'q17_99_v13315_99_99: Outras_17. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
q19_1_velha 'q19_1_v13313_1_1: Unidades de Acolhimento Institucional para crianças e adolescentes_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_2_velha 'q19_2_v13313_2_2: Unidades de Acolhimento Institucional para pessoas idosas_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_3_velha 'q19_3_v13313_3_3: Unidades de Acolhimento Institucional para pessoas em situação de rua_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_4_velha 'q19_4_v13313_4_4: Unidades de Acolhimento Institucional para pessoas com deficiência_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_5_velha 'q19_5_v13313_5_5: Unidades de Acolhimento Institucional para mulheres vítimas de violência_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_6_velha 'q19_6_v13313_6_6: Unidades de Acolhimento em República para jovens (maiores de 18 anos)_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_7_velha 'q19_7_v13313_7_7: Unidades de Acolhimento em República para adultas em processo de saída das ruas_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_8_velha 'q19_8_v13313_8_8: Unidades de Acolhimento em República para pessoas idosas_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q19_9_velha 'q19_8_v13313_8_8: Unidades de Acolhimento em República para pessoas idosas_19. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?'
q24_1_velha 'q24_1_v9618_1_1: Adequação dos CRAS_24. Quais os principais temas presentes no plano de providência?'
q24_2_velha 'q24_2_v9618_2_2: Adequação dos CREAS_24. Quais os principais temas presentes no plano de providência?'
q24_3_velha 'q24_3_v9618_3_3: Regulamentação da oferta de benefícios eventuais_24. Quais os principais temas presentes no plano de providência?'
q24_4_velha 'q24_4_v9618_4_4: Implantação da Vigilância Socioassistencial no município_24. Quais os principais temas presentes no plano de providência?'
q24_99_velha 'q24_4_v9618_4_4: Implantação da Vigilância Socioassistencial no município_24. Quais os principais temas presentes no plano de providência?'
q25_velha 'q24_4_v9618_4_4: Implantação da Vigilância Socioassistencial no município_24. Quais os principais temas presentes no plano de providência?'
q28_velha 'q28_v9632_28_ Se sim, há rotatividade na representação por região do Estado?'
q36_1_velha 'q36_1_v16069_1_1: São enviados aos membros da CIB_36. De que maneira as resoluções e materiais das reuniões da CIB são publicizados (tornam-se de conhecimento para a sociedade)?'
q36_2_velha 'q36_2_v16069_2_2: São enviados a todos os municípios dos estados_36. De que maneira as resoluções e materiais das reuniões da CIB são publicizados (tornam-se de conhecimento para a sociedade)?'
q36_3_velha 'q36_2_v16069_2_2: São enviados a todos os municípios dos estados_36. De que maneira as resoluções e materiais das reuniões da CIB são publicizados (tornam-se de conhecimento para a sociedade)?'
q36_4_velha 'q36_4_v16069_4_4: São enviados ao Conselho Estadual de Assistência Social_36. De que maneira as resoluções e materiais das reuniões da CIB são publicizados (tornam-se de conhecimento para a sociedade)?'
q36_5_velha 'q36_5_v16069_5_5: Em Boletins produzidos pela área de assistência social_36. De que maneira as resoluções e materiais das reuniões da CIB são publicizados (tornam-se de conhecimento para a sociedade)?'
q36_0_velha 'q36_0_v16069_0_0: Não são publicizados_36. De que maneira as resoluções e materiais das reuniões da CIB são publicizados (tornam-se de conhecimento para a sociedade)?'
q37_0_velha 'q37_0_v16070_0_0: Não realizou ações durante a pandemia decorrente do Coronavírus_37. Informe as ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do Coronavírus – COVID-19.'
q37_1_velha 'q37_1_v16070_1_1: Realização de diagnóstico estadual, mapeando os principais riscos à transmissibilidade no território_37.ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do Coronavírus – COVID-19.'
q37_2_velha 'q37_2_v16070_2_2: Participou ou Elaborou o plano de contingência/resposta_37. Informe as ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do Coronavírus – COVID-19.'
q37_3_velha  'q37_3_v16070_3_3: Apoiou os municípios na reorganização das unidades de acolhimento_37. Informe as ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do Coronavírus – COVID-19.'	
q37_4_velha  'q37_4_v16070_4_4: Apoiou os municípios no atendimento a população de rua_37. Informe as ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do Coronavírus – COVID-19.'
q37_5_velha 'q37_5_v16070_5_5: Produziu orientações técnicas específicas para o atendimento durante o período da pandemia_37. Informe as ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente COVID-19.'
q37_6_velha 'q37_6_v16070_6_6: Pactuação com o Sistema de Justiça de fluxos e procedimentos necessários à situação de emergência._37. ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do Coronavírus – COVID-19.'
q37_7_velha 'q37_7_v16070_7_7: Realizou cofinanciamento com recursos extraordinários para os municípios durante a pandemia._37. Informe as ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente COVID-19.'
q37_8_velha 'q37_8_v16070_8_8: Regulamentou cofinanciamento específico para benefício eventual em situação de calamidade devido à pandemia_37. ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do COVID-19.'
q37_99_velha 'q37_99_v16070_99_99: Outros_37. Informe as ações realizadas no âmbito da gestão da Assistência Social durante a pandemia decorrente do Coronavírus – COVID-19.'
q44_velha 'q44_v13301_44_ O plano de Cargos, Carreiras e Salários dos servidores do órgão gestor da assistência social (PCCS) pertence a qual órgão do estado?'
q45_velha 'q45_v13303_45_ Qual o ano da última atualização deste PCCS?'
q50_velha 'q50_v16082_50_ Com qual frequência ocorreram as reuniões ordinárias da Mesa de Gestão do Trabalho do SUAS no ano de 2019?'
.