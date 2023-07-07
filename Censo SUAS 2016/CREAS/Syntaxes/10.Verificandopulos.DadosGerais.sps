* Encoding: UTF-8.

****Verificando pulos
 Em todas as questões em que havia condicional de preenchimento - ou seja, aquelas em que o usuário era direcionado para outras questões dependendo da resposta marcada – se privilegiou as respostas às questões anteriores que condicionavam o “pulo”

*** Na q.2 CREAS municipal não responde a questão 2.3 (ok)

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(q2 = 1).
VARIABLE LABEL filter_$ 'q2 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q2.3
  /ORDER=ANALYSIS.

**** Na q.5 CREAS que não compartilha instalação não responde q6.1 q6.2 q6.3 q6.4 q6.5 q6.6 q6.7 q6.8 q6.9 q6.10 q6.11 q6.12 q6.13 q6.14 
    q6.99 q6.espcif q7.1 q7.2 q7.3 q7.4 q7.5 q7.6 q7.7 q7.8 q7.9 q7.10 q7.11 q7.12 (ok)
Correção unidades que preencheram a opção "não" nas variáveis acima foram recodificadas como missing. 


USE ALL.
COMPUTE filter_$=(q5 = 0).
VARIABLE LABEL filter_$ 'q5 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


FREQUENCIES VARIABLES=q2.3
  /ORDER=ANALYSIS.
FREQUENCIES VARIABLES=q6.1 q6.2 q6.3 q6.4 q6.5 q6.6 q6.7 q6.8 q6.9 q6.10 q6.11 q6.12 q6.13 q6.14 
    q6.99 q6.espcif q7.1 q7.2 q7.3 q7.4 q7.5 q7.6 q7.7 q7.8 q7.9 q7.10 q7.11 q7.12
  /ORDER=ANALYSIS.

DO IF (q5 = 0).
RECODE q6.1 q6.2 q6.3 q6.4 q6.5 q6.6 q6.7 q6.8 q6.9 q6.10 q6.11 q6.12 q6.13 q6.14 q6.99 q7.1 q7.2 q7.3 q7.4 q7.5 q7.6 q7.7 q7.8 q7.9 q7.10 q7.11 q7.12  (ELSE=SYSMIS).
END IF.
EXECUTE.



****Na q.20 CREAS que não realiza Serviço de Proteção Social a Adolescentes LA e PSC não responde q21 q22 q22.1 q23.1.1
q23.1.2 q23.1.3 q23.1.4 q23.1.5 q23.2.1 q23.2.2 q23.2.3 q23.2.4 q23.2.5 q23.3.1 q23.3.2 q23.3.3 q23.3.4 q23.3.5 q23.4.1
q23.4.2 q23.4.3 q23.4.4 q23.4.5 q23.5.1 q23.5.2 q23.5.3 q23.5.4 q23.5.5 q23.6.1 q23.6.2 q23.6.3 q23.6.4 q23.6.5 q23.7.1
q23.7.2 q23.7.3 q23.7.4 q23.7.5 q23.8.1 q23.8.2 q23.8.3 q23.8.4 q23.8.5 q23.9.1 q23.9.2 q23.9.3 q23.9.4 q23.9.5 q23.10.1
q23.10.2 q23.10.3 q23.10.4 q23.10.5  q23.11.1 q23.11.2 q23.11.3 q23.11.4 q23.11.5 q23.12.1 q23.12.2 q23.12.3 q23.12.4
q23.12.5 q23.13 q24.1 q24.1.1 q24.2 q24.2.1 q25 q26 q27 q28.1 q28.2 q28.3 q28.4 q28.5 q28.6 q28.7 q28.8 q28.9
q28.10 q28.11 q28.12 q28.13 q28.14 q28.15 q28.16 q28.17 q28.18 q28.19 q29 q30.1 q30.2 q30.3 q30.4 q30.5 q31.1
q31.2 q31.3 q31.4 q31.5 q31.6 q31.7 q31.8 q31.9 q31.10 q31.11 q31.12 q31.13 q31.14 q31.15 q31.16 q31.17 q31.18
q31.19 q31.20

