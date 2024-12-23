* Encoding: UTF-8.

****************************************************************************************************
SINTAXE TABELAS GESTÃO MUNICIPAL - CENSO SUAS 2021
****************************************************************************************************

********** DADOS GERAIS.

FREQUENCIES Regiao  Porte_pop2010 UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1_1 q1_2 q1_3  q1_4  q1_5  q1_6  q1_7  q1_8  q1_9  q1_10  q1_11.

FREQUENCIES  q2.

FREQUENCIES  d3.

FREQUENCIES  q4.

MULT RESPONSE GROUPS = $mr.5  'q5.Em relação ao PMCFC, indique as principais ações realizadas pelo município'
(q5_1 q5_2  q5_3  q5_4  q5_5  q5_99 (1))
/FREQUENCIES=$mr.5.

FREQUENCIES  q6.

MULT RESPONSE GROUPS = $mr.7  'q7.Nos últimos 12 meses, quais formas de apoio técnico o município recebeu do estado'
 (q7_1  q7_2  q7_3  q7_4  q7_5  q7_6  q7_7  q7_8  q7_9  q7_99 (1))
/FREQUENCIES=$mr.7.

MULT RESPONSE GROUPS = $mr.8  'q8.De que maneira o município acompanha as discussões e decisões da Comissão Intergestores Bipartite do SUAS (CIB)'
 (q8_0  q8_1  q8_2  q8_3  q8_4  q8_99 (1)) 
/FREQUENCIES=$mr.8.

FREQUENCIES  q9.

MULT RESPONSE GROUPS = $mr.10  'q10.De que maneira o município acompanha as discussões e decisões do Colegiado Estadual de Gestores Municipais da Assistência Social (COEGEMAS ou congênere)'
 (q10_1 q10_2 q10_3 q10_4 q10_99 q10_5 q10_0 (1)) 
/FREQUENCIES=$mr.10.

FREQUENCIES   q11.

FREQUENCIES   d12.

FREQUENCIES  q13.

FREQUENCIES  q14.

FREQUENCIES  q15 .

MULT RESPONSE GROUPS = $mr.16  'q16.Como o município registra os casos de violação de direitos atendidos'
 (q16_1  q16_2  q16_3  q16_4  q16_99  q16_0 (1)) 
/FREQUENCIES=$mr.16.

MULT RESPONSE GROUPS = $mr.17  'q17.O órgão gestor realiza as seguintes atividades de monitoramento da qualidade dos serviços prestados pela rede socioassistencial'
 (q17_1  q17_2  q17_3  q17_4  q17_99  q17_0 (1)) 
/FREQUENCIES=$mr.17.

MULT RESPONSE GROUPS = $mr.18  'q18.Quais estratégias de fomento à participação de cidadã(o) e usuária(o) são utilizadas pelo órgão gestor da Assistência Social no município'
 (q18_1  q18_2  q18_3  q18_4  q18_5  q18_6  q18_7  q18_8  q18_9  q18_99  q18_0 (1)) 
/FREQUENCIES=$mr.18.

FREQUENCIES  q19.

FREQUENCIES  q20_1  q20_2   q20_3 q20_4  q20_5  q20_6 q20_7.

FREQUENCIES   d21.  

MULT RESPONSE GROUPS = $mr.22  'q22.Como a Assistência Social atende questões de violações de direitos no município'
 (q22_1  q22_2  q22_3 q22_4 q22_5 q22_6 q22_99 q22_0 (1))  
/FREQUENCIES=$mr.22.

MULT RESPONSE GROUPS = $mr.23  'q23.Como o município atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC'
 (q23_1 q23_2 q23_3 q23_4 q23_5 q23_6 q23_7 q23_8 q23_0 (1)) 
/FREQUENCIES=$mr.23.

FREQUENCIES   d23_5  d23_6  d23_7.  

FREQUENCIES   d24_1  d24_2  d24_3. 

MULT RESPONSE GROUPS = $mr.25  'q25.  Indique os principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade'
 (q25_1 q25_2 q25_3  q25_4  q25_5  q25_6  q25_7 q25_8  q25_9  q25_10  q25_11 q25_12  q25_13  q25_99 (1)) 
