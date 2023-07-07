
***** Criação id_unidade_final ****

COMPUTE id_unidade_interm=10000+id_acolhimentotextcodigo_ibgetext.

compute id_unidade_final=municipio*10**(trunc(lg10(id_unidade_interm))+1) + id_unidade_interm.

**********recode nivel de escolaridade (fundamental, médio e superior) **********

RECODE q36_4 (0 thru 2=0) (3 thru 5=1) (6 thru 9=2) INTO d36_4.
VARIABLE LABELS  d36_4 'Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d36_4
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.


**********recode nivel de escolaridade binárias**********

RECODE d36_4 (0=1) INTO d36_4bin1.
VARIABLE LABELS  d36_4bin1 'Nível fundamental'.
EXECUTE.

RECODE d36_4 (1=1) INTO d36_4bin2.
VARIABLE LABELS  d36_4bin2 'Nível médio'.
EXECUTE.

RECODE d36_4 (2=1) INTO d36_4bin3.
VARIABLE LABELS  d36_4bin3 'Nível superior'.
EXECUTE.

VALUE LABELS d36_4bin1
1 'Nível fundamental'.

VALUE LABELS  d36_4bin2
1 'Nível Médio'.

VALUE LABELS  d36_4bin3
1 'Nível Superior'.


**********recode profissões binárias**********

RECODE q36_5 (4=1) INTO d36_5bin1.
VARIABLE LABELS  d36_5bin1 'Pedagogo'.
EXECUTE.

RECODE q36_5 (1=1) INTO d36_5bin2.
VARIABLE LABELS  d36_5bin2 'Assistente Social'.
EXECUTE.

RECODE q36_5 (5=1) INTO d36_5bin3.
VARIABLE LABELS   d36_5bin3 'Advogado'.
EXECUTE.

RECODE q36_5 (2=1) INTO d36_5bin4.
VARIABLE LABELS  d36_5bin4 'Psicólogo'.
EXECUTE.

VALUE LABELS d36_5bin1
1 'Pedagogo'.

VALUE LABELS d36_5bin2
1 'Assistente Social'.

VALUE LABELS d36_5bin3
1 'Advogado'.

VALUE LABELS  d36_5bin4
1 'Psicólogo'.


**********recode tipo de vinculo binárias**********

RECODE  q36_6 (1=1) INTO d36_6bin1.
VARIABLE LABELS   d36_6bin1 'Servidor Estatutário'.

RECODE q36_6 (2=1) INTO d36_6bin2.
VARIABLE LABELS d36_6bin2 'Cargo público comissionado'.

RECODE q36_6  (3=1) INTO d36_6bin3.
VARIABLE LABELS  d36_6bin3 'Empregado Público (CLT)'.

RECODE q36_6 (4=1) INTO d36_6bin4.
VARIABLE LABELS d36_6bin4 'Servidor Público Temporário'.

RECODE q36_6 (99=1) INTO d36_6bin5.
VARIABLE LABELS d36_6bin5 'Outros vínculos não permanentes'.

RECODE q36_6 (5=1) INTO d36_6bin6.
VARIABLE LABELS d36_6bin6 'Voluntário'.

RECODE q36_6 (6=1) INTO d36_6bin7.
VARIABLE LABELS d36_6bin7 'Estagiário'.

VALUE LABELS  d36_6bin1
1 'Servidor Estatutário'.

VALUE LABELS  d36_6bin2
1 'Cargo público comissionado'.

VALUE LABELS  d36_6bin3
1 'Empregado Público (CLT)'.

VALUE LABELS  d36_6bin4
1 'Servidor Público Temporário'.

VALUE LABELS   d36_6bin5
1 'Outros vínculos não permanentes'.

VALUE LABELS   d36_6bin6
1 'Voluntário'.

VALUE LABELS   d36_6bin7
1 'Estagiário'.

****************************************************corrigindo inconsistência na idade e entre escolaridade e profissão ***********************************************

****recode profissão com base na escolaridade*****

DO IF (q36_4 <= 5).
RECODE (q36_5=SYSMIS).
END IF.
EXECUTE.

********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

**** RECODE MISSING TO ZERO ****

RECODE   d36_4bin1 d36_4bin2 d36_4bin3 d36_5bin1  d36_5bin2 d36_5bin3 d36_5bin4
 d36_6bin1 d36_6bin2 d36_6bin3 d36_6bin4 d36_6bin5 d36_6bin6 d36_6bin7 (SYSMIS=0).
EXECUTE.


AGGREGATE
  /OUTFILE='D:\Acolhimento\Base de Dados_Acolhimento_2012\aggr.sav'
  /BREAK=id_unidade_final
  /d36_4bin1_sum=SUM(d36_4bin1) 
  /d36_4bin2_sum=SUM(d36_4bin2) 
  /d36_4bin3_sum=SUM(d36_4bin3) 
  /d36_5bin1_sum=SUM(d36_5bin1) 
  /d36_5bin2_sum=SUM(d36_5bin2) 
  /d36_5bin3_sum=SUM(d36_5bin3) 
  /d36_5bin4_sum=SUM(d36_5bin4) 
  /d36_6bin1_sum=SUM(d36_6bin1) 
  /d36_6bin2_sum=SUM(d36_6bin2) 
  /d36_6bin3_sum=SUM(d36_6bin3) 
  /d36_6bin4_sum=SUM(d36_6bin4) 
  /d36_6bin5_sum=SUM(d36_6bin5) 
  /d36_6bin6_sum=SUM(d36_6bin6) 
  /d36_6bin7_sum=SUM(d36_6bin7)
  /N_BREAK=N.

VARIABLE LABELS
 /d36_4bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 /d36_4bin2_sum 'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 /d36_4bin3_sum 'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 /d36_5bin1_sum 'Número de Pedagogos'
 /d36_5bin2_sum 'Número de Assistentes Sociais'
 /d36_5bin3_sum 'Número de Advogados'
 /d36_5bin4_sum 'Número de Psicólogos'
 /d36_6bin1_sum 'Número de Servidores Estatutários'
 /d36_6bin2_sum  'Número de Comissionados' 
 /d36_6bin3_sum 'Número de Empregados Públicos(CLT)'
 /d36_6bin4_sum 'Número de de Servidores Públicos Temporários'
 /d36_6bin5_sum 'Número de profissionais com outros vínculos não permanentes'
 /d36_6bin6_sum 'Número de voluntários'
 /d36_6bin7_sum 'Número de estagiários'
 /nu_trabalhadores 'Número de trabalhadores na unidade de acolhimento'
.
EXECUTE.




