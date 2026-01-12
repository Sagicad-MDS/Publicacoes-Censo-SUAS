* Encoding: windows-1252.
*codigo IBGE em consonancia a base de referencia dos municipios para o merge a posteriori**
****base ja calculada idade e incorporada variavel de região e porte populacional


RENAME VARIABLES
codigo_ibge=IBGE
id_acolhimento=NU_IDENTIFICADOR
v12757=q_30_1	
v12761=q_30_2	
v12762=q_30_3	
v12763=q_30_4	
v12764=q_30_5	
v12765=q_30_6	
v12766=q_30_7	
v12767=q_30_8	
v12768=q_30_9	
v12769=q_30_10	
v12770=q_30_11	
v12771=q_30_12	
v12772=q_30_13
IBGE7 = IBGE7
Nome_UF = UF
Região	=	Regiao
Município	=	Município
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2.
execute.


VARIABLE LABELS
IBGE 'Código IBGE do Município'
NU_IDENTIFICADOR 'Número Identificador da Unidade'
q_30_1 'Nome completo'
q_30_2  'Data de Nascimento'
q_30_3 'Sexo'
q_30_4 'CPF'
q_30_5 'E-mail'
q_30_6 'RG - Número'
q_30_7  'RG - Órgão Emissor'
q_30_8 'RG - UF'
q_30_9 'Escolaridade'
q_30_10 'Profissão'
q_30_11 'Vínculo'
q_30_12 'Função'
q_30_13 'Início do exercício da função'
IBGE7 'codigo IBGE com 7 digitos'
UF 'UF'
Regiao 'Região'
Município 'Município'
Pop_total_2010 'Pop_total_2010'
Pop_Urbana2010 'Pop_Urbana2010'
Pop_Rural2010 'Pop_Rural2010'
Porte_pop2010 'Porte_pop2010'
areaKm2  'area Km2'.
execute.

VALUE LABELS
/q_30_3
1 'Feminino'
0 'Masculino'
/q_30_9
251 'Sem Escolaridade'
252 'Fundamental Incompleto'
253 'Fundamental Completo'
254 'Médio Incompleto'
255 'Médio Completo'
256 'Superior Incompleto'
257  'Superior Completo'
258 'Especialização'
260  'Mestrado'
261 'Doutorado'
/q_30_10
273 'Assistente Social'
274 'Psicólogo'
275 'Pedagogo'
232 'Advogado'
235 'Administrador'
234 'Antropólogo'
276 'Sociólogo'
278 'Fisioterapeuta'
283 'Cientista Político'
279 'Nutricionista'
282 'Médico'
233 'Terapeuta Ocupacional'
236 'Economista'
281 'Enfermeiro'
240 'Analista de Sistema'
241 'Programador'
237 'Outra formação de nível superior'
238 'Profissional de nível médio'
239 'Sem formação profissional'
/q_30_11
362 'Empregado Privado (CLT)'
293 'Terceirizado'
142 'Outro vínculo não permanente'
264 'Trabalhador de Empresa/Cooperativa/Entidade prestadora de serviços'
265 'Voluntário'
291 'Sem Vínculo'
292 'Comissionado'
138  'Servidor Estatutário'
266 'Servidor Temporário'
139 'Empregado Público (CLT)'
/q_30_12
21 'Coordenador(a)'
218 'Técnico(a) de nível superior'
349 'Cuidador(a)'
368 'Auxiliar de Cuidador(a)'
217 'Orientador/Educador(a) Social'
216 'Apoio Administrativo'
221 'Estagiário(a)'
220 'Serviços Gerais'
254 'Outros'
388 'Família Acolhedora'
350 'Cuidador(a) Residente'
371 'Cozinheiro(a)'
372 'Motorista'
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








COMMENT BOOKMARK;LINE_NUM=31;ID=1.
