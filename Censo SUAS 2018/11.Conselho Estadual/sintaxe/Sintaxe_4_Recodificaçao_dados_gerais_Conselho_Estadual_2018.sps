
*****recodificar

RECODE
ident_0_10 (11 thru 17=1) (21 thru 29=2) (50 thru 52=3) (31 thru 35=4) (41 thru 43=5)
    (ELSE=SYSMIS) INTO Regiao.
VARIABLE LABELS  Regiao  'Regiao'.

VALUE LABELS
/Regiao
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'
.



compute UF= ident_0_10. 
VARIABLE LABELS  UF  'Unidades da Federação'.
execute. 

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
53 "Distrito Federal".


Do IF  (MISSING(q_1)  & q_1_1=1).
RECODE q_1_1 (SYSMIS=1) (ELSE=Copy) INTO q_1_1_rec.
END IF.
VARIABLE LABELS  q_1_1_rec 'q_1_1_recrecodificação'.
EXECUTE.

compute q_1_1_velha = q_1_1. 
execute. 
compute q_1_1 =  q_1_1_rec. 
execute. 

**********************************

compute q_8_1_velha = q_8_1. 
execute. 

DO IF (q_7=0).
RECODE q_8_1 (0=SYSMIS).
END IF.
EXECUTE.


*******************

compute q_8_2_velha = q_8_2. 
execute. 

DO IF (q_7=0).
RECODE q_8_2 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_8_3_velha = q_8_3. 
execute. 

DO IF (q_7=0).
RECODE q_8_3 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_8_4_velha = q_8_4. 
execute. 

DO IF (q_7=0).
RECODE q_8_4 (0=SYSMIS).
END IF.
EXECUTE. 


*******************

compute q_8_5_velha = q_8_5. 
execute. 

DO IF (q_7=0).
RECODE q_8_5 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_8_6_velha = q_8_6. 
execute. 

DO IF (q_7=0).
RECODE q_8_6 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_8_7_velha = q_8_7. 
execute. 

DO IF (q_7=0).
RECODE q_8_7 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_8_8_velha = q_8_8. 
execute. 

DO IF (q_7=0).
RECODE q_8_8 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_8_9_velha = q_8_9. 
execute. 

DO IF (q_7=0).
RECODE q_8_9 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_8_10_velha = q_8_10. 
execute. 

DO IF (q_7=0).
RECODE q_8_10 (0=SYSMIS).
END IF.
EXECUTE. 

******************

compute q_8_11_velha = q_8_11. 
execute. 

DO IF (q_7=0).
RECODE q_8_11 (0=SYSMIS).
END IF.
EXECUTE. 

******************

compute q_8_99_velha = q_8_99. 
execute. 

DO IF (q_7=0).
RECODE q_8_99 (0=SYSMIS).
END IF.
EXECUTE. 
***********************************

compute q_33_velha = q_33. 
execute. 

DO IF (q_32=99).
RECODE q_33 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****************************************************

compute q_39_velha = q_39. 
compute q_40_velha = q_40. 
compute q_40_0_velha = q_40_0. 
execute. 


DO IF (q_39=0).
RECODE q_40 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_39=0).
RECODE q_40_0 (ELSE=SYSMIS).
END IF.
EXECUTE.


Do IF  (MISSING(q_40)  & q_39=1).
RECODE q_40_0  (ELSE=1).
END IF.
EXECUTE.


****************************************************************

DO IF  (MISSING(q_49_1 )).
RECODE q_49_1_99 (SYSMIS=1) (ELSE=Copy) INTO q_49_1_99_rec.
END IF.
VARIABLE LABELS  q_49_1_99_rec 'q_49_1_99_recrecodificação'.
EXECUTE.


compute q_49_1_99_velha = q_49_1_99. 
execute. 
compute q_49_1_99 =  q_49_1_99_rec. 
execute. 

*****************

