VARIABLE LABELS
v6510'Nome'
v6511'CPF'
v6512'Sexo'
v6513'Escolaridade'
v6514'Profissão'
v6515'Vínculo'
v6516'Função'
v6517'Carga horária SEMANAL, Horas por Semana'
.
EXECUTE.


VALUE LABELS
/v6512
1    'F'
2    'M'
/v6513
0    'Sem Escolaridade'
1    'Fundamental Incompleto'
2    'Fundamental Completo'
3    'Médio Incompleto'
4    'Médio Completo'
5    'Superior Incompleto'
6    'Superior Completo'
7    'Especialização'
8    'Mestrado'
9    'Doutorado'
/v6514
1    'Assistente Social'
2    'Psicólogo'
3    'Terapeuta Ocupacional'
4    'Pedagogo'
5    'Advogado'
6    'Fisioterapeuta'
7    'Médico'
8    'Enfermeiro'
9    'Nutricionista'
10    'Administrador'
11    'Sociólogo'
99    'Outras formações de nível superior'
/v6515
1    'Servidor Público Estatutário'
2    'Cargo público comissionado'
3    'Empregado (CLT)'
4    'Servidor Público Temporário'
5    'Voluntário'
6    'Estagiário'
99    'Outro vínculo não permanente'
/v6516
1    'Coordenador(a)'
2    'Equipe técnica'
3    'Cuidador'
4    'Cuidador residente (“mãe/pai social”)'
5    'Educador/Orientador Social'
6    'Apoio administrativo'
7    'Cozinheiro(a)'
8    'Serviços gerais (limpeza/conservação)'
9    'Motorista'
99    'Outro'
.
EXECUTE.

RENAME VARIABLES
v6510	=	q36_1
v6511	=	q36_2
v6512	=	q36_3
v6513	=	q36_4
v6514	=	q36_5
v6515	=	q36_6
v6516	=	q36_7
v6517	=	q36_8
.
EXECUTE.

VARIABLE LABELS
q36_1		'q36_1_Nome'
q36_2		'q36_2_CPF'
q36_3		'q36_3_Sexo'
q36_4		'q36_4_Escolaridade'
q36_5		'q36_5_Profissão'
q36_6		'q36_6_Vínculo'
q36_7		'q36_7_Função'
q36_8		'q36_8_Carga horária SEMANAL - Horas por Semana'
.
EXECUTE.
