* Encoding: UTF-8.

**CENSO SUAS 2021 - Familia Acolhedora**


****derivada por faixa

RECODE q12 (Lowest thru 100=1) (101 thru 500=2) (501 thru 1000=3) (1000 thru Highest=4) INTO   d12_faixa.
EXECUTE.

VALUE LABELS    d12_faixa  
1 "Menos de 100 reais"  
2 "De 101 a 500 reais" 
3 "De 501 a 1000 reais" 
4 "Mais de 1000 reais".

VARIABLE LABELS
 d12_faixa  'q12_Qual é o valor do subsídio financeiro repassado às famílias'.
EXECUTE.


RECODE q15 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d15_faixa.
EXECUTE.
VALUE LABELS     d15_faixa 
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
  d15_faixa  'q15_Neste momento, quantas crianças/adolescentes estão sendo acolhidas por meio deste Serviço de Família Acolhedora?'.
EXECUTE.



RECODE q16 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d16_faixa.
EXECUTE.
VALUE LABELS    d16_faixa  
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d16_faixa  'q16_Nos últimos 12 meses, quantas crianças/adolescentes foram acolhidas por meio deste Serviço de Família Acolhedora?'.
EXECUTE.



RECODE q16 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d16_faixa.
EXECUTE.
VALUE LABELS    d16_faixa  
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d16_faixa  'q16_Nos últimos 12 meses, quantas crianças/adolescentes foram acolhidas por meio deste Serviço de Família Acolhedora?'.
EXECUTE.



COMPUTE q17_1_9_recod=SUM(q17_1_1,q17_1_2,q17_1_3,q17_1_4,q17_1_5,q17_1_6, q17_1_7, q17_1_8).
EXECUTE.
 VARIABLE LABELS
 q17_1_9_recod  'q17_Total de crianças/adolescentes do sexo masculino que estão acolhidas na Unidade neste momento'.
EXECUTE.


COMPUTE q17_2_9_recod=SUM(q17_2_1,q17_2_2,q17_2_3,q17_2_4,q17_2_5,q17_2_6, q17_2_7, q17_2_8).
EXECUTE.
 VARIABLE LABELS
 q17_2_9_recod   'q17_Total de crianças/adolescentes do sexo feminino que estão acolhidas na Unidade neste momento'.
EXECUTE.


COMPUTE q17_total=SUM(q17_1_9_recod, q17_2_9_recod ).
EXECUTE.
 VARIABLE LABELS
 q17_total  'q17_Total de pessoas acolhidas neste momento'.
EXECUTE.


RECODE q17_total  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d17_total_faixa.
EXECUTE.
VALUE LABELS    d17_total_faixa 
1 "Menos de 10 pessoas"  
2 "De 11 a 50 pessoas" 
3 "De 51 a 100 pessoas" 
4 "Mais de 100 pessoas".
 VARIABLE LABELS
 d17_total_faixa 'q17_total Nos últimos 12 meses, quantas pessoas foram acolhidas por meio deste Serviço de Família Acolhedora?'.
EXECUTE.




RECODE q18_1  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d18_1_faixa.
EXECUTE.
VALUE LABELS   d18_1_faixa 
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d18_1_faixa  'q18- quantas crianças/adolescentes vieram encaminhadas de outro municipio do estado'.
EXECUTE.



RECODE q18_2  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d18_2_faixa.
EXECUTE.
VALUE LABELS   d18_2_faixa 
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d18_2_faixa  'q18- quantas crianças/adolescentes vieram encaminhadas de outros estados'.
EXECUTE.


RECODE q18_3  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d18_3_faixa.
EXECUTE.
VALUE LABELS   d18_3_faixa 
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d18_3_faixa  'q18- quantas crianças/adolescentes vieram encaminhadas de outros paises (refugiado/imigrante)'.
EXECUTE.




RECODE q19_1  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_1_faixa.
EXECUTE.
VALUE LABELS   d19_1_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_1_faixa  'q19- quantas crianças/adolescentes estão acolhidas por menos de 1 mes'.
EXECUTE.

RECODE q19_2  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_2_faixa.
EXECUTE.
VALUE LABELS   d19_2_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_2_faixa  'q19- quantas crianças/adolescentes estão acolhidas de 1 a 3 meses'.
EXECUTE.


RECODE q19_3  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_3_faixa.
EXECUTE.
VALUE LABELS   d19_3_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_3_faixa  'q19- quantas crianças/adolescentes estão acolhidas de 4 a 6 meses'.
EXECUTE.


RECODE q19_4  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_4_faixa.
EXECUTE.
VALUE LABELS   d19_4_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_4_faixa  'q19- quantas crianças/adolescentes estão acolhidas de 7 a 12 meses'.
EXECUTE.


RECODE q19_5  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_5_faixa.
EXECUTE.
VALUE LABELS   d19_5_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_5_faixa  'q19- quantas crianças/adolescentes estão acolhidas de 13 a 18 meses'.
EXECUTE.

RECODE q19_6  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_6_faixa.
EXECUTE.
VALUE LABELS   d19_6_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_6_faixa  'q19- quantas crianças/adolescentes estão acolhidas de 19 a 24 meses'.
EXECUTE.


RECODE q19_7  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_7_faixa.
EXECUTE.
VALUE LABELS   d19_7_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_7_faixa  'q19- quantas crianças/adolescentes estão acolhidas de 25 a 48 meses'.
EXECUTE.



RECODE q19_8  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_8_faixa.
EXECUTE.
VALUE LABELS   d19_8_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_8_faixa  'q19- quantas crianças/adolescentes estão acolhidas de 49 a 72 meses'.
EXECUTE.


