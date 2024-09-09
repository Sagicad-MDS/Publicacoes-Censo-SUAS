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
Regi�o	=	Regiao
Munic�pio	=	Munic�pio
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
q36_4'q36_4 N�mero do CPF'
q36_5'q36_5 Dados do RG - N�mero'
q36_6'q36_6 Dados do RG - �rg�o Emissor'
q36_7'q36_7 Dados do RG - UF'
q36_8'q36_8 Email'
q36_9'q36_9 Escolaridade'
q36_10'q36_10 Profiss�o'
q36_11'q36_11 V�nculo'
q36_12'q36_12 Fun��o'
q36_13'q36_13 Carga hor�ria�SEMANAL'
q36_14'q36_14 In�cio do exerc�cio da fun��o'
IBGE7		'IBGE7'
UF	'UF'
Regiao		'Regiao'
Munic�pio		'Munic�pio'
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
254' M�dio Incompleto'
255' M�dio Completo'
256' Superior Incompleto'
257' Superior Completo'
258' Especializa��o'
260' Mestrado'
261' Doutorado'
/q36_10
273' Assistente Social'
274' Psic�loga(o)'
275' Pedagoga(o)'
232' Advogada(o)'
235' Administrador(a)'
234' Antrop�loga(o)'
276' Soci�loga(o)'
278' Fisioterapeuta'
283' Cientista Pol�tica(o)'
279' Nutricionista'
282' M�dica(o)'
372' Musicoterapeuta'
233' Terapeuta Ocupacional'
236' Economista'
371' Economista Dom�stica(o)'
281' Enfermeira(o)'
240' Analista de Sistema'
241' Programador(a)'
237' Outra forma��o de n�vel superior'
238' Profissional de n�vel m�dio'
239' Sem forma��o profissional'
419' Profissional de educa��o f�sica'
416' Contador'
417' Ge�grafo'
420 'Administra��o p�blica/Gest�o'
/q36_11
292' Comissionado'
138' Servidor Estatut�rio'
266' Servidor Tempor�rio'
361' Empregado P�blico Celetista - CLT'
362' Empregado Celetista do Setor Privado'
293' Terceirizado'
142' Outro v�nculo n�o permanente'
265' Volunt�rio'
/q36_12
21' Coordenador(a)'
217' Educador(a) Social'
216' Apoio Administrativo'
253' Estagi�rio(a)'
220' Servi�os Gerais'
218' T�cnico(a) de n�vel superior'
254' Outros'
/q36_13
262' At� 10 horas semanais'
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
/Porte_pop2022
1 ' Pequeno I'
2 ' Pequeno II'
3 'M�dio'
4 'Grande'
5 'Metropole'
/Regiao 
1 "Regi�o Norte"
2 "Regi�o Nordeste"
3 "Regi�o Sudeste"
4 "Regi�o Sul"
5 "Regi�o Centro Oeste" 
/Q_incompleto
0    'completo'
1    'incompleto'
/q1
1 'Estadual'
2 ' Municipal'
.



