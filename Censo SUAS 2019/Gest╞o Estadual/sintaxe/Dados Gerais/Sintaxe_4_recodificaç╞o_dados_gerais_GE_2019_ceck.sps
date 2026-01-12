* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO ESTADUAL - CENSO SUAS 2019
****************************************************************************************************
****q1**********************************************************************************************

COMPUTE q2_1_velha=q2_1.
COMPUTE q2_2_velha=q2_2.
COMPUTE q2_3_velha=q2_3.
COMPUTE q2_4_velha=q2_4.
COMPUTE q2_5_velha=q2_5.
COMPUTE q2_6_velha=q2_6.
COMPUTE q2_7_velha=q2_7.
COMPUTE q2_99_velha=q2_99.
EXECUTE.

DO IF (q1=1 | q1=3).
RECODE q2_1 (ELSE=SYSMIS).
RECODE q2_2 (ELSE=SYSMIS).
RECODE q2_3 (ELSE=SYSMIS).
RECODE q2_4 (ELSE=SYSMIS).
RECODE q2_5 (ELSE=SYSMIS).
RECODE q2_6 (ELSE=SYSMIS).
RECODE q2_7 (ELSE=SYSMIS).
RECODE q2_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.



****q7**********************************************************************************************

COMPUTE q7_1_1_velha=q7_1_1.
COMPUTE q7_1_2_velha=q7_1_2.
COMPUTE q7_1_3_velha=q7_1_3.
COMPUTE q7_2_1_velha=q7_2_1.
COMPUTE q7_2_2_velha=q7_2_2.
COMPUTE q7_2_3_velha=q7_2_3.
COMPUTE q7_2_4_velha=q7_2_4.
COMPUTE q7_2_5_velha=q7_2_5.
COMPUTE q7_3_1_velha=q7_3_1.
COMPUTE q7_3_2_velha=q7_3_2.
COMPUTE q7_3_3_velha=q7_3_3.
COMPUTE q7_3_4_velha=q7_3_4.
EXECUTE.

DO IF (q7_1_0=1).
RECODE q7_1_1 (ELSE=SYSMIS).
RECODE q7_1_2 (ELSE=SYSMIS).
RECODE q7_1_3 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q7_2_0=1).
RECODE q7_2_1 (ELSE=SYSMIS).
RECODE q7_2_2 (ELSE=SYSMIS).
RECODE q7_2_3 (ELSE=SYSMIS).
RECODE q7_2_4 (ELSE=SYSMIS).
RECODE q7_2_5 (ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q7_3_0=1).
RECODE q7_3_1 (ELSE=SYSMIS).
RECODE q7_3_2 (ELSE=SYSMIS).
RECODE q7_3_3 (ELSE=SYSMIS).
RECODE q7_3_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

****q8*****************************************************************************************************

COMPUTE q9_1_velha=q9_1.
COMPUTE q9_2_velha=q9_2.
COMPUTE q9_3_velha=q9_3.
COMPUTE q9_4_velha=q9_4.
COMPUTE q9_99_velha=q9_99.
COMPUTE q10_1_velha=q10_1.
COMPUTE q10_2_velha=q10_2.
COMPUTE q10_3_velha=q10_3.
COMPUTE q10_4_velha=q10_4.
COMPUTE q10_5_velha=q10_5.
COMPUTE q10_6_velha=q10_6.
COMPUTE q10_7_velha=q10_7.
COMPUTE q10_8_velha=q10_8.
COMPUTE q10_9_velha=q10_9.
COMPUTE q10_10_velha=q10_10.
COMPUTE q10_11_velha=q10_11.
COMPUTE q10_12_velha=q10_12.
COMPUTE q10_13_velha=q10_13.
COMPUTE q10_99_velha=q10_99.
EXECUTE.