/FREQUENCIES=$mr.25.

MULT RESPONSE GROUPS = $mr.26  'q26.  Indique quais as principais atividades realizadas pelos adolescentes na PSC '
 (q26_1 q26_2 q26_3  q26_4  q26_5  q26_6  q26_7 q26_99 (1)) 
/FREQUENCIES=$mr.26.

FREQUENCIES  q27. 

MULT RESPONSE GROUPS = $mr.28  'q28. Em qual(is) unidade(s) o serviço é ofertado '
 (q28_1 q28_2 q28_3 q28_4 q28_5 (1)) 
/FREQUENCIES=$mr.28.

FREQUENCIES   d28_4  d28_5.

MULT RESPONSE GROUPS = $mr.29  'q29.  Nos casos de acolhimento de crianças e adolescentes, quais atividades de gestão e monitoramento são realizadas pelo órgão gestor da Assistência Social '
 (q29_1 q29_2 q29_3 q29_4 q29_5 q29_6 q29_7 q29_8  q29_9 q29_0 (1)) 
/FREQUENCIES=$mr.29.

MULT RESPONSE GROUPS = $mr.30  'q30.Indique as ações realizadas pela política de Assistência Social no município para enfrentamento do Trabalho Infantil'
 (q30_0 q30_1 q30_2 q30_3 q30_4  q30_5  q30_6 q30_7 q30_8 q30_9  q30_10  q30_11  q30_12 (1))
/FREQUENCIES=$mr.30.

FREQUENCIES   q31.

FREQUENCIES   d32.

FREQUENCIES d33.

FREQUENCIES  q34.

FREQUENCIES  q35.

MULT RESPONSE GROUPS = $mr.36  'q36. Quais são as atividades do programa/serviço de acolhimento para pessoas idosas'
 (q36_1  q36_2  q36_3  q36_4  q36_5  q36_6  q36_7  q36_8  q36_9  q36_10  q36_11  q36_12  q36_13  q36_14  q36_0 (1))
/FREQUENCIES=$mr.36.

FREQUENCIES  d37.

FREQUENCIES  q38.

FREQUENCIES  d39.

FREQUENCIES  q40.

FREQUENCIES  d41.

FREQUENCIES  q42_98  q42_2  q42_5   q42_3  q42_6  q42_4  q42_7  q42_8.

FREQUENCIES  q43.

MULT RESPONSE GROUPS = $mr.44  'q44. Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho'
 (q44_0  q44_1  q44_2  q44_3  q44_4  q44_5  q44_6  q44_7  q44_8  q44_9  q44_10  q44_11  q44_12 (1))
/FREQUENCIES=$mr.44.

FREQUENCIES  q45.

MULT RESPONSE GROUPS = $mr.46  'q46. A equipe do Programa Acessuas Trabalho realiza o monitoramento do percurso dos usuários a partir da articulação com outras ofertas'
 (q46_0 q46_1 q46_2   q46_3  q46_4 (1))
/FREQUENCIES=$mr.46.

MULT RESPONSE GROUPS = $mr.47  'q47. Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social'
 (q47_0  q47_1  q47_2  q47_3  q47_4  q47_5  q47_6  q47_7  q47_8  q47_9  q47_10  q47_11  q47_99 (1))
/FREQUENCIES=$mr.47.

FREQUENCIES  q48.

FREQUENCIES  q49.

FREQUENCIES  q50.

MULT RESPONSE GROUPS = $mr.51  'q51. O Comitê Gestor do PCF é composto por representantes de quais áreas da gestão municipal'
 (q51_1  q51_2  q51_3  q51_4  q51_5  q51_99 (1))
/FREQUENCIES=$mr.51.

MULT RESPONSE GROUPS = $mr.52  'q52. Quais das atividades abaixo são realizadas pela gestão do Cadastro Único'
 (q52_1  q52_2  q52_3  q52_4  q52_99 q52_0 (1))
/FREQUENCIES=$mr.52.

FREQUENCIES  q53.

