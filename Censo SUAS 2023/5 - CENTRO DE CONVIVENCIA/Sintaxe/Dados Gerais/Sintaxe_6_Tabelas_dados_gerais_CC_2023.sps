
FREQUENCIES VARIABLES=codigo_UF   Regiao  Porte_pop2022  
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= q1  q2 q3   d_5  q6  q7
  /ORDER=ANALYSIS.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=  q8_1 q8_2 q8_3 q8_4 q8_5 q8_6 DISPLAY=LABEL
  /TABLE q8_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_2 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_3 
    [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_4 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_5 [COUNT F40.0, 
    ROWPCT.COUNT PCT40.1] + q8_6 [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=  q8_1 q8_2 q8_3 q8_4 q8_5 q8_6  ORDER=A KEY=VALUE EMPTY=INCLUDE.


FREQUENCIES VARIABLES=q9
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.10 ' Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:'
(q10_1  q10_2 q10_3 q10_4  q10_5  q10_6  q10_7  q10_8  q10_9  q10_10  q10_11  q10_12  q10_13  q10_14  q10_15 q10_16  q10_17 q10_99 (1))
/FREQUENCIES=$mr.10.


MULT RESPONSE GROUPS=$mr.11 ' No local de funcionamento desta Unidade/Serviço, são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?'
(q11_0  q11_1  q11_2  q11_3  q11_4 q11_5 q11_6  q11_7  q11_8  q11_9  q11_99 (1))
/FREQUENCIES=$mr.11.


MULT RESPONSE GROUPS=$mr.12 ' Quais outros espaços físicos, fora da unidade de oferta do Serviço de Convivência e Fortalecimento de Vínculos , são utilizados com regularidade para a sua execução?'
(q12_1  q12_2  q12_3  q12_4  q12_5 q12_6 q12_7 q12_8 q12_9 q12_10 q12_99 (1))
/FREQUENCIES=$mr.12.

FREQUENCIES VARIABLES=q13  d14_sala_excl_categoria  d15_sala_atendimento_SCFV
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.16 ' Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência e Fortalecimento de Vínculos'
(q16_1 q16_2  q16_3  q16_4  q16_5  q16_6 q16_7  q16_8  q16_9 q16_99  q16_0 (1))
/FREQUENCIES=$mr.16.

FREQUENCIES VARIABLES=q17  q18  
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.19 ' Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência'
(q19_1  q19_2  q19_3  q19_4  q19_5  q19_6  q19_7 q19_8 q19_9 q19_10 q19_99  q19_0 (1))
/FREQUENCIES=$mr.19.

FREQUENCIES VARIABLES=q20
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.21 ' Em geral, como é identificada a situação prioritária de usuárias(os) do Serviço de Convivência e Fortalecimento de Vínculos?'
(q21_1  q21_2 q21_3  q21_4  q21_5 q21_99  q21_0 (1))
/FREQUENCIES=$mr.21.

MULT RESPONSE GROUPS=$mr.22 ' São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do Serviço de Convivência e Fortalecimento de Vínculos?'
(q22_1  q22_2  q22_3  q22_99  q22_0 (1))
/FREQUENCIES=$mr.22.

FREQUENCIES VARIABLES=d23_cap_max_atend_cat
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q24  q25  q26
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.27 ' Indique as atividades normalmente realizadas com as(os) usuárias(os) do Serviço de Convivência e Fortalecimento de Vínculos: e Fortalecimento de Vínculos?'
(q27_1  q27_2  q27_3    q27_4  q27_5  q27_6  q27_7 q27_8  q27_9  q27_10 q27_11  q27_99 (1)) 
/FREQUENCIES=$mr.27.

FREQUENCIES VARIABLES=q28
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.29 ' Informe o tipo de refeição ofertada na unidade:'
(q29_1 q29_2  q29_3  q29_4  q29_5  q29_6  (1)) 
/FREQUENCIES=$mr.29.

MULT RESPONSE GROUPS=$mr.30 'Informe onde é preparado e o tipo de alimento ofertado na unidade aos usuários do Serviço de Convivência e Fortalecimento de Vínculos'
(q30_1  q30_2  q30_3  q30_4  q30_5  q30_6 (1)) 
/FREQUENCIES=$mr.30.


MULT RESPONSE GROUPS=$mr.31 'Indique os temas normalmente discutidos com as(os) usuárias(os) do Serviço de Convivência e Fortalecimento de Vínculos:'
(q31_1  q31_2  q31_3  q31_4  q31_5  q31_6  q31_7  q31_8  q31_9  q31_10  q31_11  q31_12 q31_99 (1)) 
/FREQUENCIES=$mr.31.

FREQUENCIES VARIABLES=q32
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.33 'Quais são as formas de financiamento da Organização da Sociedade Civil?'
(q33_1  q33_2  q33_3  q33_4  q33_5  q33_6  q33_7  q33_8  q33_99    (1)) 
/FREQUENCIES=$mr.33.

MULT RESPONSE GROUPS=$mr.34 'Quais formas de participação são utilizados nesta unidade'
(q34_1  q34_2  q34_3  q34_4  q34_99  q34_0  (1)) 
/FREQUENCIES=$mr.34.


FREQUENCIES VARIABLES=q35
  /ORDER=ANALYSIS.