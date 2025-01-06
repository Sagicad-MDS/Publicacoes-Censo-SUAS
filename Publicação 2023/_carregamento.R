ge_2010 <- read_excel("../Censo SUAS 2010/Gestão Estadual/Censo SUAS 2010_Gestão Estadual_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 Gestão Estadual") %>%
  filter(UF != "DF")

ge_2011 <- read_excel("../Censo SUAS 2011/GESTÃO ESTADUAL/Censo SUAS 2011_Gestão_Estadual_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2011 Gestão Estadual")

ge_2012 <- read_excel("../Censo SUAS 2012/Gestão Estadual+DF/Censo SUAS 2012_GestaoEstadual+DF_divulgação.xlsx", sheet = "CensoSUAS2012 GestãoEstadual+DF") %>%
  filter(UF != "DF")

ge_2013 <- read_excel("../Censo SUAS 2013/Gestão Estadual/Censo_SUAS_2013_Gestão_Estadual_Dados_Gerais_Divulgação.xlsx", sheet = "Gestão Estadual 2013")

ge_2014 <- read_excel("../Censo SUAS 2014/Gestão Estadual/Bases de Dados/CensoSUAS2014_GestãoEstadual_Divulgação.xlsx", sheet = "Gestão Estadual 2014")

ge_2015 <- read_excel("../Censo SUAS 2015/Gestão Estadual/Censo_SUAS_2015_Gestão_Estadual_divulgacao.xlsx", sheet = "Censo SUAS Gest. Estadual 2015")

ge_2016 <- read_excel("../Censo SUAS 2016/Gestão Estadual/Censo SUAS Gestão Estadual_2016_DIVULGAÇÃO.xlsx", sheet = "Censo Gestão Estadual 2016")

ge_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Gestão_Estadual/Censo SUAS 2017_Gestão Estadual_divulgação.xlsx", sheet = "Base de dados")

ge_2018 <- read_excel("../Censo SUAS 2018/9.GestÆo Estadual/Censo_SUAS_2018_Gestão_Estadual_Dados_Gerais_divulgaçao.xlsx")

gerh_2018 <- read_excel("../Censo SUAS 2018/9.GestÆo Estadual/Censo_SUAS_2018_Gestão_Estadual_RH_divulgação.xlsx")

ge_2019 <- read_excel("../Censo SUAS 2019/GestÆo Estadual/Censo_SUAS_2019_dados_gerais_GE__divulgação.xlsx")

gerh_2019 <- read_excel("../Censo SUAS 2019/GestÆo Estadual/Censo_SUAS_2019_RH_GE_divulgaÆo.xlsx",sheet = 1)

ge_2020 <- read_excel("../Censo SUAS 2020/10_GESTAO_ESTADUAL/Censo_SUAS_2020_dados_gerais_Gestão_Estadual.xlsx")

gerh_2020 <- read_excel("../Censo SUAS 2020/10_GESTAO_ESTADUAL/Censo_SUAS_2020_RH_Gestão_Estadual.xlsx")

ge_2021 <- read_excel("../Censo SUAS 2021/8 - Gestão Estadual/Censo_SUAS_2021_Gestão_Estadual_Dados_Gerais_Divulgaçao.xlsx") %>%
  filter(IBGE < 53) # No arquivo tem uma linha em branco com o código do município de Fortaleza

gerh_2021 <- read_excel("../Censo SUAS 2021/8 - Gestão Estadual/Censo_SUAS_2021_Gestão_Estadual_RH.xlsx")

# ATENÇÃO: Verificar por que no arquivo de RH de 2021 têm dados com o código do município de Fortaleza-CE, além dos dados com o código do Ceará
#gerh_2021 <- read_excel("../Censo SUAS 2021/8 - Gestão Estadual/Censo_SUAS_2021_Gestão_Estadual_RH.xlsx")

ge_2022 <- read_excel("../Censo SUAS 2022/10 - GESTAO ESTADUAL/Censo_SUAS_2022_Gestão_Estadual_Dados_gerais.xlsx", sheet = "Sheet1")

gerh_2022 <- read_excel("../Censo SUAS 2022/10 - GESTAO ESTADUAL/Censo_SUAS_2022_Gestão_Estadual_RH.xlsx")

