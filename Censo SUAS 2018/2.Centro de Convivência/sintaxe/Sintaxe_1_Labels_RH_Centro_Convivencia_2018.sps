RENAME VARIABLES		
codigo_ibge	=	IBGE
id_convivencia	=	NU_IDENTIFICADOR
v10716	=	q_31_1
v10718	=	q_31_2
v10719	=	q_31_3
v10720	=	q_31_4
v10721	=	q_31_5
v10722	=	q_31_6
v10723	=	q_31_7
v11952	=	q_31_8
v10724	=	q_31_9
v10726	=	q_31_10
v10727	=	q_31_11
v10729	=	q_31_12
v10730	=	q_31_13
v10731	=	q_31_14
Q_completo	=	Q_completo
IBGE7	=	IBGE7
Nome_UF	=	UF
Região	=	Regiao
Município	=	Município
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2
.


VARIABLE LABELS
IBGE	'IBGE_codigo_ibge'
NU_IDENTIFICADOR	'NU_IDENTIFICADOR_id_protecao_especial'
q_31_1	'q_31_1_v10716_Nome Completo'
q_31_2	'q_31_2_v10718_Data de nascimento'
q_31_3	'q_31_3_v10719_Sexo'
q_31_4	'q_31_4_v10720_Número do CPF'
q_31_5	'q_31_5_v10721_Dados do RG - Número'
q_31_6	'q_31_6_v10722_Dados do RG - Órgão Emissor'
q_31_7	'q_31_7_v10723_Dados do RG - UF'
q_31_8	'q_31_8_v11952_Email'
q_31_9	'q_31_9_v10724_Escolaridade'
q_31_10	'q_31_10_v10726_Profissão'
q_31_11	'q_31_11_v10727_Vínculo'
q_31_12	'q_31_12_v10729_Função'
q_31_13	'q_31_13_v10730_Carga horária SEMANAL'
q_31_14	'q_31_14_v10731_Início do exercício da função'
Q_completo	'Q_completo_questionarios completos'
IBGE7	'IBGE7'
UF	'UF_Nome_UF'
Regiao	'Região'
Município	'Município'
Pop_total_2010	'Pop_total_2010'
Pop_Urbana2010	'Pop_Urbana2010'
Pop_Rural2010	'Pop_Rural2010'
Porte_pop2010	'Porte_pop2010'
areaKm2	'area Km2'.



VALUE LABELS
/q_31_3	
1 ' Feminino'	
2 ' Masculino'	
/q_31_9	
251 ' Sem Escolaridade'	
252 ' Ensino Fundamental Incompleto'	
253 ' Ensino Fundamental Completo'	
254 ' Ensino Médio Incompleto'	
255 ' Ensino Médio Completo'	
256 ' Ensino Superior Incompleto'	
257 ' Ensino Superior Completo'	
258 ' Especialização'	
260 ' Mestrado'	
261 ' Doutorado'	
/q_31_10	
273 ' Assistente Social'	
274 ' Psicóloga(o)'	
275 ' Pedagoga(o)'	
232 ' Advogada(o)'	
235 ' Administrador(a)'	
234 ' Antropóloga(o)'	
276 ' Socióloga(o)'	
278 ' Fisioterapeuta'	
283 ' Cientista Política(o)'	
279 ' Nutricionista'	
282 ' Médica(o)'	
372 ' Musicoterapeuta'	
233 ' Terapeuta Ocupacional'	
236 ' Economista'	
371 ' Economista Doméstica(o)'	
281 ' Enfermeira(o)'	
240 ' Analista de Sistema'	
241 ' Programador(a)'	
237 ' Outra formação de nível superior'	
238 ' Profissional de nível médio'	
239 ' Sem formação profissional'	
/q_31_11	
292 ' Comissionado'	
138 ' Servidor Estatutário'	
266 ' Servidor Temporário'	
361 ' Empregado Público (CLT)'	
293 ' Terceirizado'	
363 ' Empregado Celetista do setor privado CLT'	
142 ' Outro vínculo não permanente'	
265 ' Voluntário'
362 'Empregado Celetista do Setor Privado'
/q_31_12	
21 'Coordenador(a)'
217  'Educador(a) Social'
216 'Apoio Administrativo'
253  'Estagiário(a)'
220  'Serviços Gerais'
218  'Técnico(a) de nível superior'
254  'Outros'
/q_31_13	
262 ' Até 10 horas semanais'
272 'De 11 a 20 horas semanais'
18 'De 21 a 30 horas semanais'
20 'De 31 a 40 horas semanais'
263 'De 41 a 44 horas semanais'
391 'Mais de 44 horas semanais'
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
1    'completo'
2    'incompleto'
.


