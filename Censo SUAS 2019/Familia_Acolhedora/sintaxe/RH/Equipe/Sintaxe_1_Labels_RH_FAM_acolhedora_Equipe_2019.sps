RENAME VARIABLES		
codigo_ibge	=	IBGE
id_acolhimento	=	NU_IDENTIFICADOR
v12774	=	q33_1
v12775	=	q33_2
v12776	=	q33_3
v12777	=	q33_4
v12778	=	q33_5
v12779	=	q33_6
v12780	=	q33_7
v12781	=	q33_8
v12782	=	q33_9
v12784	=	q33_10
v12785	=	q33_11
v12786	=	q33_12
v12787	=	q33_13
v12788	=	q33_14
IBGE7	=	IBGE7
Nome_UF	=	UF
Região	=	Regiao
Município	=	Município
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2
Q_completo 	=	Q_completo
Estado = Estado.



VARIABLE LABELS
IBGE'IBGE_codigo_ibge_IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_acolhimento_NU_IDENTIFICADOR'
q33_1'q33_1_v12774_33.1. Nome completo'
q33_2'q33_2_v12775_33.2. Data de Nascimento'
q33_3'q33_3_v12776_33.3. Sexo'
q33_4'q33_4_v12777_33.4. CPF'
q33_5'q33_5_v12778_33.5. E-mail'
q33_6'q33_6_v12779_33.6. RG - Número'
q33_7'q33_7_v12780_33.7. RG - Órgão Emissor'
q33_8'q33_8_v12781_33.8. RG - UF'
q33_9'q33_9_v12782_33.9. Escolaridade'
q33_10'q33_10_v12784_33.10. Profissão'
q33_11'q33_11_v12785_33.11. Vínculo'
q33_12'q33_12_v12786_33.12. Função'
q33_13'q33_13_v12787_33.13. Carga horária'
q33_14'q33_14_v12788_33.14. Início do Exercício da Função'
IBGE7 'IBGE7_codigo IBGE com 7 digitos'
UF 'Nome_UF_UF'
Regiao'Regiao_Região'
Município 'Município_Município'
Pop_total_2010'Pop_total_2010_Pop_total_2010'
Pop_Urbana2010'Pop_Urbana2010_Pop_Urbana2010'
Pop_Rural2010'Pop_Rural2010_Pop_Rural2010'
Porte_pop2010'Porte_pop2010_Porte_pop2010'
areaKm2 'area Km2_area Km2'
Q_completo 'Q_completo _Q_completo _questionarios completos'
Estado 'tipo de Unidade estadual ou Municipal'.



VALUE LABELS
/q33_3
1' Feminino'
2' Masculino'
/q33_9
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
/q33_10
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
/q33_11
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
/q33_12
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
/q33_13
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
/Q_completo
0    'completo'
1    'incompleto'
/Estado
1 'Estadual'
2 'Municipal'
.