ge_2023 <- read_csv2("../Censo SUAS 2023/10 - GESTAO ESTADUAL/Censo_SUAS_2023_Gestão_Estadual_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

gerh_2023 <- read_csv2("../Censo SUAS 2023/10 - GESTAO ESTADUAL/Censo_SUAS_2023_Gestão_Estadual_RH.csv", locale = locale(encoding = "latin1"))

gm_2010 <- read_excel("../Censo SUAS 2010/Gestão Municipal/Censo SUAS 2010_Gestão Municipal_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 GestãoMunicipal")

gm_2011 <- read_excel("../Censo SUAS 2011/GESTÃO MUNICIPAL/Censo SUAS 2011_GestãoMunicipal_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2011 GestãoMunicipal")

gm_2012 <- read_excel("../Censo SUAS 2012/Gestão Municipal+DF/2012_GM.xlsx", sheet = 1)

gm_2013 <- read_excel("../Censo SUAS 2013/Gestão Municipal/Censo_SUAS_2013_Gestão_Municipal_Dados_Gerais_Divulgação.xlsx", sheet = 1)

gm_2014 <- read_excel("../Censo SUAS 2014/Gestão Municipal/Bases de Dados/CensoSUAS2014_GestãoMunicipal_Divulgação.xlsx", sheet = "Gestão Municipal 2014")

gm_2015 <- read_excel("../Censo SUAS 2015/Gestão Municipal/CensoSUAS_2015_GestãoMunicipal_DIVULGAÇÃO.xlsx", sheet = "Dados_GM_2015")

gm_2016 <- read_excel("../Censo SUAS 2016/Gestão Municipal/Censo_SUAS_2016_Gestao_Municipal_divulgacao.xlsx", sheet = "Censo Gestão Municipal 16")

gm_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Gestão_Municipal/Censo_SUAS_2017_Gestao_Municipal_divulgação.xlsx", sheet = 1)

gm_2018 <- read_excel("../Censo SUAS 2018/10 - Gestao Municipal/Censo SUAS 2018_Gestao_Municipal_Dados_Gerais_divulgacao.xlsx")

gm_rh_2018 <- read_excel("../Censo SUAS 2018/10 - Gestao Municipal/Censo_SUAS_2018_Gestao_Municipal_RH_divulgacao.xlsx",sheet = 1)

gm_2019 <- read_excel("../Censo SUAS 2018/Censo_SUAS_2019_Gestão_Municipal_dados_gerais_divulgacao.xlsx",sheet = 1)

gm_rh_2019 <- read_excel("../Censo SUAS 2019/7 - Gestão Municipal/Censo_SUAS_2019_Gestao_Municipal_RH_divulgacao.xlsx",sheet = 1)

gm_2020 <- read_excel("../Censo SUAS 2020/9 - Gestão Municipal/Censo_SUAS_2020_Gestão_Municipal_dados gerais.xls")

gm_rh_2020 <- read_excel("../Censo SUAS 2020/9 - Gestão Municipal/Censo_SUAS_2020_Gestão_Municipal_RH.xlsx")

gm_2021 <- read_excel("../Censo SUAS 2021/3 - Gestao Municipal/Censo_SUAS_2021_Gestão_Municipal_Dados_Gerais_Divulgação.xlsx")

gm_rh_2021 <- read_excel("../Censo SUAS 2021/3 - Gestao Municipal/Censo_SUAS_Gestão_Municipal_RH.xlsx",sheet = 1)

gm_2022 <- read_excel("../Censo SUAS 2022/9 - GESTÃO MUNICIPAL/Censo_SUAS_2022_Gestão_Municipal_dados_gerais.xlsx",sheet = 1)

gmrh_2022 <- read_excel("../Censo SUAS 2022/9 - GESTÃO MUNICIPAL/Censo_SUAS_2022_Gestão_Municipal_RH.xlsx",sheet = 1)

gm_2023 <- read_csv2("../Censo SUAS 2023/9 - GESTÃO MUNICIPAL/Censo_SUAS_2023_Gestão_Municipal_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

gmrh_2023 <- read_csv2("../Publicacoes-Censo-SUAS/Censo SUAS 2023/9 - GESTÃO MUNICIPAL/Censo_SUAS_2023_Gestão_Municipal_RH.csv", locale = locale(encoding = "latin1"))

cras_2007 <- read_excel("../Censo SUAS 2007/CRAS/Censo SUAS CRAS 2007.xls")

cras_2008 <- read_excel("../Censo SUAS 2008/CRAS/Banco CRAS.xlsx", sheet = "Sheet1")

cras_2009 <- read_excel("../Censo SUAS 2009/CRAS/CRAS2009_final_5798_caracteres_invalidos-registro-1992-corrigidos.xlsx", sheet = "Sheet1")

cras_2010 <- read_excel("../Censo SUAS 2010/CRAS/Censo SUAS 2010_CRAS_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 CRAS")

cras_2011 <- read_excel("../Censo SUAS 2011/CRAS/Censo SUAS 2011_CRAS_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2011 CRAS")

cras_2012 <- read_excel("../Censo SUAS 2012/CRAS/Censo SUAS 2012_CRAS_dados_gerais_2012_divulgação.xlsx", sheet = "Censo SUAS 2012 - CRAS")

crasrh_2012 <- read_excel("../Censo SUAS 2012/CRAS/Censo SUAS 2012_CRAS RH_2012_base_divulgação.xlsx", sheet = "CRAS RH - CensoSUAS2012")

cras_2013 <- read_excel("../Censo SUAS 2013/CRAS/Censo_SUAS_2013_CRAS_Dados_Gerais_Divulgação.xlsx", sheet = "CRAS 2013")

crasrh_2013 <- read_excel("../Censo SUAS 2013/CRAS/Censo_SUAS_2013_CRAS_RH_Divulgação.xlsx", sheet = "CRAS RH 2013")

cras_2014 <- read_excel("../Censo SUAS 2014/CRAS/Bases de Dados/CensoSUAS2014_CRAS_DadosGerais_Divulgação.xlsx", sheet = "CRAS Dados Gerais 2014")

crasrh_2014 <- read_excel("../Censo SUAS 2014/CRAS/Bases de Dados/CensoSUAS2014_CRAS_RH_RETIFICADA_Divulgação.xlsx", sheet = "CRAS RH 2014")

cras_2015 <- read_excel("../Censo SUAS 2015/CRAS/CensoSUAS_2015_CRAS_dadosgerais_divulgacao.xlsx", sheet = "Censo CRAS 2015")

crasrh_2015 <- read_excel("../Censo SUAS 2015/CRAS/CensoSUAS_2015_CRAS_RH_divulgacao.xlsx", sheet = "Censo CRAS RH 2015")

cras_2016 <- read_excel("../Censo SUAS 2016/CRAS/Censo SUAS_CRAS_DadosGerais_DIVULGAÇÃO.xlsx", sheet = "Censo CRAS 2016")

crasrh_2016 <- read_excel("../Censo SUAS 2016/CRAS/Censo SUAS_CRAS_RH_DIVULGAÇÃO.xlsx", sheet = "Censo CRAS RH 2016")

cras_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_CRAS/Censo SUAS 2017_CRAS_divulgacao.xlsx", sheet = "Base de dados")

crasrh_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_CRAS/Censo SUAS 2017_CRAS_RH_divulgacao.xlsx", sheet = "Base de dados")

cras_2018 <- read_excel("../Censo SUAS 2018/1 - CRAS/Censo_SUAS_2018_CRAS_Dados_Gerais_divulgacao.xlsx")

crasrh_2018 <- read_excel("../Censo SUAS 2018/1 - CRAS/Censo_SUAS_2018_CRAS_RH_divulgacao.xlsx")

cras_2019 <- read_excel("../Censo SUAS 2019/1 - CRAS/Censo_SUAS_2019_dados_gerais_RH_CRAS_divulgação.xls")

crasrh_2019 <- read_excel("../Censo SUAS 2019/1 - CRAS/Censo_SUAS_2019_dados_gerais_RH_CRAS_divulgação.xls")

cras_2020 <- read_excel("../Censo SUAS 2020/1 - CRAS/Censo_SUAS_2020_CRAS_dados_gerais (1).xlsx")

crasrh_2020 <- read_excel("../Censo SUAS 2020/1 - CRAS/Censo_SUAS_2020_CRAS_RH.xlsx")

cras_2021 <- read_excel("../Censo SUAS 2021/1 - CRAS/Censo_SUAS_2021_CRAS_Dados_Gerais.xlsx")

crasrh_2021 <- read_excel("../Censo SUAS 2021/1 - CRAS/Censo_SUAS_2021_CRAS_RH.xlsx")

cras_2022 <- read_excel("../Censo SUAS 2022/1_CRAS/Censo_SUAS_2022_CRAS_Dados_Gerais_Divulgação.xlsx")

crasrh_2022 <- read_excel("../Censo SUAS 2022/1_CRAS/Censo_SUAS_2022_CRAS_RH.xlsx")

cras_2023 <- read_csv2("../Censo SUAS 2023/1 - CRAS/Censo_SUAS_2023_CRAS_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

crasrh_2023 <- read_csv2("../Censo SUAS 2023/1 - CRAS/Censo_SUAS_2023_CRAS_RH.csv", locale = locale(encoding = "latin1"))

posto_cadunico_2020 <- read_excel("../Censo SUAS 2020/8_POSTO_CADASTRAMENTO/Censo_SUAS_2020_Postos_Cadastro_Único_Dados_Gerais.xlsx")

posto_cadunicorh_2020 <- read_excel("../Censo SUAS 2020/8_POSTO_CADASTRAMENTO/Censo_SUAS_2020_Postos_Cadastro_Único_RH.xlsx")

posto_cadunico_2021 <- read_excel("../Censo SUAS 2021/14 - Postos do CadUnico/Censo_SUAS_2021_Posto_Cadastramento_Dados_Gerais_Divulgação.xlsx")

posto_cadunicorh_2021 <- read_excel("../Censo SUAS 2021/14 - Postos do CadUnico/Censo_SUAS_Posto_Cadastramento_RH.xlsx")

posto_cadunico_2022 <- read_excel("../Censo SUAS 2022/8 - POSTO DE CADASTRAMENTO/Censo _SUAS_ 2022_Posto_cadastramento_Dados_Gerais.xlsx")

posto_cadunicorh_2022 <- read_excel("../Censo SUAS 2022/8 - POSTO DE CADASTRAMENTO/Censo _SUAS_ 2022_Posto_cadastramentoo_RH.xlsx")

posto_cadunico_2023 <- read_csv2("../Censo SUAS 2023/8 - POSTO DE CADASTRAMENTO/Censo_SUAS_2023_ Posto_Cadastro_Unico_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

posto_cadunicorh_2023 <- read_csv2("../Censo SUAS 2023/8 - POSTO DE CADASTRAMENTO/Censo_SUAS_2023_ Posto_Cadastro_Unico_RH.csv", locale = locale(encoding = "latin1"))

creas_2009 <- read_excel("../Censo SUAS 2009/CREAS/Censo CREAS 2009_final.xlsx", sheet = 1)

creas_2010 <- read_excel("../Censo SUAS 2010/CREAS/Censo SUAS 2010_CREAS_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 CREAS")

creas_2011 <- read_excel("../Censo SUAS 2011/CREAS/Censo SUAS 2011_CREAS_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2011 CREAS")

creas_2012 <- read_excel("../Censo SUAS 2012/CREAS/Censo SUAS 2012_CREAS_dados_gerais_2012_divulgação.xlsx", sheet = "Censo SUAS 2012 CREAS")

creasrh_2012 <- read_excel("../Censo SUAS 2012/CREAS/Censo SUAS 2012_CREAS_RH_2012_divulgação.xlsx", sheet = "CREAS RH - CensoSUAS2012")

creas_2013 <- read_excel("../Censo SUAS 2013/CREAS/Censo_SUAS_2013_CREAS_Dados_Gerais_Divulgação_11-04-2014_retificado q55_e_q56.xlsx", sheet = "CREAS 2013")

creasrh_2013 <- read_excel("../Censo SUAS 2013/CREAS/Censo_SUAS_2013_CREAS_RH_Divulgação.xlsx", sheet = "CREAS RH 2013")

creas_2014 <- read_excel("../Censo SUAS 2014/CREAS/Bases de Dados/CensoSUAS2014_CREAS_DadosGerais_Divulgação.xlsx", sheet = "CREAS Dados Gerais 2014")

creasrh_2014 <- read_excel("../Censo SUAS 2014/CREAS/Bases de Dados/CensoSUAS2014_CREAS_RH_Divulgação.xlsx", sheet = "CREAS RH 2014")

creas_2015 <- read_excel("../Censo SUAS 2015/CREAS/CensoSUAS2015_CREAS_DadosGerais_Divulgação.xlsx", sheet = "Censo CREAS 2015")

creasrh_2015 <- read_excel("../Censo SUAS 2015/CREAS/CensoSUAS2015_CREAS_RH_Divulgação.xlsx", sheet = "Censo CREAS RH 2015")

creas_2016 <- read_excel("../Censo SUAS 2016/CREAS/Censo SUAS CREAS_DadosGerais_2016_DIVULGAÇÃO.xlsx", sheet = "Censo CREAS 2016")

creasrh_2016 <- read_excel("../Censo SUAS 2016/CREAS/Censo SUAS CREAS_RH_2016_DIVULGAÇÃO.xlsx", sheet = "Censo CREAS RH 2016")

creas_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_CREAS/Censo SUAS 2017_CREAS_divulgacao.xlsx", sheet = "Base de dados")

creasrh_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_CREAS/Censo SUAS 2017_CREAS_RH_divulgacao.xlsx", sheet = "Base de dados")

creas_2018 <- read_excel("../Censo SUAS 2018/2 - CREAS/Censo_SUAS_2018_CREAS_Dados_Gerais_divulgacao.xlsx")

creasrh_2018 <- read_excel("../Censo SUAS 2018/2 - CREAS/Censo_SUAS_2018_CREAS_RH_divulgacao.xlsx")

creas_2019 <- read_excel("../Censo SUAS 2019/2 - CREAS/Censo_SUAS_2019_CREAS_Dados_Gerais_divulgacao.xlsx")

creasrh_2019 <- read_excel("../Censo SUAS 2019/2 - CREAS/Censo_SUAS_2019_RH_CREAS_divulgação.xlsx")

creas_2020 <- read_excel("../Censo SUAS 2020/CREAS/Censo_SUAS_CREAS_2020_Dados_Gerais_divulgacao_revisado.xlsx")

#creasrh_2020 <- read_excel("../Censo SUAS 2020/CREAS/Censo_SUAS_CREAS_2020_RH_divulgacao.xlsx")

creas_2021 <- read_excel("../Censo SUAS 2021/2 - CREAS/Censo_SUAS_2021_CREAS_Dados_Gerais_Divulgação.xlsx")

#creasrh_2021 <- read_excel("../Censo SUAS 2021/2 - CREAS/Censo_SUAS_2021_CREAS_RH.xlsx")

creas_2022 <- read_excel("../Censo SUAS 2022/2 - CREAS/Censo_SUAS_ 2022_ CREAS_Dados_ Gerais.xlsx", sheet = "dados")

creasrh_2022 <- read_excel("../Censo SUAS 2022/2 - CREAS/Censo_SUAS_ 2022_CREAS_RH.xlsx")

creas_2023 <- read_csv2("../Censo SUAS 2023/2 - CREAS/Censo_SUAS_2023_CREAS_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

creasrh_2023 <- read_csv2("../Censo SUAS 2023/2 - CREAS/Censo_SUAS_2023_CREAS_RH.csv", locale = locale(encoding = "latin1"))

cest_2010 <- read_excel("../Censo SUAS 2010/Conselho Estadual/Censo SUAS 2010_Conselho Estadual_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 Cons. Estadual")

cest_2011 <- read_excel("../Censo SUAS 2011/CONSELHOS ESTADUAIS/Censo SUAS 2011_Conselho_Estadual_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2011 Cons. Estadual")

cest_2012 <- read_excel("../Censo SUAS 2012/Conselho Estadual/Censo SUAS 2012_ConselhoEstadual_dadosgerais_divulgação.xlsx", sheet = "CensoSUAS2012 ConselhoEstadual")

cestrh_2012 <- read_excel("../Censo SUAS 2012/Conselho Estadual/Censo SUAS 2012_ConselhoEstadual_RH_divulgação.xlsx", sheet = "Censo2012 ConselhoEstadual RH")

cest_2013 <- read_excel("../Censo SUAS 2013/Conselho Estadual/Censo_SUAS_2013_Conselho_Estadual_Dados_Gerais_Divulgação.xlsx", sheet = "Conselho Estadual 2013")

cestrh_2013 <- read_excel("../Censo SUAS 2013/Conselho Estadual/Censo_SUAS_2013_Conselho_Estadual_RH_Divulgação.xlsx", sheet = "Conselho Estadual RH 2013")

cest_2014 <- read_excel("../Censo SUAS 2014/Conselho Estadual/Bases de Dados/CensoSUAS2014_ConselhoEstadual_DadosGerais_Divulgação.xlsx", sheet = "Conselho Estadual 2014")

cestrh_2014 <- read_excel("../Censo SUAS 2014/Conselho Estadual/Bases de Dados/CensoSUAS2014_ConselhoEstadual_RH_Divulgação.xlsx", sheet = "Conselho Estadual RH 2014")

cest_2015 <- read_excel("../Censo SUAS 2015/Conselho Estadual/Censo SUAS 2015_Conselho Estadual_Dados Gerais_divulgação.xlsx", sheet = "CensoSUAS2015 ConselhoEstadual")

cestrh_2015 <- read_excel("../Censo SUAS 2015/Conselho Estadual/Censo SUAS 2015_Conselho Estadual_RH_divulgação.xlsx", sheet = "CensoSUAS2015ConselhoEstadualRH")

cest_2016 <- read_excel("../Censo SUAS 2016/Conselho/Estadual/Censo SUAS 2016_Conselho_Estadual_Dados Gerais_Divulgação.xlsx", sheet = "Censo SUAS 2016 Conselho Est DG")

cestrh_2016 <- read_excel("../Censo SUAS 2016/Conselho/Estadual/Censo SUAS 2016_Conselho Estadual_RH_Divulgação.xlsx", sheet = "Censo SUAS 2016_Conselho Est RH")

cest_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Conselho_Estadual/Censo SUAS 2017_Conselho Estadual.xlsx", sheet = "Base de dados")

cestrh_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Conselho_Estadual/Censo SUAS_RH_Conselhos Estaduais.xlsx", sheet = "Base de dados")

cest_2018 <- read_excel("../Censo SUAS 2018/13 - CEAS/Censo SUAS 2018_Conselho Estadual_Dados_Gerais_divulgacao.xlsx")

cestrh_2018 <- read_excel("../Censo SUAS 2018/13 - CEAS/Censo SUAS 2018_Conselho_Estadual_RH_divulgacao.xlsx")

cest_2019 <- read_excel("../Censo SUAS 2019/13 - CEAS/Censo_SUAS_2019_dados_gerais_RH_Conselho_Estadual_divulgação.xlsx")

cestrh_2019 <- read_excel("../Censo SUAS 2019/13 - CEAS/Censo_SUAS_2019_dados_gerais_RH_Conselho_Estadual_divulgação.xlsx")

cest_2020 <- read_excel("../Censo SUAS 2020/13 - CEAS/Censo_SUAS_2020_Dados_Gerais_Conselho_Estadual.xlsx")

cestrh_2020 <- read_excel("../Censo SUAS 2020/13 - CEAS/Censo_SUAS_2020_RH_Conselho_Estadual.xlsx")

cest_2021 <- read_excel("../Censo SUAS 2021/13 - CEAS/Censo_SUAS_2021_Conselho_Estadual_Dados_Gerais_Divulgação.xlsx")

cestrh_2021 <- read_excel("../Censo SUAS 2021/13 - CEAS/Censo_SUAS_2021_Conselho_Estadual_RH.xlsx")

cest_2022 <- read_excel("../Censo SUAS 2022/13 - CEAS/Censo_SUAS_2022_Conselho_Estadual_dados_gerais.xlsx")

cestrh_2022 <- read_excel("../Censo SUAS 2022/13 - CEAS/Censo_SUAS_2022_Conselho_Estadual_RH.xlsx")

cest_2023 <- read_csv2("../Censo SUAS 2023/14 - CONSELHO ESTADUAL(1)/14 - CONSELHO ESTADUAL/Censo_SUAS_2023_Conselho_Estadual_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

cestrh_2023 <- read_csv2("../Censo SUAS 2023/14 - CONSELHO ESTADUAL(1)/14 - CONSELHO ESTADUAL/Censo_SUAS_2023_Conselho_Estadual_RH.csv", locale = locale(encoding = "latin1"))

cmun_2010 <- read_excel("../Censo SUAS 2010/Conselho Municipal/Censo SUAS 2010_Conselho Municipal_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 Cons. Municipal")

cmun_2011 <- read_excel("../Censo SUAS 2011/CONSELHOS MUNICIPAIS E DF/Censo SUAS 2011_Conselhos_municipais_e DF_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2011 Cons. Municipal")

cmun_2012 <- read_excel("../Censo SUAS 2012/Conselho Municipal+DF/Censo SUAS 2012_ConselhoMunicipal+DF_dadosgerais_divulgação.xlsx", sheet = "CensoSUAS2012 ConselhoMunicipal")

cmunrh_2012 <- read_excel("../Censo SUAS 2012/Conselho Municipal+DF/Censo SUAS 2012_ConselhoMunicipal+DF_RH_divulgação.xlsx", sheet = "Censo2012 ConselhoMunicipal RH")

cmun_2013 <- read_excel("../Censo SUAS 2013/Conselho Municipal/Censo_SUAS_2013_Conselho_Municipal_Dados Gerais_Divulgação.xlsx")
for (i in 1:ncol(cmun_2013)){
  cmun_2013[[i]] = str_trim(str_replace_all(cmun_2013[[i]], pattern = '\"(.*?)\\"', replacement = '\\1'))
}

cmunrh_2013 <- read_excel("../Censo SUAS 2013/Conselho Municipal/Censo_SUAS_2013_Conselho_Municipal_RH_Divulgação.xlsx", sheet = "Conselho Municipal RH 2013")

cmun_2014 <- read_excel("../Censo SUAS 2014/Conselho Municipal/Bases de Dados/CensoSUAS2014_ConselhoMunicipal_DadosGerais_Divulgação.xlsx", sheet = "Conselho Municipal 2014")

cmunrh_2014 <- read_excel("../Censo SUAS 2014/Conselho Municipal/Bases de Dados/CensoSUAS2014_ConselhoMunicipal_RH_Divulgação.xlsx", sheet = "Conselho Municipal RH 2014")

cmun_2015 <- read_excel("../Censo SUAS 2015/Conselho Municipal/Censo SUAS 2015_Conselho Municipal_Dados Gerais_divulgação.xlsx", sheet = "CensoSUAS2015 ConselhoMunicipal")

cmunrh_2015 <- read_excel("../Censo SUAS 2015/Conselho Municipal/Censo SUAS 2015_Conselho Municipal_RH_divulgação.xlsx", sheet = "CensoSUAS15 ConselhoMunicipalRH")

cmun_2016 <- read_excel("../Censo SUAS 2016/Conselho/Municipal/Censo SUAS 2016_Conselho Municipal_Dados Gerais_Divulgação.xlsx", sheet = "Censo SUAS 2016_Conselho Mun DG")

cmunrh_2016 <- read_excel("../Censo SUAS 2016/Conselho/Municipal/Censo SUAS 2016_Conselho Municipal_RH_Divulgação.xlsx", sheet = "Censo SUAS 2016_Conselho Mun_RH")

cmun_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Conselho_Municipal/Censo SUAS 2017_Conselho Municipal.xlsx", sheet = "Base de dados")

cmunrh_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Conselho_Municipal/Censo SUAS 2017_RH_Conselho Municipal.xlsx", sheet = "Base de dados")

cmun_2018 <- read_excel("../Censo SUAS 2018/12 - CMAS/Censo SUAS 2018_Conselho_Municipal_Dados_Gerais_divulgacao.xlsx")

cmunrh_2018 <- read_excel("../Censo SUAS 2018/12 - CMAS/Censo SUAS 2018 _Conselho Municipal_RH_divulgacao.xlsx")

cmun_2019 <- read_excel("../Censo SUAS 2019/12 - CMAS/Censo_SUAS_2019_Dados_gerais_RH_Conselho_Municipal_divulgação.xlsx")

cmunrh_2019 <- read_excel("../Censo SUAS 2019/12 - CMAS/Censo_SUAS_2019_Dados_gerais_RH_Conselho_Municipal_divulgação.xlsx")

cmun_2020 <- read_excel("../Censo SUAS 2020/Conselho Municipal/Censo_SUAS_2020_Conselho_municipal_Dados_Gerais.xlsx")

cmunrh_2020 <- read_excel("../Censo SUAS 2020/Conselho Municipal/Censo_SUAS_2020_Conselho_municipal_RH.xlsx")

cmun_2021 <- read_excel("../Censo SUAS 2021/12 - CMAS/Censo_SUAS_2021_Conselho_Municipal_Dados_Gerais_Divulgação.xlsx")

cmunrh_2021 <- read_excel("../Censo SUAS 2021/12 - CMAS/Censo_SUAS_2021_Conselho_Municipal_RH.xlsx")

cmun_2022 <- read_excel("../Censo SUAS 2022/13 - CONSELHO MUNICIPAL/Censo_SUAS_2022_Conselho_Municipal_Dados_gerais.xlsx")

cmunrh_2022 <- read_excel("../Censo SUAS 2022/13 - CONSELHO MUNICIPAL/Censo_SUAS_2022_Conselho_Municipal_RH.xlsx")

cmun_2023 <- read_csv2("../Censo SUAS 2023/13 - CONSELHO MUNICIPAL(1)/13 - CONSELHO MUNICIPAL/Censo_SUAS_2023_Conselho_Municipal_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

cmunrh_2023 <- read_csv2("../Censo SUAS 2023/13 - CONSELHO MUNICIPAL(1)/13 - CONSELHO MUNICIPAL/Censo_SUAS_2023_Conselho_Municipal_RH.csv", locale = locale(encoding = "latin1"))

rpriv_2010 <- read_excel("../Censo SUAS 2010/Rede Privada/Censo SUAS 2010_Rede privada_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 Rede Privada")

rpriv_2011 <- read_excel("../Censo SUAS 2011/Rede Privada/Censo SUAS 2011_Rede Privada_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 Rede Privada")

rpriv_2011 <- read_excel("../Censo SUAS 2011/Rede Privada/Censo SUAS 2011_Rede Privada_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2010 Rede Privada")

cpop_2011 <- read_excel("../Censo SUAS 2011/CENTRO POP/Censo SUAS 2011_CENTRO_POP_DIVULGAÇÃO.xlsx", sheet = "Censo SUAS 2011 Centro POP")

cpop_2012 <- read_excel("../Censo SUAS 2012/Centro POP/Censo SUAS 2012_CentroPOP_Divulgação.xlsx", sheet = "Centro POP - CensoSUAS2012")

cpoprh_2012 <- read_excel("../Censo SUAS 2012/Centro POP/Censo SUAS 2012_CentroPOP_RH_Divulgação.xlsx", sheet = "Centro POP RH - CensoSUAS2012")

cpop_2013 <- read_excel("../Censo SUAS 2013/Centro POP/Censo_SUAS_2013_CentroPOP_Dados_Gerais_Divulgação.xlsx", sheet = "Centro POP 2013")

cpoprh_2013 <- read_excel("../Censo SUAS 2013/Centro POP/Censo_SUAS_2013_CentroPOP_RH_Divulgação.xlsx", sheet = "CentroPOP RH 2013")

cpop_2014 <- read_excel("../Censo SUAS 2014/CentroPOP/Bases de Dados/Censo_SUAS_2014_CentroPOP_Dados Gerais_Divulgação.xlsx", sheet = "CentroPOP Dados Gerais 2014")

cpoprh_2014 <- read_excel("../Censo SUAS 2014/CentroPOP/Bases de Dados/Censo_SUAS_2014_CentroPOP_RH_Divulgação.xlsx", sheet = "CentroPOP_2014_RH")

cpop_2015 <- read_excel("../Censo SUAS 2015/Centro POP/Censo-SUAS_2015_Centro_POP_dados_gerais_divulgação.xlsx", sheet = "Censo Centro POP 2015")

cpoprh_2015 <- read_excel("../Censo SUAS 2015/Centro POP/Censo-SUAS_2015_Centro_POP_RH_divulgação.xlsx", sheet = "Censo Centro POP RH 2015")

cpop_2016 <- read_excel("../Censo SUAS 2016/Centro POP/Censo SUAS_CentroPOP_DadosGerais_2016_DIVULGAÇÃO.xlsx", sheet = "Censo Centro POP 2016")

cpoprh_2016 <- read_excel("../Censo SUAS 2016/Centro POP/Censo SUAS_CentroPOP_RH_2016_DIVULGAÇÃO.xlsx", sheet = "Censo CentroPOP RH 2016")

cpop_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Centro_POP/Censo SUAS 2017_Centro POP_divulgação.xlsx", sheet = "Base de dados")

cpoprh_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Centro_POP/Censo SUAS 2017_Centro POP_RH_divulgação.xlsx", sheet = "Base de dados")

cpop_2018 <- read_excel("../Censo SUAS 2018/4 - Centro Pop/Censo_SUAS_2018_Centro_POP_Dados_Gerais.xlsx")

cpoprh_2018 <- read_excel("../Censo SUAS 2018/4 - Centro Pop/Censo_SUAS_2018_Centro_POP_RH.xlsx")

cpop_2019 <- read_excel("../Censo SUAS 2019/3 - Centro Pop/Censo_SUAS_2019_Centro_POP_ Dados_Gerais.xlsx")

cpoprh_2019 <- read_excel("../Censo SUAS 2019/3 - Centro Pop/Censo_SUAS_2019_Centro_POP_RH.xlsx")

cpop_2020 <- read_excel("../Censo SUAS 2020/3_CENTRO_POP/CensoSUAS_2020_Dados_Gerais_Centro_POP.xlsx")

cpoprh_2020 <- read_excel("../Censo SUAS 2020/3_CENTRO_POP/CensoSUAS_2020_RH_Centro_POP.xlsx")

cpop_2021 <- read_excel("../Censo SUAS 2021/4 - Centro Pop/Censo_SUAS_2021_CPOP_Dados_Gerais_divulgação.xlsx")

cpoprh_2021 <- read_excel("../Censo SUAS 2021/4 - Centro Pop/Censo_SUAS_2021_CPOP_Dados_Gerais_divulgação.xlsx")

cpop_2022 <- read_excel("../Censo SUAS 2022/3 - CENTRO POP/Censo_SUAS_2022_Centro_POP_dados_gerais.xlsx")

cpoprh_2022 <- read_excel("../Censo SUAS 2022/3 - CENTRO POP/Censo_SUAS_2021_Centro_POP_RH.xlsx")

cpop_2023 <- read_csv2("../Censo SUAS 2023/3 - CENTRO POP/Censo_SUAS_2023_Centro_POP_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

cpoprh_2023 <- read_csv2("../Censo SUAS 2023/3 - CENTRO POP/Censo_SUAS_2023_Centro_POP_RH.csv", locale = locale(encoding = "latin1"))

unac_2012 <- read_excel("../Censo SUAS 2012/Unidades de Acolhimento/Censo SUAS 2012_Unidades_de_Acolhimento_dadosgerais_divulgação.xlsx")

unacrh_2012 <- read_excel("../Censo SUAS 2012/Unidades de Acolhimento/Censo SUAS 2012_Unidades_de_Acolhimento_RH_divulgação.xlsx", sheet = "CensoSUAS2012 Acolhimento RH")

unac_2013 <- read_excel("../Censo SUAS 2013/Acolhimento/Censo_SUAS_2013_Acolhimento_Dados_Gerais_Divulgação.xlsx", sheet = "Acolhimento 2013")

unacrh_2013 <- read_excel("../Censo SUAS 2013/Acolhimento/Censo_SUAS_2013_Acolhimento_RH_Divulgação.xlsx", sheet = "Acolhimento RH 2013")

unac_2014 <- read_excel("../Censo SUAS 2014/Acolhimento/Bases de Dados/CensoSUAS2014_Acolhimento_DadosGerais_Divulgação_Retificada_14_08_2015.xlsx", sheet = "Acolhimento 2014")

unacrh_2014 <- read_excel("../Censo SUAS 2014/Acolhimento/Bases de Dados/CensoSUAS2014_Acolhimento_RH_Divulgação.xlsx", sheet = "Acolhimento RH 2014")

unac_2015 <- read_excel("../Censo SUAS 2015/Unidades de Acolhimento/Censo SUAS 2015_Unidades de Acolhimento_Dados Gerais_divulgação.xlsx", sheet = "Censo Acolhimento 2015 DG")

unacrh_2015 <- read_excel("../Censo SUAS 2015/Unidades de Acolhimento/Censo SUAS 2015_Unidades de Acolhimento_Recursos Humanos_divulgação.xlsx", sheet = "Censo SUAS Acolhimento 2015 RH")

unac_2016 <- read_excel("../Censo SUAS 2016/Acolhimento/CensoSUAS2016_Acolhimento_DG_DIVULGAÇÃO.xlsx")

unacrh_2016 <- read_excel("../Censo SUAS 2016/Acolhimento/CensoSUAS2016_Acolhimento_RH_DIVULGAÇÃO.xlsx", sheet = "CensoSUAS2016_Acolhimento_RH")

unac_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Unidades_Acolhimento/Censo Suas 2017 Unidades de Acolhimento_divulgação.xlsx", sheet = "Base de dados")

unacrh_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Unidades_Acolhimento/CENSO SUAS 2017 Acolhimento RH divulgação.xlsx", sheet = "Base de dados")

unac_2018 <- read_csv2("../Publicacoes-Censo-SUAS/Censo SUAS 2018/6.Unidade de Acolhimento/Censo_SUAS_2018_Acolhimento_Municipal_e_Estadual_dados_gerais_divulgação.csv", locale = locale(encoding = "latin1"))

unacrh_2018 <- read_excel("../Censo SUAS 2018/3 - Unidade de acolhimento/Censo_SUAS_2018_Acolhimento_Municipal_RH_divulgacao.xlsx")

unac_2019 <- read_excel("../Censo SUAS 2019/5 - Unidade de acolhimento/Censo_SUAS_2019_DG_Acolhimento.xlsx")

unacrh_2019 <- read_excel("../Censo SUAS 2019/5 - Unidade de acolhimento/Censo_SUAS_2019_RH_Acolhimento.xlsx")

unac_2020 <- read_excel("../Censo SUAS 2020/Unidade_de_Acolhimento/Censo_SUAS_2020_DG_Acolhimento.xlsx")

unacrh_2020 <- read_excel("../Censo SUAS 2020/Unidade_de_Acolhimento/Censo_SUAS_2020_RH_Acolhimento.xlsx")

unac_2021 <- read_excel("../Censo SUAS 2021/7 - Unidade de acolhimento/Censo_SUAS_2021_Unidade_Acolhimento_Dados_Gerais_Divulgação.xlsx")

unacrh_2021 <- read_excel("../Censo SUAS 2021/7 - Unidade de acolhimento/Censo_SUAS_2021_Unidade_Acolhimento_RH.xlsx")

unac_2022 <- read_excel("../Censo SUAS 2022/4 - UNIDADE DE ACOLHIMENTO/Censo_SUAS_2022 _ Unidades_de_Acolhimento_dados_gerais.xlsx")

unacrh_2022 <- read_excel("../Censo SUAS 2022/4 - UNIDADE DE ACOLHIMENTO/Censo_SUAS_2022 _ Unidades_de_Acolhimento_RH.xlsx")

unac_2023 <- read_csv2("../Censo SUAS 2023/4 - UNIDADE DE ACOLHIMENTO/Censo_SUAS_2023_Unidade_Acolhimento_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

unacrh_2023 <- read_csv2("../Censo SUAS 2023/4 - UNIDADE DE ACOLHIMENTO/Censo_SUAS_2023_Unidade_Acolhimento_RH.csv", locale = locale(encoding = "latin1"))

ceconv_2014 <- read_excel("../Censo SUAS 2014/Centros de Convivência/Bases de Dados/CensoSUAS2014_Convivência_Divulgação.xlsx", sheet = "Convivência 2014")

ceconv_2015 <- read_excel("../Censo SUAS 2015/Centro de Convivência/CensoSUAS_2015_Convivencia_DadosGerais_divulgacao.xlsx", sheet = "Censo Convivência 2015")

ceconvrh_2015 <- read_excel("../Censo SUAS 2015/Centro de Convivência/CensoSUAS_2015_Convivencia_RH_divulgacao.xlsx", sheet = "Censo Convivência RH 2015")

ceconv_2016 <- read_excel("../Censo SUAS 2016/Convivência/CensoSUAS_2016_Convivencia_DadosGerais_divulgacao.xlsx", sheet = "CensoSUAS_2016_Convivencia_DG")

ceconvrh_2016 <- read_excel("../Censo SUAS 2016/Convivência/CensoSUAS_2016_Convivencia_RH_divulgacao.xlsx", sheet = "CensoSUAS_2016_Convivencia_RH")

ceconv_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Centro_Convivencia/CensoSUAS2017_Convivencia_DG_divulgacao.xlsx", sheet = "Base de dados")

ceconvrh_2017 <- read_excel("../Censo SUAS 2017/Censo_SUAS_2017_Centro_Convivencia/CensoSUAS2017_Convivencia_RH_divulgacao.xlsx", sheet = "Base de dados")

ceconv_2018 <- read_excel("../Censo SUAS 2018/6 - Centro Convivência/CENSO_SUAS_2018_Centro_Convivencia_Dados_gerais_divulgacao.xls")

ceconv_2020 <- read_excel("../Censo SUAS 2020/5_CENTRO_CONVIVENCIA/Censo_SUAS_2020_Centro_Convivencia_dados_gerais.xlsx")

ceconvrh_2020 <- read_excel("../Censo SUAS 2020/5_CENTRO_CONVIVENCIA/Censo_SUAS_2020_Centro_Convivencia_RH.xlsx")

ceconv_2021 <- read_excel("../Censo SUAS 2021/10 - centro convivencia/Censo_SUAS_2021_Centro_Convivencia_Dados_Gerais_Divulgação.xls")

ceconvrh_2021 <- read_excel("../Censo SUAS 2021/10 - centro convivencia/Censo_SUAS_2021_Centro_Convivencia_Dados_Gerais_Divulgação.xls")

ceconv_2022 <- read_excel("../Censo SUAS 2022/5 - Centro Convivência/Censo_SUAS_ 2022_ Centros_de_Convivência_dados_gerais.xlsx")

ceconvrh_2022 <- read_excel("../Censo SUAS 2022/5 - Centro Convivência/Censo_SUAS_ 2022_ Centros_de_Convivência_RH.xlsx")

ceconv_2023  <- read_csv2("../Censo SUAS 2023/5 - CENTRO DE CONVIVENCIA/Censo_SUAS_2023_Centro_Convivencia_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

ceconvrh2023 <- read_csv2("../Censo SUAS 2023/5 - CENTRO DE CONVIVENCIA/Censo_SUAS_2023_Centro_Convivencia_RH.csv", locale = locale(encoding = "latin1"))

cedia_2015 <- read_excel("../Censo SUAS 2015/Centro DIA/CensoSUAS_2015_CentroDIA_dadosgerais_divulgacao.xlsx", sheet = "Censo SUAS Centro DIA 2015")

cediarh_2015 <- read_excel("../Censo SUAS 2015/Centro DIA/CensoSUAS_2015_CentroDIA_RH_divulgacao.xlsx", sheet = "Censo SUAS Centro DIA RH 2015")

cedia_2016 <- read_excel("../Censo SUAS 2016/Centro DIA/Censo SUAS 2016_CentroDIA_DadosGerais_Divulgacao.xlsx", sheet = "Censo SUAS 2016 CentroDIA DG")

cediarh_2016 <- read_excel("../Censo SUAS 2016/Centro DIA/Censo SUAS 2016_CentroDIA_RH_Divulgacao.xlsx", sheet = "Censo SUAS 2016 CentroDIA RH")

cedia_2017 <- read_excel("../Censo SUAS 2017/Censo SUAS 2017_Centro DIA/CensoSUAS2017_CentroDIA_DG_divulgacao.xlsx", sheet = "Base de dados")

cediarh_2017 <- read_excel("../Censo SUAS 2017/Censo SUAS 2017_Centro DIA/CensoSUAS2017_CentroDIA_RH_divulgacao.xlsx", sheet = "Base de dados")

cedia_2018 <- read_excel("../Censo SUAS 2018/5 - Centro Dia/Censo_SUAS_2018_Centro_DIA_dados_gerais_divulgacao.xlsx")

cediarh_2018 <- read_excel("../Censo SUAS 2018/5 - Centro Dia/Censo_SUAS_2018_Centro_DIA_RH_divulgacao.xlsx")

cedia_2019 <- read_excel("../Censo SUAS 2019/6 - Centro Dia/Censo_SUAS_2019_Dados_Gerais_RH_Centro_DIA_divulgação.xlsx")

cediarh_2019 <- read_excel("../Censo SUAS 2019/6 - Centro Dia/Censo_SUAS_2019_Centro_DIA_RH_divulgação.xlsx")

cedia_2020 <- read_excel("../Censo SUAS 2020/6_CENTRO_DIA/Censo_SUAS_2020_Centro_Dia_Dados_Gerais.xls")

cediarh_2020 <- read_excel("../Censo SUAS 2020/6_CENTRO_DIA/Censo_SUAS_2020_Centro_Dia_RH.xlsx")

cedia_2021 <- read_excel("../Censo SUAS 2021/6 - Centro Dia/Censo_SUAS_2021_Centro_Dia_Dados_Gerais_Divulgação.xls")

cediarh_2021 <- read_excel("../Censo SUAS 2021/6 - Centro Dia/Censo_SUAS_2021_Centro_Dia_RH.xls")

cedia_2022 <- read_excel("../Censo SUAS 2022/6 - CENTRO DIA/Censo_SUAS_2022_Centro_Dia_dados_gerais.xlsx")

cediarh2022<- read_excel("../Censo SUAS 2022/6 - CENTRO DIA/Censo_SUAS_2022_Centro_Dia_RH.xlsx")

cedia_2023 <- read_csv2("../Censo SUAS 2023/6 - CENTRO DIA/Censo_SUAS_2023_Centro_Dia_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

cediarh2023<- read_csv2("../Censo SUAS 2023/6 - CENTRO DIA/Censo_SUAS_2023_Centro_Dia_RH.csv", locale = locale(encoding = "latin1"))


famacolfam_2017 <- read_excel("../Censo SUAS 2017/Censo SUAS 2017 Família Acolhedora/Censo SUAS 2017_Família Acolhedora_divulgação.xlsx", sheet = "Base de dados")

famacolrh_2017 <- read_excel("../Censo SUAS 2017/Censo SUAS 2017 Família Acolhedora/Censo SUAS 2017_Família Acolhedora_RH_divulgação.xlsx", sheet = 1)

famacolfam_2018 <- read_excel("../Censo SUAS 2018/14 - Família Acolhedora/Censo_SUAS_2018_FAMILIA_ACOLHEDORA_Dados_gerais_divulgacao.xlsx", sheet = 1)

famacolrh_2018 <- read_excel("../Censo SUAS 2018/14 - Família Acolhedora/Censo_SUAS_2018_FAMILIA_ACOLHEDORA_RH_FAM_divulgacao.xlsx", sheet = 1)

famacolfam_2019 <- read_excel("../Censo SUAS 2019/14 - Família Acolhedora/Censo_SUAS_2019_Familia_Acolhedora_Dados_Gerais_RH_divulgacao.xlsx", sheet = 1)

famacolrh_2019 <- read_excel("../Censo SUAS 2019/14 - Família Acolhedora/Censo_SUAS_2019_Familia_Acolhedora_equipe_RH_divulgaçao.xlsx", sheet = 1)

famacolfam_2020 <- read_excel("../Censo SUAS 2020/7 - Família Acolhedora/Censo _SUAS_2020_Familia_Acolhedora_Dados_Gerais.xlsx", sheet = 1)

famacolrh_2020 <- read_excel("../Censo SUAS 2020/7 - Família Acolhedora/Censo_SUAS_2020_Familia_Acolhedora_Familia_RH.xlsx", sheet = 1)

famacolfam_2021 <- read_excel("../Censo SUAS 2021/15 - Família Acolhedora/Censo_SUAS_2021_Familia_Acolhedora_Dados_Gerais_Divulgação.xlsx", sheet = 1)

famacolrh_2021 <- read_excel("../Censo SUAS 2021/15 - Família Acolhedora/Censo_SUAS_2021_Familia_Acolhedora_Familia_RH.xlsx", sheet = 1)

famacolfam_2022 <- read_excel("../Censo SUAS 2022/14 - Família Acolhedora/Censo_SUAS_2022_Familia_Acolhedora_dados_gerais.xlsx", sheet = 1)

famacolrh_2022 <- read_excel("../Censo SUAS 2022/14 - Família Acolhedora/Censo_SUAS_2022_Familia_Acolhedora_FAM_RH.xlsx", sheet = 1)

famacolfam_2023 <- read_excel("../Censo SUAS 2023/7 - FAMILIA ACOLHEDORA/Censo_SUAS_2023_Familia_Acolhedora_Dados_Gerais.xlsx", sheet = 1)

famacolrh_2023 <- read_excel("../Censo SUAS 2023/7 - FAMILIA ACOLHEDORA/Censo_SUAS_2023_Familia_Acolhedora_Equipe_RH.xlsx", sheet = 1)

feas_2018 <- read_excel("../Censo SUAS 2018/8 - Fundo Estadual/Censo_SUAS_2018_Dados_gerais_FE_divulgação.xlsx")

feas_2019 <- read_excel("../Censo SUAS 2019/9 - Fundo Estadual/Censo_SUAS_2019_Fundo_Estadual_dados_gerais_divulgacao.xlsx")

feas_2020 <- read_excel("../Censo SUAS 2020/12 - Fundo Estadual/Censo_SUAS_2020_FE_dados_gerais_divulgação.xlsx")

feas_2021 <- read_excel("../Censo SUAS 2021/9 - Fundo Estadual/Censo_SUAS_2021_Fundo_Estadual_Dados_Gerais_Divulgação.xlsx")

feasrh_2021 <- read_excel("../Censo SUAS 2021/9 - Fundo Estadual/Censo_SUAS_2021_Fundo_Estadual_RH.xlsx")

feas_2022 <- read_excel("../Censo SUAS 2022/10 - FEAS/Censo_SUAS_2022_ Fundo_Estadual_Dados_gerais.xlsx")

feasrh_2022 <- read_excel("../Censo SUAS 2022/10 - FEAS/Censo_SUAS_2022_Fundo_Estadual_RH.xlsx")

feas_2023 <- read_csv2("../Censo SUAS 2023/12 - FUNDO ESTADUAL/Censo_SUAS_2023_Fundo_Estadual_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

feasrh_2023 <- read_csv2("../Censo SUAS 2023/12 - FUNDO ESTADUAL/Censo_SUAS_2023_Fundo_Estadual_RH.csv", locale = locale(encoding = "latin1"))

fmas_2018 <- read_excel("../Censo SUAS 2018/9 - Fundo Municipal/Censo_SUAS_2018_FM_Dados_Gerais_divulgação.xlsx")

fmasRH_2018 <- read_excel("../Censo SUAS 2018/9 - Fundo Municipal/Censo_SUAS_2018_FM_RH_divulgação.xlsx")

#fmas_2019 <- read_excel("../Censo SUAS 2019/10 - Fundo Municipal/Censo_SUAS_2019_Fundo_Municipal_Dados_Gerais.xls")

#fmasRH_2019 <- read_excel("../Censo SUAS 2019/10 - Fundo Municipal/Censo_SUAS_2019_Fundo_Municipal_RH.xls")

fmas_2020 <- read_excel("../Censo SUAS 2020/11 - Fundo Municipal/Censo_SUAS_2020_Fundo_Municipal_dados_gerais_divulgação.xlsx")

fmasRH_2020 <- read_excel("../Censo SUAS 2020/11 - Fundo Municipal/Censo_SUAS_2020_Fundo_Municipal_RH.xlsx")

fmas_2021 <- read_excel("../Censo SUAS 2021/10 - Fundo Municipal/Censo_SUAS_2021_Fundo_Municipal_Dados_Gerais_Divulgação.xlsx")

fmasRH_2021 <- read_excel("../Censo SUAS 2021/10 - Fundo Municipal/Censo_SUAS_2021_Fundo_Municipal_RH.xlsx")

fmas_2022 <- read_excel("../Censo SUAS 2022/11 - FMAS/Censo_SUAS_2022 - Fundo Municipal_dados_gerais.xlsx")

fmasRH_2022 <- read_excel("../Censo SUAS 2022/11 - FMAS/Censo_SUAS_2022 - Fundo Municipal_RH.xlsx")

fmas_2023 <- read_csv2("../Censo SUAS 2023/11 - FUNDO MUNICIPAL(1)/11 - FUNDO MUNICIPAL/Censo_SUAS_2023_Fundo_Municipal_Dados_Gerais.csv", locale = locale(encoding = "latin1"))

fmasRH_2023 <- read_csv2("../Censo SUAS 2023/11 - FUNDO MUNICIPAL(1)/11 - FUNDO MUNICIPAL/Censo_SUAS_2023_Fundo_Municipal_RH.csv", locale = locale(encoding = "latin1"))

idconselho_2014 <- read_excel("../ID CONSELHO/IDConselho2014_alterado_08-12-2016.xlsx")
idconselho_2015 <- read_excel("../ID CONSELHO/ID CONSELHO - 2015.xlsx")
idconselho_2016 <- read_excel("../ID CONSELHO/ID CONSELHO - 2016.xlsx")
idconselho_2017 <- read_excel("../ID CONSELHO/ID CONSELHO - 2017.xlsx")
idconselho_2018 <- read_excel("../ID CONSELHO/ID CONSELHO - 2018.xlsx")
idconselho_2019 <- read_excel("../ID CONSELHO/ID CONSELHO - 2019.xlsx", guess_max=7)
idconselho_2020 <- read_excel("../ID CONSELHO/ID CONSELHO - 2020.xlsx", guess_max=12)
idconselho_2021 <- read_excel("../ID CONSELHO/IDCONSELHO_2021_divulgacao.xlsx", guess_max=140)
idconselho_2022 <- read_excel("../ID CONSELHO/IDConselho_Municipal_2022_divulgacao.xlsx")

idcras_2014 <- read_excel("../ID CRAS/NOVO_IDCRAS_2014_divulgação_retificado_07_10_2016.xlsx")
idcras_2015 <- read_excel("../ID CRAS/NOVO_IDCRAS_2015_divulgação_retificado_07_10_2016.xlsx")
idcras_2016 <- read_excel("../ID CRAS/IDCRAS_2016_FINAL_(01062017).xlsx")
idcras_2017 <- read_excel("../ID CRAS/IDCRAS_2017_DIVULGAÇÃO_atualizado__030523.xlsx", sheet = 2, skip=6)
idcras_2018 <- read_excel("../ID CRAS/IDCRAS_2018_DIVULGAÇÃO_atualizado_280423.xlsx")
idcras_2019 <- read_excel("../ID CRAS/IDCRAS_2019_DIVULGAÇÃO_atualizado_280423.xlsx")
idcras_2020 <- read_excel("../ID CRAS/IDCRAS_2020_DIVULGAÇÃO_atualizado_280423(1).xlsx")
idcras_2021 <- read_excel("../ID CRAS/IDCRAS_2021_DIVULGAÇÃO_atulaizado_280423(1).xlsx")
idcras_2022 <- read_excel("../ID CRAS/IDCRAS_2022_DIVULGAÇÃO_atualizado_280423(1).xlsx")

idcreas_2014 <- read_excel("../ID CREAS/IDCREAS_2014_DIVULGACAO_site.xlsx")
idcreas_2015 <- read_excel("../ID CREAS/ID_CREAS_2015_divulgacao_site.xlsx")
idcreas_2016 <- read_excel("../ID CREAS/IDCREAS_2016_DIVULGAÇÃO.xlsx")
idcreas_2017 <- read_excel("../ID CREAS/IDCREAS_2017_DIVULGAÇÃO (2).xlsx")
idcreas_2018 <- read_excel("../ID CREAS/IDCREAS2018_divulgacao(2).xlsx")
idcreas_2019 <- read_excel("../ID CREAS/IDCREAS2019_divulgacao.xlsx")
idcreas_2020 <- read_excel("../ID CREAS/IDCREAS2020_divulgacao.xlsx")
idcreas_2021 <- read_excel("../ID CREAS/IDCREAS2021_divulgacao_retificado191022(1) (1).xlsx")
idcreas_2022 <- read_excel("../ID CREAS/IDCREAS2022_divulgacao_retificado270923.xlsx")

niveis_ID <- c(1, 2, 3, 4, 5)

#Número de municipios no Brasil e por região. Fonte: Anuários Estatístico do Brasil 2017, IBGE.
#c(Norte, Nordeste, Sudeste, Sul, Centro-Oeste, Brasil)
municipios_2007 <- c(449, 1793, 1668, 1188, 466, 5564)
municipios_2008 <- c(449, 1793, 1668, 1188, 466, 5564)
municipios_2009 <- c(449, 1794, 1668, 1188, 466, 5565)
municipios_2010 <- c(449, 1794, 1668, 1188, 466, 5565)
municipios_2011 <- c(449, 1794, 1668, 1188, 466, 5565)
municipios_2012 <- c(449, 1794, 1668, 1188, 466, 5565)
municipios_2013 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2014 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2015 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2016 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2017 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2018 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2019 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2020 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2021 <- c(450, 1794, 1668, 1191, 467, 5570)
municipios_2022 <- c(450, 1794, 1668, 1191, 467, 5570)

# População dos municípios estimada pelo IBGE
pop_municipios_2016 <- read_excel("../Estimativa População IBGE/estimativa_dou_2016_20160913.xlsx", sheet = "Municípios (limpo)")
pop_municipios_2017 <- read_excel("../Estimativa População IBGE/estimativa_dou_2017.xls", sheet = "Municípios (limpo)")
pop_municipios_2021 <- read_ods("../Estimativa População IBGE/POP2021_20230710.ods")


# Ajuste base 2023
names(gm_2023)[grep("Regiao", names(gm_2023))] = "Região"
gm_2023$Região = factor(gm_2023$Região,
                        labels = c("Região Norte", "Região Nordeste", "Região Centro-Oeste", "Região Sudeste", "Região Sul"),
                        levels = c("Região Norte", "Região Nordeste", "Região Centro Oeste", "Região Sudeste", "Região Sul"))

