***Verificando pulo q3. As respostas devem pular as questões 4 e 5. Não" = 0. ***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q3 = 0).
VARIABLE LABEL filter_$ 'q3 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

***Verificar se houve alguma resposta nas questões 4 e 5 para quem marcou "Não" na q3.*** 
*** Se o pulo funcionar, a tabela de frequências deve apresentar todos os valores das questões puladas como Missing, ou seja, Valid = 0 ***

FREQUENCIES VARIABLES=q4_1 q4_2 q4_3 q4_4 q4_5 q4_6 q4_7 q4_8 q4_99 q4_qual q5_1 q5_2 q5_3 q5_4 
    q5_5 q5_6 q5_7 q5_8 q5_9 q5_10 q5_11 q5_12 q5_13 q5_14 q5_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

*** Verificar se houve o pulo para quem respondeu a q5_1. Não pode ter sido respondida mais nenhum item da questão 5. "Não" = 0 ***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q5_1 = 1).
VARIABLE LABEL filter_$ 'q5_1 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

***Foi verificado que havia 13resposas "Não" nos demais itens da q5, quando o esperado era um "ponto" (sinal de Missing) .
*** Se o pulo funcionar, a tabela de frequências deve apresentar todos os valores das questões puladas como Missing, ou seja, Valid = 0 ***

FREQUENCIES VARIABLES=q5_2 q5_3 q5_4 
    q5_5 q5_6 q5_7 q5_8 q5_9 q5_10 q5_11 q5_12 q5_13 q5_14 q5_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

***Excluir os casos da q5 em que houve resposta "Não" quando o esperado era que houvesse o pulo. Todo pulo deve estar registrado com o um "ponto". ***

DO IF (q5_1 = 1).
RECODE q5_2 q5_3 q5_4 
    q5_5 q5_6 q5_7 q5_8 q5_9 q5_10 q5_11 q5_12 q5_13 q5_14 q5_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***Verificando pulo q10. As respostas devem pular a q11. Não" = 0. ***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q10 = 0).
VARIABLE LABEL filter_$ 'q10 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*** Se o pulo funcionar, todos os itens de q11 devem estar com um "ponto" de Missing, para quem marcou "Não" em q10. ***

FREQUENCIES VARIABLES=q11_1 q11_1_1 q11_1_2 q11_1_3 q11_2 q11_2_1 q11_2_2 q11_2_3 q11_3 q11_3_1 q11_3_2 q11_3_3 q11_4 q11_4_1 q11_4_2 q11_4_3 q11_5 q11_5_1 q11_5_2 q11_5_3
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

***Verificando pulo q14. As respostas devem pular a q15. Não" = 0. ***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q14 = 0).
VARIABLE LABEL filter_$ 'q14 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*** Se o pulo funcionar, todos os itens de q15 devem estar com um "ponto" de Missing, para quem marcou "Não" em q14. ***

FREQUENCIES VARIABLES=q15_1 q15_2 q15_3 q15_4 q15_5 q15_6 q15_7 q15_8 q15_9 q15_10 q15_11 q15_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

***Verificando pulo q18. As respostas devem pular a q25. Não" = 0 - "Não realiza, nem possui Serviço de Abordagem referenciado a este Centro POP" ***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q18 = 0).
VARIABLE LABEL filter_$ 'q18 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*** Se o pulo funcionar, todos os itens de q19, q.20, q21, q22, q23 e q24  devem estar com um "ponto" de Missing, para quem marcou "Não = 0" em q18. ***

FREQUENCIES VARIABLES= q19_1 q19_2 q19_3 q19_4 q19_5 q19_6 q19_7 q19_8 q19_9 
q20_1 q20_2 q20_3 q20_4 q20_99 q20_qual 
q21 
q22 
q23_1 q23_2 q23_3 q23_4 q23_5 q23_6 q23_7 q23_8 q23_9 q23_99
q24_0 q24_1 q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q24_8 q24_9 q24_10 q24_11 q24_12 q24_13 q24_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.


***Verificando pulo q23_1 (Sim =1). As respostas Sim a esta questao devem ter respondido "Não" nos demais itens de q23 e devem pular todos os itens da q24***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q23_1 = 1).
VARIABLE LABEL filter_$ 'q23_1 = 1 (FILTER)'.
VALUE LABELS filter_$ 1 'Not Selected' 0 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*** Se o pulo funcionar, todos os demais itens após q23_1 e todos os itens de q24 devem estar com um "ponto" de Missing, para quem marcou "Sim = 1" em q23_1. ***

FREQUENCIES VARIABLES= 
q24_0 q24_1 q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q24_8 q24_9 q24_10 q24_11 q24_12 q24_13 q24_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.


***Verificando pulo q24_0 (Sim =1). As respostas Sim a esta questão devem ter respondido "Não"aos demais itens da q24***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q24_0 = 1).
VARIABLE LABEL filter_$ 'q24_0 = 1 (FILTER)'.
VALUE LABELS filter_$ 1 'Not Selected' 0 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*** Se o pulo funcionar, todos os demais itens após q24_0 devem estar com um "ponto" de Missing, para quem marcou "Sim = 1" em q24_0. ***

FREQUENCIES VARIABLES= 
q24_1 q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q24_8 q24_9 q24_10 q24_11 q24_12 q24_13
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

***Verificando pulo q26. As respostas Não =0 em q26 devem pular toda a q27.  ***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q26 = 0).
VARIABLE LABEL filter_$ 'q26 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*** Se o pulo de q26 funcionar, todos os itens de q27 devem estar com um "ponto" de Missing***

FREQUENCIES VARIABLES= 
q27_1 q27_2 q27_3 q27_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

***Verificando pulo q28. As respostas Não =0 devem pular a q29.  ***

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q28 = 0).
VARIABLE LABEL filter_$ 'q28 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.























