*********************************************************************************************************************************
****Recodificar 

***q13**************************


compute q13_1_velha = q13_1. 
compute q13_2_velha = q13_2.
compute q13_3_velha = q13_3.
compute q13_99_velha = q13_99.
compute q13_0_velha = q13_0.
execute. 


DO IF (q13_0=1).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3 (ELSE=SYSMIS).
RECODE q13_99  (ELSE=SYSMIS).
END IF.
EXECUTE.



*q15*************************
 
compute q15_0_velha = q15_0. 
compute q15_1_velha = q15_1. 
compute q15_2_velha = q15_2.
compute q15_3_velha = q15_3.
compute q15_4_velha = q15_4.
compute q15_5_velha = q15_5.
compute q15_6_velha = q15_6.
execute. 

DO IF (q15_0=1).
RECODE q15_1 (ELSE=SYSMIS).
RECODE q15_2 (ELSE=SYSMIS).
RECODE q15_3 (ELSE=SYSMIS).
RECODE q15_4  (ELSE=SYSMIS).
RECODE q15_5 (ELSE=SYSMIS).
RECODE q15_6  (ELSE=SYSMIS).
END IF.
EXECUTE.



*q16*************************
 
compute q16_0_velha = q16_0. 
compute q16_1_velha = q16_1. 
compute q16_2_velha = q16_2.
compute q16_3_velha = q16_3.
compute q16_4_velha = q16_4.
compute q16_5_velha = q16_5.
compute q16_6_velha = q16_6.
execute. 

DO IF (q16_0=1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4  (ELSE=SYSMIS).
RECODE q16_5 (ELSE=SYSMIS).
RECODE q16_6  (ELSE=SYSMIS).
END IF.
EXECUTE.





VARIABLE LABELS
q13_1_velha'q13_1.Sim, as fam�lias de Averigua��o e Revis�o Cadastral s�o alvo de busca ativa'
q13_2_velha'q13_2.Sim, as fam�lias de Averigua��o e Revis�o Cadastral fazem parte do p�blico priorit�rio de atendimento na unidade'
q13_3_velha'q13_3. Sim, h� mutir�es em dias espec�ficos para atender o p�blico de Averigua��o e Revis�o Cadastral'
q13_99_velha'q13_99.Sim, outros.'
q13_0_velha'q13_99.Sim, outros.'
q15_0_velha'q15_0.N�o realiza a��es e atividades relacionadas � gest�o de benef�cios do Programa Bolsa Fam�lia'
q15_1_velha'q15_1.As a��es e atividades relacionadas � gest�o de benef�cios do Programa Bolsa Fam�lia s�o encaminhadas para o CRAS e/ou outros servi�o da rede socioassistencial'
q15_2_velha'q15_2.Esclarecimentos individuais de d�vidas sobre regras do Programa (valores de benef�cios, regras de concess�o, bloqueio, suspens�o e cancelamento de benef�cios e condicionalidades)'
q15_3_velha'q15_3.A��es coletivas para prestar informa��es �s fam�lias sobre regras do Programa (Reuni�es de acolhida, palestra etc.)'
q15_4_velha'q15_4.Manuten��o de benef�cios (bloqueios, desbloqueios, cancelamentos e revers�es de cancelamento) diretamente no SIBEC'
q15_5_velha'q15_5. Registro das manuten��es de benef�cios (bloqueios, desbloqueios, cancelamentos e revers�es de cancelamento) no Formul�rio Padr�o de Gest�o de Benef�cios (FPGB) e seu arquivamento'
q15_6_velha'q15_6.Solicita��o de manuten��o de benef�cios (bloqueios, desbloqueios, cancelamentos e revers�es de cancelamento) pelo m�dulo de Administra��o Off-line do SigPBF'
q16_0_velha'q16_0.Este posto n�o se relaciona com outros equipamentos da rede socioassistencial'
q16_1_velha'q16_1.Este posto encaminha as fam�lias para a rede socioassistencial de refer�ncia para inclus�o em servi�os socioassistenciais (CRAS, CREAS, Centro Pop, outros)'
q16_2_velha'q16_2.Este posto encaminha as fam�lias para a rede socioassistencial de refer�ncia para acesso a benef�cios eventuais'
q16_3_velha'q16_3.Este posto atende fam�lias para inclus�o e atualiza��o cadastral encaminhadas pela rede socioassistencial'
q16_4_velha'q16_4.Um profissional da equipe do Cadastro �nico deste posto est� alocado em outro equipamento socioassistencial para fazer interlocu��o do Cadastro �nico com os programas, servi�os e benef�cios socioassistenciais'
q16_5_velha'q16_5.Este posto realiza Busca Ativa (cadastramento domiciliar, a��es itinerantes, mutir�es etc.) em conjunto com a rede socioassistencial'
q16_6_velha'q16_6.Este posto realiza encontro/mutir�o de cadastramento de GTPE�s'.
