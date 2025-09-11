* Encoding: UTF-8.

**CENSO SUAS 2018 - Centro Dia**

***filtrar estado(0) ou muncipio(1)



FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q1   q2  q4  q5  d_6  
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q7_1  q7_2  q7_3  q7_4  q7_5  q7_6  q8
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.9 'Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel'
(q9_1 q9_2 q9_3 q9_4 q9_5 q9_6 q9_7 q9_8 q9_9 q9_10 q9_11 q9_12 q9_13 q9_14 q9_99 (1))
/FREQUENCIES=$mr.9.


MULT RESPONSE GROUPS=$mr.10 'No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?'
(q10_0 q10_1 q10_2 q10_3 q10_4 q10_5 q10_6 q10_7  q10_99 (1))
/FREQUENCIES=$mr.10.


MULT RESPONSE GROUPS=$mr.11 'Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel'
(q11_1 q11_2 q11_3  q11_4 q11_5 q11_6 q11_7  q11_8 q11_9 q11_99 (1))
/FREQUENCIES=$mr.11.

FREQUENCIES VARIABLES= q12   d_13_sala_excl_categoria 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.14 'Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:'
(q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 q14_0 (1))
/FREQUENCIES=$mr.14.

FREQUENCIES VARIABLES= q15 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.16 'Quais as atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?'
(q16_1 q16_2 q16_3 q16_4 q16_5 q16_6 q16_7 q16_8 q16_9 q16_10 q16_0 (1))
/FREQUENCIES=$mr.16.

FREQUENCIES VARIABLES= q17 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.18 'Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?'
(q18_1 q18_2 q18_3 q18_4 q18_99 q18_0 (1))
/FREQUENCIES=$mr.18.

MULT RESPONSE GROUPS=$mr.19 'São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?'
(q19_1  q19_2 q19_3 q19_4 q19_0 (1))
/FREQUENCIES=$mr.19.

MULT RESPONSE GROUPS=$mr.20 'Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?'
(q20_0 q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 q20_99(1))
/FREQUENCIES=$mr.20.

MULT RESPONSE GROUPS=$mr.21 'Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?'
(q21_0 q21_97  q21_1   q21_2 q21_3  q21_4  q21_5  q21_6  (1))
/FREQUENCIES=$mr.21.


FREQUENCIES VARIABLES= d22_cap_atend_cat q23    q24  q25
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.26 'Indique as atividades normalmente realizadas com as(os) usuárias(os) dos Serviços de convivência e Fortalecimento de Vínculos existentes:'
(q26_2 q26_1  q26_3 q26_4 q26_5 q26_6 q26_7 q26_8 q26_9 q26_10 q26_11 q26_99 (1))
/FREQUENCIES=$mr.26.


MULT RESPONSE GROUPS=$mr.27 'Indique quais os conteúdos normalmente são discutidos com as(os) usuárias(os) dos Serviços de Convivência e Fortalecimento de Vínculos:'
(q27_1 q27_2 q27_3 q27_4 q27_5  q27_6  q27_7 q27_8 q27_99 (1))
/FREQUENCIES=$mr.27.

MULT RESPONSE GROUPS=$mr.28 'Indique quais os conteúdos normalmente são discutidos com as(os) usuárias(os) dos Serviços de Convivência e Fortalecimento de Vínculos:'
(q28_1  q28_2 q28_3 q28_4 q28_5 q28_6 q28_7 q28_8 q28_9 q28_10 q28_11 q28_12 q28_13 q28_14 q28_99 q28_0(1))
/FREQUENCIES=$mr.28.


FREQUENCIES VARIABLES=  q29  d_29_1  q30 q32
  /ORDER=ANALYSIS.







