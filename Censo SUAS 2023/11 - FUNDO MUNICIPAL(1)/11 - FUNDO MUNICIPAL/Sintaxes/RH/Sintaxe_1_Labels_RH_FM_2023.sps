

RENAME VARIABLES		
codigo_ibge	=	IBGE
v14487	=	q13_1
v14508	=	q13_2
v14509	=	q13_3
v14510	=	q13_4
v14511	=	q13_5
v14512	=	q13_6
v14513	=	q13_7
v14514	=	q13_8
v14515	=	q13_9
v14516	=	q13_10
v14517	=	q13_11
v14518	=	q13_12
v14519	=	q13_13
IBGE7	=	IBGE7
codigo_UF	=	UF
Região	=	Regiao
Município	=	Municipio
areaKm2	=	areaKm2
Nome_UF  = UF_nome
Pop_total_2022 = Pop_total_2022
Porte_pop2022 = Porte_pop2022
Q_incompleto 	=	Q_incompleto .


VARIABLE LABELS
IBGE'IBGE'
q13_1'q13_1 Nome completo'
q13_2'q13_2 Data de Nascimento DD/MM/AAAA'
q13_3'q13_3 Sexo'
q13_4'q13_4 Número do CPF'
q13_5'q13_5 Dados do RG Número'
q13_6'q13_6 Dados do RG Órgão emissor'
q13_7'q13_7 Dados do RG UF'
q13_8'q13_8 Escolaridade'
q13_9'q13_9 Profissão'
q13_10'q13_10 Vínculo'
q13_11'q13_11 Função'
q13_12'q13_12 Carga horária SEMANAL'
q13_13'q13_13 Início do Mandato DD/MM/AAAA' 
IBGE7'IBGE7'
UF'UF'
Regiao'Região'
Municipio'Município'
areaKm2'areaKm2'
UF_nome'UF_nome'
Pop_total_2022'Pop_total_2022'
Porte_pop2022'Porte_pop2022'
Q_incompleto'Q_incompleto'
.



VALUE LABELS
/q13_3
0' Feminino'
1' Masculino'
/q13_8
261' Doutorado'
253' Ensino Fundamental Completo'
252' Ensino Fundamental Incompleto'
255' Ensino Médio Completo'
254' Ensino Médio Incompleto'
258' Especialização'
260' Mestrado'
257' Ensino Superior Completo'
256' Ensino Superior Incompleto'
251' Sem Escolaridade'
/q13_9
273' Assistente Social'
274' Psicólogo (a)'
275' Pedagogo (a)'
232' Advogado (a)'
235' Administrador (a)'
234' Antropólogo (a)'
276' Sociólogo (a)'
278' Fisioterapeuta'
283' Cientista político(a)'
279' Nutricionista'
282' Médico(a)'
372' Musicoterapeuta'
233' Terapeuta Ocupacional'
236' Economista'
371' Economista Doméstico'
281' Enfermeiro (a)'
240' Analista de sIstema'
241' Programador(a)'
237' Outro(a) profissional de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de Educação Física'
416' Contador'
417' Geógrafo'
420' Administração pública/Gestão pública'
/q13_10
292' Comissionado (a)'
139' Empregado (a) Público (a) Celetista (CLT)'
142' Outro vínculo não permanente'
266' Servidor (a) Temporário (a)'
138' Servidor/Estatutário (a)'
293' Terceirizado (a)'
264' Trabalhador (a) de Empresa/ Cooperativa/ Entidade Prestadora de Serviços'
265' Voluntário (a)'
291'Sem vínculo'
/q13_11
251' Apoio Administrativo'
21' Coordenador(a)'
248' Educador(a)/Orientador(a) Social'
253'Estagiário(a)'
48' Gestor(a)'
389' Ordenador(a) de Despesas'
252' Serviços Gerais (limpeza, conservação, motoristas, etc)'
250' Técnico(a) de nível Médio'
249' Técnico(a) de nível superior'
254'Outros'
/q13_12
263' De 41 a 44 horas semanais'
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
391' Mais de 44 horas semanais' 
/UF
11 "Rondonia"
12 "Acre"
13 "Amazonas"
14 "Roraima"
15  "Pará"
16 "Amapá"
17 "Tocantins"
21 "Maranhão"
22 "Piaui"
23 "Ceará"
24 "Rio Grande do Norte"
25 "Paraíba"
26 "Pernambuco"
27 "Alagoas"
28 "Sergipe"
29 "Bahia"
31 "Minas gerais"
32 "Espirito Santo"
33 "Rio de Janeiro"
35 "São Paulo"
41 "Paraná"
42 "Santa Catarina"
43  "Rio Grande do Sul"
50 "Mato Grosso do Sul"
51 "Mato Grosso"
52 "Goiás"
53 "Distrito Federal"
/Regiao 
1 "Região Norte"
2 "Região Nordeste"
3 "Região Sudeste"
4 "Região Sul"
5 "Região Centro Oeste" 
/Porte_pop2022
1 "Pequeno I"
2 "Pequeno II"
3 "Médio"
4 "Grande"
5 "Metrópole" 
/Q_incompleto
0   'completo'
1    'incompleto'
.