DO IF (q8=0).
RECODE q9_1 (ELSE=SYSMIS).
RECODE q9_2 (ELSE=SYSMIS).
RECODE  q9_3 (ELSE=SYSMIS).
RECODE q9_4 (ELSE=SYSMIS).
RECODE q9_99 (ELSE=SYSMIS).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE  q10_3 (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE q10_6 (ELSE=SYSMIS).
RECODE q10_7 (ELSE=SYSMIS).
RECODE  q10_8 (ELSE=SYSMIS).
RECODE q10_9 (ELSE=SYSMIS).
RECODE q10_10 (ELSE=SYSMIS).
RECODE q10_11 (ELSE=SYSMIS).
RECODE q10_12 (ELSE=SYSMIS).
RECODE q10_13 (ELSE=SYSMIS).
RECODE  q10_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q12**********************************************************************************************

COMPUTE q13_1_velha=q13_1.
COMPUTE q13_2_velha=q13_2.
COMPUTE q13_1_99_velha=q13_1_99.
COMPUTE q13_2_99_velha=q13_2_99.
COMPUTE q14_1_velha=q14_1.
COMPUTE q14_2_velha=q14_2.
COMPUTE q14_3_velha=q14_3.
COMPUTE q14_4_velha=q14_4.
COMPUTE q14_5_velha=q14_5.
COMPUTE q14_6_velha=q14_6.
COMPUTE q14_7_velha=q14_7.
COMPUTE q14_8_velha=q14_8.
COMPUTE q14_9_velha=q14_9.
COMPUTE q14_99_velha=q14_99.



DO IF (q12=0).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_1_99  (ELSE=SYSMIS).
RECODE q13_2_99  (ELSE=SYSMIS).
RECODE q14_1 (ELSE=SYSMIS).
RECODE q14_2 (ELSE=SYSMIS).
RECODE q14_3 (ELSE=SYSMIS).
RECODE q14_4 (ELSE=SYSMIS).
RECODE q14_5 (ELSE=SYSMIS).
RECODE q14_6 (ELSE=SYSMIS).
RECODE q14_7 (ELSE=SYSMIS).
RECODE q14_8 (ELSE=SYSMIS).
RECODE q14_9 (ELSE=SYSMIS).
RECODE q14_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.


****q15**********************************************************************************************

COMPUTE q16_1_velha=q16_1.
COMPUTE q16_2_velha=q16_2.
COMPUTE q16_3_velha=q16_3.
COMPUTE q16_4_velha=q16_4.
COMPUTE q16_5_velha=q16_5.
COMPUTE q16_6_velha=q16_6.
COMPUTE q16_7_velha=q16_7.
COMPUTE q16_8_velha=q16_8.
COMPUTE q16_9_velha=q16_9.
COMPUTE q17_1_velha=q17_1.
COMPUTE q17_2_velha=q17_2.
COMPUTE q17_3_velha=q17_3.
COMPUTE q17_4_velha=q17_4.



DO IF (q15=0).
RECODE q16_1 (ELSE=SYSMIS).
RECODE q16_2  (ELSE=SYSMIS).
RECODE q16_3 (ELSE=SYSMIS).
RECODE q16_4  (ELSE=SYSMIS).
RECODE q16_5 (ELSE=SYSMIS).
RECODE q16_6  (ELSE=SYSMIS).
RECODE q16_7 (ELSE=SYSMIS).
RECODE q16_8  (ELSE=SYSMIS).
RECODE q16_9 (ELSE=SYSMIS).
RECODE q17_1  (ELSE=SYSMIS).
RECODE q17_2 (ELSE=SYSMIS).
RECODE q17_3  (ELSE=SYSMIS).
RECODE q17_4 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q18*******************************************************************

COMPUTE q19_1_velha=q19_1.
COMPUTE q19_2_velha=q19_2.
COMPUTE q19_3_velha=q19_3.
COMPUTE q19_4_velha=q19_4.
COMPUTE q19_5_velha=q19_5.
COMPUTE q19_6_velha=q19_6.
COMPUTE q19_99_velha=q19_99.
EXECUTE.

DO IF (q18=0).
RECODE q19_1 (ELSE=SYSMIS).
RECODE q19_2 (ELSE=SYSMIS).
RECODE q19_3 (ELSE=SYSMIS).
RECODE q19_4 (ELSE=SYSMIS).
RECODE q19_5 (ELSE=SYSMIS).
RECODE q19_6 (ELSE=SYSMIS).
RECODE q19_99 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q23*******************************************************************

COMPUTE q23_1_99_velha=q23_1_99.
COMPUTE q23_1_1_velha=q23_1_1.
COMPUTE q23_2_99_velha=q23_2_99.
COMPUTE q23_2_1_velha=q23_2_1.
COMPUTE q23_3_99_velha=q23_3_99.
COMPUTE q23_3_1_velha=q23_3_1.
EXECUTE.

DO IF (q23_1=0).
RECODE q23_1_99 (ELSE=SYSMIS).
RECODE q23_1_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.



DO IF (q23_2=0).
RECODE q23_2_99 (ELSE=SYSMIS).
RECODE q23_2_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q23_3=0).
RECODE q23_3_99 (ELSE=SYSMIS).
RECODE q23_3_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.



