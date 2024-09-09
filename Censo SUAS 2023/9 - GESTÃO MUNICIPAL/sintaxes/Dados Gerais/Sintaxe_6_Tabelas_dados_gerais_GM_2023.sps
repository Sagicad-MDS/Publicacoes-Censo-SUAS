* Encoding: UTF-8.

****************************************************************************************************
SINTAXE TABELAS GESTÃO MUNICIPAL - CENSO SUAS 2023
****************************************************************************************************

********** DADOS GERAIS.

FREQUENCIES Regiao  Porte_pop2022  codigo_UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1.

MULT RESPONSE GROUPS = $mr.2  'q2.A qual secretaria a assistência social está associada'
(q2_1  q2_2  q2_3  q2_4  q2_5   q2_6  q2_7  q2_99 (1))
/FREQUENCIES=$mr.2.


FREQUENCIES  q3_1   q3_2 q3_3 q3_4   q3_5  q3_6  q3_7  q3_8  q3_9.


FREQUENCIES  d4.

MULT RESPONSE GROUPS = $mr.5  'q5.Nos últimos 12 meses, quais formas de apoio técnico o município recebeu do estado'
(q5_1  q5_2 q5_3  q5_4  q5_5  q5_6  q5_7  q5_8  q5_0 (1))
/FREQUENCIES=$mr.5.

FREQUENCIES  q6.

FREQUENCIES  q7.

