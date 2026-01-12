
*****recodificar
*q2*********************************

compute q_4_velha  =   q_4.
execute. 


DO IF (q_2=1).
RECODE q_4 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q8*********************************


compute q_9_1_velha  =   q_9_1.
compute q_9_2_velha  =  q_9_2.
compute q_9_3_velha  =   q_9_3 .
compute q_9_4_velha  =  q_9_4.
compute q_9_5_velha  =   q_9_5 .
compute q_9_6_velha  =  q_9_6.
compute q_9_7_velha  =   q_9_7 .
compute q_9_8_velha  =  q_9_8.
compute q_9_9_velha  =   q_9_9 .
compute q_9_10_velha  =  q_9_10.
compute q_9_11_velha  =   q_9_11 .
compute q_9_12_velha  =  q_9_12.
compute q_9_13_velha  =   q_9_13 .
compute q_9_14_velha  =  q_9_14.
compute q_9_99_velha  =   q_9_99 .
execute. 


DO IF (q_8=0).
RECODE q_9_1 (ELSE=SYSMIS).
RECODE q_9_2 (ELSE=SYSMIS).
RECODE q_9_3 (ELSE=SYSMIS).
RECODE q_9_4 (ELSE=SYSMIS).
RECODE q_9_5 (ELSE=SYSMIS).
RECODE q_9_6 (ELSE=SYSMIS).
RECODE q_9_7 (ELSE=SYSMIS).
RECODE q_9_8 (ELSE=SYSMIS).
RECODE q_9_9 (ELSE=SYSMIS).
RECODE q_9_10 (ELSE=SYSMIS).
RECODE q_9_11 (ELSE=SYSMIS).
RECODE q_9_12 (ELSE=SYSMIS).
RECODE q_9_13 (ELSE=SYSMIS).
RECODE q_9_14 (ELSE=SYSMIS).
RECODE q_9_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q10*****************

compute q_10_1_velha  =   q_10_1 .
compute q_10_2_velha  =  q_10_2.
compute q_10_3_velha  =   q_10_3 .
compute q_10_4_velha  =  q_10_4.
compute q_10_5_velha  =   q_10_5 .
compute q_10_6_velha  =  q_10_6.
compute q_10_7_velha  =   q_10_7 .
compute q_10_8_velha  =  q_10_8.
compute q_10_99_velha  =   q_10_99 .



DO IF (q_10_1=1).
RECODE q_10_1 (ELSE=SYSMIS).
RECODE q_10_2 (ELSE=SYSMIS).
RECODE q_10_3 (ELSE=SYSMIS).
RECODE q_10_4 (ELSE=SYSMIS).
RECODE q_10_5 (ELSE=SYSMIS).
RECODE q_10_6 (ELSE=SYSMIS).
RECODE q_10_7 (ELSE=SYSMIS).
RECODE q_10_8 (ELSE=SYSMIS).
RECODE q_10_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

**q11*****************

compute q_11_1_velha  =   q_11_1 .
compute q_11_2_velha  =  q_11_2.
compute q_11_3_velha  =   q_11_3 .
compute q_11_4_velha  =  q_11_4.
compute q_11_5_velha  =   q_11_5 .
compute q_11_6_velha  =  q_11_6.
compute q_11_7_velha  =   q_11_7 .
compute q_11_8_velha  =  q_11_8.
compute q_11_9_velha  =  q_11_9.
compute q_11_99_velha  =   q_11_99 .



DO IF (q_11_1=1).
RECODE q_11_1 (ELSE=SYSMIS).
RECODE q_11_2 (ELSE=SYSMIS).
RECODE q_11_3 (ELSE=SYSMIS).
RECODE q_11_4 (ELSE=SYSMIS).
RECODE q_11_5 (ELSE=SYSMIS).
RECODE q_11_6 (ELSE=SYSMIS).
RECODE q_11_7 (ELSE=SYSMIS).
RECODE q_11_8 (ELSE=SYSMIS).
RECODE q_11_9  (ELSE=SYSMIS).
RECODE q_11_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q14**************


