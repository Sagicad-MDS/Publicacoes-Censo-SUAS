
**** correção do total das questões 37 e 38 *****

RENAME VARIABLES
q37a_4	=	q37a_4_velha
q37b_4	=	q37b_4_velha
q37c_4	=	q37c_4_velha
q37d_4	=	q37d_4_velha
q37e_1	=	q37e_1_velha
q37e_2	=	q37e_2_velha
q37e_3	=	q37e_3_velha
q37e_4	=	q37e_4_velha
q38a_4	=	q38a_4_velha
q38b_4	=	q38b_4_velha
q38c_4	=	q38c_4_velha
q38d_4	=	q38d_4_velha
q38e_1	=	q38e_1_velha
q38e_2	=	q38e_2_velha
q38e_3	=	q38e_3_velha
q38e_4	=	q38e_4_velha
.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37a_4=q37a_1+q37a_2+q37a_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37b_4=q37b_1+q37b_2+q37b_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37c_4=q37c_1+q37c_2+q37c_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37d_4=q37d_1+q37d_2+q37d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_1=q37a_1+q37b_1+q37c_1+q37d_1.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_2=q37a_2+q37b_2+q37c_2+q37d_2.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_3=q37a_3+q37b_3+q37c_3+q37d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_4=q37a_4+q37b_4+q37c_4+q37d_4.
EXECUTE.


IF  (codigo_ibge <> 530010)  q38a_4=q38a_1+q38a_2+q38a_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38b_4=q38b_1+q38b_2+q38b_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38c_4=q38c_1+q38c_2+q38c_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38d_4=q38d_1+q38d_2+q38d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_1=q38a_1+q38b_1+q38c_1+q38d_1.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_2=q38a_2+q38b_2+q38c_2+q38d_2.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_3=q38a_3+q38b_3+q38c_3+q38d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_4=q38a_4+q38b_4+q38c_4+q38d_4.
EXECUTE.


IF  (codigo_ibge = 530010)  q37a_4=q37a_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37b_4=q37b_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37c_4=q37c_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37d_4=q37d_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_1=q37e_1_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_2=q37e_2_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_3=q37e_3_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_4=q37e_4_velha.
EXECUTE.


IF  (codigo_ibge = 530010)  q38a_4=q38a_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38b_4=q38b_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38c_4=q38c_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38d_4=q38d_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_1=q38e_1_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_2=q38e_2_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_3=q38e_3_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_4=q38e_4_velha.
EXECUTE.

VARIABLE LABELS
q37a_1		'q37a_1_Estatutários - Ensino Fundamental'
q37a_2		'q37a_2_Estatutários - Ensino Médio'
q37a_3		'q37a_3_Estatutários - Ensino Superior'
q37a_4		'q37a_4_Estatutários - Total'
q37b_1		'q37b_1_Celetistas - Ensino Fundamental'
q37b_2		'q37b_2_Celetistas - Ensino Médio'
q37b_3		'q37b_3_Celetistas - Ensino Superior'
q37b_4		'q37b_4_Celetistas - Total'
q37c_1		'q37c_1_Somente Comissionados - Ensino Fundamental'
q37c_2		'q37c_2_Somente Comissionados - Ensino Médio'
q37c_3		'q37c_3_Somente Comissionados - Ensino Superior'
q37c_4		'q37c_4_Somente Comissionados - Total'
q37d_1		'q37d_1_Outros Vínculos - Ensino Fundamental'
q37d_2		'q37d_2_Outros Vínculos - Ensino Médio'
q37d_3		'q37d_3_Outros Vínculos - Ensino Superior'
q37d_4		'q37d_4_Outros Vínculos - Total'
q37e_1		'q37e_1_Total - Ensino Fundamental'
q37e_2		'q37e_2_Total - Ensino Médio'
q37e_3		'q37e_3_Total - Ensino Superior'
q37e_4		'q37e_4_Total - Total'
q38a_1		'q38a_1_Estatutários - Ensino Fundamental'
q38a_2		'q38a_2_Estatutários - Ensino Médio'
q38a_3		'q38a_3_Estatutários - Ensino Superior'
q38a_4		'q38a_4_Estatutários - Total'
q38b_1		'q38b_1_Celetistas - Ensino Fundamental'
q38b_2		'q38b_2_Celetistas - Ensino Médio'
q38b_3		'q38b_3_Celetistas - Ensino Superior'
q38b_4		'q38b_4_Celetistas - Total'
q38c_1		'q38c_1_Somente Comissionados - Ensino Fundamental'
q38c_2		'q38c_2_Somente Comissionados - Ensino Médio'
q38c_3		'q38c_3_Somente Comissionados - Ensino Superior'
q38c_4		'q38c_4_Somente Comissionados - Total'
q38d_1		'q38d_1_Outros Vínculos - Ensino Fundamental'
q38d_2		'q38d_2_Outros Vínculos - Ensino Médio'
q38d_3		'q38d_3_Outros Vínculos - Ensino Superior'
q38d_4		'q38d_4_Outros Vínculos - Total'
q38e_1		'q38e_1_Total - Ensino Fundamental'
q38e_2		'q38e_2_Total - Ensino Médio'
q38e_3		'q38e_3_Total - Ensino Superior'
q38e_4		'q38e_4_Total - Total'
.
EXECUTE.

**reordenar manualmente as variáveis criadas**

*** manter os valores antigos do DF na variável nova ***

***** correção do total das questões 37 e 38 *****


****** Remoção de valores expúrios nas variaveis q37a_1 a q38e_4 ***************

DO IF (((q38e_4 / Pop_Total2010)*100) > 5).
RECODE q37a_1 q37a_2 q37a_3 q37a_4 q37b_1 q37b_2 q37b_3 q37b_4 q37c_1 q37c_2 q37c_3 q37c_4 q37d_1 
    q37d_2 q37d_3 q37d_4 q37e_1 q37e_2 q37e_3 q37e_4 q38a_1 q38a_2 q38a_3 q38a_4 q38b_1 q38b_2 q38b_3 
    q38b_4 q38c_1 q38c_2 q38c_3 q38c_4 q38d_1 q38d_2 q38d_3 q38d_4 q38e_1 q38e_2 q38e_3 q38e_4 
    (ELSE=999998).
END IF.
EXECUTE.

ADD VALUE LABELS  q37a_1, q37a_2, q37a_3, q37a_4, q37b_1, q37b_2, q37b_3, q37b_4, q37c_1, q37c_2, q37c_3, q37c_4, q37d_1, 
    q37d_2, q37d_3, q37d_4, q37e_1, q37e_2, q37e_3, q37e_4, q38a_1, q38a_2, q38a_3, q38a_4, q38b_1, q38b_2, q38b_3, 
    q38b_4, q38c_1, q38c_2, q38c_3, q38c_4, q38d_1, q38d_2, q38d_3, q38d_4, q38e_1, q38e_2, q38e_3, q38e_4, 999998 "Imputado missing devido a valor inconsistente".
EXECUTE.

**** ATENÇÃO: fazer manualmente a classificação do valor 999998 como missing na configuração das variáveis 37 e 38*******