*q8.
CTABLES
  /VLABELS VARIABLES= q8_1  q8_1_1  DISPLAY=DEFAULT
  /TABLE  q8_1 [C][COUNT F40.0] +  q8_1_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_1  q8_1_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q8_2  q8_2_1  DISPLAY=DEFAULT
  /TABLE  q8_2 [C][COUNT F40.0] +  q8_2_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_2  q8_2_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q8_3  q8_3_1  DISPLAY=DEFAULT
  /TABLE  q8_3 [C][COUNT F40.0] +  q8_3_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_3  q8_3_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q8_4  q8_4_1  DISPLAY=DEFAULT
  /TABLE  q8_4 [C][COUNT F40.0] +  q8_4_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_4  q8_4_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q8_5  q8_5_1  DISPLAY=DEFAULT
  /TABLE  q8_5 [C][COUNT F40.0] +  q8_5_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_5  q8_5_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q8_6  q8_6_1  DISPLAY=DEFAULT
  /TABLE  q8_6 [C][COUNT F40.0] +  q8_6_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_6  q8_6_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q8_7  q8_7_1  DISPLAY=DEFAULT
  /TABLE  q8_7 [C][COUNT F40.0] +  q8_7_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_7  q8_7_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q8_8  q8_8_1  DISPLAY=DEFAULT
  /TABLE  q8_8 [C][COUNT F40.0] +  q8_8_1  [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q8_8  q8_8_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


MULT RESPONSE GROUPS = $mr.9  'q9.De que maneira o município acompanha as discussões e decisões da Comissão Intergestores Bipartite do SUAS (CIB)'
 (q9_0 q9_1  q9_2  q9_3  q9_4  q9_99 (1)) 
/FREQUENCIES=$mr.9.


MULT RESPONSE GROUPS = $mr.10  'q10.De que maneira o município acompanha as discussões e decisões do Colegiado Estadual de Gestores Municipais da Assistência Social (COEGEMAS ou congênere)'
 (q10_1 q10_2 q10_3 q10_4 q10_99 q10_5 q10_0 (1)) 
/FREQUENCIES=$mr.10.


FREQUENCIES   q11.


* Custom Tables.  q12.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q12 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q12 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


FREQUENCIES  q13.

FREQUENCIES  q14.

MULT RESPONSE GROUPS = $mr.15  'q15.O órgão gestor realiza as seguintes atividades de monitoramento da qualidade dos serviços prestados pela rede socioassistencial'
 (q15_1  q15_2  q15_3  q15_4  q15_99  q15_0  (1)) 
/FREQUENCIES=$mr.15.

FREQUENCIES  q16.


MULT RESPONSE GROUPS = $mr.17  'q17.O(s) sistema(s) utilizado(s) permite(m):'
 (q17_1 q17_2 q17_3 q17_4   q17_5  q17_6  q17_7  q17_8  q17_9  q17_10  q17_99 (1)) 
/FREQUENCIES=$mr.17.

FREQUENCIES  q18.

MULT RESPONSE GROUPS = $mr.19  'q19.Caso participe do consórcio, marque as principais atividades envolvidas nessa atuação'
 (q19_1  q19_2  q19_3  q19_4 q19_5  q19_99 (1))  
/FREQUENCIES=$mr.19.


FREQUENCIES  q20.

FREQUENCIES   q21.  

MULT RESPONSE GROUPS = $mr.22  'q22.Indique os locais ou atividades, identificados pela Assistência Social, com ocorrência de Trabalho Infantil no município'
 (q22_1 q22_2 q22_3  q22_4  q22_5  q22_6  q22_7  q22_8 q22_9  q22_10 (1))  
/FREQUENCIES=$mr.22.

FREQUENCIES q23.

FREQUENCIES   q24.  

* q25.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q25 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q25 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

FREQUENCIES   q26. 

FREQUENCIES   q27. 

FREQUENCIES   q28. 

FREQUENCIES   q29. 

FREQUENCIES   d30. 

FREQUENCIES   q31. 

MULT RESPONSE GROUPS = $mr.33  'q33.A Assistência Social desenvolve ações, programas ou projetos de formação, qualificação ou capacitação profissional para os usuários'
 (q33_0  q33_1 q33_2  q33_3 q33_4  q33_5  q33_6  q33_7 (1)) 
/FREQUENCIES=$mr.33.

FREQUENCIES   q34.

FREQUENCIES   q35.

MULT RESPONSE GROUPS = $mr.36  'q36. .O Quais foram as principais ações realizadas em 2022 com recursos do Índice de Gestão Descentralizada –IGDSUAS'
 (q36_1 q36_2  q36_3 q36_4  q36_5  q36_6  q36_7  q36_8  q36_9  q36_99 (1))  
/FREQUENCIES=$mr.36.

MULT RESPONSE GROUPS = $mr.37  'q37.  Indique quais as principais atividades realizadas pelos adolescentes na PSC '
 (q37_1 q37_2 q37_3 q37_4 q37_5  q37_6  q37_7  q37_8  q37_9  q37_99  q37_0 (1)) 
/FREQUENCIES=$mr.37.

FREQUENCIES  q38. 

MULT RESPONSE GROUPS = $mr.39  'q39. Em qual(is) unidade(s) e com que equipe o Serviço é ofertado? '
 (q39_1  q39_2  q39_3  q39_4   q39_5  q39_6  q39_7 (1)) 
/FREQUENCIES=$mr.39.

MULT RESPONSE GROUPS = $mr.40  'q40. Em qual(is) unidade(s) e com que equipe o Serviço é ofertado '
 (q40_1  q40_2 q40_3  q40_4  q40_5 q40_6  q40_99 q40_0 (1)) 
/FREQUENCIES=$mr.40.

MULT RESPONSE GROUPS = $mr.41  'q41. Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC '
 (q41_1  q41_2  q41_3  q41_4  q41_5  q41_6 q41_7  q41_8  q41_0 (1)) 
/FREQUENCIES=$mr.41.

* q42_1.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q42_1  DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q42_1 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

* q42_2.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q42_2  DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q42_2 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

* q42_3.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q42_3  DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q42_3 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


MULT RESPONSE GROUPS = $mr.43  'q43. Indique os principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade '
 (q43_1  q43_2 q43_3  q43_4  q43_5  q43_6  q43_7  q43_8  q43_9  q43_10  q43_11 q43_12  q43_13  q43_99 (1)) 
/FREQUENCIES=$mr.43.


FREQUENCIES   q44.


MULT RESPONSE GROUPS = $mr.45  'q45. Em qual(is) unidade(s) o serviço é ofertado '
 (q45_1 q45_2 q45_3  q45_4  q45_5 (1)) 
/FREQUENCIES=$mr.45.

MULT RESPONSE GROUPS = $mr.46  'q46. Nos casos de acolhimento de crianças e adolescentes, quais atividades de gestão e monitoramento são realizadas pelo órgão gestor da Assistência Social '
 (q46_1 q46_2   q46_3  q46_4  q46_5 q46_6 q46_7  q46_8  q46_9  q46_0 q46_10 (1))  
/FREQUENCIES=$mr.46.


MULT RESPONSE GROUPS = $mr.47  'q47. Indique as ações realizadas pela política de Assistência Social no município para enfrentamento do Trabalho Infantil  '
 (q47_0  q47_1 q47_2  q47_3  q47_4  q47_5  q47_6  q47_7  q47_8  q47_9  q47_10  q47_11 q47_12 (1))  
/FREQUENCIES=$mr.47.

FREQUENCIES   q48.

*q49.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q49 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q49  [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


*q50.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q50 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q50  [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

FREQUENCIES   q51.

*q52.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q52 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q52  [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

FREQUENCIES   q53.

*q54.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q54 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q54  [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


* q55.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q55_1 q55_2 q55_3 q55_4 q55_5 q55_6 q55_99 
    DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 [C] + codigo_UF [C] BY q55_1 [S][COUNT F40.0, VALIDN F40.0, 
    SUM, MEAN] + q55_2 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN] + q55_3 [S][COUNT F40.0, VALIDN F40.0, 
    SUM, MEAN] + q55_4 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN] + q55_5 [S][COUNT F40.0, VALIDN F40.0, 
    SUM, MEAN] + q55_6 [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN] + q55_99 [S][COUNT F40.0, VALIDN 
    F40.0, SUM, MEAN]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

MULT RESPONSE GROUPS = $mr.56  'q56. O município tem encaminhado usuárias(os) da assistência social para quais oportunidades do mundo do trabalho  '
 (q56_0 q56_1 q56_2  q56_3   q56_4  q56_5  q56_6  q56_7  q56_8  q56_9  q56_99 (1))  
/FREQUENCIES=$mr.56.

FREQUENCIES   q57.

MULT RESPONSE GROUPS = $mr.58  'q58. O município promoveu capacitação sobre o Cadastro Único '
 (q58_1  q58_2  q58_3  q58_4  q58_99 q58_0 (1))  
/FREQUENCIES=$mr.58.

MULT RESPONSE GROUPS = $mr.59  'q59. Especifique quais as ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município '
 (q59_1 q59_2 q59_3  q59_4  q59_5  q59_6  q59_7  q59_8  q59_9  q59_99  q59_0 (1))  
/FREQUENCIES=$mr.59.


CTABLES
  /VLABELS VARIABLES= q60_1  q60_1_1 DISPLAY=DEFAULT
  /TABLE  q60_1 [C][COUNT F40.0] +  q60_1_1 [C][COUNT F40.0] 
  /CATEGORIES VARIABLES=q60_1  q60_1_1   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q60_2 q60_2_1 DISPLAY=DEFAULT
  /TABLE  q60_2 [C][COUNT F40.0] +  q60_2_1 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q60_2  q60_2_1  ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q60_3  q60_3_1 DISPLAY=DEFAULT
  /TABLE  q60_3 [C][COUNT F40.0] +  q60_3_1 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q60_3  q60_3_1  ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q60_4  q60_4_1 DISPLAY=DEFAULT
  /TABLE  q60_4 [C][COUNT F40.0] +  q60_4_1 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q60_4  q60_4_1   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q61_1_1 q61_1_2  q61_1_4 DISPLAY=DEFAULT
  /TABLE  q61_1_1  [C][COUNT F40.0] +  q61_1_2 [S][MEAN]  +   q61_1_4  [S][MEAN]  
  /CATEGORIES VARIABLES=q61_1_1   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q61_2_1  q61_2_2   q61_2_4 DISPLAY=DEFAULT
  /TABLE  q61_2_1 [C][COUNT F40.0] +  q61_2_2  [S][MEAN]  +  q61_2_4 [S][MEAN]  
  /CATEGORIES VARIABLES=q61_2_1   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


FREQUENCIES   q62.

FREQUENCIES   q63.


*q64_1.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q64_1 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q64_1  [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



*q64_2.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 codigo_UF q64_2 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 + codigo_UF [C] BY q64_2  [S][COUNT F40.0, VALIDN F40.0, SUM, MEAN]    
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=codigo_UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
    31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

FREQUENCIES   q65.

