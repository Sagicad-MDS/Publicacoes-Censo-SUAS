
*** Rodar as mesmas críticas que devem constar na aplicação

***q9*********************************

compute q10_1_velha = q10_1. 
compute q10_2_velha = q10_2. 
compute q10_3_velha = q10_3. 
compute q10_4_velha = q10_4. 
compute q10_5_velha = q10_5. 
compute q10_6_velha = q10_6. 
compute q10_7_velha = q10_7. 
compute q10_8_velha = q10_8. 
compute q10_9_velha = q10_9. 
compute q10_10_velha = q10_10. 
compute q10_11_velha = q10_11. 
compute q10_12_velha = q10_12. 
compute q10_13_velha = q10_13. 
compute q10_14_velha = q10_14. 
compute q10_15_velha = q10_15. 
compute q10_16_velha = q10_16. 
compute q10_17_velha = q10_17. 
compute q10_99_velha = q10_99.
execute.
 

DO IF (q9=0).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE q10_6 (ELSE=SYSMIS).
RECODE q10_7 (ELSE=SYSMIS).
RECODE q10_8 (ELSE=SYSMIS).
RECODE q10_9 (ELSE=SYSMIS).
RECODE q10_10 (ELSE=SYSMIS).
RECODE q10_11 (ELSE=SYSMIS).
RECODE q10_12 (ELSE=SYSMIS).
RECODE q10_13 (ELSE=SYSMIS).
RECODE q10_14 (ELSE=SYSMIS).
RECODE q10_15 (ELSE=SYSMIS).
RECODE q10_16 (ELSE=SYSMIS).
RECODE q10_17 (ELSE=SYSMIS).
RECODE q10_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q11*****************

compute q11_0_velha = q11_0. 
compute q11_1_velha = q11_1. 
compute q11_2_velha = q11_2. 
compute q11_3_velha = q11_3. 
compute q11_4_velha = q11_4. 
compute q11_5_velha = q11_5. 
compute q11_6_velha = q11_6. 
compute q11_7_velha = q11_7. 
compute q11_8_velha = q11_8. 
compute q11_9_velha = q11_9. 
compute q11_99_velha = q11_99.
execute.


DO IF (q11_0=1).
RECODE q11_1 (ELSE=SYSMIS).
RECODE q11_2 (ELSE=SYSMIS).
RECODE q11_3 (ELSE=SYSMIS).
RECODE q11_4 (ELSE=SYSMIS).
RECODE q11_5 (ELSE=SYSMIS).
RECODE q11_6 (ELSE=SYSMIS).
RECODE q11_7 (ELSE=SYSMIS).
RECODE q11_8 (ELSE=SYSMIS).
RECODE q11_9 (ELSE=SYSMIS).
RECODE q11_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**q12*****************

compute q12_1_velha = q12_1. 
compute q12_2_velha = q12_2. 
compute q12_3_velha = q12_3. 
compute q12_4_velha = q12_4. 
compute q12_5_velha = q12_5. 
compute q12_6_velha = q12_6. 
compute q12_7_velha = q12_7. 
compute q12_8_velha = q12_8. 
compute q12_9_velha = q12_9.
 compute q12_10_velha = q12_10. 
compute q12_99_velha = q12_99.
execute.

DO IF (q12_1=1).
RECODE q12_2 (ELSE=SYSMIS).
RECODE q12_3 (ELSE=SYSMIS).
RECODE q12_4 (ELSE=SYSMIS).
RECODE q12_5 (ELSE=SYSMIS).
RECODE q12_6 (ELSE=SYSMIS).
RECODE q12_7 (ELSE=SYSMIS).
RECODE q12_8 (ELSE=SYSMIS).
RECODE q12_9 (ELSE=SYSMIS).
RECODE q12_10 (ELSE=SYSMIS).
RECODE q12_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

*****q16*************

compute q16_1_velha = q16_1. 
compute q16_2_velha = q16_2. 
compute q16_3_velha = q16_3. 
compute q16_4_velha = q16_4. 
compute q16_5_velha = q16_5. 
compute q16_6_velha = q16_6. 
compute q16_7_velha = q16_7. 
compute q16_8_velha = q16_8. 
compute q16_9_velha = q16_9.
 compute q16_0_velha = q16_0. 
compute q16_99_velha = q16_99.
execute.

