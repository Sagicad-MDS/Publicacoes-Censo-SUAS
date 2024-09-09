RENAME VARIABLES		
codigo_ibge	=	IBGE
id_convivencia	=	NU_IDENTIFICADOR
v10716	=	q36_1
co_seq_dirigente	=	co_seq_dirigente
v10718	=	q36_2
v10719	=	q36_3
v10720	=	q36_4
v10721	=	q36_5
v10722	=	q36_6
v10723	=	q36_7
v11952	=	q36_8
v10724	=	q36_9
v10726	=	q36_10
v10727	=	q36_11
v10729	=	q36_12
v10730	=	q36_13
v10731	=	q36_14
IBGE7	=	IBGE7
codigo_UF	=	UF
Região	=	Regiao
Município	=	Município
areaKm2	=	areaKm2
Nome_UF  = Nome_UF
Pop_total_2022 = Pop_total_2022
Porte_pop2022 = Porte_pop2022
Q_incompleto 	=	Q_incompleto 
q1=q1
.




VARIABLE LABELS
IBGE'IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR'
q36_1'q36_1 Nome Completo'
co_seq_dirigente'co_seq_dirigente'
q36_2'q36_2 Data de nascimento'
q36_3'q36_3 Sexo'
q36_4'q36_4 Número do CPF'
q36_5'q36_5 Dados do RG - Número'
q36_6'q36_6 Dados do RG - Órgão Emissor'
q36_7'q36_7 Dados do RG - UF'
q36_8'q36_8 Email'
q36_9'q36_9 Escolaridade'
q36_10'q36_10 Profissão'
q36_11'q36_11 Vínculo'
q36_12'q36_12 Função'
q36_13'q36_13 Carga horária SEMANAL'
q36_14'q36_14 Início do exercício da função'
IBGE7		'IBGE7'
UF	'UF'
Regiao		'Regiao'
Município		'Município'
areaKm2		'areaKm2'
Nome_UF  ' Nome_UF'
Pop_total_2022  'Pop_total_2022'
Porte_pop2022  'Porte_pop2022'
Q_incompleto 		'Q_incompleto '
q1 ' q1 natureza da Unidade'
.




VALUE LABELS
/q36_3
0 ' Feminino'
1 ' Masculino'
/q36_9
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
/q36_10
273' Assistente Social'
274' Psicóloga(o)'
275' Pedagoga(o)'
232' Advogada(o)'
235' Administrador(a)'
234' Antropóloga(o)'
276' Socióloga(o)'
278' Fisioterapeuta'
283' Cientista Política(o)'
279' Nutricionista'
282' Médica(o)'
372' Musicoterapeuta'
233' Terapeuta Ocupacional'
236' Economista'
371' Economista Doméstica(o)'
281' Enfermeira(o)'
240' Analista de Sistema'
241' Programador(a)'
237' Outra formação de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
420 'Administração pública/Gestão'
/q36_11
292' Comissionado'
138' Servidor Estatutário'
266' Servidor Temporário'
361' Empregado Público Celetista - CLT'
362' Empregado Celetista do Setor Privado'
293' Terceirizado'
142' Outro vínculo não permanente'
265' Voluntário'
/q36_12
21' Coordenador(a)'
217' Educador(a) Social'
216' Apoio Administrativo'
253' Estagiário(a)'
220' Serviços Gerais'
218' Técnico(a) de nível superior'
254' Outros'
/q36_13
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
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
/q1
1 'Estadual'
2 ' Municipal'
.