RECODE q19_9  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d19_9_faixa.
EXECUTE.
VALUE LABELS   d19_9_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d19_9_faixa  'q19- quantas crianças/adolescentes estão acolhidas mais de 72 meses'.
EXECUTE.




RECODE q20_1  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d20_1_faixa.
EXECUTE.
VALUE LABELS   d20_1_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d20_1_faixa  'q20- Qtd de Crianças/Adolescentes - Retornaram às suas famílias de naturais/família de origem (pai e/ou mãe)'.
EXECUTE.

RECODE q20_2  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d20_2_faixa.
EXECUTE.
VALUE LABELS   d20_2_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d20_2_faixa  'q20- Qtd de Crianças/Adolescentes - Retornaram às suas famílias extensas (avós, tias(os) etc.)'.
EXECUTE.


RECODE q20_3  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d20_3_faixa.
EXECUTE.
VALUE LABELS   d20_3_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d20_3_faixa  'q20- Qtd de Crianças/Adolescentes - Foram encaminhadas a famílias adotivas'.
EXECUTE.


RECODE q20_4  (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d20_4_faixa.
EXECUTE.
VALUE LABELS   d20_4_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d20_4_faixa  'q20- Qtd de Crianças/Adolescentes - Vieram transferidos de outras unidades de acolhimento'.
EXECUTE.



RECODE q20_5 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d20_5_faixa.
EXECUTE.
VALUE LABELS   d20_5_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d20_5_faixa  'q20-Qtd de Crianças/Adolescentes - Deixaram a Unidade encaminhados para outras unidades de acolhimento'.
EXECUTE.


RECODE q20_6 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d20_6_faixa.
EXECUTE.
VALUE LABELS   d20_6_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d20_6_faixa  'q20- Qtd de Crianças/Adolescentes - Foram desligados por completarem 18 anos'.
EXECUTE.





RECODE q21_1 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d21_1_faixa.
EXECUTE.
VALUE LABELS   d21_1_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d21_1_faixa  'q21- Qtd de Crianças/Adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias de naturais/família de origem (pai e/ou mãe)'.
EXECUTE.



RECODE q21_2 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d21_2_faixa.
EXECUTE.
VALUE LABELS   d21_2_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d21_2_faixa  'q21- Qtd de Crianças/Adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias extensas (avós, tias(os) etc.)'.
EXECUTE.


RECODE q21_3 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d21_3_faixa.
EXECUTE.
VALUE LABELS   d21_3_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
d21_3_faixa  'q21- Qtd de Crianças/Adolescentes - Foram acolhidas novamente APÓS terem sido encaminhadas a famílias adotivas'.
EXECUTE.




RECODE q22_1 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d22_1_faixa.
EXECUTE.
VALUE LABELS    d22_1_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d22_1_faixa  'q22- Qtd de Crianças/Adolescentes - São filhas(os) de pais privados de liberdade (encarcerados)'.
EXECUTE.



RECODE q22_2 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d22_2_faixa.
EXECUTE.
VALUE LABELS    d22_2_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d22_2_faixa  'q22- Qtd de Crianças/Adolescentes - São filhas(os) de pais adolescentes'.
EXECUTE.



RECODE q22_3 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d22_3_faixa.
EXECUTE.
VALUE LABELS    d22_3_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d22_3_faixa  'q22- Qtd de Crianças/Adolescentes - Estão aptas a adoção'.
EXECUTE.


RECODE q22_4 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d22_4_faixa.
EXECUTE.
VALUE LABELS    d22_4_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d22_4_faixa  'q22- Qtd de Crianças/Adolescentes - Estão ameaçadas de morte'.
EXECUTE.

RECODE q22_5 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d22_5_faixa.
EXECUTE.
VALUE LABELS    d22_5_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d22_5_faixa  'q22- Qtd de Crianças/Adolescentes - Participam de Programa de Apadrinhamento Afetivo'.
EXECUTE.

RECODE q23 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO     d23_faixa.
EXECUTE.
VALUE LABELS     d23_faixa
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".
 VARIABLE LABELS
 d23_faixa  'q23- Caso seja um serviço para crianças e adolescentes, quantas famílias de origem são beneficiárias do PBF?'.
EXECUTE.



RECODE q26_1  (Lowest thru 8=1) (9 thru 12=2) (13 thru 16=3)(17 thru 20=4) (21 thru 40=5) (40 thru Highest=6) INTO     d26_1_faixa.
EXECUTE.
VALUE LABELS      d26_1_faixa
1 "Menos de 8 horas/aula"  
2 "De 9 a 12 horas/aula"  
3 "De 13 a 16 horas/aula"  
4 "De 17 a 20 horas/aula"  
5 "De 20 a 40 horas/aula"  
6 "mais de 40 horas/aula"  .

 VARIABLE LABELS
  d26_1_faixa 'q26_ Carga Horária da capacitação - horas/aula  - Como é feita a capacitação das famílias acolhedoras'.
EXECUTE.

RECODE q26_2  (Lowest thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 50=4) (50 thru Highest=5) INTO     d26_2_faixa.
EXECUTE.
VALUE LABELS      d26_2_faixa
1 "Menos de 5 pessoas"  
2 "De 6 a 10  pessoas"  
3 "De 11 a 20  pessoas"  
4 "De 21 a 50  pessoas"  
5 "mais de 50  pessoas"  .

 VARIABLE LABELS
  d26_2_faixa 'q26_ Em média, grupos de quantas pessoas? - Como é feita a capacitação das famílias acolhedoras'.
EXECUTE.