DO IF (q23_4=0).
RECODE q23_4_99 (ELSE=SYSMIS).
RECODE q23_4_1 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q24*****************************************************************

COMPUTE q24_1_99_velha=q24_1_99.
COMPUTE q24_2_99_velha=q24_2_99.
COMPUTE q24_3_99_velha=q24_3_99.
COMPUTE q24_4_99_velha=q24_4_99.
EXECUTE.

DO IF (q24_1=0).
RECODE q24_1_99(ELSE=SYSMIS).
END IF. 
EXECUTE.


DO IF (q24_2=0).
RECODE q24_2_99(ELSE=SYSMIS).
END IF. 
EXECUTE.



DO IF (q24_3=0).
RECODE q24_3_99(ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q24_4=0).
RECODE q24_4_99(ELSE=SYSMIS).
END IF. 
EXECUTE.


**q26******************************************************************

COMPUTE q27_velha=q27.
EXECUTE.

DO IF (q26=0).
RECODE q27 (ELSE=SYSMIS).
END IF. 
EXECUTE.

**q30******************************************************************

COMPUTE q31_velha=q31.
COMPUTE q32_velha=q32.
EXECUTE.


DO IF (q30=0).
RECODE q31  (ELSE=SYSMIS).
RECODE q32 (ELSE=SYSMIS).
END IF. 
EXECUTE.



**q33******************************************************************

COMPUTE q34_1_velha=q34_1.
COMPUTE q34_2_velha=q34_2.
COMPUTE q34_3_velha=q34_3.
COMPUTE q34_99_velha=q34_99.
COMPUTE q35_velha=q35.
EXECUTE.


DO IF (q33=0).
RECODE q34_1  (ELSE=SYSMIS).
RECODE q34_2 (ELSE=SYSMIS).
RECODE q34_3  (ELSE=SYSMIS).
RECODE q34_99 (ELSE=SYSMIS).
RECODE q35  (ELSE=SYSMIS).
END IF. 
EXECUTE.





**q36*****************************************************************

COMPUTE q36_1_2_velha=q36_1_2.
COMPUTE q36_1_3_velha=q36_1_3.
COMPUTE q36_1_4_velha=q36_1_4.
COMPUTE q36_1_5_velha=q36_1_5.
COMPUTE q36_2_2_velha=q36_2_2.
COMPUTE q36_2_3_velha=q36_2_3.
COMPUTE q36_2_4_velha=q36_2_4.
COMPUTE q36_2_5_velha=q36_2_5.
EXECUTE.

DO IF (q36_1_1=0).
RECODE q36_1_2(ELSE=SYSMIS).
RECODE q36_1_3(ELSE=SYSMIS).
RECODE q36_1_4(ELSE=SYSMIS).
RECODE q36_1_5(ELSE=SYSMIS).
END IF. 
EXECUTE.

