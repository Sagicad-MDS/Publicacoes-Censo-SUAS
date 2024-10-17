

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
Regi�o	=	Regiao
Munic�pio	=	Municipio
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
q13_4'q13_4 N�mero do CPF'
q13_5'q13_5 Dados do RG N�mero'
q13_6'q13_6 Dados do RG �rg�o emissor'
q13_7'q13_7 Dados do RG UF'
q13_8'q13_8 Escolaridade'
q13_9'q13_9 Profiss�o'
q13_10'q13_10 V�nculo'
q13_11'q13_11 Fun��o'
q13_12'q13_12 Carga hor�ria SEMANAL'
q13_13'q13_13 In�cio do Mandato DD/MM/AAAA' 
IBGE7'IBGE7'
UF'UF'
Regiao'Regi�o'
Municipio'Munic�pio'
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
255' Ensino M�dio Completo'
254' Ensino M�dio Incompleto'
258' Especializa��o'
260' Mestrado'
257' Ensino Superior Completo'
256' Ensino Superior Incompleto'
251' Sem Escolaridade'
/q13_9
273' Assistente Social'
274' Psic�logo (a)'
275' Pedagogo (a)'
232' Advogado (a)'
235' Administrador (a)'
234' Antrop�logo (a)'
276' Soci�logo (a)'
278' Fisioterapeuta'
283' Cientista pol�tico(a)'
279' Nutricionista'
282' M�dico(a)'
372' Musicoterapeuta'
233' Terapeuta Ocupacional'
236' Economista'
371' Economista Dom�stico'
281' Enfermeiro (a)'
240' Analista de sIstema'
241' Programador(a)'
237' Outro(a) profissional de n�vel superior'
238' Profissional de n�vel m�dio'
239' Sem forma��o profissional'
419' Profissional de Educa��o F�sica'
416' Contador'
417' Ge�grafo'
420' Administra��o p�blica/Gest�o p�blica'
/q13_10
292' Comissionado (a)'
139' Empregado (a) P�blico (a) Celetista (CLT)'
142' Outro v�nculo n�o permanente'
266' Servidor (a) Tempor�rio (a)'
138' Servidor/Estatut�rio (a)'
293' Terceirizado (a)'
264' Trabalhador (a) de Empresa/ Cooperativa/ Entidade Prestadora de Servi�os'
265' Volunt�rio (a)'
291'Sem v�nculo'
/q13_11
251' Apoio Administrativo'
21' Coordenador(a)'
248' Educador(a)/Orientador(a) Social'
253'Estagi�rio(a)'
48' Gestor(a)'
389' Ordenador(a) de Despesas'
252' Servi�os Gerais (limpeza, conserva��o, motoristas, etc)'
250' T�cnico(a) de n�vel M�dio'
249' T�cnico(a) de n�vel superior'
254'Outros'
/q13_12
263' De 41 a 44 horas semanais'
262' At� 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
391' Mais de 44 horas semanais' 
/UF
11 "Rondonia"
12 "Acre"
13 "Amazonas"
14 "Roraima"
15  "Par�"
16 "Amap�"
17 "Tocantins"
21 "Maranh�o"
22 "Piaui"
23 "Cear�"
24 "Rio Grande do Norte"
25 "Para�ba"
26 "Pernambuco"
27 "Alagoas"
28 "Sergipe"
29 "Bahia"
31 "Minas gerais"
32 "Espirito Santo"
33 "Rio de Janeiro"
35 "S�o Paulo"
41 "Paran�"
42 "Santa Catarina"
43  "Rio Grande do Sul"
50 "Mato Grosso do Sul"
51 "Mato Grosso"
52 "Goi�s"
53 "Distrito Federal"
/Regiao 
1 "Regi�o Norte"
2 "Regi�o Nordeste"
3 "Regi�o Sudeste"
4 "Regi�o Sul"
5 "Regi�o Centro Oeste" 
/Porte_pop2022
1 "Pequeno I"
2 "Pequeno II"
3 "M�dio"
4 "Grande"
5 "Metr�pole" 
/Q_incompleto
0   'completo'
1    'incompleto'
.






