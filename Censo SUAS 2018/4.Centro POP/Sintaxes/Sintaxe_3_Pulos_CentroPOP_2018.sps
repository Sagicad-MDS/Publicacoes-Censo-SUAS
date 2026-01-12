* Encoding: UTF-8.
**VERIFICAR PULOS Centro POP 2018**


**Verificando pulo q2. As respostas devem pular as questões 3, 4 e 5. Não" = 0 **

FREQUENCIES VARIABLES= q2.

**Verificadas 57 respostas "Sim", e 169 "Não", que é missing**

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter.$=(q2 = 0).
VARIABLE LABEL filter_$ 'q2 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

***Verificar se houve alguma resposta nas questões 3 e 4 para quem marcou "Não" na q2.*** 
*** Se o pulo funcionar, a tabela de frequências deve apresentar todos os valores das questões puladas como Missing, ou seja, Valid = 0 ***

FREQUENCIES VARIABLES= q3_1
q3_2
q3_3
q3_4
q3_5
q3_6
q3_7
q3_8
q3_99
q3_99_qual
q4_1
q4_2
q4_3
q4_4
q4_5
q4_6
q4_7
q4_8
q4_9
q4_10
q4_11
q4_12
q4_13
q4_14
q4_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

DO IF (q2 = 1).
RECODE q3_1
q3_2
q3_3
q3_4
q3_5
q3_6
q3_7
q3_8
q3_99
q3_99_qual
q4_1
q4_2
q4_3
q4_4
q4_5
q4_6
q4_7
q4_8
q4_9
q4_10
q4_11
q4_12
q4_13
q4_14
q4_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



**Verificando pulo q4_1. Não pode ter sido respondida mais nenhum item da questão 4. "Não" = 0 **

FREQUENCIES VARIABLES q4_1.

USE ALL.
COMPUTE filter.$=(q4_1 = 1).
VARIABLE LABEL filter_$ 'q4_1 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**Verificadas 43 respostas "Não" para q4_1, quando o esperado era um "ponto" (sinal de Missing) **

*** Se o pulo funcionar, a tabela de frequências deve apresentar todos os valores das questões puladas como Missing, ou seja, Valid = 0 ***

FREQUENCIES VARIABLES=q4_2
q4_3 
q4_4
q4_5
q4_6
q4_7
q4_8
q4_9
q4_10
q4_11
q4_12
q4_13
q4_14
q4_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Excluir os casos da q4 em que houve resposta "Não" quando o esperado era que houvesse o pulo. Todo pulo deve estar registrado como um "ponto"**

DO IF (q4_1 = 1).
RECODE q4_2 q4_3 q4_4 q4_5 q4_6 q4_7 q4_8 q4_9 q4_10 q4_11 q4_12 q4_13 q4_14 q4_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulo q10. As respostas devem pular a q11. "Não" = 0**

FREQUENCIES VARIABLES q10.

**Verificados 9 "Não"=0**

USE ALL.
COMPUTE filter.$=(q10 = 0).
VARIABLE LABEL filter_$ 'q10 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**Se o pulo funcionar, todos os itens de q11 devem estar com um "ponto" de Missing, para quem marcou "Não" em q10. ***

FREQUENCIES VARIABLES= q11_1
q11_1_1
q11_1_2
q11_1_3
q11_2
q11_2_1
q11_2_2
q11_2_3
q11_3
q11_3_1
q11_3_2
q11_3_3
q11_4
q11_4_1
q11_4_2
q11_4_3
q11_5
q11_5_1
q11_5_2
q11_5_3
/FORMAT=NOTABLE
/ORDER=ANALYSIS.



** Verificando pulo na q13. Não pode ter sido respondida mais nenhum item da questão 13. "Não" = 0 **

FREQUENCIES VARIABLES q13.

**Verificados 15 "Não"=0**

USE ALL.
COMPUTE filter.$=(q13 = 0).
VARIABLE LABEL filter_$ 'q13 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**Se o pulo funcionar, todos os itens de q14 devem estar com um "ponto" de Missing, para quem marcou "Não" em q13**

FREQUENCIES VARIABLES=q14_1
q14_2
q14_3
q14_4
q14_5
q14_6
q14_7
q14_8
q14_9
q14_10
q14_99
q14_quais
/FORMAT=NOTABLE
/ORDER=ANALYSIS.

**verificando pulos na questão 16**

FREQUENCIES VARIABLES q16_1 q16_2 q16_99 q16_3 q16_0.

USE ALL.
COMPUTE filter.$=(q16_3 = 0).
VARIABLE LABEL filter_$ 'q16_3 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

