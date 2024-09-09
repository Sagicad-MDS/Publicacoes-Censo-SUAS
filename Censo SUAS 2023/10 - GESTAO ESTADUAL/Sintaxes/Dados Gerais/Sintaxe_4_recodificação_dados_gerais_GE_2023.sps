* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO ESTADUAL - CENSO SUAS 2023
****************************************************************************************************

****q1**********************************************************************************************

COMPUTE q2_1_velha=q2_1.
COMPUTE q2_2_velha=q2_2.
COMPUTE q2_3_velha=q2_3.
COMPUTE q2_4_velha=q2_4.
COMPUTE q2_5_velha=q2_5.
COMPUTE q2_6_velha=q2_6.
COMPUTE q2_7_velha=q2_7.
COMPUTE q2_99_velha=q2_99.
EXECUTE.

DO IF (q1=1  | q1=3 ).
RECODE q2_1 (ELSE=SYSMIS).
RECODE q2_2 (ELSE=SYSMIS).
RECODE q2_3 (ELSE=SYSMIS).
RECODE q2_4 (ELSE=SYSMIS).
RECODE q2_5 (ELSE=SYSMIS).
RECODE q2_6 (ELSE=SYSMIS).
RECODE q2_7 (ELSE=SYSMIS).
RECODE q2_99  (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q5**********************************************************************************************

COMPUTE q5_1_1_velha=q5_1_1.
COMPUTE q5_1_2_velha=q5_1_2.
COMPUTE q5_1_0_velha=q5_1_0.
COMPUTE q5_2_1_velha=q5_2_1.
COMPUTE q5_2_2_velha=q5_2_2.
COMPUTE q5_2_3_velha=q5_2_3.
COMPUTE q5_2_4_velha=q5_2_4.
COMPUTE q5_2_5_velha=q5_2_5.
COMPUTE q5_2_0_velha=q5_2_0.
COMPUTE q5_3_1_velha=q5_3_1.
COMPUTE q5_3_2_velha=q5_3_2.
COMPUTE q5_3_3_velha=q5_3_3.
COMPUTE q5_3_4_velha=q5_3_4.
COMPUTE q5_3_0_velha=q5_3_0.
EXECUTE.

DO IF (q5_1_0=1).
RECODE q5_1_1 (ELSE=SYSMIS).
RECODE q5_1_2 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q5_2_0=1).
RECODE q5_2_1 (ELSE=SYSMIS).
RECODE q5_2_2 (ELSE=SYSMIS).
RECODE q5_2_3 (ELSE=SYSMIS).
RECODE q5_2_4 (ELSE=SYSMIS).
RECODE q5_2_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q5_3_0=1).
RECODE q5_3_1 (ELSE=SYSMIS).
RECODE q5_3_2 (ELSE=SYSMIS).
RECODE q5_3_3 (ELSE=SYSMIS).
RECODE q5_3_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q6*****************************************************************************************************

COMPUTE q6_0_velha=q6_0.
COMPUTE q6_1_velha=q6_1.
COMPUTE q6_2_velha=q6_2.
COMPUTE q6_3_velha=q6_3.
COMPUTE q6_4_velha=q6_4.


DO IF (q6_0=1).
RECODE q6_1 (ELSE=SYSMIS).
RECODE q6_2 (ELSE=SYSMIS).
RECODE q6_3 (ELSE=SYSMIS).
RECODE q6_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q8*****************************************************************************************************

COMPUTE q8_0_velha=q8_0.
COMPUTE q8_1_velha=q8_1.
COMPUTE q8_2_velha=q8_2.
COMPUTE q8_3_velha=q8_3.
COMPUTE q8_4_velha=q8_4.
COMPUTE q8_5_velha=q8_5.
COMPUTE q8_6_velha=q8_6.
COMPUTE q8_7_velha=q8_7.
COMPUTE q8_8_velha=q8_8.
COMPUTE q8_9_velha=q8_9.
COMPUTE q8_99_velha=q8_99.
EXECUTE.


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



****q9*****************************************************************************************************

