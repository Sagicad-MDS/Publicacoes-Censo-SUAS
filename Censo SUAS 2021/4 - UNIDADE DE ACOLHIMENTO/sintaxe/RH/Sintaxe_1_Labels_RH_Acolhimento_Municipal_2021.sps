* Encoding: windows-1252.

RENAME VARIABLES		
id_acolhimento	=	NU_IDENTIFICADOR
codigo_ibge	=	IBGE
v11102	=	q51_1
v11103	=	q51_2
v11104	=	q51_3
v11105	=	q51_4
v11997	=	q51_5
v11106	=	q51_6
v11107	=	q51_7
v11108	=	q51_8
v11110	=	q51_9
v11111	=	q51_10
v11112	=	q51_11
v11113	=	q51_12
v11114	=	q51_13
v11115	=	q51_14
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
Estadual = Estadual 
v16310	=	q1_1
v16311	=	q1_2
v16312	=	q1_3
v11968	=	q2
v11969	=	q2_1_99
v10942	=	q3 .



VARIABLE LABELS
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_acolhimento_NU_IDENTIFICADOR'
IBGE'IBGE_codigo_ibge_IBGE'
q51_1 'q51_1_v11102_51.1. Nome Completo'
q51_2 'q51_2_v11103_51.2. Data de nascimento'
q51_3 'q51_3_v11104_51.3. SEXO'
q51_4 'q51_4_v11105_51.4. CPF'
q51_5 'q51_5_v11997_51.5. E-mail'
q51_6 'q51_6_v11106_51.6. RG – Número'
q51_7 'q51_7_v11107_51.7. RG – Órgão Emissor'
q51_8 'q51_8_v11108_51.8. RG – UF'
q51_9 'q51_9_v11110_51.9. Escolaridade'
q51_10 'q51_10_v11111_51.10. Profissão'
q51_11 'q51_11_v11112_51.11. Vínculo'
q51_12 'q51_12_v11113_51.12. Função'
q51_13 'q51_13_v11114_51.13. Carga horária'
q51_14 'q51_14_v11115_51.14. Inicio do exercício da função'
IBGE7'IBGE7_IBGE7'
UF'UF_Nome_UF'
Regiao'Regiao_Região'
Município'Município_Município'
Pop_total_2010'Pop_total_2010_Pop_total_2010'
Pop_Urbana2010'Pop_Urbana2010_Pop_Urbana2010'
Pop_Rural2010'Pop_Rural2010_Pop_Rural2010'
Porte_pop2010'Porte_pop2010_Porte_pop2010'
areaKm2'areaKm2_areaKm2'
Q_incompleto 'Q_incompleto _Q_incompleto '
Estadual 'Unidade Estadual ou Municipal'
q1_1'q1_1_v16310_1.1. Público Atendido'
q1_2'q1_2_v16311_1.2. Tipo de Unidade (Modalidade)'
q1_3'q1_3_v16312_1.3. Outro. Qual?'
q2'q2_v11968_2. Esta Unidade é uma “Casa Lar em Aldeia”?'
q2_1_99'q2_1_99_v11969_2.1.99. Quantidade de Casas Lares na Aldeia'
q3'q3_v10942_3. Indique a natureza desta unidade:'
.




VALUE LABELS
/q51_3
1' MASCULINO'
0' FEMININO'
/q51_9
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
/q51_10
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
233' Terapeuta Ocupacional'
236' Economista'
281' Enfermeira(o)'
240' Analista de Sistemas'
241' Programador(a)'
237' Outra formação de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
371' Economista Doméstico'
420' Administração Pública/Gestão Pública'
372' Musicoterapeuta'
/q51_11
362' Empregada(o) Celetista do Setor Privado'
293' Terceirizada(o)'
142' Outro vínculo não permanente'
264' Trabalhador(a) de empresa/cooperativa/entidade prestadora de serviço'
265' Voluntária(o)'
291' Sem vínculo'
138' Servidor(a)/Estatutário(a)'
266' Servidor(a) Temporário(a)'
139' Empregada(o) Pública(o) Celetista'
292' Comissionado'
/q51_12
21' Coordenador(a)'
218' Técnico(a) de Nível Superior'
249' Técnico(a) de Nível Superior'
250' Técnico(a) de Nível Médio'
349' Cuidador(a)'
368' Auxiliar de Cuidador(a)'
216' Apoio Administrativo'
350' Cuidador(a) Residente'
372' Motorista'
371' Cozinheiro(a)'
408' Segurança'
220' Serviços Gerais'
253' Estagiário(a)'
217' Educador(a)/Orientador(a) Social'
248' Educador(a)/Orientador(a) Social'
254' Outros'
388' Família Acolhedora'
/q51_13
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
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
0    'completo'
1    'incompleto'
/Estadual
1 ' Estadual'
2 ' Municipal'
/q1_1
315' Crianças / Adolescentes'
316' Jovens egressos de serviços de acolhimento'
317' Exclusivamente crianças/adolescente com deficiência'
318' Exclusivamente pessoas adultas com deficiência'
319' Adultos e famílias'
321' Mulheres em situação de violência'
322' Pessoas idosas'
/q1_2
0' Abrigo institucional'
1'Casa-lar'
3' Outro'
4' República'
5' República para Jovens'
6' Residência inclusiva'
7' Abrigo institucional/Casa de passagem para população de rua'
8' República para adultos em processo de saída das ruas'
9' Abrigo institucional/Casa de passagem para migrantes e/ou refugiados'
10' Abrigo para famílias desabrigadas/desalojadas vítimas de desastres'
11' Abrigo institucional (Instituição de Longa Permanência para Idosos - ILPI)'
12' Casa de Passagem'
/q2
0' Não'
1' Sim'
/q3
1' Governamental'
0' Não Governamental/Organização da Sociedade Civil'
.