USE ALL.
COMPUTE filter.$=(q16_0 = 0).
VARIABLE LABEL filter_$ 'q16_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES q16_1 q16_2 q16_99.

DO IF (q16_3= 0).
RECODE q16_1 q16_2 q16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q16_0= 0).
RECODE q16_1 q16_2 q16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



***Verificando pulos na questão 17***

     **República para adultos em processo de saída das ruas**

FREQUENCIES VARIABLES q17_1.

**187 "Não"**

USE ALL.
COMPUTE filter.$=(q17_1 = 0).
VARIABLE LABEL filter_$ 'q17_1= 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**A frequencia do encaminhamento deve estar como ponto "Missing"**

FREQUENCIES VARIABLES=q17_1_freq
/FORMAT=NOTABLE
/ORDER=ANALYSIS.


     **Programas de Aluguel Social**

FREQUENCIES VARIABLES q17_2.

**Programas de Aluguel Social=134 "Não". 

USE ALL.
COMPUTE filter.$=(q17_2 = 0).
VARIABLE LABEL filter_$ 'q17_2 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**A frequencia do encaminhamento deve estar como ponto "Missing"**

FREQUENCIES VARIABLES=q17_2_freq
/FORMAT=NOTABLE
/ORDER=ANALYSIS.

      **Programas de Habitação Popular**

FREQUENCIES VARIABLES q17_3.

**Programas de Habitação Popular=73"Não"**

USE ALL.
COMPUTE filter.$=(q17_3 = 0).
VARIABLE LABEL filter_$ 'q17_3 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**A frequencia do encaminhamento deve estar como ponto "Missing"**

FREQUENCIES VARIABLES=q17_3_freq
/FORMAT=NOTABLE
/ORDER=ANALYSIS.


**Verificando pulos na questão 19**

FREQUENCIES VARIABLES q19. 

        **"Não realiza, nem possui Serviços de Abordagem referenciado a este Centro POP" =19 casos, devem pular para as questões 20, 21, 22, 23 e 24**

USE ALL.
COMPUTE filter.$=(q19 = 0).
VARIABLE LABEL filter_$ 'q19 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


**Verificando se as questões estão respondidas como Missing**

FREQUENCIES VARIABLES= q20_1
q20_2
q20_3
q20_4
q20_5
q20_6
q20_7
q20_8
q20_9
q20_10
q20_11
q20_12
q20_13
q20_14
q20_0
q21_1
q21_2
q21_3
q21_4
q21_5
q21_6
q21_7
q21_8
q21_9
q21_10
q21_11
q21_12
q21_13
q21_14
q22
q23
q24_1
q24_2
q24_3
q24_4
q24_5
q24_6
q24_7
q24_8
q24_9
q24_10
q24_11
q24_99
  /FORMAT=NOTABLE
  /ORDER=ANALYSIS.


**Verificando outros pulos na questão 19**

FREQUENCIES VARIABLES q19. 

    **"Sim, com equipe exclusiva para Abordagem"=103, devem pular a questão 20**

USE ALL.
COMPUTE filter.$=(q19 = 3).
VARIABLE LABEL filter_$ 'q19 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**Verificando se as questões estão respondidas como Missing**

FREQUENCIES VARIABLES= q20_1
q20_2
q20_3
q20_4
q20_5
q20_6
q20_7
q20_8
q20_9
q20_10
q20_11
q20_12
q20_13
q20_14
q20_0
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Verificando outros pulos na questão 19**

FREQUENCIES VARIABLES q19. 

    **"Sim, sem equipe exclusiva para Abordagem"=59, devem pular a questão 20**

USE ALL.
COMPUTE filter.$=(q19 = 2).
VARIABLE LABEL filter_$ 'q19 = 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**Verificando se as questões estão respondidas como Missing**

FREQUENCIES VARIABLES= q20_1
q20_2
q20_3
q20_4
q20_5
q20_6
q20_7
q20_8
q20_9
q20_10
q20_11
q20_12
q20_13
q20_14
q20_0
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.



**Verificando pulos na questão 20_0**

FREQUENCIES VARIABLES=q20_0.

 
   **Não realiza nenhuma das atividades acima"=5, devem pular as questões 21, 22, 23 e 24**
  
USE ALL.
COMPUTE filter.$=(q20_0 = 1).
VARIABLE LABEL filter_$ 'q20_0 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**Excluir os casos da q20 em que houve resposta "Não" (40 casos) quando o esperado era que houvesse missing. Todo pulo deve estar registrado como um "ponto"**

