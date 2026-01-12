* Encoding: UTF-8.

**Sintaxe Limpeza RH Centro POP - Censo SUAS 2018  **

****Houve 5 casos de CPFs duplicados que foram analisados um a um e eliminados manualmente, consideando o cargo mais elevado ocupado e a data de início do exercício da função da pessoa cujo CPF estava repetido***

**As variáveis q34_15_1, q34_15_2 e q34_15_3 deveriam ser preenchidas apenas para os trabalhadores com escolaridade igual ou superior a nível médio completo. Entretanto, as variáveis foram preenchidas por trabalhadores 
com escolaridade menor que nível médio.  q34_15_1 (= 150), q34_15_2 (= 96) e q34_15_3 (= 108)**


***Criação da variável velha, cópia da anterior ***

RECODE q34_15_1 (ELSE=Copy) INTO q34_15_1.original.
VARIABLE LABELS  q34_15_1.original 'q34_15_1.original.Serviços/Atividade a qual o profissional está '+
    'vinculado - Principal serviço/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q34_15_1
  /TARGET VARIABLES=q34_15_1.original
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.


RECODE q34_15_2 (ELSE=Copy) INTO q34_15_2.original.
VARIABLE LABELS  q34_15_2.original 'q34_15_2.original.q34_15_2.Serviços/Atividade a qual o profissional está '+
    'vinculado - Segundo principal serviço/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q34_15_2
  /TARGET VARIABLES=q34_15_2.original
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    

RECODE q34_15_3 (ELSE=Copy) INTO q34_15_3.original.
VARIABLE LABELS  q34_15_3.original 'q34_15_3.original.Serviços/Atividade a qual o profissional está '+
    'vinculado - Terceiro principal serviço/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q34_15_3
  /TARGET VARIABLES=q34_15_3.original
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    


********Critério de limpeza - Escolaridade - manter apenas as respostas para escolaridade maior ou igual a Ensino Médio Completo **********************************

*********** Recode e atribuição de Missing aos dados preenchidos em q34_15_1, q34_15_2 e q34_15_3 por escolaridade menor que Ensino Médio Completo *****

DO IF (q34_9 < 255).
RECODE q34_15_1 (ELSE=SYSMIS).
END IF.

DO IF (q34_9 < 255).
RECODE q34_15_2 (ELSE=SYSMIS).
END IF.

DO IF (q34_9 < 255).
RECODE q34_15_3 (ELSE=SYSMIS).
END IF.
EXECUTE.

****



*****Limpeza da redundância nas variáveis q34_15_1, q34_15_2 e q34_15_3  ******
*As variáveis q34_15_1, q34_15_2 e q34_15_3 deveriam expressar o principal, segundo e terceiro serviço ao qual o trabalhador de nível médio ou superior estava vinculado.
*Em alguns casos, o serviço descrito na principal atividade foi repetido nas seguintes. A sintaxe abaixo converte os valores repetidos em missing ****


***** Primeira etapa: Limpeza da terceira atividade, quando repete a segunda*****************

DO IF (q34_15_2 = 1).
RECODE q34_15_3 (1=SYSMIS).
END IF.

DO IF (q34_15_2 = 2).
RECODE q34_15_3 (2=SYSMIS).
END IF.

DO IF (q34_15_2 = 3).
RECODE q34_15_3 (3=SYSMIS).
END IF.

DO IF (q34_15_2 = 4).
RECODE q34_15_3 (4=SYSMIS).
END IF.

DO IF (q34_15_2 = 99).
RECODE q34_15_3 (99=SYSMIS).
END IF.
EXECUTE.

****** Segunda etapa: limpeza da terceira atividade, quando repete a primeira *************************

DO IF (q34_15_1 = 1).
RECODE q34_15_3 (1=SYSMIS).
END IF.

DO IF (q34_15_1 = 2).
RECODE q34_15_3 (2=SYSMIS).
END IF.

DO IF (q34_15_1 = 3).
RECODE q34_15_3 (3=SYSMIS).
END IF.

DO IF (q34_15_1 = 4).
RECODE q34_15_3 (4=SYSMIS).
END IF.

DO IF (q34_15_1 = 99).
RECODE q34_15_3 (99=SYSMIS).
END IF.
EXECUTE.

****** Terceira etapa: limpeza da segunda atividade, quando repete a primeira *************************

DO IF (q34_15_1 = 1).
RECODE q34_15_2 (1=SYSMIS).
END IF.

DO IF (q34_15_1 = 2).
RECODE q34_15_2 (2=SYSMIS).
END IF.

DO IF (q34_15_1 = 3).
RECODE q34_15_2 (3=SYSMIS).
END IF.

DO IF (q34_15_1 = 4).
RECODE q34_15_2 (4=SYSMIS).
END IF.

DO IF (q34_15_1 = 99).
RECODE q34_15_2 (99=SYSMIS).
END IF.
EXECUTE.

***Limpeza da variável profissao q34_9  a partir da escolaridade***
*******Como foi feito, atribui-se "Sem formação superior" a todos os casos de Escolaridade menor que Superior Incompleto. Mas existe a opção "Profissional de nível médio", que ficou apenas pra Superior Incompleto****

DO IF (q34_9 <= 255).
RECODE q34_10 (ELSE=244).
END IF.
Execute.