compute  q_14_1_velha = q_14_1. 
compute q_14_2_velha = q_14_2.
compute q_14_3_velha = q_14_3.
compute q_14_4_velha = q_14_4.
compute q_14_5_velha = q_14_5.
compute q_14_6_velha = q_14_6.
compute q_14_7_velha = q_14_7.
compute q_14_8_velha = q_14_8. 
compute q_14_9_velha = q_14_9.
compute q_14_0_velha = q_14_0.
execute. 


DO IF (q_14_0=1).
RECODE q_14_1 (ELSE=SYSMIS).
RECODE q_14_2 (ELSE=SYSMIS).
RECODE q_14_3 (ELSE=SYSMIS).
RECODE q_14_4 (ELSE=SYSMIS).
RECODE q_14_5 (ELSE=SYSMIS).
RECODE q_14_6 (ELSE=SYSMIS).
RECODE q_14_7 (ELSE=SYSMIS).
RECODE q_14_8 (ELSE=SYSMIS).
RECODE q_14_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q15***

compute q_16_1_velha = q_16_1.
compute q_16_2_velha = q_16_2.
compute q_16_3_velha = q_16_3. 
compute q_16_4_velha = q_16_4.
compute q_16_5_velha = q_16_5.
compute q_16_6_velha = q_16_6.
compute q_16_7_velha = q_16_7.
compute q_16_8_velha = q_16_8.
compute q_16_9_velha = q_16_9. 
compute q_16_10_velha = q_16_10.
compute q_16_0_velha = q_16_0.
compute q_17_velha = q_17.
execute. 


DO IF (q_16_0= 1).
RECODE q_16_1 (ELSE=SYSMIS).
RECODE q_16_2 (ELSE=SYSMIS).
RECODE q_16_3 (ELSE=SYSMIS).
RECODE q_16_4 (ELSE=SYSMIS).
RECODE q_16_5 (ELSE=SYSMIS).
RECODE q_16_6 (ELSE=SYSMIS).
RECODE q_16_7 (ELSE=SYSMIS).
RECODE q_16_8 (ELSE=SYSMIS).
RECODE q_16_9 (ELSE=SYSMIS).
RECODE q_16_10 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q_15= 0).
RECODE q_16_1 (ELSE=SYSMIS).
RECODE q_16_2 (ELSE=SYSMIS).
RECODE q_16_3 (ELSE=SYSMIS).
RECODE q_16_4 (ELSE=SYSMIS).
RECODE q_16_5 (ELSE=SYSMIS).
RECODE q_16_6 (ELSE=SYSMIS).
RECODE q_16_7 (ELSE=SYSMIS).
RECODE q_16_8 (ELSE=SYSMIS).
RECODE q_16_9 (ELSE=SYSMIS).
RECODE q_16_10 (ELSE=SYSMIS).
RECODE q_16_0 (ELSE=SYSMIS).
RECODE q_17 (ELSE=SYSMIS).
END IF.
EXECUTE.



*q18**************************

compute q_18_1_velha = q_18_1. 
compute q_18_2_velha = q_18_2.
compute q_18_3_velha = q_18_3.
compute q_18_4_velha = q_18_4.
compute q_18_99_velha = q_18_99.
compute q_18_0_velha = q_18_0.
execute. 


DO IF (q_18_0=1).
RECODE q_18_1 (ELSE=SYSMIS).
RECODE q_18_2 (ELSE=SYSMIS).
RECODE q_18_3 (ELSE=SYSMIS).
RECODE q_18_4 (ELSE=SYSMIS).
RECODE q_18_99  (ELSE=SYSMIS).
END IF.
EXECUTE.



*q19**************************

compute  q_19_1_velha = q_19_1. 
compute q_19_2_velha = q_19_2.
compute q_19_3_velha = q_19_3.
compute q_19_4_velha = q_19_4.
compute q_19_0_velha = q_19_0.
execute. 


