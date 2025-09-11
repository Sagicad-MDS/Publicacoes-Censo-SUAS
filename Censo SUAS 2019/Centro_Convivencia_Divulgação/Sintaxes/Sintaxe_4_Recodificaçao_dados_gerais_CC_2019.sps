
*****recodificar
*q2*********************************

compute q4_velha  =   q4.
execute. 


DO IF (q2=1).
RECODE q4 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q8*********************************


compute q9_1_velha  =   q9_1.
compute q9_2_velha  =  q9_2.
compute q9_3_velha  =   q9_3 .
compute q9_4_velha  =  q9_4.
compute q9_5_velha  =   q9_5 .
compute q9_6_velha  =  q9_6.
compute q9_7_velha  =   q9_7 .
compute q9_8_velha  =  q9_8.
compute q9_9_velha  =   q9_9 .
compute q9_10_velha  =  q9_10.
compute q9_11_velha  =   q9_11 .
compute q9_12_velha  =  q9_12.
compute q9_13_velha  =   q9_13 .
compute q9_14_velha  =  q9_14.
compute q9_99_velha  =   q9_99 .
execute. 


DO IF (q8=0).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
RECODE q9_5 (ELSE=SYSMIS).
RECODE q9_6 (ELSE=SYSMIS).
RECODE q9_7 (ELSE=SYSMIS).
RECODE q9_8 (ELSE=SYSMIS).
RECODE q9_9 (ELSE=SYSMIS).
RECODE q9_10 (ELSE=SYSMIS).
RECODE q9_11 (ELSE=SYSMIS).
RECODE q9_12 (ELSE=SYSMIS).
RECODE q9_13 (ELSE=SYSMIS).
RECODE q9_14 (ELSE=SYSMIS).
RECODE q9_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q10*****************

compute q10_0_velha  =   q10_0 .
compute q10_1_velha  =   q10_1 .
compute q10_2_velha  =  q10_2.
compute q10_3_velha  =   q10_3 .
compute q10_4_velha  =  q10_4.
compute q10_5_velha  =   q10_5 .
compute q10_6_velha  =  q10_6.
compute q10_7_velha  =   q10_7 .
compute q10_99_velha  =   q10_99 .



DO IF (q10_0=1).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE q10_6 (ELSE=SYSMIS).
RECODE q10_7 (ELSE=SYSMIS).
RECODE q10_99  (ELSE=SYSMIS).
END IF.
EXECUTE.

**q11*****************

compute q11_1_velha  =   q11_1 .
compute q11_2_velha  =  q11_2.
compute q11_3_velha  =   q11_3 .
compute q11_4_velha  =  q11_4.
compute q11_5_velha  =   q11_5 .
compute q11_6_velha  =  q11_6.
compute q11_7_velha  =   q11_7 .
compute q11_8_velha  =  q11_8.
compute q11_9_velha  =  q11_9.
compute q11_99_velha  =   q11_99 .



DO IF (q11_1=1).
RECODE q11_2 (ELSE=SYSMIS).
RECODE q11_3 (ELSE=SYSMIS).
RECODE q11_4 (ELSE=SYSMIS).
RECODE q11_5 (ELSE=SYSMIS).
RECODE q11_6 (ELSE=SYSMIS).
RECODE q11_7 (ELSE=SYSMIS).
RECODE q11_8 (ELSE=SYSMIS).
RECODE q11_9  (ELSE=SYSMIS).
RECODE q11_99  (ELSE=SYSMIS).
END IF.
EXECUTE.


*****q14**************


compute  q14_1_velha = q14_1. 
compute q14_2_velha = q14_2.
compute q14_3_velha = q14_3.
compute q14_4_velha = q14_4.
compute q14_5_velha = q14_5.
compute q14_6_velha = q14_6.
compute q14_7_velha = q14_7.
compute q14_8_velha = q14_8. 
compute q14_9_velha = q14_9.
compute q14_0_velha = q14_0.
execute. 


DO IF (q14_0=1).
RECODE q14_1 (ELSE=SYSMIS).
RECODE q14_2 (ELSE=SYSMIS).
RECODE q14_3 (ELSE=SYSMIS).
RECODE q14_4 (ELSE=SYSMIS).
RECODE q14_5 (ELSE=SYSMIS).
RECODE q14_6 (ELSE=SYSMIS).
RECODE q14_7 (ELSE=SYSMIS).
RECODE q14_8 (ELSE=SYSMIS).
RECODE q14_9 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q15***