DO IF (q20_0 = 0).
RECODE q20_0 (ELSE=SYSMIS).
END IF.
EXECUTE.

**Colocar missing para as proximas** 

DO IF (q20_0 = 1).
RECODE q20_1
q20_2
q20_3
q20_4
q20_5
q20_6
q20_7
q20_8
q20_9
q20_10
q20_11
q20_12
q20_13
q20_14 (ELSE=SYSMIS).
END IF.
EXECUTE.



**Verificando pulos na questão 24_1**

FREQUENCIES VARIABLES=q24_1.

**84 "Sim" e 118 "Não", que deveria ser Missing"**

USE ALL.
COMPUTE filter.$=(q24_1 = 1).
VARIABLE LABEL filter_$ 'q24_1 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

**Excluir os casos da q24_1 em que houve resposta "Não" (118 casos) quando o esperado era que houvesse missing. Todo pulo deve estar registrado como um "ponto"**

DO IF (q24_1 = 0).
RECODE q24_1 (ELSE=SYSMIS).
END IF.
EXECUTE.

**Colocar missing para as proximas** 

FREQUENCIES VARIABLES=q24_2
q24_3
q24_4
q24_5
q24_6
q24_7
q24_8
q24_9
q24_10
q24_11
q24_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.


DO IF (q24_1 = 1).
RECODE q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q24_8 q24_9 q24_10 q24_11 q24_99 (ELSE=SYSMIS).
END IF.
EXECUTE.



**Verificando pulos na questão 25. ATENÇÃO, nesta questão o "Não"=1 e o "Sim"=0** E deve pular para q28**

FREQUENCIES VARIABLES=q25.

**145 "Sim" e 81 "Não""** 

USE ALL.
COMPUTE filter.$=(q25 = 0).
VARIABLE LABEL filter_$ 'q25 = 0 (FILTER)'.
VALUE LABELS filter_$ 1 'Not Selected' 0 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


***Verificar se houve alguma resposta nas questões 26 e 27 para quem marcou "Não" na q25.*** 
*** Se o pulo funcionar, a tabela de frequências deve apresentar todos os valores das questões puladas como Missing, ou seja, Valid = 0 ***

FREQUENCIES VARIABLES=q26_1
q26_2
q26_3
q26_4
q27
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.



**Verificando pulos na questão 28**

FREQUENCIES VARIABLES=q28. 

**37 "Não", que deve pular questão 29**

USE ALL.
COMPUTE filter.$=(q28 = 0).
VARIABLE LABEL filter_$ 'q28 =  (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q29_1
q29_2
q29_3
q29_4
q29_5
q29_6
q29_7
q29_8
q29_9
q29_10
q29_99
q29_qual
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.



**Verificando pulos na questão 30_1_0**

FREQUENCIES VARIABLES=q30_1_0.

 **21 Sim e 205 Nao"**

USE ALL.
COMPUTE filter.$=(q30_1_0 = 0).
VARIABLE LABEL filter_$ 'q30_1_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_1_1
q30_1_2
q30_1_3
q30_1_4
q30_1_5
q30_1_6
q30_1_7
q30_1_8
q30_1_9
q30_1_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_1_0 = 1).
RECODE q30_1_1
q30_1_2
q30_1_3
q30_1_4
q30_1_5
q30_1_6
q30_1_7
q30_1_8
q30_1_9
q30_1_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_2_0**

FREQUENCIES VARIABLES=q30_2_0.

 **4 Sim e 222 Nao"**

USE ALL.
COMPUTE filter.$=(q30_2_0 = 0).
VARIABLE LABEL filter_$ 'q30_2_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_2_1
q30_2_2
q30_2_3
q30_2_4
q30_2_5
q30_2_6
q30_2_7
q30_2_8
q30_2_9
q30_2_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_2_0 = 1).
RECODE q30_2_1
q30_2_2
q30_2_3
q30_2_4
q30_2_5
q30_2_6
q30_2_7
q30_2_8
q30_2_9
q30_2_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_3_0**

FREQUENCIES VARIABLES=q30_3_0.

 **2 Sim e 224 Nao"**

USE ALL.
COMPUTE filter.$=(q30_3_0 = 0).
VARIABLE LABEL filter_$ 'q30_3_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_3_1
q30_3_2
q30_3_3
q30_3_4
q30_3_5
q30_3_6
q30_3_7
q30_3_8
q30_3_9
q30_3_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_3_0 = 1).
RECODE q30_3_1
q30_3_2
q30_3_3
q30_3_4
q30_3_5
q30_3_6
q30_3_7
q30_3_8
q30_3_9
q30_3_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_4_0**

