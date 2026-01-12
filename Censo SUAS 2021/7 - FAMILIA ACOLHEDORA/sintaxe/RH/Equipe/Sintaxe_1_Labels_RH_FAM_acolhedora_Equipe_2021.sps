RENAME VARIABLES		
codigo_ibge	=	IBGE
id_acolhimento	=	NU_IDENTIFICADOR
v12774	=	q37_1
v12775	=	q37_2
v12776	=	q37_3
v12777	=	q37_4
v12778	=	q37_5
v12779	=	q37_6
v12780	=	q37_7
v12781	=	q37_8
v12782	=	q37_9
v12784	=	q37_10
v12785	=	q37_11
v12786	=	q37_12
v12787	=	q40_13
v12788	=	q37_13
IBGE7	=	IBGE7
Nome_UF	=	UF
Região	=	Regiao
Município	=	Município
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2
Q_incompleto 	=	Q_incompleto
Estadual = Estadual
.

RENAME VARIABLES	
q37_1	=	q40_1
q37_2	=	q40_2
q37_3	=	q40_3
q37_4	=	q40_4
q37_5	=	q40_5
q37_6	=	q40_6
q37_7	=	q40_7
q37_8	=	q40_8
q37_9	=	q40_9
q37_10	=	q40_10
q37_11	=	q40_11
q37_12	=	q40_12
q40_13	=	q40_13
q37_13	=	q40_14.






VARIABLE LABELS
IBGE'IBGE_codigo_ibge_IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_acolhimento_NU_IDENTIFICADOR'
q40_1'q40_1_q37_1_37.1. Nome completo'
q40_2'q40_2_q37_2_37.2. Data de Nascimento'
q40_3'q40_3_q37_3_37.3. Sexo'
q40_4'q40_4_q37_4_37.4. CPF'
q40_5'q40_5_q37_5_37.5. E-mail'
q40_6'q40_6_q37_6_37.6. RG - Número'
q40_7'q40_7_q37_7_37.7. RG - Órgão Emissor'
q40_8'q40_8_q37_8_37.8. RG - UF'
q40_9'q40_9_q37_9_37.9. Escolaridade'
q40_10'q40_10_q37_10_37.10. Profissão'
q40_11'q40_11_q37_11_37.11. Vínculo'
q40_12'q40_12_q37_12_37.12. Função'
q40_13'q40_13_q40_13_40.13. Carga horária'
q40_14'q40_14_q37_13_37.13. Início do Exercício da Função'
IBGE7 'IBGE7_codigo IBGE com 7 digitos'
UF 'Nome_UF_UF'
Regiao'Regiao_Região'
Município 'Município_Município'
Pop_total_2010'Pop_total_2010_Pop_total_2010'
Pop_Urbana2010'Pop_Urbana2010_Pop_Urbana2010'
Pop_Rural2010'Pop_Rural2010_Pop_Rural2010'
Porte_pop2010'Porte_pop2010_Porte_pop2010'
areaKm2 'area Km2_area Km2'
Q_incompleto 'Q_incompleto _Q_incompleto _questionarios incompletos'
Estadual 'Unidade Estadual ou Municipal'.



VALUE LABELS
/q40_3
0' Feminino'
1' Masculino'
/q40_9
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
/q40_10
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
281' Enfermeiro'
371' Economista Doméstica(o)'
240' Analista de Sistema'
241' Programador'
237' Outra formação de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
/q40_11
362' Empregada(o) Privada(o) (CLT)'
293' Terceirizada(o)'
142' Outro vínculo não permanente'
264' Trabalhador(a) de Empresa/Cooperativa/Entidade prestadora de serviços'
265' Voluntária(o)'
291' Sem Vínculo'
292' Comissionada(o)'
138' Servidor(a) Estatutária(o)'
266' Servidor(a) Temporária(o)'
139' Empregada(o) Pública(o) (CLT)'
/q40_12
21' Coordenador(a)'
218' Técnico(a) de nível superior'
349' Cuidador(a)'
368' Auxiliar de Cuidador(a)'
217' Educador(a) Social'
216' Apoio Administrativo'
253' Estagiário(a)'
220' Serviços Gerais'
254' Outros'
350' Cuidador(a) Residente'
371' Cozinheiro(a)'
372' Motorista'
388' Família Acolhedora'
/q40_13
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
/Q_incompleto
0    'completo'
1    'incompleto'
/Estadual
1 'Estadual'
2 'Municipal'
.
