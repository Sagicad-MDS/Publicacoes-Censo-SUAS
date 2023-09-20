* Encoding: UTF-8.

**CENSO SUAS 2021 - Posto Cadastramento**



FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q1 q2_1   q3   q4   q5
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= d_6_atend_categoria     d_6_adm_atend_categoria   d_6_7_banheiros  q6_8    q6_9  q6_10   q6_11
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q7_1 q7_2 q7_3 q7_4 DISPLAY=LABEL
  /TABLE q7_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q7_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
            + q7_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q7_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q7_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q7_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q7_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q7_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q7.Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.



MULT RESPONSE GROUPS=$mr.8 ' Além dos itens acima, há outras adaptações para assegurar a acessibilidade desta Unidade'
(q8_1  q8_2  q8_3  q8_4  q8_5  q8_6  q8_7  q8_0 (1) )
/FREQUENCIES=$mr.8.


MULT RESPONSE GROUPS=$mr.9 ' Indique os equipamentos e materiais disponíveis, em perfeito funcionamento, para o desenvolvimento dos serviços desta Unidade'
(q9_1  q9_2  q9_3  q9_4  q9_5  q9_6  q9_7  q9_8  q9_9  q9_10  q9_11  q9_12  q9_13  q9_14  q9_15  q9_16  (1))
/FREQUENCIES=$mr.9.


