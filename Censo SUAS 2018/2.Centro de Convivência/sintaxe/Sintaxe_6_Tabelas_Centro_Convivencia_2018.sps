* Encoding: UTF-8.

**CENSO SUAS 2018 - Centro Dia**

***filtrar estado(0) ou muncipio(1)



FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q_1   q_2  q_4  q_5  d_6  
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q_7_1  q_7_2  q_7_3  q_7_4  q_7_5  q_7_6
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q_8
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.9 'Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel'
(q_9_1 q_9_2 q_9_3 q_9_4 q_9_5 q_9_6 q_9_7 q_9_8 q_9_9 q_9_10 q_9_11 q_9_12 q_9_13 q_9_14 q_9_99 (1))
/FREQUENCIES=$mr.9.


MULT RESPONSE GROUPS=$mr.10 'No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?'
(q_10_1 q_10_2 q_10_3 q_10_4 q_10_5 q_10_6 q_10_7  q_10_8 q_10_99 (1))
/FREQUENCIES=$mr.10.


MULT RESPONSE GROUPS=$mr.11 'Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel'
(q_11_1 q_11_2 q_11_3  q_11_4 q_11_5 q_11_6 q_11_7  q_11_8 q_11_9 q_11_99 (1))
/FREQUENCIES=$mr.11.

FREQUENCIES VARIABLES= q_12   d_13_sala_excl_categoria 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.14 'Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:'
(q_14_1 q_14_2 q_14_3 q_14_4 q_14_5 q_14_6 q_14_7 q_14_8 q_14_9 q_14_0 (1))
/FREQUENCIES=$mr.14.

FREQUENCIES VARIABLES= q_15 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.16 'Quais as atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?'
(q_16_1 q_16_2 q_16_3 q_16_4 q_16_5 q_16_6 q_16_7 q_16_8 q_16_9 q_16_10 q_16_0 (1))
/FREQUENCIES=$mr.16.

FREQUENCIES VARIABLES= q_17 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.18 'Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?'
(q_18_1 q_18_2 q_18_3 q_18_4 q_18_99 q_18_0 (1))
/FREQUENCIES=$mr.18.

MULT RESPONSE GROUPS=$mr.19 'São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?'
(q_19_1  q_19_2 q_19_3 q_19_4 q_19_0 (1))
/FREQUENCIES=$mr.19.

MULT RESPONSE GROUPS=$mr.20 'Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?'
(q_20_0 q_20_1 q_20_2 q_20_3 q_20_4 q_20_5 q_20_6 q_20_99(1))
/FREQUENCIES=$mr.20.

MULT RESPONSE GROUPS=$mr.21 'Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?'
(q_21_0 q_21_1 q_21_2 q_21_3  q_21_4  q_21_5  q_21_6 q_21_7 (1))
/FREQUENCIES=$mr.21.


FREQUENCIES VARIABLES= d22_cap_atend_cat q_23    q_24  q_25
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.26 'Indique as atividades normalmente realizadas com as(os) usuárias(os) dos Serviços de convivência e Fortalecimento de Vínculos existentes:'
(q_26_2 q_26_1  q_26_3 q_26_4 q_26_5 q_26_6 q_26_7 q_26_8 q_26_9 q_26_10 q_26_11 q_26_99 (1))
/FREQUENCIES=$mr.26.


MULT RESPONSE GROUPS=$mr.27 'Indique quais os conteúdos normalmente são discutidos com as(os) usuárias(os) dos Serviços de Convivência e Fortalecimento de Vínculos:'
(q_27_1 q_27_2 q_27_3 q_27_4 q_27_5  q_27_6  q_27_7 q_27_8 q_27_99 (1))
/FREQUENCIES=$mr.27.

MULT RESPONSE GROUPS=$mr.28 'Indique quais os conteúdos normalmente são discutidos com as(os) usuárias(os) dos Serviços de Convivência e Fortalecimento de Vínculos:'
(q_28_1  q_28_2 q_28_3 q_28_4 q_28_5 q_28_6 q_28_7 q_28_8 q_28_9 q_28_10 q_28_11 q_28_12 q_28_13 q_28_14 q_28_99 q_28_0(1))
/FREQUENCIES=$mr.28.


FREQUENCIES VARIABLES=  q_29  d_29_1  q_30 q_32
  /ORDER=ANALYSIS.