USE ALL.
COMPUTE filter_$=(q20 = 0).
VARIABLE LABEL filter_$ 'q20 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q21 q22 q22.1 q23.1.1 q23.1.2 q23.1.3 q23.1.4 q23.1.5 q23.2.1 q23.2.2 q23.2.3 
    q23.2.4 q23.2.5 q23.3.1 q23.3.2 q23.3.3 q23.3.4 q23.3.5 q23.4.1 q23.4.2 q23.4.3 q23.4.4 q23.4.5 
    q23.5.1 q23.5.2 q23.5.3 q23.5.4 q23.5.5 q23.6.1 q23.6.2 q23.6.3 q23.6.4 q23.6.5 q23.7.1 q23.7.2 
    q23.7.3 q23.7.4 q23.7.5 q23.8.1 q23.8.2 q23.8.3 q23.8.4 q23.8.5 q23.9.1 q23.9.2 q23.9.3 q23.9.4 
    q23.9.5 q23.10.1 q23.10.2 q23.10.3 q23.10.4 q23.10.5 q23.11.1 q23.11.2 q23.11.3 q23.11.4 q23.11.5 
    q23.12.1 q23.12.2 q23.12.3 q23.12.4 q23.12.5 q23.13 q24.1 q24.1.1 q24.2 q24.2.1 q25 q26 q27 q28.1 
    q28.2 q28.3 q28.4 q28.5 q28.6 q28.7 q28.8 q28.9 q28.10 q28.11 q28.12 q28.13 q28.14 q28.15 q28.16 
    q28.17 q28.18 q28.19 q29 q30.1 q30.2 q30.3 q30.4 q30.5 q31.1 q31.2 q31.3 q31.4 q31.5 q31.6 q31.7 q31.8 q31.9 q31.10
 q31.11 q31.12 q31.13 q31.14 q31.15 q31.16 q31.17 q31.18 q31.19 q31.20
  /ORDER=ANALYSIS.

DO IF (q20 = 0).
RECODE q23.1.5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q20 = 0).
RECODE q23.2.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.3.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.4.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.5.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.6.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.7.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.8.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.9.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.10.5 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q20 = 0).
RECODE q23.11.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.12.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.12.2 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q20 = 0).
RECODE q23.12.3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.12.4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q23.12.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q24.1.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q24.2.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.6 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.7 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.10 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.11 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.12 (ELSE=SYSMIS).
END IF.

EXECUTE.
DO IF (q20 = 0).
RECODE q28.13 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.14 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.15 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.16 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.17 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.18 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q28.19 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q30.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q30.2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q30.3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q30.4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q30.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q30.99 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.2 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.3 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.4 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.5 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.6 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.7 (ELSE=SYSMIS).
END IF.

EXECUTE.
DO IF (q20 = 0).
RECODE q31.8 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.10 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.11 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.12 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.13 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.14 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.15 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.16 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.17 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.18 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.19 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q20 = 0).
RECODE q31.20 (ELSE=SYSMIS).
END IF.
EXECUTE.
**********Na q24.1 se o valor é igual ou maior que zero a q24.1.1 = missing.


DO IF (q24.1 >= 0).
RECODE q24.1.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

********* Na q.24.2 se o valor é igual ou maior que zero a q24.2.1 = missing

DO IF (q24.2 >= 0).
RECODE q24.2.1 (ELSE=SYSMIS).
END IF.
EXECUTE.

********Se a q27 = 0  as questões  q28.1 q28.2 q28.3 q28.4 q28.5 q28.6 q28.7 q28.8
q28.9 q28.10 q28.11 q28.12 q28.13 q28.14 q28.15 q28.16 q28.17 q28.18 q28.19 são missing

DO IF (q27 = 0).
RECODE q28.1 q28.2 q28.3 q28.4 q28.5 q28.6 q28.7 q28.8
q28.9 q28.10 q28.11 q28.12 q28.13 q28.14 q28.15 q28.16 q28.17 q28.18 q28.19 (ELSE=SYSMIS).
END IF.
EXECUTE.


**** Na q.32 quem responde "Não realiza com a equipe deste CREAS, mas no município existe serviço de abordagem referenciado a este CREA" não responde q33.1
q33.2 q33.3 q33.4 q33.5 q33.6 q33.7 q33.8
q33.9 q34.1 q34.2 q34.3 q34.4 q34.99 q34.99.1 q35 q36

