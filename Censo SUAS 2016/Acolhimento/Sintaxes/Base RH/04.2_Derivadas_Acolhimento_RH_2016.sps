
**Derivadas do RH

*** Idade


COMPUTE  D42_2=DATEDIFF(13702521600, q42_2_dtnasc,"years").
format D42_2 (F2.0).
EXECUTE.

VARIABLE LABELS D42_2 'D42_2_Idade em anos (data ref. 31-12-2016)'.
EXECUTE.

RECODE D42_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D42_2_categoria.
VARIABLE LABELS  D42_2_categoria  'D42_2_categoria_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D42_2_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


*** Escolaridade

recode q42_7_esc (251 thru 252=1) (else=0) into D42_7bin1.
var labels D42_7bin1 "D42_7bin1_Quantidade de trabalhadores - Nível Fundamental". 
formats D42_7bin1 (f1).
value labels D42_7bin1
0 'Não'
1 'Sim'. 
Execute. 

recode q42_7_esc (254 thru 255=1) (else=0) into D42_7bin2.
var labels D42_7bin2 "D42_7bin2_Quantidade de trabalhadores - Nível Médio". 
formats D42_7bin2 (f1).
value labels D42_7bin2
0 'Não'
1 'Sim'. 
Execute. 

recode q42_7_esc (256 thru 259=1) (else=0) into D42_7bin3.
var labels D42_7bin3 "D42_7bin3_Quantidade de trabalhadores - Nível Superior". 
formats D42_7bin3 (f1).
value labels D42_7bin3
0 'Não'
1 'Sim'. 
Execute. 

*** Profissão

recode q42_8_prof (273=1) (else=0) into D42_8bin1.
var labels D42_8bin1 "D42_8bin1_Quantidade de trabalhadores - Assistente Social". 
formats D42_8bin1 (f1).
value labels D42_8bin1
0 'Não'
1 'Sim'. 
Execute. 

recode q42_8_prof (274=1) (else=0) into D42_8bin2.
var labels D42_8bin2 "D42_8bin2_Quantidade de trabalhadores - Psicólogo". 
formats D42_8bin2 (f1).
value labels D42_8bin2
0 'Não'
1 'Sim'. 
Execute. 

recode q42_8_prof (275=1) (else=0) into D42_8bin3.
var labels D42_8bin3 "D42_8bin3_Quantidade de trabalhadores - Pedagógo". 
formats D42_8bin3 (f1).
value labels D42_8bin3
0 'Não'
1 'Sim'. 
Execute. 

recode q42_8_prof (281=1) (else=0) into D42_8bin4.
var labels D42_8bin4 "D42_8bin4_Quantidade de trabalhadores - Enfermeiro". 
formats D42_8bin4 (f1).
value labels D42_8bin4
0 'Não'
1 'Sim'. 
Execute. 

recode q42_8_prof (282=1) (else=0) into D42_8bin5.
var labels D42_8bin5 "D42_8bin5_Quantidade de trabalhadores - Médico". 
formats D42_8bin5 (f1).
value labels D42_8bin5
0 'Não'
1 'Sim'. 
Execute. 

recode q42_8_prof (235=1) (else=0) into D42_8bin6.
var labels D42_8bin6 "D42_8bin6_Quantidade de trabalhadores - Administrador". 
formats D42_8bin6 (f1).
value labels D42_8bin6
0 'Não'
1 'Sim'. 
Execute. 

recode q42_8_prof (232=1) (else=0) into D42_8bin7.
var labels D42_8bin7 "D42_8bin7_Quantidade de trabalhadores - Advogado". 
formats D42_8bin7 (f1).
value labels D42_8bin7
0 'Não'
1 'Sim'. 
Execute. 

recode q42_8_prof (233=1) (278=1) (else=0) into D42_8bin8.
var labels D42_8bin8 "D42_8bin8_Quantidade de trabalhadores - Fisiterapeuta/Terapia Ocupacional". 
formats D42_8bin8 (f1).
value labels D42_8bin8
0 'Não'
1 'Sim'. 
Execute. 

** Vínculo

recode q42_9_vinc (138=1) (266=1) (else=0) into D42_9bin1.
var labels D42_9bin1 "D42_9bin1_Quantidade de trabalhadores - Servidor Público ou Comissionado". 
formats D42_9bin1 (f1).
value labels D42_9bin1
0 'Não'
1 'Sim'. 
Execute. 

recode q42_9_vinc (139=1) (362=1) (else=0) into D42_9bin2.
var labels D42_9bin2 "D42_9bin2_Quantidade de trabalhadores - Empregado Celetista". 
formats D42_9bin2 (f1).
value labels D42_9bin2
0 'Não'
1 'Sim'. 
Execute. 

recode q42_9_vinc (265=1) (291=1) (else=0) into D42_9bin3.
var labels D42_9bin3 "D42_9bin3_Quantidade de trabalhadores - Voluntario ou Sem Vínculo". 
formats D42_9bin3 (f1).
value labels D42_9bin3
0 'Não'
1 'Sim'. 
Execute. 

recode q42_9_vinc (293=1) (264=1) (else=0) into D42_9bin4.
var labels D42_9bin4 "D42_9bin4_Quantidade de trabalhadores - Tercerizado ou Trabalhador de Empresa, Cooperativa ou Entidade Prestadora de serviços". 
formats D42_9bin4 (f1).
value labels D42_9bin4
0 'Não'
1 'Sim'. 
Execute. 


recode q42_9_vinc (142=1) (else=0) into D42_9bin5.
var labels D42_9bin5 "D42_9bin5_Quantidade de trabalhadores - Outro vínculo não permanente". 
formats D42_9bin5 (f1).
value labels D42_9bin5
0 'Não'
1 'Sim'. 
Execute. 

* Para fazer o agregate, será necessário a variável D42, mas ela não deve permanecer na base final do RH. 

NUMERIC D42 (f1.0). 
Recode D42 (SYSMIS=1). 
execute.