compute q16_1_velha = q16_1.
compute q16_2_velha = q16_2.
compute q16_3_velha = q16_3. 
compute q16_4_velha = q16_4.
compute q16_5_velha = q16_5.
compute q16_6_velha = q16_6.
compute q16_7_velha = q16_7.
compute q16_8_velha = q16_8.
compute q16_9_velha = q16_9. 
compute q16_10_velha = q16_10.
compute q16_0_velha = q16_0.
compute q17_velha = q17.
execute. 


DO IF (q16_0= 1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_5 (ELSE=SYSMIS).
RECODE q16_6 (ELSE=SYSMIS).
RECODE q16_7 (ELSE=SYSMIS).
RECODE q16_8 (ELSE=SYSMIS).
RECODE q16_9 (ELSE=SYSMIS).
RECODE q16_10 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q15= 0).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_5 (ELSE=SYSMIS).
RECODE q16_6 (ELSE=SYSMIS).
RECODE q16_7 (ELSE=SYSMIS).
RECODE q16_8 (ELSE=SYSMIS).
RECODE q16_9 (ELSE=SYSMIS).
RECODE q16_10 (ELSE=SYSMIS).
RECODE q16_0 (ELSE=SYSMIS).
RECODE q17 (ELSE=SYSMIS).
END IF.
EXECUTE.



*q18**************************

compute q18_1_velha = q18_1. 
compute q18_2_velha = q18_2.
compute q18_3_velha = q18_3.
compute q18_4_velha = q18_4.
compute q18_99_velha = q18_99.
compute q18_0_velha = q18_0.
execute. 


DO IF (q18_0=1).
RECODE q18_1 (ELSE=SYSMIS).
RECODE q18_2 (ELSE=SYSMIS).
RECODE q18_3 (ELSE=SYSMIS).
RECODE q18_4 (ELSE=SYSMIS).
RECODE q18_99  (ELSE=SYSMIS).
END IF.
EXECUTE.



*q19**************************

compute  q19_1_velha = q19_1. 
compute q19_2_velha = q19_2.
compute q19_3_velha = q19_3.
compute q19_4_velha = q19_4.
compute q19_0_velha = q19_0.
execute. 


DO IF (q19_0=1).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


*20*********************************


compute q20_0_velha = q20_0.
compute q20_1_velha = q20_1. 
compute q20_2_velha = q20_2.
compute q20_3_velha = q20_3.
compute q20_4_velha = q20_4.
compute q20_5_velha = q20_5.
compute q20_6_velha = q20_6.
compute q20_99_velha = q20_99.
execute. 


DO IF (q20_0= 1).
RECODE q20_1 (ELSE=SYSMIS).
RECODE q20_2 (ELSE=SYSMIS).
RECODE q20_3 (ELSE=SYSMIS).
RECODE q20_4 (ELSE=SYSMIS).
RECODE q20_5 (ELSE=SYSMIS).
RECODE q20_6 (ELSE=SYSMIS).
RECODE q20_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

***q21********************************************************************


compute q21_0_velha = q21_0.
compute q21_97_velha = q21_97. 
compute q21_1_velha = q21_1.
compute q21_2_velha = q21_2.
compute q21_3_velha = q21_3.
compute q21_4_velha = q21_4.
compute q21_5_velha = q21_5.
compute q21_6_velha = q21_6.
execute. 



DO IF (q21_0=1 | q21_97=1).
RECODE q21_1 (ELSE=SYSMIS).
RECODE q21_2 (ELSE=SYSMIS).
RECODE q21_3 (ELSE=SYSMIS).
RECODE q21_4  (ELSE=SYSMIS).
RECODE q21_5  (ELSE=SYSMIS).
RECODE q21_6 (ELSE=SYSMIS).
END IF.
EXECUTE.



*q28**********************************************************************************


compute q28_1_velha = q28_1.
compute q28_2_velha = q28_2.
compute q28_3_velha = q28_3.
compute q28_4_velha = q28_4.
compute q28_5_velha = q28_5.
compute q28_6_velha = q28_6.
compute q28_7_velha = q28_7.
compute q28_8_velha = q28_8.
compute q28_9_velha = q28_9.
compute q28_10_velha = q28_10.
compute q28_11_velha = q28_11.
compute q28_12_velha = q28_12.
compute q28_13_velha = q28_13.
compute q28_14_velha = q28_14.
compute q28_99_velha = q28_99.
compute q28_0_velha = q28_0.
execute. 