USE ALL.
COMPUTE filter_$=(q32 = 99).
VARIABLE LABEL filter_$ 'q32 = 99 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q33.1 q33.2 q33.3 q33.4 q33.5 q33.6 q33.7 q33.8 q33.9 q34.1 q34.2 q34.3 q34.4 
    q34.99  q35 q36
  /ORDER=ANALYSIS.


DO IF (q32 = 99).
RECODE q33.1 q33.2 q33.3 q33.4 q33.5 q33.6 q33.7 q33.8 q33.9 q34.1 q34.2 q34.3 q34.4 
q34.99  q35 q36 (ELSE=SYSMIS).
END IF.
EXECUTE.


**** Na q.32 quem responde "Não realiza, nem possui Serviço de Abordagem referenciado a este CREAS" não responde q33.1
q33.2 q33.3 q33.4 q33.5 q33.6 q33.7 q33.8
q33.9 q34.1 q34.2 q34.3 q34.4 q34.99 q34.99.1 q35 q36 
q37.0 q37.1 q37.2 q37.3 q37.4 q37.5 q37.6 q37.7 q37.8 q37.9 q37.10 q37.11 q37.12 q37.13 q37.99

USE ALL.
COMPUTE filter_$=(q32 = 0).
VARIABLE LABEL filter_$ 'q32 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


FREQUENCIES VARIABLES=q33.1 q33.2 q33.3 q33.4 q33.5 q33.6 q33.7 q33.8 q33.9 q34.1 q34.2 q34.3 q34.4 
    q34.99 q34.99.1 q35 q36 q37.0 q37.1 q37.2 q37.3 q37.4 q37.5 q37.6 q37.7 q37.8 q37.9 q37.10 q37.11 
    q37.12 q37.13 q37.99
  /ORDER=ANALYSIS.


DO IF (q32 = 0).
RECODE q33.1 33.2 q33.3 q33.4 q33.5 q33.6 q33.7 q33.8 q33.9 q34.1 q34.2 q34.3 q34.4 
    q34.99 q34.99.1 q35 q36 q37.0 q37.1 q37.2 q37.3 q37.4 q37.5 q37.6 q37.7 q37.8 q37.9 q37.10 q37.11 
    q37.12 q37.13 q37.99 (ELSE=SYSMIS).
END IF.
EXECUTE.


****Na q.37.0 quem responde "Não possui serviço realizado por unidade referenciada" não responde 
q37.1 q37.2 q37.3 q37.4 q37.5 q37.6 q37.7 q37.8 q37.9 q37.10 q37.11 q37.12 q37.13 q37.99


USE ALL.
COMPUTE filter_$=(q37.0 = 1).
VARIABLE LABEL filter_$ 'q37.0 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q37.1 q37.2 q37.3 q37.4 q37.5 q37.6 q37.7 q37.8 q37.9 q37.10 q37.11 q37.12 
    q37.13 q37.99
  /ORDER=ANALYSIS.

***Na q.38 quem responde "Não" não responde as questões q39
q40 q41 q42 q43.1 q43.2 q43.3 q43.4 q43.5 q43.6 q43.7 q43.8 q43.9 q43.10
q43.11 q43.12 q43.13 q43.14 q43.15 q43.16 q43.17 q43.18 q43.19 q43.20
q43.21 q43.22 q43.23 q43.24


USE ALL.
COMPUTE filter_$=(q38 = 0).
VARIABLE LABEL filter_$ 'q38 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q39 q40 q41 q42 q43.1 q43.2 q43.3 q43.4 q43.5 q43.6 q43.7 q43.8 q43.9 q43.10 
    q43.11 q43.12 q43.13 q43.14 q43.15 q43.16 q43.17 q43.18 q43.19 q43.20 q43.21 q43.22 q43.23 q43.24
  /ORDER=ANALYSIS.

DO IF (q38 = 0).
RECODE q43.1 q43.2 q43.3 q43.4 q43.5 q43.6 q43.7 q43.8 q43.9 q43.10 
  q43.11 q43.12 q43.13 q43.14 q43.15 q43.16 q43.17 q43.18 q43.19 q43.20 q43.21 q43.22 q43.23 q43.24 (ELSE=SYSMIS).
END IF.
EXECUTE.