DO IF  (MISSING(q_49_2 )).
RECODE q_49_2_99 (SYSMIS=1) (ELSE=Copy) INTO q_49_2_99_rec.
END IF.
VARIABLE LABELS  q_49_2_99_rec 'q_49_2_99_rec_recodificação'.
EXECUTE.

compute q_49_2_99_velha = q_49_2_99. 
execute. 
compute q_49_2_99 =  q_49_2_99_rec. 
execute. 

***********************************

DO IF  (MISSING(q_49_3 )).
RECODE q_49_3_99 (SYSMIS=1) (ELSE=Copy) INTO q_49_3_99_rec.
END IF.
VARIABLE LABELS  q_49_3_99_rec 'q_49_3_99_rec_recodificação'.
EXECUTE.

compute q_49_3_99_velha = q_49_3_99. 
execute. 
compute q_49_3_99 =  q_49_3_99_rec. 
execute. 
**********************************
**********************************


compute q_52_1_velha = q_52_1. 
execute. 

DO IF (q_51=0).
RECODE q_52_1 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_53_1_velha = q_53_1. 
execute. 

DO IF (q_51=0).
RECODE q_53_1 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_53_2_velha = q_53_2. 
execute. 

DO IF (q_51=0).
RECODE q_53_2 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_53_3_velha = q_53_3. 
execute. 

DO IF (q_51=0).
RECODE q_53_3 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_53_4_velha = q_53_4. 
execute. 

DO IF (q_51=0).
RECODE q_53_4 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_53_5_velha = q_53_5. 
execute. 

DO IF (q_51=0).
RECODE q_53_5 (0=SYSMIS).
END IF.
EXECUTE. 



*******************

compute q_53_6_velha = q_53_6. 
execute. 

DO IF (q_51=0).
RECODE q_53_6 (0=SYSMIS).
END IF.
EXECUTE. 



*******************

compute q_53_7_velha = q_53_7. 
execute. 

DO IF (q_51=0).
RECODE q_53_7 (0=SYSMIS).
END IF.
EXECUTE. 


*******************

compute q_53_8_velha = q_53_8. 
execute. 

DO IF (q_51=0).
RECODE q_53_8 (0=SYSMIS).
END IF.
EXECUTE. 

*******************


compute q_53_9_velha = q_53_9. 
execute. 

DO IF (q_51=0).
RECODE q_53_9 (0=SYSMIS).
END IF.
EXECUTE. 



******************


compute q_53_99_velha = q_53_99. 
execute. 

DO IF (q_51=0).
RECODE q_53_99 (0=SYSMIS).
END IF.
EXECUTE. 


******************

DO IF  (MISSING(q_55 )).
RECODE q_55_99 (SYSMIS=1) (ELSE=Copy) INTO q_55_99_rec.
END IF.
VARIABLE LABELS  q_55_99_rec 'q_55_99_rec_recodificação'.
EXECUTE.

compute q_55_99_velha = q_55_99. 
execute. 
compute q_55_99 =  q_55_99_rec. 
execute. 
***************************************************

DO IF  (MISSING(q_56_1 )).
RECODE q_56_1_99 (SYSMIS=1) (ELSE=Copy) INTO q_56_1_99_rec.
END IF.
VARIABLE LABELS  q_56_1_99_rec 'q_56_1_99_rec_recodificação'.
EXECUTE.

compute q_56_1_99_velha = q_56_1_99. 
execute. 
compute q_56_1_99 =  q_56_1_99_rec. 
execute. 

*******************************

DO IF  (MISSING(q_56_2 )).
RECODE q_56_2_99 (SYSMIS=1) (ELSE=Copy) INTO q_56_2_99_rec.
END IF.
VARIABLE LABELS  q_56_2_99_rec 'recodificação'.
EXECUTE.

compute q_56_2_99_velha = q_56_2_99. 
execute. 
compute q_56_2_99 =  q_56_2_99_rec. 
execute. 

**************************************************************

DO IF  (MISSING(q_58 )).
RECODE q_58_99 (SYSMIS=1) (ELSE=Copy) INTO q_58_99_rec.
END IF.
VARIABLE LABELS  q_58_99_rec 'q_58_99_rec_recodificação'.
EXECUTE.