FREQUENCIES VARIABLES=q30_4_0.

 **3 Sim e 223 Nao"**

USE ALL.
COMPUTE filter.$=(q30_4_0 = 0).
VARIABLE LABEL filter_$ 'q30_4_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_4_1
q30_4_2
q30_4_3
q30_4_4
q30_4_5
q30_4_6
q30_4_7
q30_4_8
q30_4_9
q30_4_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_4_0 = 1).
RECODE q30_4_1
q30_4_2
q30_4_3
q30_4_4
q30_4_5
q30_4_6
q30_4_7
q30_4_8
q30_4_9
q30_4_99
(ELSE=SYSMIS).
END IF.
EXECUTE.



**Verificando pulos na questão 30_5_0**


FREQUENCIES VARIABLES=q30_5_0.

 **1 Sim e 223 Nao"**

USE ALL.
COMPUTE filter.$=(q30_5_0 = 0).
VARIABLE LABEL filter_$ 'q30_5_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_5_1
q30_5_2
q30_5_3
q30_5_4
q30_5_5
q30_5_6
q30_5_7
q30_5_8
q30_5_9
q30_5_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_5_0 = 1).
RECODE q30_5_1
q30_5_2
q30_5_3
q30_5_4
q30_5_5
q30_5_6
q30_5_7
q30_5_8
q30_5_9
q30_5_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_6_0**

FREQUENCIES VARIABLES=q30_6_0.

 **9 Sim e 217 Nao"**

USE ALL.
COMPUTE filter.$=(q30_6_0 = 0).
VARIABLE LABEL filter_$ 'q30_6_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_6_1
q30_6_2
q30_6_3
q30_6_4
q30_6_5
q30_6_6
q30_6_7
q30_6_8
q30_6_9
q30_6_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_6_0 = 1).
RECODE q30_6_1
q30_6_2
q30_6_3
q30_6_4
q30_6_5
q30_6_6
q30_6_7
q30_6_8
q30_6_9
q30_6_99
(ELSE=SYSMIS).
END IF.
EXECUTE.



**Verificando pulos na questão 30_7_0**

FREQUENCIES VARIABLES=q30_7_0.

 **19 Sim e 207 Nao"**

USE ALL.
COMPUTE filter.$=(q30_7_0 = 0).
VARIABLE LABEL filter_$ 'q30_7_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_7_1
q30_7_2
q30_7_3
q30_7_4
q30_7_5
q30_7_6
q30_7_7
q30_7_8
q30_7_9
q30_7_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_7_0 = 1).
RECODE q30_7_1
q30_7_2
q30_7_3
q30_7_4
q30_7_5
q30_7_6
q30_7_7
q30_7_8
q30_7_9
q30_7_99
(ELSE=SYSMIS).
END IF.
EXECUTE.

**Verificando pulos na questão 30_8_0**

FREQUENCIES VARIABLES=q30_8_0.

 **33 Sim e 193 Nao"**

USE ALL.
COMPUTE filter.$=(q30_8_0 = 0).
VARIABLE LABEL filter_$ 'q30_8_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_8_1
q30_8_2
q30_8_3
q30_8_4
q30_8_5
q30_8_6
q30_8_7
q30_8_8
q30_8_9
q30_8_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_8_0 = 1).
RECODE q30_8_1
q30_8_2
q30_8_3
q30_8_4
q30_8_5
q30_8_6
q30_8_7
q30_8_8
q30_8_9
q30_8_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_9_0**

FREQUENCIES VARIABLES=q30_9_0.

 **71 Sim e 155 Nao"**

USE ALL.
COMPUTE filter.$=(q30_9_0 = 0).
VARIABLE LABEL filter_$ 'q30_9_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_9_1
q30_9_2
q30_9_3
q30_9_4
q30_9_5
q30_9_6
q30_9_7
q30_9_8
q30_9_9
q30_9_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_9_0 = 1).
RECODE q30_9_1
q30_9_2
q30_9_3
q30_9_4
q30_9_5
q30_9_6
q30_9_7
q30_9_8
q30_9_9
q30_9_99
(ELSE=SYSMIS).
END IF.
EXECUTE.



**Verificando pulos na questão 30_10_0**

FREQUENCIES VARIABLES=q30_10_0.

 **6 Sim e 220 Nao"**

