* Encoding: UTF-8.



RENAME VARIABLES		
codigo_ibge	=	IBGE
id_protecao_especial	=	NU_IDENTIFICADOR
v11484	=	q37_1
co_seq_dirigente	=	co_seq_dirigente
v11485	=	q37_2
v11486	=	q37_3
v11487	=	q37_4
v11488	=	q37_5
v11489	=	q37_6
v11490	=	q37_7
v11965	=	q37_8
v11491	=	q37_9
v11492	=	q37_10
v11493	=	q37_11
v11494	=	q37_12
v11495	=	q37_13
v11496	=	q37_14
IBGE7  =   IBGE7
codigo_UF   =  codigo_UF 
Região   =   Regiao 
Município  =  Município
areaKm2  =   areaKm2 
Nome_UF   =   Nome_UF
Pop_total_2022  = Pop_total_2022
Porte_pop2022  =  Porte_pop2022
q1    =   q1 
Q_incompleto   =  Q_incompleto
.




VARIABLE LABELS
IBGE'IBGE_codigo_ibge_IBGE'
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_protecao_especial_NU_IDENTIFICADOR'
q37_1'q37_1_v11484_45.1. Nome Completo'
co_seq_dirigente'co_seq_dirigente_co_seq_dirigente_co_seq_dirigente'
q37_2'q37_2_v11485_45.2. Data de Nascimento'
q37_3'q37_3_v11486_45.3. Sexo'
q37_4'q37_4_v11487_45.4. Número do CPF'
q37_5'q37_5_v11488_45.5. RG - Número'
q37_6'q37_6_v11489_45.6. RG - Órgão Emissor'
q37_7'q37_7_v11490_45.7. RG - UF'
q37_8'q37_8_v11965_45.8. E-mail'
q37_9'q37_9_v11491_45.9. Escolaridade'
q37_10'q37_10_v11492_45.10. Profissão'
q37_11'q37_11_v11493_45.11. Vínculo'
q37_12'q37_12_v11494_45.12. Função'
q37_13'q37_13_v11495_45.13. Carga horária SEMANAL'
q37_14'q37_14_v11496_45.14. Início do exercício da função'
IBGE7 'codigo IBGE com 7 digitos'
codigo_UF 'Nome_UF'
Regiao'Região'
Município 'Município'
areaKm2 'area Km2'
 Nome_UF' Nome_UF'
Pop_total_2022'Pop_total_2022'
Porte_pop2022 'Porte_pop2022 '
q1 'natureza da unidade'
Q_incompleto'Q_incompleto'.






VALUE LABELS
/q37_3
0' Feminino'
1' Masculino'
2' Masculino'
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
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
420' Administração Pública/Gestão Pública'
/q37_11
292'Comissionado'
138 ' Servidor Estatutário'
266 ' Servidor Temporário'
139 ' Empregado Público (CLT)'
361 ' Empregado Público (CLT)'
293 ' Terceirizado'
363 ' Empregado Celetista do setor privado - CLT'
142 ' Outro vínculo não permanente'
265 ' Voluntário'
/q37_12
21' Coordenador(a)/ Dirigente'
218' Técnica(o) de nível superior'
250' Técnica(o) de Nível Médio'
349' Cuidador(a)'
368' Auxiliar de Cuidador(a)'
216' Apoio Administrativo'
372' Motorista'
371' Cozinheira(o)'
408' Segurança'
220' Serviços Gerais'
221' Estagiário(a)'
217' Orientador/Educador(a) Social'
254' Outros'
/q37_13
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
391' Mais de 44 horas semanais'
/codigo_UF
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
1 ' Pequeno I'
2 ' Pequeno II'
3 'Médio'
4 'Grande'
5 'Metropole'
/q1
1' ESTADUAL'
2' MUNICIPAL'
.