compute q_58_99_velha = q_58_99. 
execute. 
compute q_58_99 =  q_58_99_rec. 
execute. 

*********************************************************

DO IF  (MISSING(q_59 )).
RECODE q_59_99 (SYSMIS=1) (ELSE=Copy) INTO q_59_99_rec.
END IF.
VARIABLE LABELS  q_59_99_rec 'q_59_99_rec_recodificação'.
EXECUTE.


compute q_59_99_velha = q_59_99. 
execute. 
compute q_59_99 =  q_59_99_rec. 
execute. 

************************************************************

DO IF  (MISSING(q_60 )).
RECODE q_60_99 (SYSMIS=1) (ELSE=Copy) INTO q_60_99_rec.
END IF.
VARIABLE LABELS  q_60_99_rec 'q_60_99_rec_recodificação'.
EXECUTE.


compute q_60_99_velha = q_60_99. 
execute. 
compute q_60_99 =  q_60_99_rec. 
execute. 

****************************************************


compute q_71_1_velha = q_71_1. 
execute. 


DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_1 (0=SYSMIS).
END IF.
EXECUTE. 

*******************


compute q_71_2_velha = q_71_2. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_2 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_71_3_velha = q_71_3. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_3 (0=SYSMIS).
END IF.
EXECUTE. 
*******************

