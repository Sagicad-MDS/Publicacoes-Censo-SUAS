* Encoding: UTF-8.
*******Dados Gerais*****

RENAME VARIABLES		
codigo_ibge	=	IBGE
v10899	=	q_75_1
v13021	=	q_75_2
v10901	=	q_75_3
v11955	=	q_75_4
v10902	=	q_75_5
v10903	=	q_75_6
v10904	=	q_75_7
v10906	=	q_75_8
v10907	=	q_75_9
v10908	=	q_75_10
IBGE7	=	IBGE7
Nome_UF	=	UF
Região	=	Regiao
Município	=	Município
Pop_total_2010	=	Pop_total_2010
Pop_Urbana2010	=	Pop_Urbana2010
Pop_Rural2010	=	Pop_Rural2010
Porte_pop2010	=	Porte_pop2010
areaKm2	=	areaKm2.		

.		


VARIABLE LABELS
IBGE 'codigo IBGE'	
q_75_1'q_75_1_v10899_Nome'
q_75_2'q_75_2_v13021_Data de nascimento'
q_75_3'q_75_3_v10901_Sexo'
q_75_4'q_75_4_v11955_E-mail'
q_75_5'q_75_5_v10902_Escolaridade'
q_75_6'q_75_6_v10903_Representação'
q_75_7'q_75_7_v10904_Função'
q_75_8'q_75_8_v10906_Data de Início do mandato'
q_75_9'q_75_9_v10907_Data de término do mandato'
q_75_10'q_75_10_v10908_CPF'
IBGE7  'IBGE7_codigo IBGE com 7 dígitos'
UF  'Unidades da Federação'
Regiao  'Grandes Regiões'
Município  'nome do municipio'
Pop_total_2010  'populaçao total do muncipio em 2010'
Pop_Urbana2010  'populaçao total urbana do  muncipio em 2010'
Pop_Rural2010  'populaçao total rural do muncipio em 2010'
Porte_pop2010  'porte populacional'
areaKm2  'área do muncipio'
.
	


VALUE LABELS
/q_75_3
1 'Feminino'
2 'Masculino'
/q_75_5
251  'Sem Escolaridade'
252  'Fundamental Incompleto'
253  'Fundamental Completo'
254  'Médio Incompleto'
255  'Médio Completo'
256  'Superior Incompleto'
257  'Superior Completo'
258  'Especialização'
260  'Mestrado'
261  'Doutorado'
/q_75_6
"GA"  'Governamental - Assistência Social'
"GE"  'Governamental – Educação'
"GS"  'Governamental – Saúde'
"GO"  'Governamental – Outras áreas'
"E"  'Sociedade Civil - das entidade e Organizações de Ass. Social'
"U"  'Sociedade Civil - dos usuários'
"T"  'Sociedade Civil - organizações dos trabalhadores'
"O"  'Sociedade Civil - organizações dos usuários'
/q_75_7
20  'Conselheiro(a) Presidente'
308  'Vice-Presidente'
105  'Conselheiro Titular'
106  'Conselheiro Suplente'
21  'Coordenador(a)'
251  'Apoio Administrativo'
248  'Educador Social'
253  'Estagiário(a)'
79  'Secretário Executivo'
252  'Serviços Gerais'
250  'Técnico(a) Nível Médio'
249  'Técnico(a) Nível Superior'
254  'Outros'
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