COMPUTE q10_1_velha=q10_1.
COMPUTE q10_2_velha=q10_2.
COMPUTE q10_1_1_velha=q10_1_1.
COMPUTE q10_2_1_velha=q10_2_1.
COMPUTE q11_1_velha=q11_1.
COMPUTE q11_2_velha=q11_2.
COMPUTE q11_3_velha=q11_3.
COMPUTE q11_4_velha=q11_4.
COMPUTE q11_5_velha=q11_5.
COMPUTE q11_6_velha=q11_6.
COMPUTE q11_7_velha=q11_7.
COMPUTE q11_8_velha=q11_8.
COMPUTE q11_9_velha=q11_9.
COMPUTE q11_99_velha=q11_99.
COMPUTE q12_velha=q12.
COMPUTE q13_1_velha=q13_1.
COMPUTE q13_2_velha=q13_2.
COMPUTE q13_3_velha=q13_3.
COMPUTE q13_4_velha=q13_4.
COMPUTE q13_5_velha=q13_5.
COMPUTE q13_6_velha=q13_6.
COMPUTE q13_7_velha=q13_7.
COMPUTE q13_8_velha=q13_8.
COMPUTE q13_9_velha=q13_9.
EXECUTE.



DO IF (q9=0).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_1_1 (ELSE=SYSMIS).
RECODE q10_2_1  (ELSE=SYSMIS).
RECODE q11_1 (ELSE=SYSMIS).
RECODE q11_2 (ELSE=SYSMIS).
RECODE q11_3 (ELSE=SYSMIS).
RECODE q11_4 (ELSE=SYSMIS).
RECODE q11_5 (ELSE=SYSMIS).
RECODE q11_6 (ELSE=SYSMIS).
RECODE q11_7 (ELSE=SYSMIS).
RECODE q11_8 (ELSE=SYSMIS).
RECODE q11_9 (ELSE=SYSMIS).
RECODE q11_99 (ELSE=SYSMIS).
RECODE q12 (ELSE=SYSMIS).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3 (ELSE=SYSMIS).
RECODE q13_4 (ELSE=SYSMIS).
RECODE q13_5 (ELSE=SYSMIS).
RECODE q13_6 (ELSE=SYSMIS).
RECODE q13_7 (ELSE=SYSMIS).
RECODE q13_8 (ELSE=SYSMIS).
RECODE q13_9 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q16*****************************************************************************************************

COMPUTE q17_velha=q17.
EXECUTE.


DO IF (q16=0).
RECODE q17 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q24****************************************************************************************************

COMPUTE q24_0_velha=q24_0.
COMPUTE q24_1_velha=q24_1.
COMPUTE q24_2_velha=q24_2.
COMPUTE q24_3_velha=q24_3.
COMPUTE q24_4_velha=q24_4.
COMPUTE q24_5_velha=q24_5.
EXECUTE.


DO IF (q24_0=1).
RECODE q24_1 (ELSE=SYSMIS).
RECODE q24_2 (ELSE=SYSMIS).
RECODE q24_3 (ELSE=SYSMIS).
RECODE q24_4 (ELSE=SYSMIS).
RECODE q24_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q25*****************************************************************************************************

COMPUTE q25_1_99_velha=q25_1_99.
EXECUTE.

DO IF (q25_1=0).
RECODE q25_1_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


COMPUTE q25_2_99_velha=q25_2_99.
EXECUTE.

DO IF (q25_2=0).
RECODE q25_2_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


COMPUTE q25_3_99_velha=q25_3_99.
EXECUTE.

DO IF (q25_3=0).
RECODE q25_3_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


COMPUTE q25_4_99_velha=q25_4_99.
EXECUTE.

DO IF (q25_4=0).
RECODE q25_4_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q26*****************************************************************************************************

COMPUTE q26_1_99_velha=q26_1_99.
EXECUTE.

DO IF (q26_1=0).
RECODE q26_1_99  (ELSE=SYSMIS).
END IF. 
EXECUTE.

COMPUTE q26_2_99_velha=q26_2_99.
EXECUTE.

DO IF (q26_2=0).
RECODE q26_2_99  (ELSE=SYSMIS).
END IF. 
EXECUTE.


COMPUTE q26_3_99_velha=q26_3_99.
EXECUTE.

DO IF (q26_3=0).
RECODE q26_3_99  (ELSE=SYSMIS).
END IF. 
EXECUTE.


COMPUTE q26_4_99_velha=q26_4_99.
EXECUTE.