DO IF (q_19_0=1).
RECODE q_19_1 (ELSE=SYSMIS).
RECODE q_19_2 (ELSE=SYSMIS).
RECODE q_19_3 (ELSE=SYSMIS).
RECODE q_19_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


*20*********************************


compute q_20_0_velha = q_20_0.
compute q_20_1_velha = q_20_1. 
compute q_20_2_velha = q_20_2.
compute q_20_3_velha = q_20_3.
compute q_20_4_velha = q_20_4.
compute q_20_5_velha = q_20_5.
compute q_20_6_velha = q_20_6.
compute q_20_99_velha = q_20_99.
execute. 


DO IF (q_20_0= 1).
RECODE q_20_1 (ELSE=SYSMIS).
RECODE q_20_2 (ELSE=SYSMIS).
RECODE q_20_3 (ELSE=SYSMIS).
RECODE q_20_4 (ELSE=SYSMIS).
RECODE q_20_5 (ELSE=SYSMIS).
RECODE q_20_6 (ELSE=SYSMIS).
RECODE q_20_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q21********************************************************************


compute q_21_0_velha = q_21_0.
compute q_21_1_velha = q_21_1. 
compute q_21_2_velha = q_21_2.
compute q_21_3_velha = q_21_3.
compute q_21_4_velha = q_21_4.
compute q_21_5_velha = q_21_5.
compute q_21_6_velha = q_21_6.
compute q_21_7_velha = q_21_7.
execute. 



DO IF (q_21_0=1 | q_21_1=1).
RECODE q_20_2 (ELSE=SYSMIS).
RECODE q_20_3 (ELSE=SYSMIS).
RECODE q_20_4  (ELSE=SYSMIS).
RECODE q_20_5  (ELSE=SYSMIS).
RECODE q_20_6 (ELSE=SYSMIS).
RECODE q_20_99  (ELSE=SYSMIS).
END IF.
EXECUTE.



*q28**********************************************************************************


compute q_28_1_velha = q_28_1.
compute q_28_2_velha = q_28_2.
compute q_28_3_velha = q_28_3.
compute q_28_4_velha = q_28_4.
compute q_28_5_velha = q_28_5.
compute q_28_6_velha = q_28_6.
compute q_28_7_velha = q_28_7.
compute q_28_8_velha = q_28_8.
compute q_28_9_velha = q_28_9.
compute q_28_10_velha = q_28_10.
compute q_28_11_velha = q_28_11.
compute q_28_12_velha = q_28_12.
compute q_28_13_velha = q_28_13.
compute q_28_14_velha = q_28_14.
compute q_28_99_velha = q_28_99.
compute q_28_0_velha = q_28_0.
execute. 


DO IF (q_28_0= 1).
RECODE q_28_1 (ELSE=SYSMIS).
RECODE q_28_2 (ELSE=SYSMIS).
RECODE q_28_3 (ELSE=SYSMIS).
RECODE q_28_4 (ELSE=SYSMIS).
RECODE q_28_5 (ELSE=SYSMIS).
RECODE q_28_6 (ELSE=SYSMIS).
RECODE q_28_7  (ELSE=SYSMIS).
RECODE q_28_8  (ELSE=SYSMIS).
RECODE q_28_9 (ELSE=SYSMIS).
RECODE q_28_10 (ELSE=SYSMIS).
RECODE q_28_11 (ELSE=SYSMIS).
RECODE q_28_12 (ELSE=SYSMIS).
RECODE q_28_13 (ELSE=SYSMIS).
RECODE q_28_14 (ELSE=SYSMIS).
RECODE q_28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.







