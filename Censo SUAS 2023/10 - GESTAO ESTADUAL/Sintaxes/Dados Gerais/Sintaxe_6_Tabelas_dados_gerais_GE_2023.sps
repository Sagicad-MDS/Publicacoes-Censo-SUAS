* Encoding: UTF-8.

****************************************************************************************************
SINTAXE TABELAS GESTÃO MUNICIPAL - CENSO SUAS 2022
****************************************************************************************************

********** DADOS GERAIS.

FREQUENCIES Regiao  UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1.

MULT RESPONSE GROUPS = $mr.2 'q2.A qual secretaria a assistência social está associada?'
(q2_1 q2_2  q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr.2.

FREQUENCIES q3_1 q3_2 q3_3 q3_4 q3_5  q3_6  q3_7 q3_8  q3_9  .

FREQUENCIES    d4   .


MULT RESPONSE GROUPS = $mr.5_1  'q5_1.A Secretaria Estadual de Assistência Social executa diretamente algum serviço Socioassistencial: Proteção Social Básica '
(q5_1_1  q5_1_2  q5_1_0   (1))
/FREQUENCIES=$mr.5_1.

MULT RESPONSE GROUPS = $mr.5_2  'q5_2.A Secretaria Estadual de Assistência Social executa diretamente algum serviço Socioassistencial: Proteção Social Especial de Média Complexidade '
(q5_2_1  q5_2_2  q5_2_3  q5_2_4  q5_2_5  q5_2_0 (1))
/FREQUENCIES=$mr.5_2.

MULT RESPONSE GROUPS = $mr.5_3  'q5_3.A Secretaria Estadual de Assistência Social executa diretamente algum serviço Socioassistencial: Proteção Social Especial de Alta Complexidade '
(q5_3_1  q5_3_2  q5_3_3  q5_3_4  q5_3_0 (1))
/FREQUENCIES=$mr.5_3.

MULT RESPONSE GROUPS = $mr.6  'q6. O estado realiza diretamente oferta de Benefícios Eventuais da assistência social e quais são os Benefícios Eventuais concedidos?'
 (  q6_0  q6_1  q6_2  q6_3  q6_4 (1))
/FREQUENCIES=$mr.6.


FREQUENCIES   q7  .


MULT RESPONSE GROUPS = $mr.8  'q8. Em 2023, para prevenção das emergências e calamidade, a Gestão Estadual:'
 (q8_1 q8_2  q8_3  q8_4  q8_5  q8_6  q8_7  q8_8  q8_9  q8_99  q8_0   (1))
/FREQUENCIES=$mr.8.

FREQUENCIES   q9  .

FREQUENCIES   d10_1_1    d10_2_1  .

MULT RESPONSE GROUPS = $mr.11  'q11.Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizados (Modelo II)'
 (q11_1  q11_2  q11_3  q11_4 q11_5  q11_6  q11_7  q11_8  q11_9  q11_99   (1)) 
/FREQUENCIES=$mr.11.

FREQUENCIES   q12  .


MULT RESPONSE GROUPS = $mr.13  'q13. Quais serviços de Alta Complexidade de caráter REGIONAL são ofertados pelo Estado'
 (q13_1  q13_2  q13_3  q13_4  q13_5  q13_6  q13_7  q13_8  q13_9   (1)) 
/FREQUENCIES=$mr.13.



MULT RESPONSE GROUPS = $mr.14  'q14. Quais ações de apoio técnico foram ofertadas aos municípios em 2023'
 (q14_1  q14_2  q14_3  q14_4  q14_5  q14_6  q14_7 q14_8  q14_9  q14_10  q14_0  q14_99  (1)) 
/FREQUENCIES=$mr.14.


FREQUENCIES   d15_1_1  d15_1_2 d15_2_1  d15_2_2  d15_3_1  d15_3_2  d15_4_1  d15_4_2  d15_5_1 d15_5_2  .


FREQUENCIES q16  q17  q18  q19  q20  d21  d22   d23 .


MULT RESPONSE GROUPS = $mr.24  'q24. De que maneira as resoluções e materiais das reuniões da CIB são publicizados (tornam-se de conhecimento para a sociedade)'
 (q24_0  q24_1  q24_2  q24_3  q24_4  q24_5 (1))  
/FREQUENCIES=$mr.24.



FREQUENCIES d_25_1  d_25_2  d_25_3  d_25_4 .


FREQUENCIES d_26_1   d_26_2  d_26_3  d_26_4  .



FREQUENCIES d_27 .



FREQUENCIES d_28_1   d_28_2 .



FREQUENCIES q29  q30.

