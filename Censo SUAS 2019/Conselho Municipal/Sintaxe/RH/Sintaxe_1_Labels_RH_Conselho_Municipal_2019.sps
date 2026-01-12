RENAME VARIABLES		
codigo_ibge	=	IBGE
v10899	=	q71_1
v13021	=	q71_2
v10901	=	q71_3
v11955	=	q71_4
v10902	=	q71_5
v10903	=	q71_6
v10904	=	q71_7
v10906	=	q71_8
v10907	=	q71_9
v10908	=	q71_10
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
q71_1'q71_1_v10899_71.1. Nome Completo'
q71_2'q71_2_v13021_71.2. Data de nascimento'
q71_3'q71_3_v10901_71.3. Sexo'
q71_4'q71_4_v11955_71.4. E-mail'
q71_5'q71_5_v10902_71.5. Escolaridade'
q71_6'q71_6_v10903_71.6. Representação'
q71_7'q71_7_v10904_71.7. Função'
q71_8'q71_8_v10906_71.8. Data de Início do mandato'
q71_9'q71_9_v10907_71.9. Data de término do mandato'
q71_10'q71_10_v10908_71.10. CPF'
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
/q71_3
1' Feminino'
2' Masculino'
/q71_5
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
/q71_6
"GA" ' Governamental - Assistência Social'
"GE"  ' Governamental – Educação'
"GS " ' Governamental – Saúde'
"GO"   ' Governamental – Outras áreas'
"E"   ' Sociedade Civil - das entidade e Organizações de Ass. Social'
"U"  ' Sociedade Civil - dos usuários'
"T"    ' Sociedade Civil - organizações dos trabalhadores'
"O"    ' Sociedade Civil - organizações dos usuários'
/q71_7
20' Conselheiro(a) Presidente'
308' Vice-Presidente'
105' Conselheiro Titular'
106' Conselheiro Suplente'
21' Coordenador(a)'
251' Apoio Administrativo'
248' Educador Social'
253' Estagiário(a)'
79' Secretário Executivo'
252' Serviços Gerais'
250' Técnico(a) Nível Médio'
249' Técnico(a) Nível Superior'
254' Outros'
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