compute q_71_4_velha = q_71_4. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_4 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_71_5_velha = q_71_5. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_5 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_71_6_velha = q_71_6. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_6 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_71_7_velha = q_71_7. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_7  (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_71_8_velha = q_71_8. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_8 (0=SYSMIS).
END IF.
EXECUTE. 

*******************

compute q_71_99_velha = q_71_99. 
execute. 

DO IF (MISSING(q_70) | q_70=0).
RECODE q_71_99 (0=SYSMIS).
END IF.
EXECUTE. 
*******************


VARIABLE LABELS
q_1_1_velha'q_1_1_v13022_99_Não está criado em Lei'	
q_8_1_velha'q_8_1_v10806_1_Caso sim, indique quais:Secretaria de Assistência Social ou congênere'
q_8_2_velha'q_8_2_v10806_2_Caso sim, indique quais: Outra unidade administrativa (Sede de Prefeitura, Sede de Governo, Administração Regional, etc)'
q_8_3_velha'q_8_3_v10806_3_Caso sim, indique quais:CRAS – Centro de Referência de Assistência Social'
q_8_4_velha'q_8_4_v10806_4_Caso sim, indique quais:CREAS – Centro de Referência Especializado de Assistência Social'
q_8_5_velha'q_8_5_v10806_5_Caso sim, indique quais:Outra unidade pública de serviços da Assistência Social'
q_8_6_velha'q_8_6_v10806_6_Caso sim, indique quais:Unidade de Saúde'
q_8_7_velha'q_8_7_v10806_7_Caso sim, indique quais:Escola'
q_8_8_velha'q_8_8_v10806_8_Caso sim, indique quais:Associação Comunitária'
q_8_9_velha'q_8_9_v10806_9_Caso sim, indique quais:Entidade ou Organização da Sociedade Civil'
q_8_10_velha'q_8_10_v10806_10_Caso sim, indique quais:Conselho Tutelar'
q_8_11_velha'q_8_11_v10806_11_Caso sim, indique quais:Outros Conselhos'
q_8_99_velha'q_8_99_v10806_99_ Caso sim, indique quais:Outros'
q_33_velha'q_33_v12991_Qual foi o ano da aprovação do último Plano de Assistência Social por este Conselho?'
q_39_velha'q_39_v10853_O Conselho regulamentou por meio de resolução própria os Benefícios Eventuais concedidos no âmbito da Assistência Social? (Art. 22 da Lei 8742/1993)?'
q_40_velha'q_40_v14612_Caso sim, qual o ano da última atualização da regulamentação?'
q_40_0_velha'q_40_0_v14806_0_Ano da última atualização da regulamentação? - Não sabe'
q_49_1_99_velha 'q_49_1_99_v13026_1_Visitas a unidades públicas da rede socioassistencial - Não Sabe'
q_49_2_99_velha 'q_49_2_99_v13027_1_Visitas a entidades/organizações da sociedade civil - Não Sabe'
q_49_3_99_velha 'q_49_3_99_v13028_1_Total de visitas - Não Sabe'
q_52_1_velha 'q_52_1_v13029_De que ano?'
q_53_1_velha 'q_53_1_v13003_1_O que está estabelecido por esta Resolução?Caracterização das entidades/organizações'
q_53_2_velha 'q_53_2_v13003_2_O que está estabelecido por esta Resolução? Documentação exigida'
q_53_3_velha 'q_53_3_v13003_3_O que está estabelecido por esta Resolução?Local para entrega da documentação'
q_53_4_velha 'q_53_4_v13003_4_O que está estabelecido por esta Resolução?Tempo para deferimento/indeferimento'
q_53_5_velha 'q_53_5_v13003_5_O que está estabelecido por esta Resolução?Procedimentos e análise do processo de inscrição'
q_53_6_velha 'q_53_6_v13003_6_O que está estabelecido por esta Resolução? Condições para visita às unidades'
q_53_7_velha 'q_53_7_v13003_7_O que está estabelecido por esta Resolução?Pedido de reconsideração/recurso'
q_53_8_velha 'q_53_8_v13003_8_O que está estabelecido por esta Resolução?Cancelamento da inscrição'
q_53_9_velha 'q_53_9_v13003_9_O que está estabelecido por esta Resolução?Acompanhamento e fiscalização das entidades'
q_53_99_velha'q_53_99_v13003_99_O que está estabelecido por esta Resolução?Outros'
q_55_99_velha 'q_55_99_v13006_99_Não sabe'
q_56_1_99_velha 'q_56_1_99_v13007_99_Não sabe'
q_56_2_99_velha 'q_56_2_99_v14614_99_não sabe'
q_58_99_velha 'q_58_99_v13010_99_Não sabe'
q_59_99_velha 'q_59_99_v13014_99_Não sabe'
q_60_99_velha 'q_60_99_v13016_99_Não houve'
q_71_1_velha'q_71_1_v10891_1_Quais das comissões permanentes estão funcionando regularmente nesse conselho?Comissão de normas'
q_71_2_velha'q_71_2_v10891_2_Quais das comissões permanentes estão funcionando regularmente nesse conselho?Comissão de política'
q_71_3_velha'q_71_3_v10891_3_Quais das comissões permanentes estão funcionando regularmente nesse conselho?Comissão de financiamento'
q_71_4_velha'q_71_4_v10891_4_Quais das comissões permanentes estão funcionando regularmente nesse conselho?Comissão de acompanhamento de conselhos'
q_71_5_velha'q_71_5_v10891_5_Quais das comissões permanentes estão funcionando regularmente nesse conselho?Comissão de ética'
q_71_6_velha'q_71_6_v10891_6_Quais das comissões permanentes estão funcionando regularmente nesse conselho?Comissão de acompanhamento de benefícios e transferência de renda (BPC, Programa Bolsa Família, etc.)'
q_71_7_velha'q_71_7_v10891_7_Quais das comissões permanentes estão funcionando regularmente nesse conselho? Comissão de fiscalização/monitoramento/cadastro de entidades'
q_71_8_velha'q_71_8_v10891_8_Quais das comissões permanentes estão funcionando regularmente nesse conselho?Comissão de comunicação'
q_71_99_velha'q_71_99_v10891_99_Quais das comissões permanentes estão funcionando regularmente nesse conselho? Outras'
.	





DELETE VARIABLES q_1_1_rec    q_49_1_99_rec   q_49_2_99_rec  q_49_3_99_rec  q_55_99_rec  q_56_1_99_rec  q_56_2_99_rec
q_58_99_rec  q_59_99_rec   q_60_99_rec.






 













