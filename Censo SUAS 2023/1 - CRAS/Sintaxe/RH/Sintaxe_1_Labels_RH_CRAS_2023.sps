RENAME VARIABLES		
codigo_ibge	=	 IBGE
id_cras	=	NU_IDENTIFICADOR
v10482	=	q70_1
co_seq_dirigente	=	co_seq_dirigente
v10484	=	q70_2
v10485	=	q70_3
v10486	=	q70_4
v10487	=	q70_5
v10488	=	q70_6
v10490	=	q70_7
v11953	=	q70_8
v10491	=	q70_9
v10492	=	q70_10
v10493	=	q70_11
v10494	=	q70_12
v10495	=	q70_13
v10496	=	q70_14
v10498	=	q70_15
v11876	=	q70_16
IBGE7	=	IBGE7
Nome_UF	=	UF
Região	=	Regiao
Município	=	Município
areaKm2	=	areaKm2
UF_nome  = UF_nome
Pop_total_2022 = Pop_total_2022
Porte_pop2022 = Porte_pop2022
Q_incompleto 	=	Q_incompleto 
.


VARIABLE LABELS
 IBGE' IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR'
q70_1'q70_1Nome Completo'
co_seq_dirigente'co_seq_dirigente'
q70_2'q70_2.Data de Nascimento DD/MM/AAAA'
q70_3'q70_3.Sexo'
q70_4'q70_4.Número do CPF'
q70_5'q70_5.Dados do RG - Número'
q70_6'q70_6.Dados do RG - Órgão Emissor'
q70_7'q70_7.Dados do RG - UF'
q70_8'q70_8.E-mail'
q70_9'q70_9.Escolaridade'
q70_10'q70_10.Profissão'
q70_11'q70_11.Vínculo'
q70_12'q70_12.Função'
q70_13'q70_13.Carga horária SEMANAL'
q70_14'q70_14.Início do Exercício Função (DD/MM/AAAA)'
q70_15'q70_15.Serviços/Atividade a qual o profissional está vinculado - Principal serviço/atividade'
q70_16'q70_16.Serviços/Atividade a qual o profissional está vinculado - Segundo principal serviço/atividade'
q70_17'q70_17.Serviços/Atividade a qual o profissional está vinculado - Terceiro principal serviço/atividade'
IBGE7		'IBGE7'
UF	'UF'
Regiao		'Regiao'
Município		'Município'
areaKm2		'areaKm2'
UF_nome  ' UF_nome'
Pop_total_2022  'Pop_total_2022'
Porte_pop2022  'Porte_pop2022'
Q_incompleto 		'Q_incompleto '
.


VALUE LABELS
/q70_3
0 'Feminino'
1 'Masculino'
/q70_9
251' Sem Escolaridade'
252' Fundamental Incompleto'
253' Fundamental Completo'
254' Médio Incompleto'
255' Médio Completo'
256' Superior Incompleto'
257' Superior Completo'
258' Especialização'
260' Mestrado'
261' Doutorado'
/q70_10
235' Administrador(a)'
232' Advogada(o)'
240' Analista de Sistema'
234' Antropóloga(o)'
273' Assistente Social'
283' Cientista Política(o)'
236' Economista'
371' Economista Doméstica(o)'
281' Enfermeira(o)'
278' Fisioterapeuta'
282' Médica(o)'
372' Musicoterapeuta'
279' Nutricionista'
237' Outra(o) profissional de nível superior'
275' Pedagoga(o)'
238' Profissional de nível médio'
241' Programador(a)'
274' Psicóloga(o)'
239' Sem formação profissional'
276' Socióloga(o)'
233' Terapeuta Ocupacional'
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
420 'Administração pública/Gestão'
/q70_11
292' Comissionado'
138' Servidor Estatutário'
266' Servidor Temporário'
139' Empregado Público Celetista (CLT)'
293' Terceirizado'
142' Outro vínculo não permanente'
264' Trabalhador de Empresa/Cooperativa/Entidade Prestadora de Serviços'
265' Voluntário'
291' Sem Vínculo'
/q70_12
251' Apoio Administrativo'
21' Coordenador(a)'
248' Educador(a) Social'
253' Estagiário(a)'
252' Serviços Gerais'
370' Cadastrador(a)'
249' Técnico(a) de Nível Superior'
250' Técnico(a) de Nível Médio'
254' Outros'
/q70_13
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
391' Mais de 44 horas semanais'
/q70_15
1 'Atividades de gestão (administrativo)'
2 'Serviço de Proteção e Atendimento Integral à Família (PAIF)'
3 'Serviço de Convivência e Fortalecimento de Vínculos'
4 'Serviço de PSB no domicílio'
5 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'
6 ' Concessão de Benefícios Eventuais'
7 ' Programa Criança Feliz'
8  'Programa Bolsa Família e condicionalidades'
99 'Outros'
/q70_16
1 'Atividades de gestão (administrativo)'
2 'Serviço de Proteção e Atendimento Integral à Família (PAIF)'
3 'Serviço de Convivência e Fortalecimento de Vínculos'
4 'Serviço de PSB no domicílio'
5 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'
6 ' Concessão de Benefícios Eventuais'
7 ' Programa Criança Feliz'
8  'Programa Bolsa Família e condicionalidades'
99 'Outros'
/q70_17
1 'Atividades de gestão (administrativo)'
2 'Serviço de Proteção e Atendimento Integral à Família (PAIF)'
3 'Serviço de Convivência e Fortalecimento de Vínculos'
4 'Serviço de PSB no domicílio'
5 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'
6 ' Concessão de Benefícios Eventuais'
7 ' Programa Criança Feliz'
8  'Programa Bolsa Família e condicionalidades'
99 'Outros'
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
/Porte_pop2022
1 ' Pequeno I'
2 ' Pequeno II'
3 'Médio'
4 'Grande'
5 'Metropole'
/Regiao 
1 "Região Norte"
2 "Região Nordeste"
3 "Região Sudeste"
4 "Região Sul"
5 "Região Centro Oeste" 
/Q_incompleto
0    'completo'
1    'incompleto'
.