MULT RESPONSE GROUPS = $mr.54  'q54.  O município promoveu capacitação sobre o Cadastro Único'
 (q54_1 q54_2 q54_3  q54_4  q54_99 q54_0 (1))
/FREQUENCIES=$mr.54.

MULT RESPONSE GROUPS = $mr.55  'q55. Especifique quais as ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município'
 (q55_1  q55_2 q55_3  q55_4  q55_5  q55_6  q55_7  q55_8  q55_9  q55_99  q55_0 (1))
/FREQUENCIES=$mr.55.

CTABLES
  /VLABELS VARIABLES= q56_1_1  q56_1_2    q56_1_3 DISPLAY=DEFAULT
  /TABLE  q56_1_1 [C][COUNT F40.0] +  q56_1_2 [C][COUNT F40.0] +   q56_1_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q56_1_1  q56_1_2  q56_1_3   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q56_2_1  q56_2_2    q56_2_3 DISPLAY=DEFAULT
  /TABLE  q56_2_1 [C][COUNT F40.0] +  q56_2_2 [C][COUNT F40.0] +   q56_2_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q56_2_1  q56_2_2  q56_2_3   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q56_3_1  q56_3_2    q56_3_3 DISPLAY=DEFAULT
  /TABLE  q56_3_1 [C][COUNT F40.0] +  q56_3_2 [C][COUNT F40.0] +   q56_3_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q56_3_1  q56_3_2  q56_3_3   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q56_4_1  q56_4_2    q56_4_3 DISPLAY=DEFAULT
  /TABLE  q56_4_1 [C][COUNT F40.0] +  q56_4_2 [C][COUNT F40.0] +   q56_4_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q56_4_1  q56_4_2  q56_4_3   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

MULT RESPONSE GROUPS = $mr.57  'q57.  Indique quais as ações relativas à gestão de benefícios do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no município'
 (q57_0  q57_1 q57_2  q57_3 q57_4  q57_5  q57_6 q57_7  q57_8  q57_9   q57_10  q57_11  q57_12  q57_13  q57_99 (1))
/FREQUENCIES=$mr.57.

FREQUENCIES   q58.  

MULT RESPONSE GROUPS = $mr.59  'q59.  Indique quais as ações relativas à gestão de condicionalidades do Programa Bolsa Família (PBF) são desenvolvidas pela Assistência Social no município'
 (q59_1  q59_2 q59_3 q59_4  q59_5  q59_6  q59_7 q59_0 (1)) 
/FREQUENCIES=$mr.59.

MULT RESPONSE GROUPS = $mr.60  'q60. No seu município, o registro no SICON dos atendimentos/acompanhamentos realizados pela assistência social com as famílias PBF em descumprimento de condicionalidades são realizados por qual(is) setor(es)/unidade'
 (q60_1  q60_2 q60_3 q60_0 (1)) 
/FREQUENCIES=$mr.60.

FREQUENCIES   q61.  

MULT RESPONSE GROUPS = $mr.62  'q62.  O município promoveu capacitação sobre o Cadastro Único'
 (q62_1  q62_2  q62_3  q62_4  q62_5  q62_6  q62_7  q62_8 q62_9  q62_10  q62_11  q62_12  q62_13  q62_14  q62_99  q62_0 (1))
/FREQUENCIES=$mr.62.


MULT RESPONSE GROUPS = $mr.63_1  'q63_1.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Criação de novas vagas de acolhimento '
 (q63_1_1  q63_1_2  q63_1_3 q63_1_4  q63_1_5  q63_1_99  q63_1_0 (1))
/FREQUENCIES=$mr.63_1.

MULT RESPONSE GROUPS = $mr.63_2  'q63_2.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Reorganização das vagas de acolhimento já existentes '
 (q63_2_1  q63_2_2  q63_2_3 q63_2_4  q63_2_5  q63_2_99  q63_2_0 (1))
/FREQUENCIES=$mr.63_2.

MULT RESPONSE GROUPS = $mr.63_3  'q63_3.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Apoio através da distribuição de alimentos '
 (q63_3_1  q63_3_2  q63_3_3 q63_3_4  q63_3_5  q63_3_99  q63_3_0 (1))
