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
q_62_4	'q_62_4_v11356_Número do CPF:'
q_62_5	'q_62_5_v14721_Dados do RG: Número'
q_62_6	'q_62_6_v14723_Dados do RG: Órgão Emissor'
q_62_7	'q_62_7_v14722_Dados do RG: UF'
q_62_8	'q_62_8_v11361_Email:'
q_62_9	'q_62_9_v14725_Escolaridade'
q_62_10	'q_62_10_v14726_Profissão'
q_62_11	'q_62_11_v14727_Vínculo'
q_62_12	'q_62_12_v11359_Cargo'
q_62_13	'q_62_13_v14728_Carga horária SEMANAL'
q_62_14	'q_62_14_v14729_Início do Mandato (DD/MM/AAAA)'
q_62_15	'q_62_15_v14730_Principal área de atuação'
q_62_16	'q_62_16_v14731_Segunda principal área de atuação'
q_62_17	'q_62_17_v14732_Terceira principal área de atuação'
IBGE7 'codigo IBGE 7 digitos'
UF 'UF'
Regiao 'Região'
Municipio 'Municipio'
Pop_total_2010 'População  total'
Pop_Urbana2010 'população urbana'
Pop_Rural2010 'população rural'
Porte_pop2010 'porte'
areaKm2 'área'
.	

VALUE LABELS
/q_62_3
1 'Masculino'
2 'Feminino'
/q_62_9
251 'Sem Escolaridade'
252 'Ensino Fundamental Incompleto'
253 'Ensino Fundamental Completo'
254 'Ensino Médio Incompleto'
255 'Ensino Médio Completo'
256 'Ensino Superior Incompleto'
257 'Ensino Superior Completo'
258 'Especialização'
260 'Mestrado'
261 'Doutorado'
/q_62_10
273 'Assistente Social'
274 'Psicóloga(o)'
275 'Pedagoga(o)'
232 'Advogada(o)'
235 'Administrador (a)'
234 'Antropóloga(o)'
276 'Socióloga(o)'
278 'Fisioterapeuta'
283 'Cientista política(o)'
279 'Nutricionista'
282 'Médica(o)'
371 'Musicoterapeuta'
233 'Terapeuta Ocupacional'
236 'Economista'
372 'Economista Doméstica(o)'
281 'Enfermeira(o)'
240 'Analista de sistema'
241 'Programador(a)'
237 'Outra(o) profissional de nível superior'
238 'Profissional de nível médio'
239 'Sem formação profissional'
/q_62_11
292 'Comissionada(o)'
138 'Servidor(a)/Estatutária(o)'
266 'Servidor(a) Temporária(o)'
139 'Empregada(o) Pública(o) (CLT)'
293 'Terceirizada(o)'
142 'Outro vínculo não permanente'
264 'Trabalhador(a) de Empresa/ Cooperativa/ Entidade Prestadora de Serviços'
265 'Voluntária(o)'
291 'Sem vínculo'
/q_62_12
216 'Apoio Administrativo'
21 'Coordenador(a)/Dirigente'
217 'Educador(a)/Orientador(a) Social'
221 'Estagiária(o)'
222 'Outros'
77 'Secretária(o)'
76 'Secretária(os) de Assistência Social'
79 'Secretária(o) Executiva(o)'
220 'Serviços Gerais'
219 'Técnica(o) de Nível Médio'
218 'Técnica(o) de Nível Superior'
/q_62_13
262 'Até 10 horas semanais'
272 'De 11 a 20 horas semanais'
18 'De 21 a 30 horas semanais'
20 'De 31 a 40 horas semanais'
263 'De 41 a 44 horas semanais'
391 'Mais de 44 horas semanais'
/q_62_15
1 'Atividades de gestão (administrativo)'
2 'Gestão do SUAS'
3 'Vigilância Socioassistencial'
4 'Gestão do Trabalho'
5 'Regulação do SUAS'
6 'Gestão Financeira e Orçamentária'
7 'Proteção Social Básica'
8 'Proteção Social Especial de Média Complexidade'
9 'Proteção Social Especial de Alta Complexidade'
10 'Gestão do Cadastro Único e Programa Bolsa Família'
11 'Gestão de Benefícios Assistenciais (BPC, Benefícios Eventuais)'
12 'Outros'
/q_62_16
1 'Atividades de gestão (administrativo)'
2 'Gestão do SUAS'
3 'Vigilância Socioassistencial'
4 'Gestão do Trabalho'
5 'Regulação do SUAS'
6 'Gestão Financeira e Orçamentária'
7 'Proteção Social Básica'
8 'Proteção Social Especial de Média Complexidade'
9 'Proteção Social Especial de Alta Complexidade'
10 'Gestão do Cadastro Único e Programa Bolsa Família'
11 'Gestão de Benefícios Assistenciais (BPC, Benefícios Eventuais)'
12 'Outros'
/q_62_17
1 'Atividades de gestão (administrativo)'
2 'Gestão do SUAS'
3 'Vigilância Socioassistencial'
4 'Gestão do Trabalho'
5 'Regulação do SUAS'
6 'Gestão Financeira e Orçamentária'
7 'Proteção Social Básica'
8 'Proteção Social Especial de Média Complexidade'
9 'Proteção Social Especial de Alta Complexidade'
10 'Gestão do Cadastro Único e Programa Bolsa Família'
11 'Gestão de Benefícios Assistenciais (BPC, Benefícios Eventuais)'
12 'Outros'
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
.


