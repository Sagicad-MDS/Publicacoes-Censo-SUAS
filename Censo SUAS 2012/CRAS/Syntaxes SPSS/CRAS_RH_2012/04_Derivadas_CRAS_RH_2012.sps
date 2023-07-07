****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Será criada a variável com número procurado. Em seguida rodar a sintax abaixo**

COMPUTE  D49_2=DATEDIFF(13576291200, q49_2,"years").
format D49_2 (F2.0).
EXECUTE.

VARIABLE LABELS D49_2 'Idade em anos (data ref. 31-12-2012)'.
EXECUTE.
***********************************************************************************************************

RECODE D49_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D49_categoria.
VARIABLE LABELS  D49_categoria  'Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D49_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

RECODE q49_6 (251 thru 254=0) (255 thru 256=1) (257 thru 262=2) INTO D49_6.
VARIABLE LABELS D49_6 'Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D49_6
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE q49_8 (292=3) (139=2) (138=1) (else=4) INTO D49_8.
VARIABLE LABELS   D49_8 'Tipo de vínculo'.

VALUE LABELS D49_8
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE D49_6 (0=1) INTO D49_6bin1.
VARIABLE LABELS  D49_6bin1 'Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D49_6bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D49_6 (1=1) INTO D49_6bin2.
VARIABLE LABELS  D49_6bin2 'Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D49_6bin2
1 'Nível Médio'.
EXECUTE.

RECODE D49_6 (2=1) INTO D49_6bin3.
VARIABLE LABELS  D49_6bin3 'Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D49_6bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q49_7 (275=1) INTO D49_7bin1.
VARIABLE LABELS  D49_7bin1 'Pedagogo'.
EXECUTE.

VALUE LABELS D49_7bin1
1 'Pedagogo'.
EXECUTE.

RECODE q49_7 (273=1) INTO D49_7bin2.
VARIABLE LABELS  D49_7bin2 'Assistente Social'.
EXECUTE.

VALUE LABELS  D49_7bin2
1 'Assistente Social'.
EXECUTE.

RECODE q49_7 (234=1) INTO D49_7bin3.
VARIABLE LABELS  D49_7bin3 'Antropólogo'.
EXECUTE.

VALUE LABELS  D49_7bin3
1 'Antropólogo'.
EXECUTE.

RECODE q49_7 (232=1) INTO D49_7bin4.
VARIABLE LABELS  D49_7bin4 'Advogado'.
EXECUTE.

VALUE LABELS  D49_7bin4
1 'Advogado'.
EXECUTE.

RECODE q49_7 (274=1) INTO D49_7bin5.
VARIABLE LABELS  D49_7bin5 'Psicólogo'.
EXECUTE.

VALUE LABELS  D49_7bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  D49_8 (1=1) INTO D49_8bin1.
VARIABLE LABELS   D49_8bin1 'Servidor Estatutário'.

VALUE LABELS  D49_8bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE D49_8  (2=1) INTO D49_8bin2.
VARIABLE LABELS  D49_8bin2 'Empregado Público (CLT)'.

VALUE LABELS  D49_8bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE D49_8 (3=1) INTO D49_8bin3.
VARIABLE LABELS D49_8bin3 'Comissionado'.

VALUE LABELS  D49_8bin3
1 'Comissionado'.
EXECUTE.

RECODE D49_8 (4=1) INTO D49_8bin4.
VARIABLE LABELS D49_8bin4 'Outros vínculos não permanentes'.

VALUE LABELS  D49_8bin4
1 'Outros vínculos não permanentes'.
EXECUTE.



********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D49_6bin1_sum=SUM(D49_6bin1)
  /D49_6bin2_sum=SUM(D49_6bin2)
  /D49_6bin3_sum=SUM(D49_6bin3)
  /D49_7bin1_sum=SUM(D49_7bin1) 
  /D49_7bin2_sum=SUM(D49_7bin2) 
  /D49_7bin3_sum=SUM(D49_7bin3) 
  /D49_7bin4_sum=SUM(D49_7bin4) 
  /D49_7bin5_sum=SUM(D49_7bin5) 
  /D49_8bin1_sum=SUM(D49_8bin1) 
  /D49_8bin2_sum=SUM(D49_8bin2) 
  /D49_8bin3_sum=SUM(D49_8bin3) 
  /D49_8bin4_sum=SUM(D49_8bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
 D49_6bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 /D49_6bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 /D49_6bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 /D49_7bin1_sum'Número de Pedagogos'
 /D49_7bin2_sum'Número de Assistentes Sociais'
 /D49_7bin3_sum'Número de Antropólogos'
 /D49_7bin4_sum'Número de Advogados'
 /D49_7bin5_sum'Número de Psicólogos'
 /D49_8bin1_sum'Número de Servidores Estatutários'
 /D49_8bin2_sum'Número de Empregados Públicos(CLT)'
 /D49_8bin3_sum'Número de Comissionado's
 /D49_8bin4_sum'Número de profissionais com outros vínculos não permanentes'
 /nu_trabalhadores'Número de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D49_6bin1_sum D49_6bin2_sum D49_6bin3_sum D49_7bin1_sum D49_7bin2_sum D49_7bin3_sum 
    D49_7bin4_sum D49_7bin5_sum D49_8bin1_sum D49_8bin2_sum D49_8bin3_sum D49_8bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D49_6bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D49_6bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D49_6bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D49_7bin1_sum'Número de Pedagogos'
 D49_7bin2_sum'Número de Assistentes Sociais'
 D49_7bin3_sum'Número de Antropólogos'
 D49_7bin4_sum'Número de Advogados'
 D49_7bin5_sum'Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 D49_8bin1_sum'Número de Servidores Estatutários'
 D49_8bin2_sum'Número de Empregados Públicos(CLT)'
 D49_8bin3_sum'Número de Comissionados'
 D49_8bin4_sum'Número de profissionais com outros vínculos não permanentes'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no CRAS'.
EXECUTE.
