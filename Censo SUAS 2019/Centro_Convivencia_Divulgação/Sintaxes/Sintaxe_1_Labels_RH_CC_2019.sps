* Encoding: UTF-8.
RENAME VARIABLES		
codigo_ibge	=	IBGE
id_convivencia	=	NU_IDENTIFICADOR
v10716	=	q31_1
co_seq_dirigente	=	co_seq_dirigente
v10718	=	q31_2
v10719	=	q31_3
v10720	=	q31_4
v10721	=	q31_5
v10722	=	q31_6
v10723	=	q31_7
v11952	=	q31_8
v10724	=	q31_9
v10726	=	q31_10
v10727	=	q31_11
v10729	=	q31_12
v10730	=	q31_13
v10731	=	q31_14
Q_completo 	=	Q_completo.

RENAME VARIABLES	
IBGE7	=	IBGE7
UF	=	UF
Região	=	Regiao
Município	=	Município
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2.




VARIABLE LABELS
IBGE'IBGE_codigo_ibge_IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_convivencia_NU_IDENTIFICADOR'
q31_1'q31_1_v10716_31.1. Nome Completo'
co_seq_dirigente'co_seq_dirigente_co_seq_dirigente_co_seq_dirigente'
q31_2'q31_2_v10718_31.2. Data de nascimento'
q31_3'q31_3_v10719_31.3. Sexo'
q31_4'q31_4_v10720_31.4. Número do CPF'
q31_5'q31_5_v10721_31.5. Dados do RG - Número'
q31_6'q31_6_v10722_31.6. Dados do RG - Órgão Emissor'
q31_7'q31_7_v10723_31.7. Dados do RG - UF'
q31_8'q31_8_v11952_31.8. Email'
q31_9'q31_9_v10724_31.9. Escolaridade'
q31_10'q31_10_v10726_31.10. Profissão'
q31_11'q31_11_v10727_31.11. Vínculo'
q31_12'q31_12_v10729_31.12. Função'
q31_13'q31_13_v10730_31.13. Carga horária SEMANAL'
q31_14'q31_14_v10731_31.14. Início do exercício da função'
Q_completo 'Q_completo _Q_completo _questionarios completos'.

VARIABLE LABELS
IBGE7 'IBGE7_codigo IBGE com 7 digitos'
UF 'Nome_UF_UF'
Regiao'Regiao_Região'
Município 'Município_Município'
Pop_total_2010'Pop_total_2010_Pop_total_2010'
Pop_Urbana2010'Pop_Urbana2010_Pop_Urbana2010'
Pop_Rural2010'Pop_Rural2010_Pop_Rural2010'
Porte_pop2010'Porte_pop2010_Porte_pop2010'
areaKm2 'area Km2_area Km2'.




VALUE LABELS
/q31_3
2' Feminino'
1' Masculino'
/q31_9
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
/q31_10
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
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
420 'Administração pública/Gestão'
/q31_11
292' Comissionado'
138' Servidor Estatutário'
266' Servidor Temporário'
361' Empregado Público Celetista - CLT'
362' Empregado Celetista do Setor Privado'
293' Terceirizado'
142' Outro vínculo não permanente'
265' Voluntário'
/q31_12
21' Coordenador(a)'
217' Educador(a) Social'
216' Apoio Administrativo'
253' Estagiário(a)'
220' Serviços Gerais'
218' Técnico(a) de nível superior'
254' Outros'
/q31_13
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
391' Mais de 44 horas semanais'
/Q_completo
0    'completo'
1    'incompleto'
.

VALUE LABELS
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
5 "Região Centro Oeste".

