* Encoding: UTF-8.
*******Dados Gerais*****

RENAME VARIABLES		
v11355	=	q_62_1
v11357	=	q_62_2
v14720	=	q_62_3
v11356	=	q_62_4
v14721	=	q_62_5
v14723	=	q_62_6
v14722	=	q_62_7
v11361	=	q_62_8
v14725	=	q_62_9
v14726	=	q_62_10
v14727	=	q_62_11
v11359	=	q_62_12
v14728	=	q_62_13
v14729	=	q_62_14
v14730	=	q_62_15
v14731	=	q_62_16
v14732	=	q_62_17
.		


VARIABLE LABELS	
IBGE'IBGE_codigo_ibge_codigo IBGE'
q_62_1	'q_62_1_v11355_Nome:'
q_62_2	'q_62_2_v11357_Data de nascimento:'
q_62_3	'q_62_3_v14720_Sexo'
q_62_4	'q_62_4_v11356_N�mero do CPF:'
q_62_5	'q_62_5_v14721_Dados do RG: N�mero'
q_62_6	'q_62_6_v14723_Dados do RG: �rg�o Emissor'
q_62_7	'q_62_7_v14722_Dados do RG: UF'
q_62_8	'q_62_8_v11361_Email:'
q_62_9	'q_62_9_v14725_Escolaridade'
q_62_10	'q_62_10_v14726_Profiss�o'
q_62_11	'q_62_11_v14727_V�nculo'
q_62_12	'q_62_12_v11359_Cargo'
q_62_13	'q_62_13_v14728_Carga hor�ria SEMANAL'
q_62_14	'q_62_14_v14729_In�cio do Mandato (DD/MM/AAAA)'
q_62_15	'q_62_15_v14730_Principal �rea de atua��o'
q_62_16	'q_62_16_v14731_Segunda principal �rea de atua��o'
q_62_17	'q_62_17_v14732_Terceira principal �rea de atua��o'
IBGE7 'codigo IBGE 7 digitos'
UF 'UF'
Regiao 'Regi�o'
Municipio 'Municipio'
Pop_total_2010 'Popula��o  total'
Pop_Urbana2010 'popula��o urbana'
Pop_Rural2010 'popula��o rural'
Porte_pop2010 'porte'
areaKm2 '�rea'
.	

VALUE LABELS
/q_62_3
1 'Masculino'
2 'Feminino'
/q_62_9
251 'Sem Escolaridade'
252 'Ensino Fundamental Incompleto'
253 'Ensino Fundamental Completo'
254 'Ensino M�dio Incompleto'
255 'Ensino M�dio Completo'
256 'Ensino Superior Incompleto'
257 'Ensino Superior Completo'
258 'Especializa��o'
260 'Mestrado'
261 'Doutorado'
/q_62_10
273 'Assistente Social'
274 'Psic�loga(o)'
275 'Pedagoga(o)'
232 'Advogada(o)'
235 'Administrador (a)'
234 'Antrop�loga(o)'
276 'Soci�loga(o)'
278 'Fisioterapeuta'
283 'Cientista pol�tica(o)'
279 'Nutricionista'
282 'M�dica(o)'
371 'Musicoterapeuta'
233 'Terapeuta Ocupacional'
236 'Economista'
372 'Economista Dom�stica(o)'
281 'Enfermeira(o)'
240 'Analista de sistema'
241 'Programador(a)'
237 'Outra(o) profissional de n�vel superior'
238 'Profissional de n�vel m�dio'
239 'Sem forma��o profissional'
/q_62_11
292 'Comissionada(o)'
138 'Servidor(a)/Estatut�ria(o)'
266 'Servidor(a) Tempor�ria(o)'
139 'Empregada(o) P�blica(o) (CLT)'
293 'Terceirizada(o)'
142 'Outro v�nculo n�o permanente'
264 'Trabalhador(a) de Empresa/ Cooperativa/ Entidade Prestadora de Servi�os'
265 'Volunt�ria(o)'
291 'Sem v�nculo'
/q_62_12
216 'Apoio Administrativo'
21 'Coordenador(a)/Dirigente'
217 'Educador(a)/Orientador(a) Social'
221 'Estagi�ria(o)'
222 'Outros'
77 'Secret�ria(o)'
76 'Secret�ria(os) de Assist�ncia Social'
79 'Secret�ria(o) Executiva(o)'
220 'Servi�os Gerais'
219 'T�cnica(o) de N�vel M�dio'
218 'T�cnica(o) de N�vel Superior'
/q_62_13
262 'At� 10 horas semanais'
272 'De 11 a 20 horas semanais'
18 'De 21 a 30 horas semanais'
20 'De 31 a 40 horas semanais'
263 'De 41 a 44 horas semanais'
391 'Mais de 44 horas semanais'
/q_62_15
1 'Atividades de gest�o (administrativo)'
2 'Gest�o do SUAS'
3 'Vigil�ncia Socioassistencial'
4 'Gest�o do Trabalho'
5 'Regula��o do SUAS'
6 'Gest�o Financeira e Or�ament�ria'
7 'Prote��o Social B�sica'
8 'Prote��o Social Especial de M�dia Complexidade'
9 'Prote��o Social Especial de Alta Complexidade'
10 'Gest�o do Cadastro �nico e Programa Bolsa Fam�lia'
11 'Gest�o de Benef�cios Assistenciais (BPC, Benef�cios Eventuais)'
12 'Outros'
/q_62_16
1 'Atividades de gest�o (administrativo)'
2 'Gest�o do SUAS'
3 'Vigil�ncia Socioassistencial'
4 'Gest�o do Trabalho'
5 'Regula��o do SUAS'
6 'Gest�o Financeira e Or�ament�ria'
7 'Prote��o Social B�sica'
8 'Prote��o Social Especial de M�dia Complexidade'
9 'Prote��o Social Especial de Alta Complexidade'
10 'Gest�o do Cadastro �nico e Programa Bolsa Fam�lia'
11 'Gest�o de Benef�cios Assistenciais (BPC, Benef�cios Eventuais)'
12 'Outros'
/q_62_17
1 'Atividades de gest�o (administrativo)'
2 'Gest�o do SUAS'
3 'Vigil�ncia Socioassistencial'
4 'Gest�o do Trabalho'
5 'Regula��o do SUAS'
6 'Gest�o Financeira e Or�ament�ria'
7 'Prote��o Social B�sica'
8 'Prote��o Social Especial de M�dia Complexidade'
9 'Prote��o Social Especial de Alta Complexidade'
10 'Gest�o do Cadastro �nico e Programa Bolsa Fam�lia'
11 'Gest�o de Benef�cios Assistenciais (BPC, Benef�cios Eventuais)'
12 'Outros'
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
.


