*****************************************************************************
**** Syntax Censo SUAS - RH ******Conselho Municipal 2015******
*Variables Labels*Value Labels*
*****************************************************************************

****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)



COMPUTE num_data=DATE.DMY(31,12,2015).
EXECUTE.

**Será criada a variável com número procurado. Em seguida rodar a sintax abaixo**


COMPUTE D63_2=DATEDIFF(num_data,q63_2,"years").
EXECUTE.

VARIABLE LABELS D63_2 'D63_2_Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

***********************************************************************************************************

RECODE D63_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D63_2_categoria.
VARIABLE LABELS  D63_2_categoria  'D63_2_categoria_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D63_2_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


RECODE q63_4 (1 thru 4=0) (5 thru 6=1) (7 thru 10=2) INTO D63_4.
VARIABLE LABELS D63_4 'D63_4_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D63_4
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


****variáveis binárias escolaridade***

RECODE D63_4 (0=1) INTO D63_4bin1.
VARIABLE LABELS  D63_4bin1 'D66_4bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D63_4bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D63_4 (1=1) INTO D63_4bin2.
VARIABLE LABELS  D63_4bin2 'D63_4bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D63_4bin2
1 'Nível Médio'.
EXECUTE.

RECODE D63_4 (2=1) INTO D63_4bin3.
VARIABLE LABELS  D63_4bin3 'D63_4bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D63_4bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias Representação***


RECODE q63_5 (6=1) (8=1) INTO D63_5bin1.
VARIABLE LABELS  D63_5bin1 'D63_5bin1_Representante de usuários e organização de usuários '.
EXECUTE.

RECODE q63_5 (5=1) INTO D63_5bin2.
VARIABLE LABELS  D63_5bin2 'D63_5bin2_Representante de Entidades de Assistência Social'.
EXECUTE.

RECODE q63_5 (7=1) INTO D63_5bin3.
VARIABLE LABELS  D63_5bin3 'D63_5bin3_Representante de organização dos trabalhadores'.
EXECUTE.

RECODE q63_5 (1 THRU 4=1) INTO D63_5bin4.
VARIABLE LABELS  D63_5bin4 'D63_5bin4_Representante do Governo'.
EXECUTE.


****Value Labels variaveis binárias Representação***

VALUE LABELS  D63_5bin1
1 'Representante de usuários e organização de usuários'.
EXECUTE.


VALUE LABELS  D63_5bin2
1 'Representante de Entidades de Assistência Social'.
EXECUTE.

VALUE LABELS  D63_5bin3
1 'Representante de organização dos trabalhadores'.
EXECUTE.

VALUE LABELS  D63_5bin4
1 'Representante do Governo'.
EXECUTE.

*** IMPORTANTE ***
*As Syntax abaixo criam variáveis binárias de representação para titulares e suplentes *


DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin1 (1=1) INTO D63_5bin1_TIT.
END IF.
VARIABLE LABELS  D63_5bin1_TIT 'D63_5bin1_TIT_Representante Titular de usuários e organização de usuários'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin1 (1=1) INTO D63_5bin1_SUPL.
END IF.
VARIABLE LABELS  D63_5bin1_SUPL 'D63_5bin1_SUPL_Representante Suplente de usuários e organização de usuários'.
EXECUTE.



DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin2 (1=1) INTO D63_5bin2_TIT.
END IF.
VARIABLE LABELS  D63_5bin2_TIT 'D63_5bin2_TIT_Representante Titular de Entidades de Assistência Social'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin2 (1=1) INTO D63_5bin2_SUPL.
END IF.
VARIABLE LABELS  D63_5bin2_SUPL 'D63_5bin2_SUPL_Representante Suplente de Entidades de Assistência Social'.
EXECUTE.




DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin3 (1=1) INTO D63_5bin3_TIT.
END IF.
VARIABLE LABELS  D63_5bin3_TIT 'D63_5bin3_TIT_Representante Titular de organização dos trabalhadores'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin3 (1=1) INTO D63_5bin3_SUPL.
END IF.
VARIABLE LABELS  D63_5bin3_SUPL 'D63_5bin3_SUPL_Representante Suplente de organização dos trabalhadores'.
EXECUTE.




DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin4 (1=1) INTO D63_5bin4_TIT.
END IF.
VARIABLE LABELS  D63_5bin4_TIT 'D63_5bin4_TIT_Representante Titular do Governo'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin4 (1=1) INTO D63_5bin4_SUPL.
END IF.
VARIABLE LABELS  D63_5bin4_SUPL 'D63_5bin4_SUPL_Representante Suplente do Governo'.
EXECUTE.



