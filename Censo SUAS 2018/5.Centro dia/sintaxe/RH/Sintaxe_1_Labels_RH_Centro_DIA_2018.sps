RENAME VARIABLES		
codigo_ibge	=	IBGE
id_protecao_especial	=	NU_IDENTIFICADOR
v11484	=	q_40_1
v11485	=	q_40_2
v11486	=	q_40_3
v11487	=	q_40_4
v11488	=	q_40_5
v11489	=	q_40_6
v11490	=	q_40_7
v11965	=	q_40_8
v11491	=	q_40_9
v11492	=	q_40_10
v11493	=	q_40_11
v11494	=	q_40_12
v11495	=	q_40_13
v11496	=	q_40_14
Q_Municipio	=	Q_Municipio
Q_completo	=	Q_completo
IBGE7	=	IBGE7
Nome_UF	=	UF
Regi�o	=	Regiao
Munic�pio	=	Munic�pio
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2
.


VARIABLE LABELS
IBGE	'IBGE_codigo_ibge'
NU_IDENTIFICADOR	'NU_IDENTIFICADOR_id_protecao_especial'
q_40_1	'q_40_1_v11484_Nome Completo'
q_40_2	'q_40_2_v11485_Data de Nascimento'
q_40_3	'q_40_3_v11486_Sexo'
q_40_4	'q_40_4_v11487_N�mero do CPF'
q_40_5	'q_40_5_v11488_RG - N�mero'
q_40_6	'q_40_6_v11489_RG - �rg�o Emissor'
q_40_7	'q_40_7_v11490_RG - UF'
q_40_8	'q_40_8_v11965_Email'
q_40_9	'q_40_9_v11491_Escolaridade'
q_40_10	'q_40_10_v11492_Profiss�o'
q_40_11	'q_40_11_v11493_V�nculo'
q_40_12	'q_40_12_v11494_Fun��o'
q_40_13	'q_40_13_v11495_Carga hor�ria SEMANAL'
q_40_14	'q_40_14_v11496_In�cio do exerc�cio da fun��o'
Q_Municipio	'Q_Municipio_Caracteriza��o da Unidade se Municipal ou Estadual.'
Q_completo	'Q_completo_questionarios completos'
IBGE7	'IBGE7'
UF	'UF_Nome_UF'
Regiao	'Regi�o'
Munic�pio	'Munic�pio'
Pop_total_2010	'Pop_total_2010'
Pop_Urbana2010	'Pop_Urbana2010'
Pop_Rural2010	'Pop_Rural2010'
Porte_pop2010	'Porte_pop2010'
areaKm2	'area Km2'.



VALUE LABELS
/q_40_3	
1 ' Feminino'	
2 ' Masculino'	
/q_40_9	
251 ' Sem Escolaridade'	
252 ' Ensino Fundamental Incompleto'	
253 ' Ensino Fundamental Completo'	
254 ' Ensino M�dio Incompleto'	
255 ' Ensino M�dio Completo'	
256 ' Ensino Superior Incompleto'	
257 ' Ensino Superior Completo'	
258 ' Especializa��o'	
260 ' Mestrado'	
261 ' Doutorado'	
/q_40_10	
273 ' Assistente Social'	
274 ' Psic�loga(o)'	
275 ' Pedagoga(o)'	
232 ' Advogada(o)'	
235 ' Administrador(a)'	
234 ' Antrop�loga(o)'	
276 ' Soci�loga(o)'	
278 ' Fisioterapeuta'	
283 ' Cientista Pol�tica(o)'	
279 ' Nutricionista'	
282 ' M�dica(o)'	
372 ' Musicoterapeuta'	
233 ' Terapeuta Ocupacional'	
236 ' Economista'	
371 ' Economista Dom�stica(o)'	
281 ' Enfermeira(o)'	
240 ' Analista de Sistema'	
241 ' Programador(a)'	
237 ' Outra forma��o de n�vel superior'	
238 ' Profissional de n�vel m�dio'	
239 ' Sem forma��o profissional'	
/q_40_11	
292 ' Comissionado'	
138 ' Servidor Estatut�rio'	
266 ' Servidor Tempor�rio'	
139 ' Empregado P�blico (CLT)'	
361 ' Empregado P�blico (CLT)'	
293 ' Terceirizado'	
363 ' Empregado Celetista do setor privado CLT'	
142 ' Outro v�nculo n�o permanente'	
265 ' Volunt�rio'	
/q_40_12	
21 ' Coordenador(a)/ Dirigente'	
218 ' T�cnica(o) de n�vel superior'	
250 ' T�cnica(o) de N�vel M�dio'	
349 ' Cuidador(a)'	
368 ' Auxiliar de Cuidador(a)'	
216 ' Apoio Administrativo'	
372 ' Motorista'	
371 ' Cozinheira(o)'	
408 ' Seguran�a'	
220 ' Servi�os Gerais'	
221 ' Estagi�rio(a)'	
217 ' Orientador/Educador(a) Social'	
254 ' Outros'	
/q_40_13	
263 ' De 41 a 44 horas semanais'	
262 ' At� 10 horas semanais'	
272 ' De 11 a 20 horas semanais'	
18 ' De 21 a 30 horas semanais'	
20 ' De 31 a 40 horas semanais'	
391 ' Mais de 44 horas semanais'	
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
/Q_completo
1    'completo'
2    'incompleto'
/Q_Municipio
0 "Estadual"
1 "Municipal"
.