FREQUENCIES VARIABLES= d_9_1_99  d_9_2_99  d_9_3_99  d_9_4_99  d_9_9_99  d_9_10_99  
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= d_10_1  d_10_2
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q11_1 q11_2 q11_3 q11_4 DISPLAY=LABEL
  /TABLE q11_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q11_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
            + q11_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q11_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q11_1 [1, 2, 3, 4, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q11_2 [1, 2, 3, 4, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q11_3 [1, 2, 3, 4, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q11_4 [1, 2, 3, 4, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q11.Em relação a Internet, informe com que frequência a equipe'.



CTABLES
  /VLABELS VARIABLES=q12_1  q12_2  q12_3  q12_4  q12_5  q12_6  q12_7  q12_8   DISPLAY=LABEL
  /TABLE q12_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q12_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
            + q12_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q12_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
             + q12_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]  + q12_6 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
            + q12_7 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q12_8[C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q12_1 [1, 2, 3, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q12_2 [1, 2, 3, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q12_3 [1, 2, 3, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q12_4 [1, 2, 3, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q12_5 [1, 2, 3, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q12_6 [1, 2, 3, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q12_7 [1, 2, 3, 0 OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q12_8 [1, 2, 3, 0 OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q12. Indique a quais sistemas informatizados do Governo Federal esta Unidade tem acesso'.


MULT RESPONSE GROUPS=$mr.13 ' Indique as ações e atividades desenvolvidas pela equipe desta Unidade no âmbito do Cadastro Único'
(q13_1  q13_2  q13_3  q13_4  q13_5  q13_6  q13_7  q13_8  q13_9  q13_10  q13_11  q13_12  q13_13  q13_14  q13_15  q13_16  q13_17  q13_18  q13_99 (1))
/FREQUENCIES=$mr.13.

FREQUENCIES VARIABLES=  d_14_1  d_14_2  d_14_3
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= d_15_1  d_15_2  d_15_3  d_15_4  d_15_5
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q16  q17
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.18 'São feitas ações específicas para atender demandas de Averiguação e Revisão Cadastral'
(q18_1  q18_2  q18_3  q18_99 q18_0 (1))
/FREQUENCIES=$mr.18.



CTABLES
  /VLABELS VARIABLES=q19_1  q19_2  q19_3  q19_4  q19_5  q19_6  q19_99  DISPLAY=LABEL
  /TABLE q19_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q19_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
            + q19_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q19_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
             + q19_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]  + q19_6 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q19_99 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q19_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_5 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_6 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_99 [1, 2, 0 OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q19.Indique em quais situações e com qual frequência  a equipe faz entrevistas domiciliares'.





MULT RESPONSE GROUPS=$mr.20 'Esta Unidade realiza cadastramento de famílias pertencentes aos seguintes Grupos Tradicionais e Específicos'
(q20_1  q20_2  q20_3  q20_4  q20_5  q20_6  q20_7  q20_8  q20_9  q20_10  q20_11  q20_12  q20_13  q20_14  q20_15  q20_16  q20_17  q20_18  (1))
/FREQUENCIES=$mr.20.


MULT RESPONSE GROUPS=$mr.21_1 'q21.1 ações específicas a Grupos Tradicionais e Específicos para Povos Indígenas '
(q21_1_1 q21_1_2 q21_1_3  q21_1_4 q21_1_99 q21_1_0  (1))
/FREQUENCIES=$mr.21_1.



MULT RESPONSE GROUPS=$mr.21_2 'q21.2 ações específicas a Grupos Tradicionais e Específicos para Comunidade Quilombola '
(q21_2_1  q21_2_2  q21_2_3  q21_2_4  q21_2_99  q21_2_0  (1))
/FREQUENCIES=$mr.21_2.


MULT RESPONSE GROUPS=$mr.21_3 'q21.3 ações específicas a Grupos Tradicionais e Específicos para Comunidade Ribeirinha  '
(q21_3_1  q21_3_2  q21_3_3  q21_3_4  q21_3_99  q21_3_0  (1))
/FREQUENCIES=$mr.21_3.


MULT RESPONSE GROUPS=$mr.21_4 'q21.4 ações específicas a Grupos Tradicionais e Específicos para Povos Ciganos  '
(q21_4_1  q21_4_2  q21_4_3  q21_4_4  q21_4_99  q21_4_0  (1))
/FREQUENCIES=$mr.21_4.


MULT RESPONSE GROUPS=$mr.21_5 'q21.5 ações específicas a Grupos Tradicionais e Específicos para Povos de Matriz Africana e de terreiro '
(q21_5_1  q21_5_2  q21_5_3  q21_5_4  q21_5_99 q21_5_0  (1))
/FREQUENCIES=$mr.21_5.


MULT RESPONSE GROUPS=$mr.21_6 'q21.6 ações específicas a Grupos Tradicionais e Específicos para Extrativistas '
(q21_6_1  q21_6_2  q21_6_3  q21_6_4  q21_6_99 q21_6_0  (1))
/FREQUENCIES=$mr.21_6.


MULT RESPONSE GROUPS=$mr.21_7 'q21.7 ações específicas a Grupos Tradicionais e Específicos para Pescadores artesanais '
(q21_7_1 q21_7_2 q21_7_3  q21_7_4  q21_7_99 q21_7_0  (1))
/FREQUENCIES=$mr.21_7.


MULT RESPONSE GROUPS=$mr.21_8 'q21.8 ações específicas a Grupos Tradicionais e Específicos para Ribeirinhas (famílias em calhas de rios) '
(q21_8_1  q21_8_2  q21_8_3  q21_8_4  q21_8_99 q21_8_0 (1))
/FREQUENCIES=$mr.21_8.


MULT RESPONSE GROUPS=$mr.21_9 'q21.9 ações específicas a Grupos Tradicionais e Específicos para Outros Grupos tradicionais e específicos.'
(q21_9_1  q21_9_2  q21_9_3  q21_9_4  q21_9_99 q21_9_0  (1))
/FREQUENCIES=$mr.21_9.


MULT RESPONSE GROUPS=$mr.23 'Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família'
(q23_0  q23_1  q23_2   q23_3  q23_4  q23_5  q23_6  q23_7  q23_8  q23_9  q23_10  q23_11  q23_12  q23_13  q23_14  q23_99  (1))
 /FREQUENCIES=$mr.23.


MULT RESPONSE GROUPS=$mr.24 'Indique quais são as dificuldades enfrentadas por este posto em relação à gestão de benefícios do Programa Bolsa Família'
(q24_1 q24_2  q24_3  q24_4  q24_5  q24_6 q24_7  q24_8  q24_9  q24_10 q24_11 q24_12  q24_13  q24_14  q24_15  q24_16  q24_17  q24_99 (1)) 
/FREQUENCIES=$mr.24.


MULT RESPONSE GROUPS=$mr.25 'Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades'
(q25_0  q25_1  q25_2  q25_3    q25_4  q25_5  q25_6  q25_7  q25_8  q25_9  q25_99 (1))
/FREQUENCIES=$mr.25.


FREQUENCIES VARIABLES=  q26  q27  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.28 'Este posto recebe denúncia de fraudes de recebimento de benefícios do Programa Bolsa Família e qual o tratamento dado? '
(q28_1  q28_2  q28_99  q28_0 q28_98  (1))
/FREQUENCIES=$mr.28.


FREQUENCIES VARIABLES=  q29
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.30_1  'q30.1 programas/atividades/benefícios - Benefício de Prestação Continuada .'
(q30_1_1 q30_1_2  q30_1_3  q30_1_4  q30_1_5  q30_1_0  (1))
/FREQUENCIES=$mr.30_1.

MULT RESPONSE GROUPS=$mr.30_2  'q30.2 programas/atividades/benefícios - Carteira do Idoso .'
(q30_2_1 q30_2_2  q30_2_3   q30_2_4    q30_2_5  q30_2_0  (1))
/FREQUENCIES=$mr.30_2.

MULT RESPONSE GROUPS=$mr.30_3  'q30.3 programas/atividades/benefícios - Serviços de Convivência e Fortalecimento de Vínculos .'
(q30_3_1  q30_3_2  q30_3_3  q30_3_4  q30_3_5  q30_3_0  (1))
/FREQUENCIES=$mr.30_3.


MULT RESPONSE GROUPS=$mr.30_4  'q30.4 programas/atividades/benefícios - Programa Criança Feliz.'
(q30_4_1  q30_4_2  q30_4_3  q30_4_4  q30_4_5  q30_4_0  (1))
/FREQUENCIES=$mr.30_4.


MULT RESPONSE GROUPS=$mr.30_5  'q30.5 programas/atividades/benefícios - Programa de Erradicação do Trabalho Infantil .'
(q30_5_1  q30_5_2  q30_5_3  q30_5_4 q30_5_5  q30_5_0 (1))
/FREQUENCIES=$mr.30_5.



MULT RESPONSE GROUPS=$mr.30_6  'q30.6 programas/atividades/benefícios - Plano Progredir - Programa Nacional do Microcrédito Produtivo Orientado  .'
(q30_6_1  q30_6_2  q30_6_3  q30_6_4  q30_6_5 q30_6_0  (1))
/FREQUENCIES=$mr.30_6.


MULT RESPONSE GROUPS=$mr.30_7  'q30.7 programas/atividades/benefícios - Tarifa Social de Energia Elétrica .'
(q30_7_1  q30_7_2  q30_7_3  q30_7_4 q30_7_5 q30_7_6  (1))
/FREQUENCIES=$mr.30_7.

MULT RESPONSE GROUPS=$mr.30_8  'q30.8 programas/atividades/benefícios - Programa Minha Casa Minha Vida .'
(q30_8_1  q30_8_2 q30_8_3  q30_8_4 q30_8_5 q30_8_0  (1))
/FREQUENCIES=$mr.30_8.


MULT RESPONSE GROUPS=$mr.30_9  'q30.9 programas/atividades/benefícios - Aposentadoria para Pessoas de Baixa Renda/ Facultativo de Baixa Renda  .'
(q30_9_1 q30_9_2  q30_9_3  q30_9_4  q30_9_5 q30_9_0  (1)) 
/FREQUENCIES=$mr.30_9.


MULT RESPONSE GROUPS=$mr.30_10  'q30.10 programas/atividades/benefícios - Telefone Popular .'
(q30_10_1 q30_10_2  q30_10_3 q30_10_4  q30_10_5  q30_10_0  (1))
/FREQUENCIES=$mr.30_10.


MULT RESPONSE GROUPS=$mr.30_11  'q30.11 programas/atividades/benefícios - Isenção de Pagamento de Taxa de Inscrição em Concursos Públicos  .'
(q30_11_1  q30_11_2  q30_11_3  q30_11_4 q30_11_5  q30_11_0  (1)) 
/FREQUENCIES=$mr.30_11.


MULT RESPONSE GROUPS=$mr.30_12  'q30.12 programas/atividades/benefícios - Programas Cisternas.'
(q30_12_1 q30_12_2 q30_12_3  q30_12_4 q30_12_5  q30_12_0  (1)) 
/FREQUENCIES=$mr.30_12.

MULT RESPONSE GROUPS=$mr.30_13  'q30.13 programas/atividades/benefícios - Programa de Fomento às Atividades Produtivas Rurais/ Assistência Técnica e Extensão Rural  .'
(q30_13_1  q30_13_2  q30_13_3  q30_13_4 q30_13_5 q30_13_0  (1)) 
/FREQUENCIES=$mr.30_13.

MULT RESPONSE GROUPS=$mr.30_14  'q30.14 programas/atividades/benefícios - Programa Nacional de Reforma Agrária  .'
(q30_14_1  q30_14_2  q30_14_3   q30_14_4  q30_14_5 q30_14_0  (1)) 
/FREQUENCIES=$mr.30_14.

MULT RESPONSE GROUPS=$mr.30_15  'q30.15 programas/atividades/benefícios - Programa Nacional de Crédito Fundiário  .'
(q30_15_1  q30_15_2  q30_15_3 q30_15_4 q30_15_5 q30_15_0 (1)) 
/FREQUENCIES=$mr.30_15.

MULT RESPONSE GROUPS=$mr.30_16  'q30.16 programas/atividades/benefícios - Crédito Instalação do Programa Nacional de Reforma Agrária  .'
(q30_16_1 q30_16_2  q30_16_3  q30_16_4 q30_16_5 q30_16_0  (1)) 
/FREQUENCIES=$mr.30_16.

MULT RESPONSE GROUPS=$mr.30_17  'q30.17 programas/atividades/benefícios - Identidade Jovem (ID Jovem)  .'
(q30_17_1  q30_17_2  q30_17_3 q30_17_4  q30_17_5 q30_17_6  (1)) 
/FREQUENCIES=$mr.30_17.

MULT RESPONSE GROUPS=$mr.30_18  'q30.18 programas/atividades/benefícios - Ação de Distribuição de Alimentos  .'
(q30_18_1  q30_18_2  q30_18_3 q30_18_4 q30_18_5 q30_18_0  (1)) 
/FREQUENCIES=$mr.30_18.

MULT RESPONSE GROUPS=$mr.30_19  'q30.19 programas/atividades/benefícios - Concessão de bolsas por entidades com Certificação de Entidades Beneficentes de Assistência Social com atuação na área da educação (CEBAS-Educação) .'
(q30_19_1 q30_19_2  q30_19_3 q30_19_4  q30_19_5  q30_19_0 (1)) 
/FREQUENCIES=$mr.30_19.

MULT RESPONSE GROUPS=$mr.30_20  'q30.20 programas/atividades/benefícios - Isenções na taxa de inscrição para o Exame Nacional do Ensino Médio (Enem) .'
(q30_20_1  q30_20_2  q30_20_3 q30_20_4 q30_20_5 q30_20_0 (1)) 
/FREQUENCIES=$mr.30_20.


MULT RESPONSE GROUPS=$mr.30_21  'q30.21 programas/atividades/benefícios - Sistema de Seleção Unificada - Sisu/Lei de cotas .'
(q30_21_1 q30_21_2 q30_21_3 q30_21_4  q30_21_5 q30_21_0 (1)) 
/FREQUENCIES=$mr.30_21.


MULT RESPONSE GROUPS=$mr.30_22  'q30.22 programas/atividades/benefícios - Programa de Urbanização de Assentamento Precários .'
(q30_22_1 q30_22_2  q30_22_3 q30_22_4 q30_22_5 q30_22_0   (1)) 
/FREQUENCIES=$mr.30_22.


 MULT RESPONSE GROUPS=$mr.30_24  'q30.24 programas/atividades/benefícios - Programa Estratégia Brasil Amigo da Pessoa Idosa  .'
(q30_24_1 q30_24_2 q30_24_3  q30_24_4 q30_24_5 q30_24_0 (1)) 
/FREQUENCIES=$mr.30_24.


MULT RESPONSE GROUPS=$mr.30_23  'q30.23 programas/atividades/benefícios - Projeto Dom Hélder Câmara .'
(q30_23_1  q30_23_2  q30_23_3 q30_23_4 q30_23_5 q30_23_0 (1)) 
/FREQUENCIES=$mr.30_23.


FREQUENCIES VARIABLES=   q31_1_1_1  q31_1_1_2   q31_1_1_3   q31_1_1_4  q31_1_1_5  q31_1_1_6  q31_1_1_7  q31_1_1_8  q31_1_1_99
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.32  'q32  Qual a relação deste Posto de Cadastro Único com os outros equipamentos da rede socioassistencial .'
(q32_1 q32_2 q32_3 q32_4 q32_5 q32_0 (1)) 
/FREQUENCIES=$mr.32.


MULT RESPONSE GROUPS=$mr.33  'q33  Este posto realiza atividades relacionadas ao BPC .'
(q33_1 q33_2 q33_3 q33_99 q33_0 (1)) 
/FREQUENCIES=$mr.33.




FREQUENCIES VARIABLES=  q34_0 
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES= q34_1 q34_2  q34_3  q34_4  q34_5  q34_6 q34_7 q34_8 q34_99     DISPLAY=LABEL
  /TABLE q34_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]  + q34_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q34_3  [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] 
             + q34_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]  + q34_5  [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q34_6 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
             +  q34_7  [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]  + q34_8[C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q34_99 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q34_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_3  [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_5  [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_6 [1, 2, 0 OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_7 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_8  [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q34_99 [1, 2, 0 OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q34.Como se deu o funcionamento deste posto durante a pandemia do Coronavírus em 2021 e a frequência com que isto ocorreu'.



MULT RESPONSE GROUPS=$mr.35  'q35  Como estava a jornada de trabalho das(os) profissionais durante a pandemia em 2021 .'
(q35_1 q35_2  q35_3  q35_99 (1)) 
/FREQUENCIES=$mr.35.


FREQUENCIES VARIABLES=  q36
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.37  'q37  Este posto realizou algumas destas atividades em relação ao Auxílio Emergencial concedido em 2021  .'
(q37_0  q37_1  q37_2  q37_3  q37_4 q37_5  q37_99 (1)) 
/FREQUENCIES=$mr.37.


MULT RESPONSE GROUPS=$mr.38  'q38  Indique se há na equipe do Cadastro Único e Programa Bolsa Família trabalhadores aptos a realizar o atendimento com conhecimento em  .'
(q38_1  q38_2  q38_3  q38_99 q38_0 (1)) 
/FREQUENCIES=$mr.38.


MULT RESPONSE GROUPS=$mr.39  'q39 O/A coordenador(a) desta Unidade .'
(q39_1  q39_2  q39_3  q39_4  q39_5  q39_6  q39_7 (1)) 
/FREQUENCIES=$mr.39.










































