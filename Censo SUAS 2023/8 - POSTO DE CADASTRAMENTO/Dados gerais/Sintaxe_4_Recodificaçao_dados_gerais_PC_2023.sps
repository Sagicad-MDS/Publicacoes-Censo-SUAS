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
q13_1_velha'q13_1.Sim, as famílias de Averiguação e Revisão Cadastral são alvo de busca ativa'
q13_2_velha'q13_2.Sim, as famílias de Averiguação e Revisão Cadastral fazem parte do público prioritário de atendimento na unidade'
q13_3_velha'q13_3. Sim, há mutirões em dias específicos para atender o público de Averiguação e Revisão Cadastral'
q13_99_velha'q13_99.Sim, outros.'
q13_0_velha'q13_99.Sim, outros.'
q15_0_velha'q15_0.Não realiza ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família'
q15_1_velha'q15_1.As ações e atividades relacionadas à gestão de benefícios do Programa Bolsa Família são encaminhadas para o CRAS e/ou outros serviço da rede socioassistencial'
q15_2_velha'q15_2.Esclarecimentos individuais de dúvidas sobre regras do Programa (valores de benefícios, regras de concessão, bloqueio, suspensão e cancelamento de benefícios e condicionalidades)'
q15_3_velha'q15_3.Ações coletivas para prestar informações às famílias sobre regras do Programa (Reuniões de acolhida, palestra etc.)'
q15_4_velha'q15_4.Manutenção de benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) diretamente no SIBEC'
q15_5_velha'q15_5. Registro das manutenções de benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) no Formulário Padrão de Gestão de Benefícios (FPGB) e seu arquivamento'
q15_6_velha'q15_6.Solicitação de manutenção de benefícios (bloqueios, desbloqueios, cancelamentos e reversões de cancelamento) pelo módulo de Administração Off-line do SigPBF'
q16_0_velha'q16_0.Este posto não se relaciona com outros equipamentos da rede socioassistencial'
q16_1_velha'q16_1.Este posto encaminha as famílias para a rede socioassistencial de referência para inclusão em serviços socioassistenciais (CRAS, CREAS, Centro Pop, outros)'
q16_2_velha'q16_2.Este posto encaminha as famílias para a rede socioassistencial de referência para acesso a benefícios eventuais'
q16_3_velha'q16_3.Este posto atende famílias para inclusão e atualização cadastral encaminhadas pela rede socioassistencial'
q16_4_velha'q16_4.Um profissional da equipe do Cadastro Único deste posto está alocado em outro equipamento socioassistencial para fazer interlocução do Cadastro Único com os programas, serviços e benefícios socioassistenciais'
q16_5_velha'q16_5.Este posto realiza Busca Ativa (cadastramento domiciliar, ações itinerantes, mutirões etc.) em conjunto com a rede socioassistencial'
q16_6_velha'q16_6.Este posto realiza encontro/mutirão de cadastramento de GTPE´s'.