******************************************************************************************
********************AGGREGATE VARIÁVEIS BINÁRIAS**************************
******************************************************************************************

AGGREGATE
  /BREAK=IBGE
  /D63_5bin1_sum=SUM(D63_5bin1)
  /D63_5bin2_sum=SUM(D63_5bin2)
  /D63_5bin3_sum=SUM(D63_5bin3)
  /D63_5bin4_sum=SUM(D63_5bin4)
  /D63_5bin1_TIT_sum=SUM(D63_5bin1_TIT)
  /D63_5bin1_SUPL_sum=SUM(D63_5bin1_SUPL)
  /D63_5bin2_TIT_sum=SUM(D63_5bin2_TIT)
  /D63_5bin2_SUPL_sum=SUM(D63_5bin2_SUPL)
  /D63_5bin3_TIT_sum=SUM(D63_5bin3_TIT)
  /D63_5bin3_SUPL_sum=SUM(D63_5bin3_SUPL)
  /D63_5bin4_TIT_sum=SUM(D63_5bin4_TIT)
  /D63_5bin4_SUPL_sum=SUM(D63_5bin4_SUPL)
  /nu_conselheiros=N
.
EXECUTE.




RECODE D63_5bin1_sum D63_5bin2_sum D63_5bin3_sum D63_5bin4_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.


RECODE D63_5bin1_TIT_sum D63_5bin1_SUPL_sum D63_5bin2_TIT_sum D63_5bin2_SUPL_sum D63_5bin3_TIT_sum D63_5bin3_SUPL_sum D63_5bin4_TIT_sum D63_5bin4_SUPL_sum
    (SYSMIS=0).
EXECUTE.




VARIABLE LABELS
D63_5bin1_sum	'Representante de usuários e organização de usuários'
  /D63_5bin2_sum	'Representante de Entidades de Assistência Social'
  /D63_5bin3_sum	'Representante de organização dos trabalhadores'
  /D63_5bin4_sum	'Representante do Governo'
    /nu_conselheiros	'Quantidade de conselheiros'
.
EXECUTE.



VARIABLE LABELS
 D63_5bin1_TIT_sum    'Representante Titular de usuários e organização de usuários'
  /D63_5bin1_SUPL_sum    'Representante Suplente de usuários e organização de usuários'
  /D63_5bin2_TIT_sum    'Representante Titular de Entidades de Assistência Social'
  /D63_5bin2_SUPL_sum    'Representante Suplente de Entidades de Assistência Social'
  /D63_5bin3_TIT_sum    'Representante Titular de organização dos trabalhadores'
  /D63_5bin3_SUPL_sum    'Representante Suplente de organização dos trabalhadores'
  /D63_5bin4_TIT_sum    'Representante Titular do Governo'
  /D63_5bin4_SUPL_sum    'Representante Suplente do Governo'
.
EXECUTE.




** dataset para merge na dados gerais


dataset declare aggr_RH_conselho.
AGGREGATE
/outfile='aggr_RH_conselho'
  /BREAK=IBGE
  /D63_5bin1_sum=SUM(D63_5bin1)
  /D63_5bin2_sum=SUM(D63_5bin2)
  /D63_5bin3_sum=SUM(D63_5bin3)
  /D63_5bin4_sum=SUM(D63_5bin4)
  /D63_5bin1_TIT_sum=SUM(D63_5bin1_TIT)
  /D63_5bin1_SUPL_sum=SUM(D63_5bin1_SUPL)
  /D63_5bin2_TIT_sum=SUM(D63_5bin2_TIT)
  /D63_5bin2_SUPL_sum=SUM(D63_5bin2_SUPL)
  /D63_5bin3_TIT_sum=SUM(D63_5bin3_TIT)
  /D63_5bin3_SUPL_sum=SUM(D63_5bin3_SUPL)
  /D63_5bin4_TIT_sum=SUM(D63_5bin4_TIT)
  /D63_5bin4_SUPL_sum=SUM(D63_5bin4_SUPL)
  /nu_conselheiros=N
.
EXECUTE.




RECODE D63_5bin1_sum D63_5bin2_sum D63_5bin3_sum D63_5bin4_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.


RECODE D63_5bin1_TIT_sum D63_5bin1_SUPL_sum D63_5bin2_TIT_sum D63_5bin2_SUPL_sum D63_5bin3_TIT_sum D63_5bin3_SUPL_sum D63_5bin4_TIT_sum D63_5bin4_SUPL_sum
    (SYSMIS=0).
EXECUTE.




