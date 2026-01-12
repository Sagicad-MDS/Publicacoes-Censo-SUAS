

RENAME VARIABLES	
codigo_ibge	=	IBGE
id_acolhimento	=	NU_IDENTIFICADOR
v12757	=	q40_1
v12761	=	q40_2
v12762	=	q40_3
v12763	=	q40_4
v12764	=	q40_5
v12765	=	q40_6
v12766	=	q40_7
v12767	=	q40_8
v12768	=	q40_9
v12769	=	q40_10
v12770	=	q40_11
v12771	=	q40_12
v12772	=	q40_14
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
Estadual 	=	Estadual.


RENAME VARIABLES	
q40_1	=	q37_1
q40_2	=	q37_2
q40_3	=	q37_3
q40_4	=	q37_4
q40_5	=	q37_5
q40_6	=	q37_6
q40_7	=	q37_7
q40_8	=	q37_8
q40_9	=	q37_9
q40_10	=	q37_10
q40_11	=	q37_11
q40_12	=	q37_12
q40_14	=	q37_13.





VARIABLE LABELS
IBGE'IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR'
q37_1'q37_1. Nome completo'
q37_2'q37_2. Data de Nascimento'
q37_3'q37_3. Sexo'
q37_4'q37_4. CPF'
q37_5'q37_5. E-mail'
q37_6'q37_6. RG - Número'
q37_7'q37_7. RG - Órgão Emissor'
q37_8'q37_8. RG - UF'
q37_9'q37_9. Escolaridade'
q37_10'q37_10. Profissão'
q37_11'q37_11. Vínculo'
q37_12'q37_12. Função'
q37_13'q37_13. Início do exercício da função'
IBGE7 'IBGE7'
UF 'UF'
Regiao'Região'
Município 'Município'
Pop_total_2010'Pop_total_2010'
Pop_Urbana2010'Pop_Urbana2010'
Pop_Rural2010'Pop_Rural2010'
Porte_pop2010'Porte_pop2010'
areaKm2 'area Km2'
Q_incompleto 'Q_incompleto'
Estadual 'Unidade Estadual ou Municipal'.



VALUE LABELS
/q37_3
0' Feminino'
1' Masculino'
/q37_9
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
/q37_10
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
371' Economista Doméstica(o)'
281' Enfermeira(o)'
240' Analista de Sistema'
241' Programador(a)'
237' Outra formação de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
417' Geógrafo'
419 'Profissional de Educação Física'
420' Administração Pública/Gestão Pública'
/q37_11
420' Administração Pública/Gestão Pública'
362' Empregada(o) Privado (CLT)'
293' Terceirizada(o)'
142' Outro vínculo não permanente'
264' Trabalhador(a) de Empresa/Cooperativa/Entidade prestadora de serviços'
265' Voluntária(o)'
291' Sem Vínculo'
292' Comissionada(o)'
138' Servidor(a) Estatutário(a)'
266' Servidor(a) Temporário(a)'
139' Empregada(o) Pública(o) (CLT)'
/q37_12
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
