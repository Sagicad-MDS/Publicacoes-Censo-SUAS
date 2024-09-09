* Encoding: UTF-8.

RENAME VARIABLES		
codigo_ibge	=	IBGE
v14487	=	q25_1
v14508	=	q25_2
v14509	=	q25_3
v14510	=	q25_4
v14511	=	q25_5
v14512	=	q25_6
v14513	=	q25_7
v14514	=	q25_8
v14515	=	q25_9
v14516	=	q25_10
v14517	=	q25_11
v14518	=	q25_12
v14519	=	q25_13
Nome_UF	=	UF
Regi�o	=	Regiao
Q_incompleto 	=	Q_incompleto.




VARIABLE LABELS
IBGE'codigo_ibge_IBGE'
q25_1'q25_1_v14487_25.1. Nome completo'
q25_2'q25_2_v14508_25.2. Data de Nascimento DD/MM/AAAA'
q25_3'q25_3_v14509_25.3. Sexo'
q25_4'q25_4_v14510_25.4. N�mero do CPF'
q25_5'q25_5_v14511_25.5. Dados do RG N�mero'
q25_6'q25_6_v14512_25.6. Dados do RG �rg�o emissor'
q25_7'q25_7_v14513_25.7. Dados do RG UF'
q25_8'q25_8_v14514_25.8. Escolaridade'
q25_9'q25_9_v14515_25.9. Profiss�o'
q25_10'q25_10_v14516_25.10. V�nculo'
q25_11'q25_11_v14517_25.11. Fun��o'
q25_12'q25_12_v14518_25.12. Carga hor�ria SEMANAL'
q25_13'q25_13_v14519_25.13. In�cio do Mandato (DD/MM/AAA)'
UF 'UF_Nome_UF'
Regiao 'Regiao'
Q_incompleto 'Q_incompleto _questionarios incompletos'.


VALUE LABELS
/q25_3
1' Masculino'
0'Feminino'
/q25_8
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
/q25_9
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
/q25_10
292' Comissionado (a)'
139' Empregado (a) P�blico (a) Celetista (CLT)'
142' Outro v�nculo n�o permanente'
266' Servidor (a) Tempor�rio (a)'
138' Servidor/Estatut�rio (a)'
293' Terceirizado (a)'
264' Trabalhador (a) de Empresa/ Cooperativa/ Entidade Prestadora de Servi�os'
265' Volunt�rio (a)'
291'Sem v�nculo'
/q25_11
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
/q25_12
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
/Q_incompleto
0   'completo'
1    'incompleto'
.