USE ALL.
COMPUTE filter.$=(q30_10_0 = 0).
VARIABLE LABEL filter_$ 'q30_10_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_10_1
q30_10_2
q30_10_3
q30_10_4
q30_10_5
q30_10_6
q30_10_7
q30_10_8
q30_10_9
q30_10_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_10_0 = 1).
RECODE q30_10_1
q30_10_2
q30_10_3
q30_10_4
q30_10_5
q30_10_6
q30_10_7
q30_10_8
q30_10_9
q30_10_99
(ELSE=SYSMIS).
END IF.
EXECUTE.



**Verificando pulos na questão 30_11_0**

FREQUENCIES VARIABLES=q30_11_0.

 **59 Sim e 167 Nao"**

USE ALL.
COMPUTE filter.$=(q30_11_0 = 0).
VARIABLE LABEL filter_$ 'q30_11_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_11_1
q30_11_2
q30_11_3
q30_11_4
q30_11_5
q30_11_6
q30_11_7
q30_11_8
q30_11_9
q30_11_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_11_0 = 1).
RECODE q30_11_1
q30_11_2
q30_11_3
q30_11_4
q30_11_5
q30_11_6
q30_11_7
q30_11_8
q30_11_9
q30_11_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_12_0**

FREQUENCIES VARIABLES=q30_12_0.

 **34 Sim e 192 Nao"**

USE ALL.
COMPUTE filter.$=(q30_12_0 = 0).
VARIABLE LABEL filter_$ 'q30_12_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_12_1
q30_12_2
q30_12_3
q30_12_4
q30_12_5
q30_12_6
q30_12_7
q30_12_8
q30_12_9
q30_12_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_12_0 = 1).
RECODE q30_12_1
q30_12_2
q30_12_3
q30_12_4
q30_12_5
q30_12_6
q30_12_7
q30_12_8
q30_12_9
q30_12_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_13_0**

FREQUENCIES VARIABLES=q30_13_0.

 **26 Sim e 200 Nao"**

USE ALL.
COMPUTE filter.$=(q30_13_0 = 0).
VARIABLE LABEL filter_$ 'q30_13_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_13_1
q30_13_2
q30_13_3
q30_13_4
q30_13_5
q30_13_6
q30_13_7
q30_13_8
q30_13_9
q30_13_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_13_0 = 1).
RECODE q30_13_1
q30_13_2
q30_13_3
q30_13_4
q30_13_5
q30_13_6
q30_13_7
q30_13_8
q30_13_9
q30_13_99
(ELSE=SYSMIS).
END IF.
EXECUTE.

**Verificando pulos na questão 30_14_0**

FREQUENCIES VARIABLES=q30_14_0.

 **10 Sim e 216 Nao"**

USE ALL.
COMPUTE filter.$=(q30_14_0 = 0).
VARIABLE LABEL filter_$ 'q30_14_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_14_1
q30_14_2
q30_14_3
q30_14_4
q30_14_5
q30_14_6
q30_14_7
q30_14_8
q30_14_9
q30_14_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_14_0 = 1).
RECODE q30_14_1
q30_14_2
q30_14_3
q30_14_4
q30_14_5
q30_14_6
q30_14_7
q30_14_8
q30_14_9
q30_14_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 30_15_0**

FREQUENCIES VARIABLES=q30_15_0.

 **48 Sim e 178 Nao"**

USE ALL.
COMPUTE filter.$=(q30_15_0 = 0).
VARIABLE LABEL filter_$ 'q30_15_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q30_15_1
q30_15_2
q30_15_3
q30_15_4
q30_15_5
q30_15_6
q30_15_7
q30_15_8
q30_15_9
q30_15_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q30_15_0 = 1).
RECODE q30_15_1
q30_15_2
q30_15_3
q30_15_4
q30_15_5
q30_15_6
q30_15_7
q30_15_8
q30_15_9
q30_15_99
(ELSE=SYSMIS).
END IF.
EXECUTE.


**Verificando pulos na questão 31

FREQUENCIES VARIABLES=q31_0.

 **17 Sim e 209 Nao"**

USE ALL.
COMPUTE filter.$=(q31_0 = 0).
VARIABLE LABEL filter_$ 'q31_0 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q31
q31_1
q31_2
q31_3
q31_4
q31_5
q31_6
q31_7
q31_8
q31_9
q31_10
q31_11
q31_12
q31_13
q31_14
q31_99
 /FORMAT=NOTABLE
  /ORDER=ANALYSIS.

**Os MIssing sairam como 0. Precisa mudar para ponto**

DO IF (q31_0 = 1).
RECODE =q31
q31_1
q31_2
q31_3
q31_4
q31_5
q31_6
q31_7
q31_8
q31_9
q31_10
q31_11
q31_12
q31_13
q31_14
q31_99
(ELSE=SYSMIS).
END IF.
EXECUTE.