VARIABLE LABELS
q_4_velha	'q_4_v12575_A entidade ou Organização da Sociedade Civil possui Termo de Parceria ou outra forma de contratualização com o poder público municipal para repasse de recursos financeiros, visando à manutenção do SCFV?'
q_9_1_velha 'q_9_1_v10662_1_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:1 - Secretaria da Assistência Social ou congênere'
q_9_2_velha	 'q_9_2_v10662_2_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:2 - Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-Prefeitura, etc.)'
q_9_3_velha	 'q_9_3_v10662_3_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:3 - Conselho Municipal de Assistência Social'
q_9_4_velha 'q_9_4_v10662_4_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:4 - Conselho Tutelar'
q_9_5_velha	 'q_9_5_v10662_5_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:5 - CRAS - Centro de Referência da Assistência Social'
q_9_6_velha	 'q_9_6_v10662_6_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:6 - CREAS ? Centro de Referência Especializado de Assistência Social'
q_9_7_velha	 'q_9_7_v10662_7_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:7 - Unidades de Acolhimento'
q_9_8_velha	 'q_9_8_v10662_8_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:8 - Centro-dia e similares'
q_9_9_velha	 'q_9_9_v10662_9_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:9 - Centro POP - Centro de Referência Especializado à População em Situação de Rua'
q_9_10_velha	'q_9_10_v10662_10_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:10 - Unidades que executam Serviço Especializado em Abordagem Social'
q_9_11_velha	'q_9_11_v10662_11_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:11 - Escola'
q_9_12_velha	'q_9_12_v10662_12_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:12 - Unidade de Saúde'
q_9_13_velha	'q_9_13_v10662_13_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:13 - Igreja/Templo'
q_9_14_velha	'q_9_14_v10662_14_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:14 - Associação Comunitária'
q_9_99_velha	'q_9_99_v10662_99_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:99 - Outros'
q_10_1_velha	'q_10_1_v14367_1_No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?1 - Não'
q_10_2_velha	'q_10_2_v14367_2_No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?2 - Sim, educação (escola, creche, reforço escolar, entre outros)'
q_10_3_velha	'q_10_3_v14367_3_No local  desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas?3 - Sim, saúde (posto de saúde, terapia ocupacional, clínica psicológica, entre outros)'
q_10_4_velha	'q_10_4_v14367_4_No local desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?4 - Sim, esporte (políticas como Segundo Tempo, Recreio nas Férias, entre outras)'
q_10_5_velha	'q_10_5_v14367_5_No local  desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas?5 - Sim, cultura (políticas específicas de cultura como Ponto de Cultura, entre outras)'
q_10_6_velha	'q_10_6_v14367_6_No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?6 - Sim, habitação'
q_10_7_velha	'q_10_7_v14367_7_No local desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas?7 - Sim, trabalho e inclusão produtiva (cursos profissionalizantes, qualificação profissional, Jovem Aprendiz)'
q_10_8_velha	'q_10_8_v14367_8_No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?8 - Sim, inclusão digital'
q_10_99_velha	'q_10_99_v14367_99_No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?99 - Sim, outra'
q_11_1_velha	'q_11_1_v12603_1_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?1 - Uso apenas da sede'
q_11_2_velha	'q_11_2_v12603_2_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?2 - Em outras unidades/equipamentos públicos da Assistência Social'
q_11_3_velha	'q_11_3_v12603_3_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?3 - Em espaços de entidades ou Organizações da Sociedade Civil parceiras com a Assistência Social'
q_11_4_velha	'q_11_4_v12603_4_Quais outros espaços, são utilizados para a oferta do SCFV?4 - Em espaços cedidos por organizações comunitárias locais não conveniadas com a AS (Igrejas, Associação de Moradores, ONG não conveniadas, etc)'
q_11_5_velha	'q_11_5_v12603_5_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?5 - Em unidades/equipamentos públicos da área de Educação'
q_11_6_velha	'q_11_6_v12603_6_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?6 - Em unidades/equipamentos públicos da área de Saúde'
q_11_7_velha	'q_11_7_v12603_7_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?7 - Em unidades/equipamentos públicos de outras políticas públicas'
q_11_8_velha	'q_11_8_v12603_8_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?8 - Em espaços públicos como em praças, parques, quadras, beira de rio, praia, terreno da comunidade, etc'
q_11_9_velha	'q_11_9_v12603_9_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?9 - Em residência de usuárias(os) (quando o grupo é realizado na residência do usuário. Não é visita domiciliar)'
q_11_99_velha	'q_11_99_v12603_99_Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?99 - Outro'
q_14_1_velha	'q_14_1_v10703_1_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:1 - Visitas domiciliares da equipe técnica da Unidade à família das(os) usuárias(os)'
q_14_2_velha	'q_14_2_v10703_2_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:2 - Reuniões com grupos de famílias das(os) usuárias(os)'
q_14_3_velha	'q_14_3_v10703_3_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:3 - Palestras'
q_14_4_velha	'q_14_4_v10703_4_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:4 - Oficinas/Atividades'
q_14_5_velha	'q_14_5_v10703_5_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:5 - Atividades recreativas'
q_14_6_velha	'q_14_6_v10703_6_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:6 - Discussão de casos com outras(os) profissionais da rede socioassitencial'
q_14_7_velha	'q_14_7_v10703_7_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:7 - Atividades com participação da Comunidade'
q_14_8_velha	'q_14_8_v10703_8_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:8 - Planejamento de atividades'
q_14_9_velha	'q_14_9_v10703_9_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:9 - Registro e monitoramento das informações do SCFV'
q_14_0_velha	'q_14_0_v10703_0_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:0 - Não realiza nenhuma das atividades acima'
q_16_1_velha	'q_16_1_v12608_1_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?1 - Participa no planejamento das atividades que serão desenvolvidas'
q_16_2_velha	'q_16_2_v12608_2_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?2 - Participa de reuniões periódicas com a equipe de referência desta unidade'
q_16_3_velha	'q_16_3_v12608_3_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?3 - Supervisiona as(os) orientadoras(es) sociais'
q_16_4_velha	'q_16_4_v12608_4_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?4 - Capacita as(os) orientadoras(es) sociais'
q_16_5_velha	'q_16_5_v12608_5_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?5 - Acompanha periodicamente os grupos'
q_16_6_velha	'q_16_6_v12608_6_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?6 - Verifica a inclusão e acompanha a trajetória de usuárias(os) encaminhadas(os) pelo CRAS'
q_16_7_velha	'q_16_7_v12608_7_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?7 - Acompanha as(os) usuárias(os) encaminhadas(os) do SCFV para o CRAS'
q_16_8_velha	'q_16_8_v12608_8_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?8 - Avalia e monitora as atividades realizadas'
q_16_9_velha	'q_16_9_v12608_9_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?9 - Discute casos em conjunto com a equipe do SCFV'
q_16_10_velha	'q_16_10_v12608_10_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?10 - Registra e monitora as informações do SCFV por meio do SISC'
q_16_0_velha	'q_16_0_v12608_0_Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?0 - Nenhum dos itens anteriores'
q_17_velha	'q_17_v14371_Em relação às vagas de SCFV desta unidades, informe se:'
q_18_1_velha	'q_18_1_v14372_1_Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?1 - Através de diagnóstico da equipe técnica do CRAS'
q_18_2_velha	'q_18_2_v14372_2_Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?2 - Através de diagnóstico da equipe técnica do Centro de Conviviência'
q_18_3_velha	'q_18_3_v14372_3_Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?3 - Através de diagnóstico da equipe do órgão gestor de Assistência Social'
q_18_4_velha	'q_18_4_v14372_4_Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?4 - Através de diagnóstico de profissionais do Sistema de Garantia de Direitos'
q_18_99_velha	'q_18_99_v14372_99_Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?99 - Outros'
q_18_0_velha	'q_18_0_v14372_0_Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?0 - Não são identificadas as situações prioritárias de usuárias(os) deste Centro de Convivência'
q_19_1_velha	'q_19_1_v10706_1_São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?1 - Sim, por esta unidade'
q_19_2_velha	'q_19_2_v10706_2_São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?2 - Sim, pela equipe do CRAS de referência'
q_19_3_velha	'q_19_3_v10706_3_São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?3 - Sim, pela equipe do órgão gestor da Assistência Social'
q_19_4_velha	'q_19_4_v10706_4_São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?4 - Sim, por outra equipe'
q_19_0_velha	'q_19_0_v10706_0_São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?0 - Não'
q_20_0_velha	'q_20_0_v10711_0_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?0 - Não atendeu'
q_20_1_velha	'q_20_1_v10711_1_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?1 - Sim, Povos Indígenas'
q_20_2_velha	'q_20_2_v10711_2_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?2 - Sim, Comunidade Quilombola'
q_20_3_velha	'q_20_3_v10711_3_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?3 - Sim, Comunidade Ribeirinha'
q_20_4_velha	'q_20_4_v10711_4_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?4 - Sim, Povos Ciganos'
q_20_5_velha	'q_20_5_v10711_5_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?5 - Sim, Povos de Matriz Africana'
q_20_6_velha	'q_20_6_v10711_6_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?6 - Sim, Extrativistas'
q_20_99_velha	'q_20_99_v10711_99_Em 2018, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?99 - Sim, outros povos e comunidades tradicionais'
q_21_0_velha	'q_21_0_v14374_0_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?0 - Não atendeu'
q_21_1_velha	'q_21_1_v14374_1_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?1 - Não há o registro se as(os) usuárias(os) desta unidade recebem benefícios assistenciais'
q_21_2_velha	'q_21_2_v14374_2_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?2 - Sim, crianças e adolescentes com deficiência beneficiárias do Benefício de Prestação Continuada'
q_21_3_velha	'q_21_3_v14374_3_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?3 - Sim, adultas(os) com deficiência beneficiárias(os) do Benefício de Prestação Continuada'
q_21_4_velha	'q_21_4_v14374_4_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?4 - Sim, pessoas idosas beneficiárias do Benefício de Prestação Continuada'
q_21_5_velha	'q_21_5_v14374_5_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?5 - Sim, crianças e adolescentes de famílias beneficiárias do Programa Bolsa Família'
q_21_6_velha	'q_21_6_v14374_6_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?6 - Sim, adultas(os) beneficiárias(os) do Programa Bolsa Família'
q_21_7_velha	'q_21_7_v14374_7_Em 2018, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?7 - Sim, pessoas idosas beneficiárias do Programa Bolsa Família'
q_28_1_velha	'q_28_1_v12622_1_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?1 - Deficiência'
q_28_2_velha	'q_28_2_v12622_2_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?2 - Gênero'
q_28_3_velha	'q_28_3_v12622_3_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?3 - População em situação de rua'
q_28_4_velha	'q_28_4_v12622_4_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?4 - População LGBT, orientação sexual e identidade de gênero'
q_28_5_velha	'q_28_5_v12622_5_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?5 - Álcool e outras drogas'
q_28_6_velha	'q_28_6_v12622_6_Nos últimos 12 meses, a Unidade proporcionou/facilitou a participação de seus profissionais na capacitação de?6 - Diversidade étnico-racial (questão racial, comunidades indígenas, povos e comunidades tradicionais etc)'
q_28_7_velha	'q_28_7_v12622_7_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?7 - Violências e violações de direitos'
q_28_8_velha	'q_28_8_v12622_8_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?8 - Trabalho Infantil'
q_28_9_velha	'q_28_9_v12622_9_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?9 - Criança e Adolescente'
q_28_10_velha	'q_28_10_v12622_10_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?10 - Juventude'
q_28_11_velha	'q_28_11_v12622_11_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?11 - Envelhecimento'
q_28_12_velha	'q_28_12_v12622_12_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?12 - Sistema Socioeducativo/Medida Socioeducativa/SINASE'
q_28_13_velha	'q_28_13_v12622_13_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?13 - Migração'
q_28_14_velha	'q_28_14_v12622_14_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?14 - Mundo do Trabalho'
q_28_99_velha	'q_28_99_v12622_99_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?99 - Outros'
q_28_0_velha	'q_28_0_v12622_0_Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?0 - Não proporcionou/facilitou a participação dos profissionais'
.
