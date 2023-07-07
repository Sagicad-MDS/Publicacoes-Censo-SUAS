****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Será criada a variável com número procurado. Em seguida rodar a sintax abaixo**

COMPUTE  D44_2=DATEDIFF(13576291200, q44_2,"years").
format D44_2 (F2.0).
EXECUTE.

VARIABLE LABELS D44_2 'Idade em anos (data ref. 31-12-2012)'.

***********************************************************************************************************

RECODE D44_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D44_categoria.
VARIABLE LABELS  D44_categoria  'Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D44_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.

RECODE q44_8 (251 thru 254=0) (255 thru 256=1) (257 thru 262=2) INTO D44_8.
VARIABLE LABELS D44_8 'Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D44_8
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.

RECODE D44_8 (0=1) INTO D44_8bin1.
VARIABLE LABELS  D44_8bin1 'Nível fundamental'.
EXECUTE.

VALUE LABELS D44_8bin1
1 'Nível fundamental'.

RECODE D44_8 (1=1) INTO D44_8bin2.
VARIABLE LABELS  D44_8bin2 'Nível médio'.
EXECUTE.

VALUE LABELS  D44_8bin2
1 'Nível Médio'.

RECODE D44_8 (2=1) INTO D44_8bin3.
VARIABLE LABELS  D44_8bin3 'Nível superior'.
EXECUTE.

VALUE LABELS  D44_8bin3
1 'Nível Superior'.

RECODE q44_9 (275=1) INTO D44_9bin1.
VARIABLE LABELS  D44_9bin1 'Pedagogo'.
EXECUTE.

VALUE LABELS D44_9bin1
1 'Pedagogo'.

RECODE q44_9 (273=1) INTO D44_9bin2.
VARIABLE LABELS  D44_9bin2 'Assistente Social'.
EXECUTE.

VALUE LABELS  D44_9bin2
1 'Assistente Social'.

RECODE q44_9 (234=1) INTO D44_9bin3.
VARIABLE LABELS  D44_9bin3 'Antropólogo'.
EXECUTE.

VALUE LABELS  D44_9bin3
1 'Antropólogo'.

RECODE q44_9 (232=1) INTO D44_9bin4.
VARIABLE LABELS  D44_9bin4 'Advogado'.
EXECUTE.

VALUE LABELS  D44_9bin4
1 'Advogado'.

RECODE q44_9 (274=1) INTO D44_9bin5.
VARIABLE LABELS  D44_9bin5 'Psicólogo'.
EXECUTE.

VALUE LABELS  D44_9bin5
1 'Psicólogo'.

RECODE q44_10 (292=3) (139=2) (138=1) (else=4) INTO D44_10.
VARIABLE LABELS   D44_10 'Tipo de vínculo'.

VALUE LABELS D44_10
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.

RECODE  D44_10 (1=1) INTO D44_10bin1.
VARIABLE LABELS   D44_10bin1 'Servidor Estatutário'.

VALUE LABELS  D44_10bin1
1 'Servidor Estatutário'.

RECODE D44_10  (2=1) INTO D44_10bin2.
VARIABLE LABELS  D44_10bin2 'Empregado Público (CLT)'.

VALUE LABELS  D44_10bin2
1 'Empregado Público (CLT)'.

RECODE D44_10 (3=1) INTO D44_10bin3.
VARIABLE LABELS D44_10bin3 'Comissionado'.

VALUE LABELS  D44_10bin3
1 'Comissionado'.

RECODE D44_10 (4=1) INTO D44_10bin4.
VARIABLE LABELS D44_10bin4 'Outros vínculos não permanentes'.

VALUE LABELS  D44_10bin4
1 'Outros vínculos não permanentes'.

****************************************************corrigindo inconsistência entre escolaridade e profissão ***********************************************


****recode profissão com base na escolaridade*****

*** NIVEL SUPERIOR***

DO IF (D44_8bin3 = 1).
RECODE q44_9 (238=SYSMIS) (239=SYSMIS).
END IF.
EXECUTE.

*** NIVEL MÉDIO***

