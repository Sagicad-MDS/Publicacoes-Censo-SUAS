* Encoding: UTF-8.
RENAME VARIABLES		
codigo_ibge	=	IBGE
v11355	=	q65_1
co_seq_dirigente	=	co_seq_dirigente
v11357	=	q65_2
v14720	=	q65_3
v11356	=	q65_4
v14721	=	q65_5
v14723	=	q65_6
v14722	=	q65_7
v11361	=	q65_8
v14725	=	q65_9
v14726	=	q65_10
v14727	=	q65_11
v11359	=	q65_12
v14728	=	q65_13
v14729	=	q65_14
v14730	=	q65_15
v14731	=	q65_16
v14732	=	q65_17
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
q65_1'q65_1_v11355_65.1. Nome Completo'
co_seq_dirigente'co_seq_dirigente_co_seq_dirigente_65.0. Código do Dirigente'
q65_2'q65_2_v11357_65.2. Data de nascimento:'
q65_3'q65_3_v14720_65.3. Sexo'
q65_4'q65_4_v11356_65.4. Número do CPF:'
q65_5'q65_5_v14721_65.5. Dados do RG: Número'
q65_6'q65_6_v14723_65.6. Dados do RG: Órgão Emissor'
q65_7'q65_7_v14722_65.7. Dados do RG: UF'
q65_8'q65_8_v11361_65.8. Email:'
q65_9'q65_9_v14725_65.9. Escolaridade'
q65_10'q65_10_v14726_65.10. Profissão'
q65_11'q65_11_v14727_65.11. Vínculo'
q65_12'q65_12_v11359_65.12. Cargo'
q65_13'q65_13_v14728_65.13. Carga horária SEMANAL'
q65_14'q65_14_v14729_65.14. Início do Mandato (DD/MM/AAAA)'
q65_15'q65_15_v14730_65.15. Principal área de atuação'
q65_16'q65_16_v14731_65.16. Segunda principal área de atuação'
q65_17'q65_17_v14732_65.17. Terceira principal área de atuação'
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
/q65_3
1' Feminino'
2' Masculino'
/q65_9
251' Sem Escolaridade (pular “área de atuação”)'
252' Ensino Fundamental Incompleto (pular “área de atuação”)'
253' Ensino Fundamental Incompleto (pular “área de atuação”)'
254' Ensino Médio Incompleto (pular “área de atuação”)'
255' Ensino Médio Completo'
256' Ensino Superior Incompleto'
257' Ensino Superior Completo'
258' Especialização'
260' Mestrado'
261' Doutorado'
/q65_10
273' Assistente Social'
274' Psicóloga(o)'
275' Pedagoga(o)'
232' Advogada(o)'
235' Administrador (a)'
234' Antropóloga(o)'
276' Socióloga(o)'
278' Fisioterapeuta'
283' Cientista política(o)'
279' Nutricionista'
282' Médica(o)'
372' Musicoterapeuta'
233' Terapeuta Ocupacional'
236' Economista'
281' Enfermeira(o)'
240' Analista de sistema'
241' Programador(a)'
237' Outra(o) profissional de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
371' Economista Doméstico'
420' Administração Pública/Gestão Pública'
418 'Estatistico'
/q65_11
292' Comissionada(o)'
138' Servidor(a)/Estatutária(o)'
266' Servidor(a) Temporária(o)'
139' Empregada(o) Pública(o) (CLT)'
293' Terceirizada(o)'
142' Outro vínculo não permanente'
264' Trabalhador(a) de Empresa/ Cooperativa/ Entidade Prestadora de Serviços'
265' Voluntária(o)'
291' Sem vínculo'
/q65_12
216' Apoio Administrativo'
21' Coordenador(a)/Dirigente'
217' Educador(a)/Orientador(a) Social'
221' Estagiária(o)'
222' Outros'
77' Secretária(o)'
76' Secretária(os) de Assistência Social'
79' Secretária(o) Executiva(o)'
220' Serviços Gerais'
219' Técnica(o) de Nível Médio'
218' Técnica(o) de Nível Superior'
249 'Técnica(o) de Nível Superior'
251 'Apoio Administrativo'
/q65_13
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
391' Mais de 44 horas semanais'
/q65_15
1' Atividades de gestão (administrativo)'
2' Gestão do SUAS'
3' Vigilância Socioassistencial'
4' Gestão do Trabalho'
5' Regulação do SUAS'
6' Gestão Financeira e Orçamentária'
7' Proteção Social Básica'
8' Proteção Social Especial de Média Complexidade'
9' Proteção Social Especial de Alta Complexidade'
10' Gestão do Cadastro Único e Programa Bolsa Família'
11' Gestão de Benefícios Assistenciais (BPC, Benefícios Eventuais)'
12' Outros'
/q65_16
1' Atividades de gestão (administrativo)'
2' Gestão do SUAS'
3' Vigilância Socioassistencial'
4' Gestão do Trabalho'
5' Regulação do SUAS'
6' Gestão Financeira e Orçamentária'
7' Proteção Social Básica'
8' Proteção Social Especial de Média Complexidade'
9' Proteção Social Especial de Alta Complexidade'
10' Gestão do Cadastro Único e Programa Bolsa Família'
11' Gestão de Benefícios Assistenciais (BPC, Benefícios Eventuais)'
12' Outros'
/q65_17
1' Atividades de gestão (administrativo)'
2' Gestão do SUAS'
3' Vigilância Socioassistencial'
4' Gestão do Trabalho'
5' Regulação do SUAS'
6' Gestão Financeira e Orçamentária'
7' Proteção Social Básica'
8' Proteção Social Especial de Média Complexidade'
9' Proteção Social Especial de Alta Complexidade'
10' Gestão do Cadastro Único e Programa Bolsa Família'
11' Gestão de Benefícios Assistenciais (BPC, Benefícios Eventuais)'
12' Outros'
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
