VARIABLE LABELS
id_creas_pop'Número Identificador da unidade no CadSUAS'
uf'Unidade da Federação'
municipio'Nome do Município'
v5533'Nome'
v5534'Data de nascimento'
v5535'Sexo'
v5536'CPF'
v5537'RG - Número'
v5538'RG - Órgão Emissor'
v5539'RG - UF'
v5540'Escolaridade'
v5541'Profissão'
v5542'Vínculo:'
v5543'Função:'
v5544'Carga Horária Semanal'
.
execute.

VALUE LABELS
/v5535
1    'Feminino'
2    'Masculino'
/v5540
251    'Sem Escolaridade'
252    'Ensino Fundamental Incompleto'
253    'Ensino Fundamental Completo'
254    'Ensino Médio Incompleto'
255    'Ensino Médio Completo'
256    'Ensino Superior Incompleto'
257    'Ensino Superior Completo'
258    'Especialização'
260    'Mestrado'
261    'Doutorado'
/v5541
233    'Terapeuta Ocupacional'
235    'Administrador'
281    'Enfermeiro'
278    'Fisioterapeuta'
241    'Programador'
283    'Cientista Politico'
275    'Pedagogo'
236    'Economista'
282    'Médico'
273    'Assistente Social'
279    'Nutricionista'
234    'Antropólogo'
240    'Analista de Sistema'
232    'Advogado'
274    'Psicólogo'
276    'Sociólogo'
237    'Outro profissional de nivel superior'
238    'Profissional de nivel medio'
239    'Sem formação profissional'
/v5542
292    'Comissionado'
139    'Empregado Público (CLT)'
142    'Outro vínculo não permanente'
291    'Sem Vínculo'
266    'Servidor Temporário'
138    'Servidor Estatutário'
293    'Terceirizado'
264    'Trabalhador de Empresa/Cooperativa/Entidade Prestadora de Serviços'
265    'Voluntário'
/v5543
1    'Apoio Administrativo'
2    'Coordenador(a)'
3    'Educador (a) Social'
4    'Estagiário (a)'
5    'Serviços Gerais'
6    'Técnico (a) de nível médio'
7    'Técnico (a) de nível superior'
8    'Outros'
/v5544
262    'Menor que 20 horas semanais'
272    '20 horas semanais'
18    '30 horas semanais'
20    '40 horas semanais'
263    'Maior que 40 horas semanais'
.
execute.

RENAME VARIABLES
id_creas_pop = NU_IDENTIFICADOR
uf = UF
municipio = Municipio
ordem = Ordem
v5533	=	q44_1
v5534	=	q44_2
v5535	=	q44_3
v5536	=	q44_4
v5537	=	q44_5
v5538	=	q44_6
v5539	=	q44_7
v5540	=	q44_8
v5541	=	q44_9
v5542	=	q44_10
v5543	=	q44_11
v5544	=	q44_12
.
EXECUTE.

VARIABLE LABELS
q44_1		'q44_1_Nome'
q44_2		'q44_2_Data de nascimento'
q44_3		'q44_3_Sexo'
q44_4		'q44_4_CPF'
q44_5		'q44_5_RG - Número'
q44_6		'q44_6_RG - Órgão Emissor'
q44_7		'q44_7_RG - UF'
q44_8		'q44_8_Escolaridade'
q44_9		'q44_9_Profissão'
q44_10		'q44_10_Vínculo'
q44_11		'q44_11_Função'
q44_12		'q44_12_Carga Horária Semanal'
.
EXECUTE.

