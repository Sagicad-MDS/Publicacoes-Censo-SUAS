* Encoding: windows-1252.
RENAME VARIABLES		
codigo_ibge	=	IBGE
v14487	=	q12_1
v14508	=	q12_2
v14509	=	q12_3
v14510	=	q12_4
v14511	=	q12_5
v14512	=	q12_6
v14513	=	q12_7
v14514	=	q12_8
v14515	=	q12_9
v14516	=	q12_10
v14517	=	q12_11
v14518	=	q12_12
v14519	=	q12_13
IBGE7	=	IBGE7
Nome_UF	=	UF
Região	=	Regiao
Município	=	Município
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2
Q_completo 	=	Q_completo.



VARIABLE LABELS
IBGE'IBGE_codigo_ibge_IBGE'
q12_1'q12_1_v14487_12.1. Nome completo'
q12_2'q12_2_v14508_12.2. Data de Nascimento DD/MM/AAAA'
q12_3'q12_3_v14509_12.3. Sexo'
q12_4'q12_4_v14510_12.4. Número do CPF'
q12_5'q12_5_v14511_12.5. Dados do RG Número'
q12_6'q12_6_v14512_12.6. Dados do RG Órgão emissor'
q12_7'q12_7_v14513_12.7. Dados do RG UF'
q12_8'q12_8_v14514_12.8. Escolaridade'
q12_9'q12_9_v14515_12.9. Profissão'
q12_10'q12_10_v14516_12.10. Vínculo'
q12_11'q12_11_v14517_12.11. Função'
q12_12'q12_12_v14518_12.12. Carga horária SEMANAL'
q12_13'q12_13_v14519_12.13. Início do Mandato DD/MM/AAAA'
IBGE7 'IBGE7_codigo IBGE com 7 digitos'
UF 'Nome_UF_UF'
Regiao'Regiao_Região'
Município 'Município_Município'
Pop_total_2010'Pop_total_2010_Pop_total_2010'
Pop_Urbana2010'Pop_Urbana2010_Pop_Urbana2010'
Pop_Rural2010'Pop_Rural2010_Pop_Rural2010'
Porte_pop2010'Porte_pop2010_Porte_pop2010'
areaKm2 'area Km2_area Km2'
Q_completo 'Q_completo _Q_completo _questionarios completos'.



VALUE LABELS
/q12_3
1' Feminino'
2' Masculino'
/q12_8
261' Doutorado'
253' Ensino Fundamental Completo'
252' Ensino Fundamental Incompleto'
255' Ensino Médio Completo'
254' Ensino Médio Incompleto'
258' Especialização'
260' Mestrado'
257' Ensino Superior Completo'
256' Ensino Superior Incompleto'
251' Sem Escolaridade'
/q12_9
273' Assistente Social'
274' Psicólogo (a)'
275' Pedagogo (a)'
232' Advogado (a)'
235' Administrador (a)'
234' Antropólogo (a)'
276' Sociólogo (a)'
278' Fisioterapeuta'
283' Cientista político(a)'
279' Nutricionista'
282' Médico(a)'
372' Musicoterapeuta'
233' Terapeuta Ocupacional'
236' Economista'
371' Economista Doméstico'
281' Enfermeiro (a)'
240' Analista de sIstema'
241' Programador(a)'
237' Outro(a) profissional de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
420' Administração Pública/Gestão Pública'
/q12_10
292' Comissionado (a)'
139' Empregado (a) Público (a) Celetista (CLT)'
142' Outro vínculo não permanente'
266' Servidor (a) Temporário (a)'
138' Servidor/Estatutário (a)'
293' Terceirizado (a)'
264' Trabalhador (a) de Empresa/ Cooperativa/ Entidade Prestadora de Serviços'
265' Voluntário (a)'
291' Sem vínculo'
/q12_11
251' Apoio Administrativo'
21' Coordenador(a)'
248' Educador(a)/Orientador(a) Social'
253' Estagiário(a)'
48' Gestor(a)'
389' Ordenador(a) de Despesas'
252' Serviços Gerais (limpeza, conservação, motoristas, etc)'
250' Técnico(a) de nível Médio'
249' Técnico(a) de nível superior'
254' Outros'
/q12_12
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
.

OUTPUT SAVE NAME=Document1
 OUTFILE='C:\Users\João\Desktop\Fundo Municipal\RH\Output_5_6_e_7.spv'
 LOCK=NO.