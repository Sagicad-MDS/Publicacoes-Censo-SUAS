****************************************************************************************************************************************
**Syntax Limpeza RH Centro POP - Censo SUAS 2016   *********************************************************************
****************************************************************************************************************************************

****Eduardo*****As variáveis q39_13_1, q39_13_2 e q39_13_3 deveriam ser preenchidas apenas para os trabalhadores com escolaridade igual ou superior a nível médio completo. Entretanto, as variáveis foram preenchidas por trabalhadores 
com escolaridade menor que nível médio.  q39_13_1 (= 150), q39_13_2 (= 96) e q39_13_3 (= 108)


***Criação da variável velha, cópia da anterior ************

RECODE q39_13_1 (ELSE=Copy) INTO Q39_13_1_original.
VARIABLE LABELS  Q39_13_1_original 'q39_13_1_original_Serviços/Atividade a qual o profissional está '+
    'vinculado - Principal serviço/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_13_1
  /TARGET VARIABLES=Q39_13_1_original
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.


RECODE q39_13_2 (ELSE=Copy) INTO Q39_13_2_original.
VARIABLE LABELS  Q39_13_2_original 'q39_13_2_original_q39_13_2_Serviços/Atividade a qual o profissional está '+
    'vinculado - Segundo principal serviço/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_13_2
  /TARGET VARIABLES=Q39_13_2_original
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    

RECODE q39_13_3 (ELSE=Copy) INTO Q39_13_3_original.
VARIABLE LABELS  Q39_13_3_original 'q39_13_3_original_Serviços/Atividade a qual o profissional está '+
    'vinculado - Terceiro principal serviço/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_13_3
  /TARGET VARIABLES=Q39_13_3_original
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    


********Critério de limpeza - Escolaridade - manter apenas as respostas para escolaridade maior ou igual a Ensino Médio Completo **********************************

*********** Recode e atribuição de Missing aos dados preenchidos em q39_13_1, q39_13_2 e q39_13_3 por escolaridade menor que Ensino Médio Completo *****

DO IF (q39_7 < 255).
RECODE q39_13_1 (ELSE=SYSMIS).
END IF.

DO IF (q39_7 < 255).
RECODE q39_13_2 (ELSE=SYSMIS).
END IF.

DO IF (q39_7 < 255).
RECODE q39_13_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

****



**********************************Limpeza da redundância nas variáveis q39_13_1, q39_13_2 e q39_13_3  ****************************************
*As variáveis q39_13_1, q39_13_2 e q39_13_3 deveriam expressar o principal, segundo e terceiro serviço ao qual o trabalhador de nível médio ou superior estava vinculado.
*Em alguns casos, o serviço descrito na principal atividade foi repetido nas seguintes. A syntax abaixo converte os valores repetidos em missing ****************************
*******************************************

**Essa Syntax é um Recode para a mesma variável, então precisa rodar a primeira parte, e só depois a segunda, senão rodará com erro********

***** Primeira etapa: Limpeza da terceira atividade, quando repete a segunda*****************

DO IF (q39_13_2 = 1).
RECODE q39_13_3 (1=SYSMIS).
END IF.

DO IF (q39_13_2 = 2).
RECODE q39_13_3 (2=SYSMIS).
END IF.

DO IF (q39_13_2 = 3).
RECODE q39_13_3 (3=SYSMIS).
END IF.

DO IF (q39_13_2 = 4).
RECODE q39_13_3 (4=SYSMIS).
END IF.

DO IF (q39_13_2 = 99).
RECODE q39_13_3 (99=SYSMIS).
END IF.
EXECUTE.

****** Segunda etapa: limpeza da terceira atividade, quando repete a primeira *************************

DO IF (q39_13_1 = 1).
RECODE q39_13_3 (1=SYSMIS).
END IF.

DO IF (q39_13_1 = 2).
RECODE q39_13_3 (2=SYSMIS).
END IF.

DO IF (q39_13_1 = 3).
RECODE q39_13_3 (3=SYSMIS).
END IF.

DO IF (q39_13_1 = 4).
RECODE q39_13_3 (4=SYSMIS).
END IF.

DO IF (q39_13_1 = 99).
RECODE q39_13_3 (99=SYSMIS).
END IF.
EXECUTE.

****** Terceira etapa: limpeza da segunda atividade, quando repete a primeira *************************

DO IF (q39_13_1 = 1).
RECODE q39_13_2 (1=SYSMIS).
END IF.

DO IF (q39_13_1 = 2).
RECODE q39_13_2 (2=SYSMIS).
END IF.

DO IF (q39_13_1 = 3).
RECODE q39_13_2 (3=SYSMIS).
END IF.

DO IF (q39_13_1 = 4).
RECODE q39_13_2 (4=SYSMIS).
END IF.

DO IF (q39_13_1 = 99).
RECODE q39_13_2 (99=SYSMIS).
END IF.
EXECUTE.

*******Limpeza da variável profissao q39_7  a partir da escolaridade***********************
*******Como foi feito, atribui-se "Sem formação superior" a todos os casos de Escolaridade menor que Superior Incompleto. Mas existe a opção "Profissional de nível médio", que ficou apenas pra Superior Incompleto****


DO IF (q39_7 <= 255).
RECODE q39_8 (ELSE=239).
END IF.
Execute.

