DO IF (D44_8bin2=1).
RECODE q44_9 (240 thru Highest=SYSMIS) (Lowest thru 237=SYSMIS).
END IF.
EXECUTE.


*** NIVEL FUNDAMENTAL***

DO IF (D44_8bin1=1).
RECODE q44_9 (Lowest thru 238=SYSMIS) (240 thru Highest=SYSMIS).
END IF.
EXECUTE.


**********recode profissões binárias**********

RECODE q44_9 (275=1) INTO D44_9bin1.
VARIABLE LABELS  D44_9bin1 'Pedagogo'.
EXECUTE.

RECODE q44_9 (273=1) INTO D44_9bin2.
VARIABLE LABELS  D44_9bin2 'Assistente Social'.
EXECUTE.

RECODE q44_9 (234=1) INTO D44_9bin3.
VARIABLE LABELS  D44_9bin3 'Antropólogo'.
EXECUTE.

RECODE q44_9 (232=1) INTO D44_9bin4.
VARIABLE LABELS  D44_9bin4 'Advogado'.
EXECUTE.

RECODE q44_9 (274=1) INTO D44_9bin5.
VARIABLE LABELS  D44_9bin5 'Psicólogo'.
EXECUTE.

VALUE LABELS D44_9bin1
1 'Pedagogo'.

VALUE LABELS  D44_9bin2
1 'Assistente Social'.

VALUE LABELS  D44_9bin3
1 'Antropólogo'.

VALUE LABELS  D44_9bin4
1 'Advogado'.

VALUE LABELS  D44_9bin5
1 'Psicólogo'.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


AGGREGATE
  /BREAK=NU_IDENTIFICADOR
  /D44_8bin1_sum=SUM(D44_8bin1)
  /D44_8bin2_sum=SUM(D44_8bin2)
  /D44_8bin3_sum=SUM(D44_8bin3)
  /D44_9bin1_sum=SUM(D44_9bin1) 
  /D44_9bin2_sum=SUM(D44_9bin2) 
  /D44_9bin3_sum=SUM(D44_9bin3) 
  /D44_9bin4_sum=SUM(D44_9bin4) 
  /D44_9bin5_sum=SUM(D44_9bin5) 
  /D44_10bin1_sum=SUM(D44_10bin1) 
  /D44_10bin2_sum=SUM(D44_10bin2) 
  /D44_10bin3_sum=SUM(D44_10bin3) 
  /D44_10bin4_sum=SUM(D44_10bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
D44_8bin1_sum'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
D44_8bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
D44_8bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
D44_9bin1_sum'Número de Pedagogos'
D44_9bin2_sum'Número de Assistentes Sociais'
D44_9bin3_sum'Número de Antropólogos'
D44_9bin4_sum'Número de Advogados'
D44_9bin5_sum'Número de Psicólogos'
D44_10bin1_sum'Número de Servidores Estatutários'
D44_10bin2_sum'Número de Empregados Públicos(CLT)'
D44_10bin3_sum'Número de Comissionados'
D44_10bin4_sum'Número de profissionais com outros vínculos não permanentes'
nu_trabalhadores'Número de trabalhdores no Centro POP'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D44_8bin1_sum D44_8bin2_sum D44_8bin3_sum D44_9bin1_sum D44_9bin2_sum D44_9bin3_sum 
    D44_9bin4_sum D44_9bin5_sum D44_10bin1_sum D44_10bin2_sum D44_10bin3_sum D44_10bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
D44_8bin1_sum'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
D44_8bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
D44_8bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.

VARIABLE LABELS
D44_9bin1_sum'Número de Pedagogos'
D44_9bin2_sum'Número de Assistentes Sociais'
D44_9bin3_sum'Número de Antropólogos'
D44_9bin4_sum'Número de Advogados'
D44_9bin5_sum'Número de Psicólogos'.

 VARIABLE LABELS
D44_10bin1_sum'Número de Servidores Estatutários'
D44_10bin2_sum'Número de Empregados Públicos(CLT)'
D44_10bin3_sum'Número de Comissionados'
D44_10bin4_sum'Número de profissionais com outros vínculos não permanentes'.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no Centro POP'.