DO IF (q26_4=0).
RECODE q26_4_99  (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q28*****************************************************************************************************

COMPUTE q28_1_1_velha=q28_1_1.
COMPUTE q28_1_2_velha=q28_1_2.
COMPUTE q28_1_3_velha=q28_1_3.
COMPUTE q28_1_5_velha=q28_1_5.
EXECUTE.

DO IF (q28_1_1=0).
RECODE q28_1_2  (ELSE=SYSMIS).
RECODE q28_1_3  (ELSE=SYSMIS).
RECODE q28_1_5  (ELSE=SYSMIS).
END IF. 
EXECUTE.


COMPUTE q28_2_1_velha=q28_2_1.
COMPUTE q28_2_2_velha=q28_2_2.
COMPUTE q28_2_3_velha=q28_2_3.
COMPUTE q28_2_5_velha=q28_2_5.
EXECUTE.

DO IF (q28_2_1=0).
RECODE q28_2_2  (ELSE=SYSMIS).
RECODE q28_2_3  (ELSE=SYSMIS).
RECODE q28_2_5  (ELSE=SYSMIS).
END IF. 
EXECUTE.







VARIABLE LABELS
q2_1_velha'q2_1_1: Educação_políticas setoriais'
q2_2_velha'q2_2_2: Planejamento_políticas setoriais'
q2_3_velha'q2_3_3: Saúde_políticas setoriais'
q2_4_velha'q2_4_4: Habitação_políticas setoriais'
q2_5_velha'q2_5_5: Segurança Alimentar_políticas setoriais'
q2_6_velha'q2_6_6: Trabalho e/ou Emprego_políticas setoriais'
q2_7_velha'q2_7_7: Direitos Humanos_políticas setoriais'
q2_99_velha'q2_99_99: Outra_políticas setoriais'
q5_1_1_velha'q5_1_1_1: Serviço de Convivência e Fortalecimento de Vínculos_5.1. Proteção Social Básica:'
q5_1_2_velha'q5_1_2_2: Serviço de Proteção Social Básica no domicílio para pessoas com deficiência e idosas_5.1. Proteção Social Básica:'
q5_1_0_velha'q5_1_0_0: Não executa diretamente Serviços de Proteção Social Básica_5.1. Proteção Social Básica:'
q5_2_1_velha'q5_2_1_1: Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos - PAEFI_5.2. Proteção Social Especial de Média Complexidade:'
q5_2_2_velha'q5_2_2_2: Serviço Especializado em Abordagem Social_5.2. Proteção Social Especial de Média Complexidade:'
q5_2_3_velha'q5_2_3_3: Serviço de Proteção Social a Adolescentes em Cumprimento de Medida Socioeducativa de Liberdade Assistida - LA, e de Prestação de Serviços à Comunidade - PSC_5.2. Proteção Social Especial de Média Complexidade:'
q5_2_4_velha'q5_2_4_4: Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos(as) e suas Famílias_ PAEFI_5.2. Proteção Social Especial de Média Complexidade:'
q5_2_5_velha'q5_2_5_5: Serviço Especializado para Pessoas em Situação de Rua_ PAEFI_5.2. Proteção Social Especial de Média Complexidade:'
q5_2_0_velha'q5_2_0_0: Não executa diretamente os Serviços de Proteção Social Especial de Média Complexidade_ PAEFI_5.2. Proteção Social Especial de Média Complexidade:'
q5_3_1_velha'q5_3_1_1: Serviço de Acolhimento Institucional (Abrigo Institucional; Casa-lar; Casa de Passagem)_5.3. Proteção Social Especial de Alta Complexidade:'
q5_3_2_velha'q5_3_2_2: Serviço de Acolhimento em República_5.3. Proteção Social Especial de Alta Complexidade:'
q5_3_3_velha'q5_3_3_3: Serviço de Acolhimento em Família Acolhedora_5.3. Proteção Social Especial de Alta Complexidade:'
q5_3_4_velha'q5_3_4_4: Serviço de Proteção em Situações de Calamidades Públicas e de Emergências_5.3. Proteção Social Especial de Alta Complexidade:'
q5_3_0_velha'q5_3_0_0: Não executa diretamente os Serviços de Proteção Social Especial de Alta Complexidade_5.3. Proteção Social Especial de Alta Complexidade:'
q6_0_velha'q6_0_0: Não_oferta de Benefícios Eventuais'
q6_1_velha'q6_1_1: Sim, Benefício Eventual em situação de morte_oferta de Benefícios Eventuais'
q6_2_velha'q6_2_2: Sim, Benefício Eventual por nascimento_oferta de Benefícios Eventuais'
q6_3_velha'q6_3_3: Sim, Benefício Eventual em situação de calamidade (inclui desastres e emergências)_oferta de Benefícios Eventuais'
q6_4_velha'q6_4_4: Sim, Benefício Eventual em situação de vulnerabilidade temporária_oferta de Benefícios Eventuais'
q8_0_velha'q8_0_0: Não realizou ações de prevenção de emergências e calamidade_ governo estadual oferta'
q8_1_velha'q8_1_1: Realizou apoio técnico/estudos/grupos/capacitação de discussão sobre o tema_ governo estadual oferta'
q8_2_velha'q8_2_2: Regulamentou o cofinanciamento estadual aos municípios para benefícios eventuais em situação de calamidade_ governo estadual oferta'
q8_3_velha'q8_3_3: Regulamentou benefício eventual específico para situação de calamidade no âmbito estadual_ governo estadual oferta'
q8_4_velha'q8_4_4: Regulamentou o cofinanciamento estadual para o Serviço de Proteção Social em situações de emergência e calamidade pública no SUAS_ governo estadual oferta'
q8_5_velha'q8_5_5: Definiu fluxos de trabalho para serem executados durante a emergência_ governo estadual oferta'
q8_6_velha'q8_5_5: Definiu fluxos de trabalho para serem executados durante a emergência_ governo estadual oferta'
q8_7_velha'q8_7_7: Produziu dados que subsidiaram a vigilância socioassistencial na prevenção de desastres_ governo estadual oferta'
q8_8_velha'q8_8_8: Monitorou a ocorrência de emergências no Estado visando à aplicação, quando necessário, de ações especiais do Programa Bolsa Família_ governo estadual oferta'
q8_9_velha'q8_9_9: Mobilizou a comunidade para prevenção de desastres_ governo estadual oferta'
q8_99_velha'q8_99_99: Outros_ governo estadual oferta'
q10_1_velha'q10_1_Execução direta do serviço pelo governo estadual por meio de CREAS Regional (Modelo I)'
q10_2_velha'q10_2_Repasse de recursos do estado para CREAS municipal regionalizado (Modelo II)'
q10_1_1_velha'q10_1_1_10.1. Quantidade de unidades (Modelo I)'
q10_2_1_velha'q10_2_1_10.2. Quantidade de unidades (Modelo II)'
q11_1_velha'q11_1_1: Apoio técnico a distância (por telefone ou e-mail)_ ações de apoio técnico e monitoramento'
q11_2_velha'q11_2_2: Apoio técnico presencial (visitas técnicas)_ ações de apoio técnico e monitoramento'
q11_3_velha'q11_3_3: Capacitação das equipes de referência_ ações de apoio técnico e monitoramento'
q11_4_velha'q11_4_4: Fluxos e protocolos entre os serviços e a rede intersetorial_ ações de apoio técnico e monitoramento'
q11_5_velha'q11_5_5: Fluxos e protocolos entre os serviços e o Sistema de Justiça_ ações de apoio técnico e monitoramento'
q11_6_velha'q11_6_6: Efluxos e protocolos entre os serviços e Sistema de Garantia de Direitos_ ações de apoio técnico e monitoramento'
q11_7_velha'q11_7_7: Monitoramento da aplicação dos recursos transferidos_ ações de apoio técnico e monitoramento'
q11_8_velha'q11_8_8: Monitoramento da composição das equipes técnicas, de acordo com a NOB-RH/SUAS_ ações de apoio técnico e monitoramento'
q11_9_velha'q11_9_9: Orientação sobre o preenchimento, a utilização e a atualização de sistemas de informações do SUAS (RMA, CadSUAS, Censo SUAS)_ ações de apoio técnico e monitoramento'
q11_99_velha'q11_99_99: Outras_ ações de apoio técnico e monitoramento'
q12_velha'q12_12. Atualmente, está em funcionamento no estado algum serviço/unidade de caráter REGIONAL deProteção Social Especial de Alta Complexidade?'
q13_1_velha'q13_1_1: Unidades de Acolhimento Institucional para crianças e adolescentes_serviços de Alta Complexidade'
q13_2_velha'q13_2_2: Unidades de Acolhimento Institucional para idosas(os)_serviços de Alta Complexidade'
q13_3_velha'q13_3_3: Unidades de Acolhimento Institucional para pessoas em situação de rua_serviços de Alta Complexidade'
q13_4_velha'q13_4_4: Unidades de Acolhimento Institucional para pessoas com deficiência_serviços de Alta Complexidade'
q13_5_velha'q13_5_5: Unidades de Acolhimento Institucional para mulheres vítimas de violência_serviços de Alta Complexidade'
q13_6_velha'q13_6_6: Unidades de Acolhimento em República para jovens (maiores de 18 anos)_serviços de Alta Complexidade'
q13_7_velha'q13_7_7: Unidades de Acolhimento em República para adultas(os) em processo de saída das ruas_serviços de Alta Complexidade'
q13_8_velha'q13_8_8: Unidades de Acolhimento em República para idosas(os)_serviços de Alta Complexidade'
q13_9_velha'q13_9_9: Família Acolhedora para crianças e adolescentes_serviços de Alta Complexidade'
q17_velha'q17_17. Se sim, há rotatividade na representação por região do Estado?'
q24_0_velha'q24_0_0: Não são publicizados_reuniões da CIB são publicizados'
q24_1_velha'q24_1_1: São enviados aos membros da CIB_reuniões da CIB são publicizados'
q24_2_velha'q24_2_2: São enviados a todos os municípios dos estados_reuniões da CIB são publicizados'
q24_3_velha'q24_3_3: São disponibilizados no sítio da Secretaria Estadual_reuniões da CIB são publicizados'
q24_4_velha'q24_4_4: São enviados ao Conselho Estadual de Assistência Social_reuniões da CIB são publicizados'
q24_5_velha'q24_5_5: Em Boletins produzidos pela área de assistência social_reuniões da CIB são publicizados'
q25_1_99_velha'q25_1_99_25.1.99. Qual o número de trabalhadoras(es) capacitadas(os)'
q25_2_99_velha'q25_2_99_25.2.99. Qual o número de trabalhadoras(es) capacitadas(os)'
q25_3_99_velha'q25_3_99_25.3.99. Qual o número de trabalhadoras(es) capacitadas(os)'
q25_4_99_velha'q25_4_99_25.4.99. Qual o número de trabalhadoras(es) capacitadas(os)'
q26_1_99_velha'q26_1_99_26.1.99. Capacitação presencial para as(os) conselheiras(os) estaduais - número de conselheiras(os) capacitadas(os)'
q26_2_99_velha'q26_2_99_26.2.99. Capacitação à distância para as(os) conselheiras(os) estaduais - número de conselheiras(os) capacitadas(os)'
q26_3_99_velha'q26_3_99_26.3.99. Capacitação presencial para as(os) conselheiras(os) municipais - número de conselheiras(os) capacitadas(os)'
q26_4_99_velha'q26_4_99_26.4.99. Capacitação à distância para as(os) conselheiras(os) municipais - número de conselheiras(os) capacitadas(os)'
q28_1_1_velha'q28_1_1_28.1.1. Nível Superior - Realizou Concurso?'
q28_1_2_velha'q28_1_2_28.1.2. Nível Superior - Quantidade de vagas'
q28_1_3_velha'q28_1_3_28.1.3. Nível Superior - O concurso já foi homologado?'
q28_1_5_velha'q28_1_5_28.1.5. Nível Superior - Quantidade de trabalhadoras(es) que tomaram posse'
q28_2_1_velha'q28_2_1_28.2.1. Nível Médio - Realizou Concurso?'
q28_2_2_velha'q28_2_2_28.2.2. Nível Médio - Quantidade de vagas'
q28_2_3_velha'q28_2_3_28.2.3. Nível Médio - O concurso já foi homologado?'
q28_2_5_velha'q28_2_5_28.2.5. Nível Médio - Quantidade de Trabalhadoras(es) que tomaram posse'
.