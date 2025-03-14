* Encoding: windows-1252.

RENAME VARIABLES		
id_acolhimento	=	NU_IDENTIFICADOR
codigo_ibge	=	IBGE
v11102	=	q51_1
v11103	=	q51_2
v11104	=	q51_3
v11105	=	q51_4
v11997	=	q51_5
v11106	=	q51_6
v11107	=	q51_7
v11108	=	q51_8
v11110	=	q51_9
v11111	=	q51_10
v11112	=	q51_11
v11113	=	q51_12
v11114	=	q51_13
v11115	=	q51_14
IBGE7	=	IBGE7
codigo_UF   =	UF
Regi�o	=	Regiao
Munic�pio	=	Munic�pio
areaKm2	=	areaKm2
Nome_UF  =   Nome_UF
Pop_total_2022	=	Pop_total_2022
Porte_pop2022	=	Porte_pop2022
Q_incompleto 	=	Q_incompleto 
Natureza  =  Natureza  .



VARIABLE LABELS
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_acolhimento_NU_IDENTIFICADOR'
IBGE'IBGE_codigo_ibge_IBGE'
q51_1 'q51_1_v11102_51.1. Nome Completo'
q51_2 'q51_2_v11103_51.2. Data de nascimento'
q51_3 'q51_3_v11104_51.3. SEXO'
q51_4 'q51_4_v11105_51.4. CPF'
q51_5 'q51_5_v11997_51.5. E-mail'
q51_6 'q51_6_v11106_51.6. RG � N�mero'
q51_7 'q51_7_v11107_51.7. RG � �rg�o Emissor'
q51_8 'q51_8_v11108_51.8. RG � UF'
q51_9 'q51_9_v11110_51.9. Escolaridade'
q51_10 'q51_10_v11111_51.10. Profiss�o'
q51_11 'q51_11_v11112_51.11. V�nculo'
q51_12 'q51_12_v11113_51.12. Fun��o'
q51_13 'q51_13_v11114_51.13. Carga hor�ria'
q51_14 'q51_14_v11115_51.14. Inicio do exerc�cio da fun��o'
IBGE7'IBGE7'
UF'UF'
Regiao'Regiao'
Munic�pio'Munic�pio'
areaKm2'areaKm2'
Nome_UF 'Nome_UF'
Pop_total_2022'Pop_total_2022'
Porte_pop2022 'Porte_pop2022'
Q_incompleto 'Q_incompleto'
Natureza 'Unidade Estadual ou Municipal'.





VALUE LABELS
/q51_3
1' MASCULINO'
0' FEMININO'
/q51_9
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
/q51_10
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
233' Terapeuta Ocupacional'
236' Economista'
281' Enfermeira(o)'
240' Analista de Sistemas'
241' Programador(a)'
237' Outra forma��o de n�vel superior'
238' Profissional de n�vel m�dio'
239' Sem forma��o profissional'
419' Profissional de educa��o f�sica'
416' Contador'
417' Ge�grafo'
371' Economista Dom�stico'
420' Administra��o P�blica/Gest�o P�blica'
372' Musicoterapeuta'
/q51_11
362' Empregada(o) Celetista do Setor Privado'
293' Terceirizada(o)'
142' Outro v�nculo n�o permanente'
264' Trabalhador(a) de empresa/cooperativa/entidade prestadora de servi�o'
265' Volunt�ria(o)'
291' Sem v�nculo'
138' Servidor(a)/Estatut�rio(a)'
266' Servidor(a) Tempor�rio(a)'
139' Empregada(o) P�blica(o) Celetista'
292' Comissionado'
/q51_12
21' Coordenador(a)'
218' T�cnico(a) de N�vel Superior'
249' T�cnico(a) de N�vel Superior'
250' T�cnico(a) de N�vel M�dio'
349' Cuidador(a)'
368' Auxiliar de Cuidador(a)'
216' Apoio Administrativo'
350' Cuidador(a) Residente'
372' Motorista'
371' Cozinheiro(a)'
408' Seguran�a'
220' Servi�os Gerais'
253' Estagi�rio(a)'
217' Educador(a)/Orientador(a) Social'
248' Educador(a)/Orientador(a) Social'
254' Outros'
388' Fam�lia Acolhedora'
/q51_13
262' At� 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
391' Mais de 44 horas semanais'
/Nome_UF
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
/Natureza
1 'Estadual'
2 'Municipal'
/Porte_pop2022
1'Pequeno I'
2'Pequeno II'
3'M�dio'
4'Grande'
5'Metropole'
.





