FREQUENCIES VARIABLES=q_1
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.2 'A que secretaria ou setor a assistência social está associada?'
(q_2_1 q_2_2 q_2_3  q_2_4  q_2_5  q_2_6  q_2_7  q_2_99 (1))
/FREQUENCIES=$mr.2.
 

FREQUENCIES VARIABLES=q_3_1 q_3_2 q_3_3 q_3_4 q_3_5 q_3_6 q_3_7 q_3_8 q_3_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q_4 q_4_99 q_5 q_5_99 q_6 q_6_99 
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.7 'A Secretaria Estadual de Assistência Social executa diretamente algum serviço Socioassistencial?'
(q_7_1_1 q_7_1_2 q_7_1_3 q_7_1_0 q_7_2_1 q_7_2_2 q_7_2_3 q_7_2_4 q_7_2_5 q_7_2_0 q7_3_1 q7_3_2 q7_3_3 q7_3_4 q7_3_0(1))
/FREQUENCIES=$mr.7.

FREQUENCIES VARIABLES=q_8  
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.9 'Caso sim, quais são os Benefícios Eventuais concedidos?'
(q_9_1 q_9_2 q_9_3 q_9_4 q_9_99(1))
/FREQUENCIES=$mr.9.

MULT RESPONSE GROUPS=$mr.10 'Caso o município conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:'
(q_10_1 q_10_2 q_10_3 q_10_4 q_10_5 q_10_6 q_10_7 q_10_8 q_10_9 q_10_10 q_10_11 q_10_12 q_10_13 q_10_99(1))
/FREQUENCIES=$mr.10.


FREQUENCIES VARIABLES=q_11 q_12
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.13 'Caso oferte Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI) de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades? '
(q_13_1 q_13_2(1))
/FREQUENCIES=$mr.13.

FREQUENCIES VARIABLES=q_13_1_1 q_13_2_1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.14 ' Indique  as  ações  de  apoio  técnico  e  monito ramento  desenvolvidas  pelo  Estado  com  os  CREAS municipais  de  caráter  regional  (Modelo  II)'
(q_14_1 q_14_2 q_14_3 q_14_4 q_14_5 q_14_6 q_14_7 q_14_8 q_14_9 q_14_99(1))
/FREQUENCIES=$mr.14.


FREQUENCIES VARIABLES=q_15
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.16 'Quais serviços de Alta Complexidade de caráter REGIONAL são ofertados no Estado?'
(q_16_1 q_16_2 q_16_3 q_16_4 q_16_5 q_16_6 q_16_7 q_16_8 q_16_9(1))
/FREQUENCIES=$mr.16.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_17_1 q_17_2 q_17_3 q_17_4 DISPLAY=LABEL
  /TABLE q_17_1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q_17_2 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q_17_3 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q_17_4 [C][COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q_17_1 q_17_2 q_17_3 q_17_4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

FREQUENCIES VARIABLES=q_17_1_1 q_17_2_1 q_17_3_1 q_17_4_1 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q_18
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.19 'O apoio técnico do Estado aos municípios inclui:'
(q_19_1 q_19_2 q_19_3 q_19_4 q_19_5 q_19_6 q_19_7 q_19_99(1))
/FREQUENCIES=$mr.19.

FREQUENCIES VARIABLES=q_20 q_21 q_22
  /ORDER=ANALYSIS.



FREQUENCIES VARIABLES=q_23_1_1 q_23_1_2 q_23_1_3_1 q_23_1_3_2 q_23_2_2 q_23_2_3_1 q_23_2_3_2 q_23_3_1 q_23_3_2 q_23_3_3_1 q_23_3_3_2 q_23_4_1 q_23_4_2 q_23_4_3_1 q_23_4_3_2 q_24_1_1
q_24_1_2 q_24_2_1 q_24_2_2 q_24_3_1 q_24_3_2 q_24_4_1 q_24_4_2 q_25_1_1 q_25_1_2 q_25_2_1 q_25_2_2 q_25_3_1 q_25_3_2 q_25_4_1 q_25_4_2 q_25_5_1 q_25_5_2 q_25_6_1 q_25_6_2 q_26 q_27 q_28 q_29 q_30 q_31 q_32 q_33 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.34 'O plano de Cargos, Carreiras e Salários dos servidores do órgão gestor da assistência social (PCCS) pertence a qual órgão do estado?'
(q_34_1 q_34_1_2 q_34_1_3 q_34_1_99(1))
/FREQUENCIES=$mr.34.


FREQUENCIES VARIABLES=q_35 q_36_1_1 q_36_1_2 q_36_1_3 q_36_1_4 q_36_1_5 q_36_2_1 q_36_2_2 q_36_2_3 q_36_2_4 q_36_2_5
  /ORDER=ANALYSIS.
