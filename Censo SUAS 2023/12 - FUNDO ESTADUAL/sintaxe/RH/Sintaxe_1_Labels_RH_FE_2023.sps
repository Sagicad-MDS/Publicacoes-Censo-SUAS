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
Região	=	Regiao
Q_incompleto 	=	Q_incompleto.




VARIABLE LABELS
IBGE'codigo_ibge_IBGE'
q25_1'q25_1_v14487_25.1. Nome completo'
q25_2'q25_2_v14508_25.2. Data de Nascimento DD/MM/AAAA'
q25_3'q25_3_v14509_25.3. Sexo'
q25_4'q25_4_v14510_25.4. Número do CPF'
q25_5'q25_5_v14511_25.5. Dados do RG Número'
q25_6'q25_6_v14512_25.6. Dados do RG Órgão emissor'
q25_7'q25_7_v14513_25.7. Dados do RG UF'
q25_8'q25_8_v14514_25.8. Escolaridade'
q25_9'q25_9_v14515_25.9. Profissão'
q25_10'q25_10_v14516_25.10. Vínculo'
q25_11'q25_11_v14517_25.11. Função'
q25_12'q25_12_v14518_25.12. Carga horária SEMANAL'
q25_13'q25_13_v14519_25.13. Início do Mandato (DD/MM/AAA)'
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
255' Ensino Médio Completo'
254' Ensino Médio Incompleto'
258' Especialização'
260' Mestrado'
257' Ensino Superior Completo'
256' Ensino Superior Incompleto'
251' Sem Escolaridade'
/q25_9
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
419' Profissional de Educação Física'
416' Contador'
417' Geógrafo'
420' Administração pública/Gestão pública'
/q25_10
292' Comissionado (a)'
139' Empregado (a) Público (a) Celetista (CLT)'
142' Outro vínculo não permanente'
266' Servidor (a) Temporário (a)'
138' Servidor/Estatutário (a)'
293' Terceirizado (a)'
264' Trabalhador (a) de Empresa/ Cooperativa/ Entidade Prestadora de Serviços'
265' Voluntário (a)'
291'Sem vínculo'
/q25_11
251' Apoio Administrativo'
21' Coordenador(a)'
248' Educador(a)/Orientador(a) Social'
253'Estagiário(a)'
48' Gestor(a)'
389' Ordenador(a) de Despesas'
252' Serviços Gerais (limpeza, conservação, motoristas, etc)'
250' Técnico(a) de nível Médio'
249' Técnico(a) de nível superior'
254'Outros'
/q25_12
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
0   'completo'
1    'incompleto'
.