DO IF (q36_2_1=0).
RECODE q36_2_2(ELSE=SYSMIS).
RECODE q36_2_3(ELSE=SYSMIS).
RECODE q36_2_4(ELSE=SYSMIS).
RECODE q36_2_5(ELSE=SYSMIS).
END IF. 
EXECUTE.





VARIABLE LABELS
q2_1_velha'q2_1_v8377_1_2. A que secretaria ou setor a assistência social está associada?1: Educação'
q2_2_velha'q2_2_v8377_2_2. A que secretaria ou setor a assistência social está associada?2: Planejamento'
q2_3_velha'q2_3_v8377_3_2. A que secretaria ou setor a assistência social está associada?3: Saúde'
q2_4_velha'q2_4_v8377_4_2. A que secretaria ou setor a assistência social está associada?4: Habitação'
q2_5_velha'q2_5_v8377_5_2. A que secretaria ou setor a assistência social está associada?5: Segurança Alimentar'
q2_6_velha'q2_6_v8377_6_2. A que secretaria ou setor a assistência social está associada?6: Trabalho e/ou Emprego'
q2_7_velha'q2_7_v8377_7_2. A que secretaria ou setor a assistência social está associada?7: Direitos Humanos'
q2_99_velha'q2_99_v8377_99_2. A que secretaria ou setor a assistência social está associada?99: Outra'
q7_1_1_velha'q7_1_1_v8443_1_7.1. A Secretaria Estadual de Assistência Social executa diretamente algum serviço socioassistencial da Proteção Social Básica?1: Serviço de Proteção e Atendimento Integral à Família - PAIF'
q7_1_2_velha'q7_1_2_v8443_2_7.1. A Secretaria Estadual de Assistência Social executa diretamente algum serviço socioassistencial da Proteção Social Básica?2: Serviço de Convivência e Fortalecimento de Vínculos'
q7_1_3_velha'q7_1_3_v8443_3_7.1. A Secretaria Estadual de Assistência Social executa diretamente algum serviço socioassistencial da Proteção Social Básica?3: Serviço de Proteção Social Básica no domicílio para pessoas com deficiência e idosas'
q7_2_1_velha'q7_2_1_v8445_1_7.2. A Secretaria Estadual de Assistência Social executa diretamente algum serviço da Proteção Social Especial de Média Complexidade?1: Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos - PAEFI'
q7_2_2_velha'q7_2_2_v8445_2_7.2. A Secretaria Estadual de Assistência Social executa diretamente algum serviço da Proteção Social Especial de Média Complexidade?2: Serviço Especializado em Abordagem Social'
q7_2_3_velha'q7_2_3_v8445_3_7.2. A Secretaria Estadual de AS executa diretamente serviço da PSE de Média Compl.?3: Serviço de Proteção Social a Adolescentes em Cumprimento de MSE de Liberdade Assistida e Prestação de Serviços à Comunidade'
q7_2_4_velha'q7_2_4_v8445_4_7.2. A Secretaria Estadual de AS executa diretamente algum serviço da Proteção Social Especial de Média Complexidade?4: Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos(as) e suas Famílias'
q7_2_5_velha'q7_2_5_v8445_5_7.2. A Secretaria Estadual de Assistência Social executa diretamente algum serviço da Proteção Social Especial de Média Complexidade?5: Serviço Especializado para Pessoas em Situação de Rua'
q7_3_1_velha'q7_3_1_v8471_1_7.3. A Secretaria Estadual de Assistência Social executa diretamente algum serviço de Proteção Social Especial de Alta Complexidade?1: Serviço de Acolhimento Institucional (Abrigo Institucional; Casa-lar; Casa de Passagem)'
q7_3_2_velha'q7_3_2_v8471_2_7.3. A Secretaria Estadual de Assistência Social executa diretamente algum serviço de Proteção Social Especial de Alta Complexidade?2: Serviço de Acolhimento em República'
q7_3_3_velha'q7_3_3_v8471_3_7.3. A Secretaria Estadual de Assistência Social executa diretamente algum serviço de Proteção Social Especial de Alta Complexidade?3: Serviço de Acolhimento em Família Acolhedora'
q7_3_4_velha'q7_3_4_v8471_4_7.3. A Secretaria Estadual de Assistência Social executa diretamente algum serviço de Proteção Social Especial de Alta Complexidade?4: Serviço de Proteção em Situações de Calamidades Públicas e de Emergências'
q9_1_velha'q9_1_v8535_1_9. Caso sim, quais são os Benefícios Eventuais concedidos?1: Auxílio Funeral'
q9_2_velha'q9_2_v8535_2_9. Caso sim, quais são os Benefícios Eventuais concedidos?2: Auxílio Natalidade'
q9_3_velha'q9_3_v8535_3_9. Caso sim, quais são os Benefícios Eventuais concedidos?3: Benefício Eventual para situação de calamidade pública'
q9_4_velha'q9_4_v8535_4_9. Caso sim, quais são os Benefícios Eventuais concedidos?4: Benefício Eventual de vulnerabilidade temporária'
q9_99_velha'q9_99_v8535_99_9. Caso sim, quais são os Benefícios Eventuais concedidos?99: Outros'
q10_1_velha'q10_1_v15040_1_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:1: Colchões/ colchonetes'
q10_2_velha'q10_2_v15040_2_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:2: Cobertores / lençóis / roupas de cama'
q10_3_velha'q10_3_v15040_3_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:3: Vestimentas/ Roupas'
q10_4_velha'q10_4_v15040_4_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:4: Material de limpeza e higiene'
q10_5_velha'q10_5_v15040_5_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:5: Água'
q10_6_velha'q10_6_v15040_6_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:6: Auxílio relacionado à segurança alimentar (cesta básica, entre outros)'
q10_7_velha'q10_7_v15040_7_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:7: Auxílio para deslocamento / passagens'
q10_8_velha'q10_8_v15040_8_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:8: Auxílio/Isenção para retirada de documentação'
q10_9_velha'q10_9_v15040_9_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:9: Aluguel Social'
q10_10_velha'q10_10_v15040_10_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:10: Material de Construção'
q10_11_velha'q10_11_v15040_11_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:11: Pagamento/ Isenção de contas de água e luz'
q10_12_velha'q10_12_v15040_12_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:12: Auxílio gás'
q10_13_velha'q10_13_v15040_13_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:13: Vestimentas/ Roupas'
q10_99_velha'q10_99_v15040_99_10. Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais:99: Outros. Quais?'
q13_1_velha'q13_1_v13309_1_13. Caso oferte PAEFI de caráter REGIONAL, como é, atualmente a forma de execução destas unidades?1: Execução direta do serviço pelo governo estadual por meio de CREAS Regional (Modelo I)'
q13_2_velha'q13_2_v13309_2_13. Caso oferte PAEFI de caráter REGIONAL, como é, atualmente a forma de execução destas unidades?2: Repasse de recursos do estado para CREAS municipal regionalizado (Modelo II)'
q13_1_99_velha'q13_1_99_v13305_13.1.99. CREAS Regional (Modelo I) - Quantidade de unidades'
q13_2_99_velha'q13_2_99_v13306_13.2.99. CREAS Municipal Regionalizado (Modelo II) - Quantidade de Unidades'
q14_1_velha'q14_1_v13308_1_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)1: Realiza orientação técnica à distância (por telefone ou e-mail)'
q14_2_velha'q14_2_v13308_2_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)2: Realiza orientação técnica presencial (visitas técnicas)'
q14_3_velha'q14_3_v13308_3_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)3: Realiza capacitação das equipes de referência'
q14_4_velha'q14_4_v13308_4_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)4: Estabelece fluxos e protocolos entre os serviços e a rede intersetorial'
q14_5_velha'q14_5_v13308_5_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)5: Estabelece fluxos e protocolos entre os serviços e o Sistema de Justiça'
q14_6_velha'q14_6_v13308_6_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)6: Estabelece fluxos e protocolos entre os serviços e o Sistema de Garantia de Direitos'
q14_7_velha'q14_7_v13308_7_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)7: Acompanha e monitora a aplicação dos recursos transferidos'
q14_8_velha'q14_8_v13308_8_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)8: Monitora a composição das equipes técnicas, de acordo com a NOB-RH/SUAS'
q14_9_velha'q14_9_v13308_9_14. Apoio técnico e monitoramento do Estado com os CREAS municipais de caráter regional (Modelo II)9: Orienta sobre o preenchimento, a utilização e a atualização de sistemas de informações do SUAS (RMA, CadSUAS, Censo SUAS)'
q14_99_velha'q14_99_v13308_99_14. Indique as ações de apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)99: Outras'
q16_1_velha'q16_1_v13313_1_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?1: Unidades de Acolhimento Institucional para crianças e adolescentes'
q16_2_velha'q16_2_v13313_2_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?2: Unidades de Acolhimento Institucional para pessoas idosas'
q16_3_velha'q16_3_v13313_3_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?3: Unidades de Acolhimento Institucional para pessoas em situação de rua'
q16_4_velha'q16_4_v13313_4_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?4: Unidades de Acolhimento Institucional para pessoas com deficiência'
q16_5_velha'q16_5_v13313_5_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?5: Unidades de Acolhimento Institucional para mulheres vítimas de violência'
q16_6_velha'q16_6_v13313_6_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?6: Unidades de Acolhimento em República para jovens (maiores de 18 anos)'
q16_7_velha'q16_7_v13313_7_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?7: Unidades de Acolhimento em República para adultas em processo de saída das ruas'
q16_8_velha'q16_8_v13313_8_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?8: Unidades de Acolhimento em República para pessoas idosas'
q16_9_velha'q16_9_v13313_9_16. Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?9: Família Acolhedora para crianças e adolescentes'
q17_1_velha'q17_1_v13314_1_17. Caso oferte Unidades de Acolhimento para crianças e adolescentes e/ou jovens de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades?1: Execução direta do serviço pelo governo estadual'
q17_2_velha'q17_2_v13314_2_17. Caso oferte Unidades de Acolhimento para crianças e adolescentes e/ou jovens de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades?2: Repasse direto do estado para entidade da rede privada'
q17_3_velha'q17_3_v13314_3_17. Caso oferte Unidades de Acolhimento para crianças e adolescentes e/ou jovens de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades?3: Repasse de recursos do estado para os municípios-sede'
q17_4_velha'q17_4_v13314_4_17. Caso oferte Unidades de Acolhimento para crianças e adolescentes e/ou jovens de caráter REGIONAL, como é, atualmente, a forma de execução destas unidades?4: Consórcio Público'
q19_1_velha'q19_1_v8793_1_19. O apoio técnico do Estado aos municípios inclui:1: Produção e distribuição de material técnico'
q19_2_velha'q19_2_v8793_2_19. O apoio técnico do Estado aos municípios inclui:2: Elaboração, pelo Estado, de normativas e instruções operacionais para orientação dos municípios'
q19_3_velha'q19_3_v8793_3_19. O apoio técnico do Estado aos municípios inclui:3: Capacitações presenciais'
q19_4_velha'q19_4_v8793_4_19. O apoio técnico do Estado aos municípios inclui:4: Capacitações à distância'
q19_5_velha'q19_5_v8793_5_19. O apoio técnico do Estado aos municípios inclui:5: Assessoramento técnico de forma presencial no município'
q19_6_velha'q19_6_v8793_6_19. O apoio técnico do Estado aos municípios inclui:6: Assessoramento técnico a distância'
q19_99_velha'q19_99_v8793_99_19. O apoio técnico do Estado aos municípios inclui:99: Outras formas'
q23_1_99_velha'q23_1_99_v15045_23.1.99. Qual o número aproximado de trabalhadoras(es) capacitadas(os)'
q23_1_1_velha'q23_1_1_v15052_23.1.1. Ente(s) federado(s) que promoveu(ram) os cursos'
q23_2_99_velha'q23_2_99_v15047_23.2.99. Capacitação à distância para os conselheiros estaduais - número de conselheiros capacitados'
q23_2_1_velha'q23_2_1_v15053_23.2.1. Ente(s) federado(s) que promoveu(ram) os cursos'
q23_3_99_velha'q23_3_99_v15049_23.3.99. Capacitação presencial para os conselheiros municipais - número de conselheiros capacitados'
q23_3_1_velha'q23_3_1_v15054_23.3.1. Ente(s) federado(s) que promoveu(ram) os cursos'
q24_1_99_velha'q24_1_99_v8838_24.1.99. Capacitação presencial para os conselheiros estaduais - número de conselheiros capacitados'
q24_2_99_velha'q24_2_99_v8840_24.2.99. Capacitação à distância para os conselheiros estaduais - número de conselheiros capacitados'
q24_3_99_velha'q24_3_99_v8842_24.3.99. Capacitação presencial para os conselheiros municipais - número de conselheiros capacitados'
q24_4_99_velha'q24_4_99_v8844_24.4.99. Capacitação à distância para os conselheiros municipais - número de conselheiros capacitados'
q27_velha'q27_v9632_27. Se sim, há rotatividade na representação por região do Estado?'
q31_velha'q31_v8861_31. Quantas reuniões a CIB realizou no ano de 2018?'
q32_velha'q32_v9628_32. Quantas reuniões descentralizadas a CIB realizou no ano de 2018?'
q34_1_velha'q34_1_v13301_1_34. O plano de Cargos, Carreiras e Salários dos servidores do órgão gestor da assistência social (PCCS) pertence a qual órgão do estado?1: Do próprio órgão gestor da Assistência Social'
q34_2_velha'q34_2_v13301_2_34. O plano de Cargos, Carreiras e Salários dos servidores do órgão gestor da assistência social (PCCS) pertence a qual órgão do estado?2: Centralizado no governo'
q34_3_velha'q34_3_v13301_3_34. O plano de Cargos, Carreiras e Salários dos servidores do órgão gestor da assistência social (PCCS) pertence a qual órgão do estado?3: Do órgão responsável pelo planejamento'
q34_99_velha'q34_99_v13301_99_34. O plano de Cargos, Carreiras e Salários dos servidores do órgão gestor da assistência social (PCCS) pertence a qual órgão do estado?99: De outro órgão'
q35_velha'q35_v13303_35. Qual o ano da última atualização deste PCCS?'
q36_1_2_velha'q36_1_2_v8605_36.1.2. Nível Superior - Quantidade de vagas'
q36_1_3_velha'q36_1_3_v9694_36.1.3. Nível Superior - O concurso já foi homologado?'
q36_1_4_velha'q36_1_4_v8606_36.1.4. Nível Superior - Data de Homologação do Concurso'
q36_1_5_velha'q36_1_5_v8607_36.1.5. Nível Superior - Quantidade de trabalhadores que tomaram posse'
q36_2_2_velha'q36_2_2_v8609_36.2.2. Nível Médio - Quantidade de vagas'
q36_2_3_velha'q36_2_3_v9695_36.2.3. Nível Médio - O concurso já foi homologado?'
q36_2_4_velha'q36_2_4_v8610_36.2.4. Nível Médio - Data da homologação do concurso'
q36_2_5_velha'q36_2_5_v8611_36.2.5. Nível Médio - Quantidade de Trabalhadores que tomaram posse'
.