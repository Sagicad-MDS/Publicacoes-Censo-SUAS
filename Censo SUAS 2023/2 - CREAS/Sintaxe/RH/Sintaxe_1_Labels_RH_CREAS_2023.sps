* Encoding: UTF-8.

***base não possui varial RG_UF  q47_7
***corrigir  variavel sexo.  masculino 1 e feminino 0.


RENAME VARIABLES		
codigo_ibge	=	IBGE
id_creas	=	NU_IDENTIFICADOR
v10581	=	q47_1
co_seq_dirigente	=	co_seq_dirigente
v10582	=	q47_2
v10583	=	q47_3
v10584	=	q47_4
v10585	=	q47_5
v10586	=	q47_6
v10588	=	q47_8
v10589	=	q47_9
v10590	=	q47_10
v10591	=	q47_11
v10592	=	q47_12
v10593	=	q47_13
v10594	=	q47_14
v10595	=	q47_15
IBGE7	=	IBGE7
codigo_UF	=	UF
Região	=	Regiao
Município	=	Município
areaKm2	=	areaKm2
Nome_UF =  Nome_UF
Pop_total_2022= Pop_total_2022
Porte_pop2022 = Porte_pop2022
Q_incompleto 	=	Q_incompleto
q1 = q1
.


**************************************************************************************


VARIABLE LABELS
IBGE'IBGE_codigo_ibge_IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_creas_NU_IDENTIFICADOR'
q47_1'q47_1_v10581_47.1. Nome Completo'
co_seq_dirigente'co_seq_dirigente_co_seq_dirigente_co_seq_dirigente'
q47_2'q47_2_v10582_47.2. Data de Nascimento'
q47_3'q47_3_v10583_47.3. Sexo'
q47_4'q47_4_v10584_47.4. Número do CPF'
q47_5'q47_5_v10585_47.5. RG - Número'
q47_6'q47_6_v10586_47.6. RG - Órgão Emissor'
q47_8'q47_8_v10588_47.8. Escolaridade'
q47_9'q47_9_v10589_47.9. Profissão'
q47_10'q47_10_v10590_47.10. Vínculo'
q47_11'q47_11_v10591_47.11. Função'
q47_12'q47_12_v10592_47.12. Carga horária SEMANAL'
q47_13'q47_13_v10593_47.13. Início do exercício da função'
q47_14'q47_14_v10594_47.14. Principal serviço/atividade'
q47_15'q47_15_v10595_47.15. Segundo principal serviço/atividade'
IBGE7 'IBGE7_codigo IBGE com 7 digitos'
UF 'UF'
Regiao'Região'
Município 'Município'
areaKm2 'area Km2'
Nome_UF' Nome_UF'
Pop_total_2022 'Pop_total_2022'
Porte_pop2022 ' Porte_pop2022'
Q_incompleto 'questionarios incompletos'
q1 'Tipo de CREAS'
.



VALUE LABELS
/q47_3
0' Feminino'
1' Masculino'
/q47_8
251'Sem Escolaridade'
252' Fundamental Incompleto'
253' Fundamental Completo'
254' Médio Incompleto'
255' Médio Completo'
256' Superior Incompleto'
257'Superior Completo'
258' Especialização'
260'Mestrado'
261' Doutorado'
/q47_9
273'Assistente Social'
274' Psicóloga(o)'
275' Pedagoga(o)'
232'Advogada(o)'
235' Administrador(a)'
234' Antropóloga(o)'
276'Socióloga(o)'
278' Fisioterapeuta'
283' Cientista Política(o)'
279' Nutricionista'
282'Médica(o)'
372'Musicoterapeuta'
233' Terapeuta Ocupacional'
236' Economista'
371' Economista Doméstica(o)'
281' Enfermeira(o)'
240'Analista de Sistema'
241' Programador(a)'
237'Outra(o) profissional de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de Educação Física'
416' Contador'
417' Geógrafo'
420 'Administração pública/Gestão'
/q47_10
292' Comissionada(o)'
139' Empregada(o) Pública(o) (CLT)'
142' Outro vínculo não permanente'
266' Servidor(a) Temporária(o)'
138' Servidor(a)/Estatutário(a)'
293' Terceirizada(o)'
264'Trabalhador(a) de Empresa, Cooperativa ou Entidade Prestadora de Serviços'
265' Voluntária(o)'
291'Sem vínculo'
/q47_11
251' Apoio Administrativo'
21' Coordenador(a)'
248' Educador(a) Social'
253'Estagiário(a)'
252'Serviços Gerais (limpeza, conservação, motoristas, etc.)'
250' Técnico(a) de nível médio'
249' Técnico(a) de nível superior'
254' Outros'
/q47_12
247' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
391' Mais de 44 horas semanais'
/q47_14
1' Atividades de gestão (administrativo)'
2' Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos'
3' Serviço de Medida Socioeducativa (Liberdade Assistida ou Prestação de Serviço a Comunidade)'
4' Serviço Especializado em Abordagem Social'
5' Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos e suas Famílias'
6' Concessão Benefícios Eventual'
7' Cadastramento e/ou Atualização cadastral (Cadúnico)'
99' Outros'
/q47_15
1' Atividades de gestão (administrativo)'
2' Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos'
3' Serviço de Medida Socioeducativa (Liberdade Assistida ou Prestação de Serviço a Comunidade)'
4' Serviço Especializado em Abordagem Social'
5' Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos e suas Famílias'
6' Concessão Benefícios Eventual'
7' Cadastramento e/ou Atualização cadastral (Cadúnico)'
99' Outros'
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
/Porte_pop2022
1 'Pequeno I'
2 'Pequeno II'
3 'Medio'
4 'Grande'
5 'Metropole'
/q1
1'Municipal'
3 'Regional'
.



