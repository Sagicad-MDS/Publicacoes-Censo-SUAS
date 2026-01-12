* Encoding: UTF-8.
*******Dados Gerais*****

RENAME VARIABLES		
codigo_ibge	=	IBGE
v10899	=	q_75_1
v13021	=	q_75_2
v10901	=	q_75_3
v11955	=	q_75_4
v10902	=	q_75_5
v10903	=	q_75_6
v10904	=	q_75_7
v10906	=	q_75_8
v10907	=	q_75_9
v10908	=	q_75_10
.		


VARIABLE LABELS
IBGE 'IBGE_codigo_ibge_Codigo IBGE'	
q_75_1'q_75_1_v10899_Nome'
q_75_2'q_75_2_v13021_Data de nascimento'
q_75_3'q_75_3_v10901_Sexo'
q_75_4'q_75_4_v11955_E-mail'
q_75_5'q_75_5_v10902_Escolaridade'
q_75_6'q_75_6_v10903_Representação'
q_75_7'q_75_7_v10904_Função'
q_75_8'q_75_8_v10906_Data de Início do mandato'
q_75_9'q_75_9_v10907_Data de término do mandato'
q_75_10'q_75_10_v10908_CPF'
.
	


VALUE LABELS
/q_75_3
1 'Feminino'
2 'Masculino'
/q_75_5
251  'Sem Escolaridade'
252  'Fundamental Incompleto'
253  'Fundamental Completo'
254  'Médio Incompleto'
255  'Médio Completo'
256  'Superior Incompleto'
257  'Superior Completo'
258  'Especialização'
260  'Mestrado'
261  'Doutorado'
/q_75_6
"GA"  'Governamental - Assistência Social'
"GE"  'Governamental – Educação'
"GS"  'Governamental – Saúde'
"GO"  'Governamental – Outras áreas'
"E"  'Sociedade Civil - das entidade e Organizações de Ass. Social'
"U"  'Sociedade Civil - dos usuários'
"T"  'Sociedade Civil - organizações dos trabalhadores'
"O"  'Sociedade Civil - organizações dos usuários'
/q_75_7
20  'Conselheiro(a) Presidente'
308  'Vice-Presidente'
105  'Conselheiro Titular'
106  'Conselheiro Suplente'
21  'Coordenador(a)'
251  'Apoio Administrativo'
248  'Educador Social'
253  'Estagiário(a)'
79  'Secretário Executivo'
252  'Serviços Gerais'
250  'Técnico(a) Nível Médio'
249  'Técnico(a) Nível Superior'
254  'Outros'
.