/FREQUENCIES=$mr.63_3.

MULT RESPONSE GROUPS = $mr.63_4  'q63_4.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Distribuição de Kits de Higiene Pessoal e Limpeza'
 (q63_4_1  q63_4_2  q63_4_3 q63_4_4  q63_4_5  q63_4_99  q63_4_0 (1))
/FREQUENCIES=$mr.63_4.

MULT RESPONSE GROUPS = $mr.63_5  'q63_5.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Distribuição para os usuários de Equipamentos de Proteção Individual (máscaras, álcool gel etc.)  '
 (q63_5_1  q63_5_2  q63_5_3 q63_5_4  q63_5_5  q63_5_99  q63_5_0 (1))
/FREQUENCIES=$mr.63_5.

MULT RESPONSE GROUPS = $mr.63_6  'q63_6.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Apoio através da concessão de materiais e/ou pecúnia/dinheiro  '
 (q63_6_1  q63_6_2  q63_6_3 q63_6_4  q63_6_5  q63_6_99  q63_6_0 (1))
/FREQUENCIES=$mr.63_6.

MULT RESPONSE GROUPS = $mr.63_7  'q63_7.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Busca Ativa / Abordagem Social dos usuários  '
 (q63_7_1  q63_1_2  q63_7_3 q63_7_4  q63_7_5  q63_7_99  q63_7_0 (1))
/FREQUENCIES=$mr.63_7.

MULT RESPONSE GROUPS = $mr.63_8  'q63_8.  Em relação aos seguintes públicos  informe quais as atividades foram realizadas_ Disponibilização de locais para higiene pessoal e limpeza (disponibilização de banheiros, pias, acesso à água potável etc.)  '
 (q63_8_1  q63_8_2  q63_8_3 q63_8_4  q63_8_5  q63_8_99  q63_8_0 (1))
/FREQUENCIES=$mr.63_8.

FREQUENCIES   d64_1  d64_2.

MULT RESPONSE GROUPS = $mr.65  'q65.  Foram concedidos benefícios eventuais em decorrência da pandemia de COVID-19'
 (q65_1  q65_2 q65_3  q65_4 q65_0 (1))
/FREQUENCIES=$mr.65.

FREQUENCIES  q66.

FREQUENCIES  q67.

FREQUENCIES  q68.

FREQUENCIES  q69_1 q69_2 q69_3.

MULT RESPONSE GROUPS = $mr.70  'q70.  Em relação aos trabalhadores (gestão e unidades), informe as medidas que foram necessárias'
 (q70_1  q70_2  q70_3  q70_4  q70_5  q70_6   q70_7  q70_8  q70_99  q70_0 (1)) 
/FREQUENCIES=$mr.70.

MULT RESPONSE GROUPS = $mr.71  'q71.  Quais as principais dificuldades enfrentadas pelo município devido a pandemia de COVID-19 '
 (q71_1 q71_2  q71_3  q71_4 q71_5  q71_6 q71_7  q71_8  q71_99  q71_0 (1)) 
/FREQUENCIES=$mr.71.


CTABLES
  /VLABELS VARIABLES= q72_1_1  q72_1_2  q72_1_4 DISPLAY=DEFAULT
  /TABLE  q72_1_1 [C][COUNT F40.0] +  q72_1_2 [S][MEAN]  +   q72_1_4 [S][MEAN]  
  /CATEGORIES VARIABLES=q72_1_1   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q72_2_1  q72_2_2  q72_2_4 DISPLAY=DEFAULT
  /TABLE  q72_2_1 [C][COUNT F40.0] +  q72_2_2 [S][MEAN]  +   q72_2_4 [S][MEAN]  
  /CATEGORIES VARIABLES=q72_2_1   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.



FREQUENCIES  q73.

FREQUENCIES   d74.

FREQUENCIES   q75.

FREQUENCIES   d76_1  d76_2  .

FREQUENCIES  q77  d77.

FREQUENCIES  q78.

FREQUENCIES  q79.

FREQUENCIES  q80.

*