DO IF (q28_0= 1).
RECODE q28_1 (ELSE=SYSMIS).
RECODE q28_2 (ELSE=SYSMIS).
RECODE q28_3 (ELSE=SYSMIS).
RECODE q28_4 (ELSE=SYSMIS).
RECODE q28_5 (ELSE=SYSMIS).
RECODE q28_6 (ELSE=SYSMIS).
RECODE q28_7  (ELSE=SYSMIS).
RECODE q28_8  (ELSE=SYSMIS).
RECODE q28_9 (ELSE=SYSMIS).
RECODE q28_10 (ELSE=SYSMIS).
RECODE q28_11 (ELSE=SYSMIS).
RECODE q28_12 (ELSE=SYSMIS).
RECODE q28_13 (ELSE=SYSMIS).
RECODE q28_14 (ELSE=SYSMIS).
RECODE q28_99 (ELSE=SYSMIS).
END IF.
EXECUTE.







VARIABLE LABELS
q4_velha'q4_v12575_4. Entidade ou Org.Civil possui Termo de Parceria ou outra forma de contratualização com o poder público municipal para repasse de recursos financeiros, visando à manutenção do Serviço de Convivência e Fortalecimento de Vínculos?'
q9_1_velha'q9_1_v10662_1_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:1: Secretaria da Assistência Social ou congênere'
q9_2_velha'q9_2_v10662_2_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:2: Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-Prefeitura, etc.)'
q9_3_velha'q9_3_v10662_3_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:3: Conselho Municipal de Assistência Social'
q9_4_velha'q9_4_v10662_4_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:4: Conselho Tutelar'
q9_5_velha'q9_5_v10662_5_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:5: CRAS - Centro de Referência da Assistência Social'
q9_6_velha'q9_6_v10662_6_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:6: CREAS – Centro de Referência Especializado de Assistência Social'
q9_7_velha'q9_7_v10662_7_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:7: Unidades de Acolhimento'
q9_8_velha'q9_8_v10662_8_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:8: Centro-dia e similares'
q9_9_velha'q9_9_v10662_9_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:9: Centro POP - Centro de Referência Especializado à População em Situação de Rua'
q9_10_velha'q9_10_v10662_10_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:10: Unidades que executam Serviço Especializado em Abordagem Social'
q9_11_velha'q9_11_v10662_11_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:11: Escola'
q9_12_velha'q9_12_v10662_12_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:12: Unidade de Saúde'
q9_13_velha'q9_13_v10662_13_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:13: Igreja/Templo'
q9_14_velha'q9_14_v10662_14_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:14: Associação Comunitária'
q9_99_velha'q9_99_v10662_99_9. Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel:99: Outros'
q10_0_velha'q10_0_v14367_0_10. No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?0: Não'
q10_1_velha'q10_1_v14367_1_10. No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?1: Sim, educação (escola, creche, reforço escolar, entre outros)'
q10_2_velha'q10_2_v14367_2_10. Nesta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?2: Sim, saúde (posto de saúde, terapia ocupacional, clínica psicológica, entre outros)'
q10_3_velha'q10_3_v14367_3_10. Nesta Unidade/Serviço são prestados serviços/atividades de outras PP(saúde, educação, esporte, entre outros)?3: Sim, esporte (políticas específicas do esporte como “Segundo Tempo”, “Recreio nas Férias”, entre outras)'
q10_4_velha'q10_4_v14367_4_10. Nesta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?4: Sim, cultura (políticas específicas de cultura como “Ponto de Cultura”, entre outras)'
q10_5_velha'q10_5_v14367_5_10. No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?5: Sim, habitação'
q10_6_velha'q10_6_v14367_6_10. Nesta Unidade/Serviço são prestados serviços/atividades de outras PP?6: Sim, trabalho e inclusão produtiva (cursos profissionalizantes, qualificação profissional, “Jovem Aprendiz”)'
q10_7_velha'q10_7_v14367_7_10. No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?7: Sim, inclusão digital'
q10_99_velha'q10_99_v14367_99_10. No local de funcionamento desta Unidade/Serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?99: Sim, outra'
q11_1_velha'q11_1_v12603_1_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?1: Uso apenas da sede'
q11_2_velha'q11_2_v12603_2_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?2: Em outras unidades/equipamentos públicos da Assistência Social'
q11_3_velha'q11_3_v12603_3_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?3: Em espaços de entidades ou Organizações da Sociedade Civil parceiras com a Assistência Social'
q11_4_velha'q11_4_v12603_4_11. Espaços físicos utilizados para a oferta do SCFV?4: Em espaços cedidos por org. comunitárias locais não conveniadas com a AS (Igrejas, Associação de Moradores, Org.Civil não conveniadas, etc)'
q11_5_velha'q11_5_v12603_5_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?5: Em unidades/equipamentos públicos da área de Educação'
q11_6_velha'q11_6_v12603_6_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?6: Em unidades/equipamentos públicos da área de Saúde'
q11_7_velha'q11_7_v12603_7_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?7: Em unidades/equipamentos públicos de outras políticas públicas'
q11_8_velha'q11_8_v12603_8_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?8: Em espaços públicos como em praças, parques, quadras, beira de rio, praia, terreno da comunidade, etc'
q11_9_velha'q11_9_v12603_9_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?9: Em residência de usuárias(os) (quando o grupo é realizado na residência do usuário. Não é visita domiciliar)'
q11_99_velha'q11_99_v12603_99_11. Quais outros espaços físicos, fora da unidade de oferta do SCFV, são utilizados para a oferta do Serviço?99: Outro'
q14_1_velha'q14_1_v10703_1_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:1: Visitas domiciliares da equipe técnica da Unidade à família das(os) usuárias(os)'
q14_2_velha'q14_2_v10703_2_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:2: Reuniões com grupos de famílias das(os) usuárias(os)'
q14_3_velha'q14_3_v10703_3_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:3: Palestras'
q14_4_velha'q14_4_v10703_4_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:4: Oficinas/Atividades'
q14_5_velha'q14_5_v10703_5_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:5: Atividades recreativas'
q14_6_velha'q14_6_v10703_6_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:6: Discussão de casos com outras(os) profissionais da rede socioassitencial'
q14_7_velha'q14_7_v10703_7_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:7: Atividades com participação da Comunidade'
q14_8_velha'q14_8_v10703_8_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:8: Planejamento de atividades'
q14_9_velha'q14_9_v10703_9_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:9: Registro e monitoramento das informações do SCFV'
q14_0_velha'q14_0_v10703_0_14.Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência:0: Não realiza nenhuma das atividades acima'
q16_1_velha'q16_1_v12608_1_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?1: Participa no planejamento das atividades que serão desenvolvidas'
q16_2_velha'q16_2_v12608_2_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?2: Participa de reuniões periódicas com a equipe de referência desta unidade'
q16_3_velha'q16_3_v12608_3_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?3: Supervisiona as(os) orientadoras(es) sociais'
q16_4_velha'q16_4_v12608_4_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?4: Capacita as(os) orientadoras(es) sociais'
q16_5_velha'q16_5_v12608_5_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?5: Acompanha periodicamente os grupos'
q16_6_velha'q16_6_v12608_6_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?6: Verifica a inclusão e acompanha a trajetória de usuárias(os) encaminhadas(os) pelo CRAS'
q16_7_velha'q16_7_v12608_7_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?7: Acompanha as(os) usuárias(os) encaminhadas(os) do SCFV para o CRAS'
q16_8_velha'q16_8_v12608_8_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?8: Avalia e monitora as atividades realizadas'
q16_9_velha'q16_9_v12608_9_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?9: Discute casos em conjunto com a equipe do SCFV'
q16_10_velha'q16_10_v12608_10_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?10: Registra e monitora as informações do SCFV por meio do SISC'
q16_0_velha'q16_0_v12608_0_16. Quais atividades as(os) técnicas(os) de referência do CRAS utilizam para acompanhar este Centro de Convivência?0: Nenhum dos itens anteriores'
q17_velha'q17_v14371_17. Em relação às vagas de SCFV desta unidades, informe se:'
q18_1_velha'q18_1_v14372_1_18. Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?1: Através de diagnóstico da equipe técnica do CRAS'
q18_2_velha'q18_2_v14372_2_18. Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?2: Através de diagnóstico da equipe técnica do Centro de Conviviência'
q18_3_velha'q18_3_v14372_3_18. Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?3: Através de diagnóstico da equipe do órgão gestor de Assistência Social'
q18_4_velha'q18_4_v14372_4_18. Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?4: Através de diagnóstico de profissionais do Sistema de Garantia de Direitos'
q18_99_velha'q18_99_v14372_99_18. Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?99: Outros'
q18_0_velha'q18_0_v14372_0_18. Em geral, como é identificada a situação prioritária de usuárias(os) do SCFV?0: Não são identificadas as situações prioritárias de usuárias(os) deste Centro de Convivência'
q19_1_velha'q19_1_v10706_1_19. São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?1: Sim, por esta unidade'
q19_2_velha'q19_2_v10706_2_19. São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?2: Sim, pela equipe do CRAS de referência'
q19_3_velha'q19_3_v10706_3_19. São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?3: Sim, pela equipe do órgão gestor da Assistência Social'
q19_4_velha'q19_4_v10706_4_19. São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?4: Sim, por outra equipe'
q19_0_velha'q19_0_v10706_0_19. São desenvolvidas atividades socioassistenciais com familiares/responsáveis de participantes dos grupos do SCFV?0: Não'
q20_0_velha'q20_0_v10711_0_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?0: Não atendeu'
q20_1_velha'q20_1_v10711_1_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?1: Sim, Povos Indígenas'
q20_2_velha'q20_2_v10711_2_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?2: Sim, Comunidade Quilombola'
q20_3_velha'q20_3_v10711_3_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?3: Sim, Comunidade Ribeirinha'
q20_4_velha'q20_4_v10711_4_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?4: Sim, Povos Ciganos'
q20_5_velha'q20_5_v10711_5_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?5: Sim, Povos de Matriz Africana'
q20_6_velha'q20_6_v10711_6_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?6: Sim, Extrativistas'
q20_99_velha'q20_99_v10711_99_20. Em 2019, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?99: Sim, outros povos e comunidades tradicionais'
q21_0_velha'q21_0_v14374_0_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?0: Não atendeu'
q21_97_velha'q21_97_v14374_97_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?97: Não há o registro se as(os) usuárias(os) desta unidade recebem benefícios assistenciais'
q21_1_velha'q21_1_v14374_1_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?1: Sim, crianças e adolescentes com deficiência beneficiárias do Benefício de Prestação Continuada'
q21_2_velha'q21_2_v14374_2_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?2: Sim, adultas(os) com deficiência beneficiárias(os) do Benefício de Prestação Continuada'
q21_3_velha'q21_3_v14374_3_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?3: Sim, pessoas idosas beneficiárias do Benefício de Prestação Continuada'
q21_4_velha'q21_4_v14374_4_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?4: Sim, crianças e adolescentes de famílias beneficiárias do Programa Bolsa Família'
q21_5_velha'q21_5_v14374_5_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?5: Sim, adultas(os) beneficiárias(os) do Programa Bolsa Família'
q21_6_velha'q21_6_v14374_6_21. Em 2019, esta unidade atendeu, no SCFV, pessoas que recebem benefícios assistenciais?6: Sim, pessoas idosas beneficiárias do Programa Bolsa Família'
q28_1_velha'q28_1_v12622_1_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?1: Deficiência'
q28_2_velha'q28_2_v12622_2_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?2: Gênero'
q28_3_velha'q28_3_v12622_3_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?3: População em situação de rua'
q28_4_velha'q28_4_v12622_4_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?4: População LGBT, orientação sexual e identidade de gênero'
q28_5_velha'q28_5_v12622_5_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?5: Álcool e outras drogas'
q28_6_velha'q28_6_v12622_6_28. Nos últimos 12 meses, a Unidade proporcionou/facilitou participação de profissionais em capacitação sobre o tema?6: Diversidade étnico-racial (questão racial, comunidades indígenas, povos e comunidades tradicionais etc)'
q28_7_velha'q28_7_v12622_7_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?7: Violências e violações de direitos'
q28_8_velha'q28_8_v12622_8_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?8: Trabalho Infantil'
q28_9_velha'q28_9_v12622_9_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?9: Criança e Adolescente'
q28_10_velha'q28_10_v12622_10_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?10: Juventude'
q28_11_velha'q28_11_v12622_11_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?11: Envelhecimento'
q28_12_velha'q28_12_v12622_12_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?12: Sistema Socioeducativo/Medida Socioeducativa/SINASE'
q28_13_velha'q28_13_v12622_13_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?13: Migração'
q28_14_velha'q28_14_v12622_14_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?14: Mundo do Trabalho'
q28_99_velha'q28_99_v12622_99_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?99: Outros'
q28_0_velha'q28_0_v12622_0_28. Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas(seus) profissionais em capacitação sobre os seguintes temas?0: Não proporcionou/facilitou a participação dos profissionais'
.
