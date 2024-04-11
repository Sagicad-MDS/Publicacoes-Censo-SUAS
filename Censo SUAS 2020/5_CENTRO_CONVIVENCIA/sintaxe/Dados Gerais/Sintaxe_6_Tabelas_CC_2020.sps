* Encoding: UTF-8.

**CENSO SUAS 2020 - Centro Dia**

***filtrar estado(1) ou muncipio(2)  q1



FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q1 q2 d3_2  q4
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q5_1 q5_2 q5_3 q5_4 q5_5 q5_6  q6
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.7 'Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel'
(q7_1 q7_2 q7_3 q7_4 q7_5 q7_6 q7_7 q7_8 q7_9 q7_10 q7_11 q7_12 q7_13 q7_14 q7_15 q7_16 q7_17 q7_99 (1))
/FREQUENCIES=$mr.7.


MULT RESPONSE GROUPS=$mr.8 'No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?'
(q8_0 q8_1 q8_2 q8_3 q8_4 q8_5  q8_6 q8_7 q8_8 q8_9 q8_99 (1))
/FREQUENCIES=$mr.8.


MULT RESPONSE GROUPS=$mr.9 'Que outros espaços físicos são utilizados  para a execução do serviço'
(q9_1 q9_2 q9_3 q9_4 q9_5 q9_6 q9_7 q9_8 q9_9 q9_10 q9_99 (1))
/FREQUENCIES=$mr.9.


FREQUENCIES VARIABLES= q10   d11_sala_excl_categoria
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.12 'Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:'
(q12_1 q12_2 q12_3 q12_4  q12_5  q12_6  q12_7  q12_8  q12_99  q12_0 (1))
/FREQUENCIES=$mr.12.

FREQUENCIES VARIABLES= q13 q14
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.15 'Quais as atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?'
(q15_1 q15_2 q15_3 q15_4 q15_5 q15_6 q15_7 q15_8 q15_9  q15_10 q15_99 q15_0 (1))
/FREQUENCIES=$mr.15.

FREQUENCIES VARIABLES= q16
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.17 'Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?'
(q17_1 q17_2 q17_3 q17_4 q17_5 q17_99 q17_0 (1))
/FREQUENCIES=$mr.17.

MULT RESPONSE GROUPS=$mr.18 'São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?'
(q18_1 q18_2 q18_3 q18_99 q18_0 (1))
/FREQUENCIES=$mr.18.

MULT RESPONSE GROUPS=$mr.19 'Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?'
(q19_0 q19_1 q19_2 q19_3  q19_4 q19_5 q19_6 q19_7 q19_8 q19_9 q19_10 q19_11 q19_12 q19_13 q19_14 q19_15 q19_99 (1)) 
/FREQUENCIES=$mr.19.



MULT RESPONSE GROUPS=$mr.20 'Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?'
(q20_0 q20_97 q20_1 q20_2 q20_3  q20_4  q20_5 q20_6 q20_7  (1))
/FREQUENCIES=$mr.20.


FREQUENCIES VARIABLES= d21_cap_atend_cat  q22 q23 q24
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.25 'Indique as atividades normalmente realizadas com as(os) usuárias(os) dos Serviços de convivência e Fortalecimento de Vínculos existentes:'
(q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 q25_8 q25_9 q25_10 q25_11 q25_99 (1))
/FREQUENCIES=$mr.25.


MULT RESPONSE GROUPS=$mr.26 'Indique quais os temas normalmente são discutidos com as(os) usuárias(os) dos Serviços de Convivência e Fortalecimento de Vínculos:'
(q26_1 q26_2 q26_3 q26_4 q26_5 q26_6 q26_7 q26_8 q26_9 q26_10 q26_11 q26_12 q26_99 (1))
/FREQUENCIES=$mr.26.


FREQUENCIES VARIABLES= q27  q29
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.30 'formas de financiamento da entidade:'
(q30_1 q30_2 q30_3 q30_4 q30_5 q30_6 q30_7 q30_8 q30_99 (1))
/FREQUENCIES=$mr.30.


MULT RESPONSE GROUPS=$mr.31 'em relação ao planejamento aponte as ações comuns:'
(q31_1 q31_2 q31_3 q31_4 q31_5 q31_6 q31_7 q31_8 q31_99 q31_0 (1))
/FREQUENCIES=$mr.31.



FREQUENCIES VARIABLES=  q32
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.33 'quais mecanismos de participação são utilizados nesta Unidade'
(q33_1 q33_2 q33_3 q33_4 q33_99 (1))
/FREQUENCIES=$mr.33.


MULT RESPONSE GROUPS=$mr.34 'proporcionou capacitação de profissionais em'
(q34_1 q34_2 q34_3 q34_4 q34_5 q34_6 q34_7 q34_8 q34_9 q34_10 q34_99 q34_0 (1))
/FREQUENCIES=$mr.34.


FREQUENCIES VARIABLES=  q35
  /ORDER=ANALYSIS.
