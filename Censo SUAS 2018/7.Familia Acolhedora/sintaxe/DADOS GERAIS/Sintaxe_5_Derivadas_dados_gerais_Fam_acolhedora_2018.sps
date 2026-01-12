* Encoding: UTF-8.

**CENSO SUAS 2018 - Familia Acolhedora**


****derivada por faixa

RECODE q_13 (Lowest thru 100=1) (101 thru 500=2) (501 thru 1000=3) (1000 thru Highest=4) INTO 
    d_13_faixa.
EXECUTE.

VALUE LABELS    d_13_faixa  
1 "Menos de 100 reais"  
2 "De 101 a 500 reais" 
3 "De 501 a 1000 reais" 
4 "Mais de 1000 reais".

 VARIABLE LABELS
 d_13_faixa  'q_13_Qual é o valor do subsídio financeiro repassado às famílias'.
EXECUTE.



RECODE q_14 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO 
    d_14_faixa.
EXECUTE.
VALUE LABELS    d_14_faixa  
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".

 VARIABLE LABELS
 d_14_faixa  'q_14_Nos últimos 12 meses, quantas crianças/adolescentes foram acolhidas por meio deste Serviço de Família Acolhedora?'.
EXECUTE.

RECODE q_15 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO 
    d_15_faixa.
EXECUTE.
VALUE LABELS     d_15_faixa 
1 "Menos de 10 crianças/adolescentes"  
2 "De 11 a 50 crianças/adolescentes" 
3 "De 51 a 100 crianças/adolescentes" 
4 "Mais de 100 crianças/adolescentes".

 VARIABLE LABELS
  d_15_faixa  'q_15_Neste momento, quantas crianças/adolescentes estão sendo acolhidas por meio deste Serviço de Família Acolhedora?'.
EXECUTE.



COMPUTE q_16_1_7_recod=SUM(q_16_1_1,q_16_1_2,q_16_1_3,q_16_1_4,q_16_1_5,q_16_1_6).
EXECUTE.
 VARIABLE LABELS
 q_16_1_7_recod  'q_16_Total de crianças/adolescentes do sexo masculino que estão acolhidas na Unidade neste momento'.
EXECUTE.


COMPUTE q_16_2_7_recod=SUM(q_16_2_1,q_16_2_2,q_16_2_3,q_16_2_4,q_16_2_5,q_16_2_6).
EXECUTE.
 VARIABLE LABELS
  q_16_2_7_recod  'q_16_Total de crianças/adolescentes do sexo feminino que estão acolhidas na Unidade neste momento'.
EXECUTE.


COMPUTE q_17_9_recod=SUM(q_17_1,q_17_2,q_17_3,q_17_4,q_17_5,q_17_6, q_17_7, q_17_8).
EXECUTE.
 VARIABLE LABELS
 q_17_9_recod  'q_17_Total de pessoas acolhidas neste momento'.
EXECUTE.