DO IF (q16_0=1).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2 (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4 (ELSE=SYSMIS).
RECODE q16_5 (ELSE=SYSMIS).
RECODE q16_6 (ELSE=SYSMIS).
RECODE q16_7 (ELSE=SYSMIS).
RECODE q16_8 (ELSE=SYSMIS).
RECODE q16_9 (ELSE=SYSMIS).
RECODE q16_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*************q17***

compute q18_velha = q18. 
compute q19_1_velha = q19_1. 
compute q19_2_velha = q19_2. 
compute q19_3_velha = q19_3. 
compute q19_4_velha = q19_4. 
compute q19_5_velha = q19_5. 
compute q19_6_velha = q19_6. 
compute q19_7_velha = q19_7. 
compute q19_8_velha = q19_8. 
compute q19_9_velha = q19_9.
 compute q19_10_velha = q19_10. 
compute q19_99_velha = q19_99.
 compute q19_0_velha = q19_0. 
execute.


DO IF (q17= 0).
RECODE q18 (ELSE=SYSMIS).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
RECODE q19_10 (ELSE=SYSMIS).
RECODE q19_99 (ELSE=SYSMIS).
RECODE q19_0 (ELSE=SYSMIS).
END IF.
EXECUTE.

*************q19***

DO IF (q19_0= 1).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_7 (ELSE=SYSMIS).
RECODE q19_8 (ELSE=SYSMIS).
RECODE q19_9 (ELSE=SYSMIS).
RECODE q19_10 (ELSE=SYSMIS).
RECODE q19_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


**** q21 **

compute q21_1_velha = q21_1. 
compute q21_2_velha = q21_2. 
compute q21_3_velha = q21_3. 
compute q21_4_velha = q21_4. 
compute q21_5_velha = q21_5. 
compute q21_99_velha = q21_99.
 compute q21_0_velha = q21_0. 
execute.


DO IF (q21_0= 1).
RECODE q21_1 (ELSE=SYSMIS).
RECODE q21_2 (ELSE=SYSMIS).
RECODE q21_3 (ELSE=SYSMIS).
RECODE q21_4 (ELSE=SYSMIS).
RECODE q21_5 (ELSE=SYSMIS).
RECODE q21_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q22**************************

compute q22_1_velha = q22_1. 
compute q22_2_velha = q22_2. 
compute q22_3_velha = q22_3. 
compute q22_99_velha = q22_99.
 compute q22_0_velha = q22_0. 
execute.

DO IF (q22_0= 1).
RECODE q22_1 (ELSE=SYSMIS).
RECODE q22_2 (ELSE=SYSMIS).
RECODE q22_3 (ELSE=SYSMIS).
RECODE q22_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


*q28**************************


compute q29_1_velha = q29_1. 
compute q29_2_velha = q29_2. 
compute q29_3_velha = q29_3. 
compute q29_4_velha = q29_4. 
compute q29_5_velha = q29_5. 
compute q29_6_velha = q29_6. 
compute q30_1_velha = q30_1. 
compute q30_2_velha = q30_2. 
compute q30_3_velha = q30_3. 
compute q30_4_velha = q30_4. 
compute q30_5_velha = q30_5. 
compute q30_6_velha = q30_6. 
execute.



DO IF (q28= 0).
RECODE q29_1 (ELSE=SYSMIS).
RECODE q29_2 (ELSE=SYSMIS).
RECODE q29_3 (ELSE=SYSMIS).
RECODE q29_4 (ELSE=SYSMIS).
RECODE q29_5 (ELSE=SYSMIS).
RECODE q29_6 (ELSE=SYSMIS).
RECODE q30_1 (ELSE=SYSMIS).
RECODE q30_2 (ELSE=SYSMIS).
RECODE q30_3 (ELSE=SYSMIS).
RECODE q30_4 (ELSE=SYSMIS).
RECODE q30_5 (ELSE=SYSMIS).
RECODE q30_6 (ELSE=SYSMIS).
END IF.
EXECUTE.






VARIABLE LABELS
q10_1_velha'1: Secretaria da Assistência Social ou congênere _compartilha imovel'
q10_2_velha'2: Outra unidade administrativa (Sede de Prefeitura, Administração Regional, Sub-Prefeitura, etc.) _compartilha imovel'
q10_3_velha'3: Conselho Municipal de Assistência Social _compartilha imovel'
q10_4_velha'4: Conselho Tutelar _compartilha imovel'
q10_5_velha'5: CRAS - Centro de Referência da Assistência Social _compartilha imovel'
q10_6_velha'6: CREAS – Centro de Referência Especializado de Assistência Social _compartilha imovel'
q10_7_velha'7: Unidades de Acolhimento _compartilha imovel'
q10_8_velha'8: Centro-dia e similares _compartilha imovel'
q10_9_velha'9: Centro POP - Centro de Referência Especializado à População em Situação de Rua _compartilha imovel'
q10_10_velha'10: Unidades que executam Serviço Especializado em Abordagem Social _compartilha imovel'
q10_11_velha'11: Posto de Cadastramento/Cadastro Único/Programa Bolsa Família _compartilha imovel'
q10_12_velha'12: Instituições de Ensino (Escola, Centro de Educação Infantil, creches, entre outras) _compartilha imovel'
q10_13_velha'13: Unidade de Saúde _compartilha imovel'
q10_14_velha'14: Instituições religiosas (Igreja, Templo, Centro Espírita, entre outros) _compartilha imovel'
q10_15_velha'15: Associação Comunitária _compartilha imovel'
q10_16_velha'16: Instituições esportivas/desportivas (Clubes, Associações Atléticas, entre outros) _compartilha imovel'
q10_17_velha'17: Organização da Sociedade Civil (OSC)/Organização sem fins lucrativos (ONG) _compartilha imovel'
q10_99_velha'99: Outros _compartilha imovel'
q11_0_velha'0: Não_serviços/atividades de outras políticas públicas'
q11_1_velha'1: Sim, educação (escola, creche, reforço escolar, alfabetização de adultos, entre outros)_serviços/atividades de outras políticas públicas'
q11_2_velha'2: Sim, saúde (posto de saúde, terapia ocupacional, clínica psicológica, entre outros)_serviços/atividades de outras políticas públicas'
q11_3_velha'3: Sim, esporte (políticas específicas do esporte como “Segundo Tempo”, ou atividades físicas como futebol, hidroginástica, entre outros)_serviços/atividades de outras políticas públicas'
q11_4_velha'4: Sim, cultura (políticas específicas de cultura como “Ponto de Cultura”, entre outras)_serviços/atividades de outras políticas públicas'
q11_5_velha'5: Sim, habitação_serviços/atividades de outras políticas públicas'
q11_6_velha'6: Sim, trabalho e inclusão produtiva (cursos profissionalizantes, qualificação profissional, “Jovem Aprendiz”)_serviços/atividades de outras políticas públicas'
q11_7_velha'7: Sim, inclusão digital_serviços/atividades de outras políticas públicas'
q11_8_velha'8: Sim, segurança alimentar e nutricional (restaurantes comunitários, bancos de alimentos, entre outros)_serviços/atividades de outras políticas públicas'
q11_9_velha'9: Sim, justiça (orientação jurídica, entre outros)_serviços/atividades de outras políticas públicas'
q11_99_velha'99: Sim, outra_serviços/atividades de outras políticas públicas'
q12_1_velha'1: Uso apenas da sede_outros espaços físicos'
q12_2_velha'2: Em outras unidades/equipamentos públicos da Assistência Social_outros espaços físicos'
q12_3_velha'3: Em organizações da Sociedade Civil parceiras com a Assistência Social_outros espaços físicos'
q12_4_velha'4: Em espaços cedidos por organizações comunitárias locais não conveniadas com a Assistência Social (Igrejas, Associação de Moradores, Organizações da Sociedade Civil não conveniadas etc)_outros espaços físicos'
q12_5_velha'5: Em unidades/equipamentos públicos da Educação_outros espaços físicos'
q12_6_velha'6: Em unidades/equipamentos públicos do Esporte (ginásios ou quadras esportivas, campos de futebol, entre outros)_outros espaços físicos'
q12_7_velha'7: Em unidades/equipamentos da Cultura (museus, bibliotecas, centros culturais, entre outros)_outros espaços físicos'
q12_8_velha'8: Em unidades/equipamentos públicos da Saúde_outros espaços físicos'
q12_9_velha'9: Em unidades/equipamentos públicos de outras políticas públicas_outros espaços físicos'
q12_10_velha'10: Em espaços públicos como em praças, parques, beira de rio, praia, terreno da comunidade, etc_outros espaços físicos'
q12_99_velha'99: Outro_outros espaços físicos'
q16_1_velha'1: Visitas domiciliares da equipe técnica da Unidade à família das(os) usuárias(os)_atividades promovidas sistematicamente'
q16_2_velha'2: Encontros com as famílias das(os) usuárias(os)_atividades promovidas sistematicamente'
q16_3_velha'3: Palestras_atividades promovidas sistematicamente'
q16_4_velha'4: Atividades lúdicas_atividades promovidas sistematicamente'
q16_5_velha'5: Discussão de casos com outras(os) profissionais da rede socioassistencial_atividades promovidas sistematicamente'
q16_6_velha'6: Atividades com participação da comunidade_atividades promovidas sistematicamente'
q16_7_velha'7: Atividades intersetoriais_atividades promovidas sistematicamente'
q16_8_velha'8: Planejamento de atividades_atividades promovidas sistematicamente'
q16_9_velha'9: Registro e monitoramento das informações do SCFV_atividades promovidas sistematicamente'
q16_0_velha'0: Não realiza nenhuma das atividades acima_atividades promovidas sistematicamente'
q16_99_velha'99: Outras._atividades promovidas sistematicamente'
q18_velha'q18. Com que frequência, em média, a(o) técnico de referência do CRAS realiza visitas a este Centro de Convivência? (resposta única)'
q19_1_velha'1: Participa no planejamento das atividades que serão desenvolvidas_atividades que técnicos do CRAS utilizam'
q19_2_velha'2: Participa de reuniões periódicas com a equipe de referência desta unidade_atividades que técnicos do CRAS utilizam'
q19_3_velha'3: Supervisiona as(os) orientadoras(es) sociais_atividades que técnicos do CRAS utilizam'
q19_4_velha'4: Capacita as(os) orientadoras(es) sociais_atividades que técnicos do CRAS utilizam'
q19_5_velha'5: Acompanha periodicamente os grupos_atividades que técnicos do CRAS utilizam'
q19_6_velha'6: Verifica a inclusão e acompanha a trajetória de usuárias(os) encaminhadas(os) pelo CRAS_atividades que técnicos do CRAS utilizam'
q19_7_velha'7: Acompanha as(os) usuárias(os) encaminhadas(os) do SCFV para o CRAS_atividades que técnicos do CRAS utilizam'
q19_8_velha'8: Avalia e monitora as atividades realizadas_atividades que técnicos do CRAS utilizam'
q19_9_velha'9: Discute casos em conjunto com a equipe do SCFV_atividades que técnicos do CRAS utilizam'
q19_10_velha'10: Registra e monitora as informações do SCFV por meio do SISC_atividades que técnicos do CRAS utilizam'
q19_99_velha'99: Outras_atividades que técnicos do CRAS utilizam'
q19_0_velha'0: Não acompanham_atividades que técnicos do CRAS utilizam'
q21_1_velha'1: Por meio de diagnóstico da equipe técnica do CRAS_situação prioritária de usuárias'
q21_2_velha'2: Por meio de diagnóstico da equipe técnica do CREAS_situação prioritária de usuárias'
q21_3_velha'3: Por meio de diagnóstico da equipe técnica do SCFV deste Centro de Convivência_situação prioritária de usuárias'
q21_4_velha'4: Por meio de diagnóstico da equipe do órgão gestor de Assistência Social_situação prioritária de usuárias'
q21_5_velha'5: Por meio de diagnóstico de profissionais do Sistema de Garantia de Direitos (Conselho Tutelar, entre outros)_situação prioritária de usuárias'
q21_99_velha'99: Outros_situação prioritária de usuárias'
q21_0_velha'0: Não são identificadas as situações prioritárias de usuárias(os) deste Centro de Convivência_situação prioritária de usuárias'
q22_1_velha'1: Sim, por esta unidade_atividades socioassistenciais com familiares'
q22_2_velha'2: Sim, pela equipe do CRAS de referência_atividades socioassistenciais com familiares'
q22_3_velha'3: Sim, pela equipe do órgão gestor da Assistência Social_atividades socioassistenciais com familiares'
q22_99_velha'99: Sim, por outra equipe._atividades socioassistenciais com familiares'
q22_0_velha'0: Não_atividades socioassistenciais com familiares'
q29_1_velha'1: café da manhã_refeição ofertada na unidade'
q29_2_velha'2: lanche da manhã_refeição ofertada na unidade'
q29_3_velha'3: almoço_refeição ofertada na unidade'
q29_4_velha'4: lanche da tarde_refeição ofertada na unidade'
q29_5_velha'5: jantar_refeição ofertada na unidade'
q29_6_velha'6: ceia_refeição ofertada na unidade'
q30_1_velha'1: Preparado na unidade com alimentos in natura (arroz, feijão, frutas, legumes, verduras, carnes, leite, ovos)_onde é preparado e o tipo de alimento'
q30_2_velha'2: Preparado na unidade com alimentos ultrapropcessados (refrigerantes, sucos de caixa, margarina, biscoitos rechados, salgadinhos de pacote, macarrão instântaneo, salsicha)_onde é preparado e o tipo de alimento'
q30_3_velha'3: Preparado na unidade com alimentos in natura e alimentos ultraprocessados_onde é preparado e o tipo de alimento'
q30_4_velha'4: Adquirido de terceiros com alimentos in natura_onde é preparado e o tipo de alimento'
q30_5_velha '5: Adquirido de terceiros com alimentos ultraprocessados_onde é preparado e o tipo de alimento'
q30_6_velha '6: Adquirido de terceiros com alimentos in natura e alimentos ultraprocessados_onde é preparado e o tipo de alimento'.