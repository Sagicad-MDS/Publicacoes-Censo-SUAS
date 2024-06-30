for (i in 1:ncol(cmun_2013)){
  cmun_2013[[i]] = str_trim(str_replace_all(cmun_2013[[i]], pattern = '\"(.*?)\\"', replacement = '\\1'))
}

# Classificação do porte populacional dos municípios.
# Fonte: PNAS 2004
f_porte_populacional = function(df, populacao){
  populacao <- enquo(populacao)
  
  df %>%
    mutate("Porte" = case_when(!! populacao <= 20000~"Pequeno I",
                               !! populacao <= 50000~"Pequeno II",
                               !! populacao <= 100000~"Médio",
                               !! populacao <= 900000~"Grande",
                               !! populacao > 900000~"Metrópole")) %>%
    mutate(Porte = factor(Porte, levels = c("Pequeno I",
                                            "Pequeno II",
                                            "Médio",
                                            "Grande",
                                            "Metrópole")))
}

f_selecao_regiao_ano_com_na = function(df, q, selecao, regiao, ano){
  q <- enquo(q)
  ano <- quo_name(ano)
  regiao <- enquo(regiao)
  selecao <- quo_name(selecao)
  
  df %>%
    select(!! regiao, !!q) %>%
    mutate(!! regiao := case_when(substr(!! regiao,1,1) == "1"~"Norte",
                                  substr(!! regiao,1,1) == "2"~"Nordeste",
                                  substr(!! regiao,1,1) == "3"~"Sudeste",
                                  substr(!! regiao,1,1) == "4"~"Sul",
                                  substr(!! regiao,1,1) == "5"~"Centro-Oeste",
                                  TRUE ~ str_replace(!! regiao, "Região ", ""))) %>%
    group_by(!! regiao, !! q) %>%
    summarise(n=n()) %>%
    spread(!! regiao, n, fill = 0) %>%
    mutate("Brasil" = rowSums(.[2:6])) %>%
    gather("Região","n",-!! q) %>%
    group_by(Região) %>%
    mutate("Percentual" = n/sum(n)) %>%
    filter(!! q == !! selecao) %>%
    mutate("Ano" = !! ano)
}

f_selecao_regiao_ano = function(df, q, selecao, regiao, ano){
  q <- enquo(q)
  regiao <- enquo(regiao)
  
  df %>%
    filter(!is.na(!! q)) %>%
    f_selecao_regiao_ano_com_na(!! q, selecao, !! regiao, ano)
}

f_maior0_regiao_ano = function(df, q, regiao, ano){
  q <- enquo(q)
  regiao <- enquo(regiao)
  
  df %>%
    mutate(!! q := case_when(!! q > 0~"S",
                             TRUE ~ as.character(!! q))) %>%
    f_selecao_regiao_ano_com_na(!! q, "S", !! regiao, ano)
}

f_quantitativo_regiao_ano = function(df, regiao, ano){
  ano <- quo_name(ano)
  regiao <- enquo(regiao)
  
  df %>%
    select(!! regiao) %>%
    #    filter(!is.na(!! regiao)) %>%
    mutate(!! regiao := case_when(substr(!! regiao,1,1) == "1"~"Norte",
                                  substr(!! regiao,1,1) == "2"~"Nordeste",
                                  substr(!! regiao,1,1) == "3"~"Sudeste",
                                  substr(!! regiao,1,1) == "4"~"Sul",
                                  substr(!! regiao,1,1) == "5"~"Centro-Oeste",
                                  TRUE ~ str_replace(!! regiao, "Região ", ""))) %>%
    group_by(!! regiao) %>%
    summarise(n=n()) %>%
    spread(!! regiao, n, fill = 0) %>%
    mutate("Brasil" = rowSums(.[1:5])) %>%
    gather("Região","n") %>%
    mutate("Ano" = !! ano)
}

f_quantitativo_em_2_grupos = function(df, grupo1, grupo2){
  grupo1 <- quo_name(grupo1)
  grupo2 <- quo_name(grupo2)
  
  df %>%
    tally() %>%
    mutate("Grupo1" = !! grupo1) %>%
    mutate("Grupo2" = !! grupo2)
}

f_soma_regiao_ano = function(df, q, regiao, ano){
  q <- enquo(q)
  regiao <- enquo(regiao)
  ano <- quo_name(ano)
  
  df %>%
    select(!! q, !! regiao) %>%
    mutate(!! regiao := case_when(substr(!! regiao,1,1) == "1"~"Norte",
                                  substr(!! regiao,1,1) == "2"~"Nordeste",
                                  substr(!! regiao,1,1) == "3"~"Sudeste",
                                  substr(!! regiao,1,1) == "4"~"Sul",
                                  substr(!! regiao,1,1) == "5"~"Centro-Oeste",
                                  TRUE ~ str_replace(!! regiao, "Região ", ""))) %>%
    group_by(!! regiao) %>%
    summarise(n=sum(!! q)) %>%
    spread(!! regiao, n, fill = 0) %>%
    mutate("Brasil" = rowSums(.[1:5])) %>%
    gather("Região","n") %>%
    mutate("Ano" = !! ano)
}

f_percentual_municipios_regiao_ano = function(df, municipio, ano){
  ano <- quo_name(ano)
  municipio <- enquo(municipio)
  
  total_municipios <-case_when(!! ano == "2007"~municipios_2007,
                               !! ano == "2008"~municipios_2008,
                               !! ano == "2009"~municipios_2009,
                               !! ano == "2010"~municipios_2010,
                               !! ano == "2011"~municipios_2011,
                               !! ano == "2012"~municipios_2012,
                               !! ano == "2013"~municipios_2013,
                               !! ano == "2014"~municipios_2014,
                               !! ano == "2015"~municipios_2015,
                               !! ano == "2016"~municipios_2016,
                               !! ano == "2017"~municipios_2017,
                               !! ano == "2018"~municipios_2018,
                               !! ano == "2019"~municipios_2019,
                               !! ano == "2020"~municipios_2020,
                               !! ano == "2021"~municipios_2021,
                               !! ano == "2022"~municipios_2022)
  
  df %>%
    select(!! municipio) %>%
    distinct(!! municipio) %>%
    mutate(regiao := substr(!! municipio,1,1)) %>%
    select(regiao) %>%
    group_by(regiao) %>%
    summarise(n=n()) %>%
    spread(regiao, n, fill = 0) %>%
    mutate("6" = rowSums(.[1:5])) %>%
    gather("Região","n") %>%
    mutate("Total_municipios" = total_municipios[as.numeric(Região)]) %>%
    mutate("Percentual" = n/Total_municipios) %>%
    mutate(Região = case_when(Região == "1"~"Norte",
                              Região == "2"~"Nordeste",
                              Região == "3"~"Sudeste",
                              Região == "4"~"Sul",
                              Região == "5"~"Centro-Oeste",
                              Região == "6"~"Brasil")) %>%
    mutate("Ano" = !! ano)
}

f_situacao = function(df, situacao){
  situacao <- enquo(situacao)
  
  df %>%
    mutate(!! situacao := case_when(!! situacao == "próprio da Prefeitura Municipal"~"Próprio",
                                    !! situacao == "Próprio da Prefeitura Municipal"~"Próprio",
                                    !! situacao == "Próprio da Prefeitura Municipal ou do governo do DF"~"Próprio",
                                    !! situacao == "Próprio da Prefeitura Municipal/DF"~"Próprio",
                                    !! situacao == "Próprio do Governo Estadual"~"Próprio",
                                    !! situacao == "alugado pela Prefeitura Municipal"~"Alugado",
                                    !! situacao == "Alugado pela Prefeitura Municipal"~"Alugado",
                                    !! situacao == "Alugado pela Prefeitura Municipal ou pelo governo do DF"~"Alugado",
                                    !! situacao == "Alugado pela Prefeitura Municipal/DF"~"Alugado",
                                    !! situacao == "Alugado pelo Governo Estadual"~"Alugado",
                                    !! situacao == "cedido para a Prefeitura Municipal"~"Cedido",
                                    !! situacao == "Cedido para a Prefeitura Municipal"~"Cedido",
                                    !! situacao == "Cedido para a Prefeitura Municipal ou pelo governo do DF"~"Cedido",
                                    !! situacao == "Cedido para a Prefeitura Municipal/DF por órgãos/unidades públicas"~"Cedido",
                                    !! situacao == "Cedido para a Prefeitura Municipal/DF por entidades/instituições privadas"~"Cedido",
                                    !! situacao == "outro"~"Outro ou não informou",
                                    !! situacao == "Outro"~"Outro ou não informou",
                                    !! situacao == "Outros"~"Outro ou não informou",
                                    is.na(!! situacao)~"Outro ou não informou",
                                    TRUE ~ as.character(!! situacao))) %>%
    mutate(!! situacao := factor(!! situacao, levels = c("Próprio",
                                                         "Alugado",
                                                         "Cedido",
                                                         "Outro ou não informou")))
}

f_acessibilidade = function(df, q){
  q <- enquo(q)
  
  df %>%
    mutate(!! q := case_when(!! q == "Sim, de acordo com a Norma da ABNT (NBR9050)"~"Sim",
                             !! q == "Sim, de acordo com a Norma da ABNT"~"Sim",
                             !! q == "Sim,de acordo com a Norma da ABNT (NBR9050)"~"Sim",
                             !! q == "Sim, de acordo coma Norma da ABNT (NBR9050)"~"Sim",
                             !! q == "SIM, De acordo com a Norma da ABNT"~"Sim",
                             !! q == "SIM, De acordo com a Norma da ABNT (NBR9050)"~"Sim",
                             !! q == "SIM De acordo com a Norma da ABNT (NBR9050)"~"Sim",
                             !! q == "Sim, de acordo com a norma da ABNT"~"Sim",
                             !! q == "Sim, De acordo com a Norma da ABNT (NBR9050)"~"Sim",
                             !! q == "SIM Mas não estão de acordo com a Norma da ABNT(NBR9050)"~"Sim",
                             !! q == "Sim, mas não estão de acordo com a Norma da ABNT(NBR9050)"~"Sim",
                             !! q == "Sim, mas não estão de acordo com a Norma da ABNT"~"Sim",
                             !! q == "Sim, mas, não estão de acordo com a Norma da ABNT(NBR9050)"~"Sim",
                             !! q == 1~"Sim",
                             TRUE ~ as.character(!! q)))
}

f_tipo_acessibilidade = function(df, cod_categoria){
  cod_categoria <- quo_name(cod_categoria)
  
  df %>%
    mutate("Categoria" = case_when(!! cod_categoria == "1"~"Acesso principal adaptado com rampas e rota acessível desde a calçada até a recepção",
                                   !! cod_categoria == "2"~"Rota acessível aos espaços (recepção, salas de atendimento e espaços de uso coletivo)",
                                   !! cod_categoria == "3"~"Rota acessível ao banheiro",
                                   !! cod_categoria == "4"~"Banheiro adaptado para pessoas com deficiência"))
}

equip_acessibilidade = function(df, q, ano, cod_categoria){
  q <- enquo(q)
  ano <- quo_name(ano)
  
  df %>%
    select(!! q) %>%
    filter(!is.na(!! q)) %>%
    f_acessibilidade(!! q) %>%
    group_by(!! q) %>%
    summarise(n=n()) %>%
    mutate(Percentual = n/sum(n)) %>%
    filter(!! q == "Sim") %>%
    f_tipo_acessibilidade(cod_categoria) %>%
    mutate("Ano" = !! ano)
}



equip_acessibilidade_situacao = function(df, q_situacao, q_acessibilidade, cod_categoria){
  q_situacao <- enquo(q_situacao)
  q_acessibilidade <- enquo(q_acessibilidade)
  
  df %>%
    select(!! q_situacao, !! q_acessibilidade) %>%
    filter(!is.na(!! q_situacao) & !is.na(!! q_acessibilidade)) %>%
    f_acessibilidade(!! q_acessibilidade) %>%
    f_situacao(!! q_situacao) %>%
    group_by(!! q_situacao, !! q_acessibilidade) %>%
    summarise(n=n()) %>%
    mutate(Percentual = n/sum(n)) %>%
    filter(!! q_acessibilidade == "Sim") %>%
    f_tipo_acessibilidade(cod_categoria) %>%
    mutate("Situacao" = !! q_situacao)
}



f_equip_imovel = function(df, q, ano){
  q <- enquo(q)
  ano <- quo_name(ano)
  
  df %>%
    select(!! ano := !! q) %>%
    gather("Categoria","Nível") %>%
    f_situacao(Nível) %>%
    group_by(Categoria, Nível) %>%
    summarise(n=n()) %>%
    mutate(Percentual = n/sum(n))
}

f_grupo_media = function(df, q_media, grupo, eixo_x){
  grupo <- quo_name(grupo)
  q_media <- enquo(q_media)
  eixo_x <- quo_name(eixo_x)
  
  df %>%
    select(!! q_media) %>%
    filter(!is.na(!! q_media)) %>%
    summarise(m=mean(!! q_media)) %>%
    mutate("Eixo_X" = !! eixo_x) %>%
    mutate("Grupo" = !! grupo)
}

f_media_regiao_2_grupos = function(df, q, regiao, grupo1, grupo2){
  q <- enquo(q)
  regiao <- enquo(regiao)
  grupo1 <- quo_name(grupo1)
  grupo2 <- quo_name(grupo2)
  
  brasil <- df %>%
    select(!! q) %>%
    filter(!is.na(!! q)) %>%
    summarise(m=mean(!! q)) %>%
    mutate("Região" = "Brasil")
  
  df %>%
    select(!! q, !! regiao) %>%
    filter(!is.na(!! q)) %>%
    mutate(!! regiao := case_when(substr(!! regiao,1,1) == "1"~"Norte",
                                  substr(!! regiao,1,1) == "2"~"Nordeste",
                                  substr(!! regiao,1,1) == "3"~"Sudeste",
                                  substr(!! regiao,1,1) == "4"~"Sul",
                                  substr(!! regiao,1,1) == "5"~"Centro-Oeste",
                                  TRUE ~ str_replace(!! regiao, "Região ", ""))) %>%
    group_by(!! regiao) %>%
    summarise(m=mean(!! q)) %>%
    mutate("Região" = !! regiao) %>%
    bind_rows(brasil) %>%
    mutate("Grupo1" = !! grupo1) %>%
    mutate("Grupo2" = !! grupo2)
}

f_quantitativo_niveis = function(df, q_grupo, eixo_x, niveis){
  q_grupo <- enquo(q_grupo)
  eixo_x <- quo_name(eixo_x)
  
  df %>%
    select(!! q_grupo) %>%
    mutate(!! q_grupo := factor(!! q_grupo, levels = niveis)) %>%
    count(!! q_grupo, name = "n", .drop = F) %>%
    mutate("Eixo_X" = !! eixo_x) %>%
    mutate("Grupo" = !! q_grupo)
}

f_sim_nao  = function(df, q, ano){
  q <- enquo(q)
  ano <- quo_name(ano)
  
  df %>%
    select(!! ano := !! q) %>%
    gather("Categoria","Nível") %>%
    mutate(Nível = case_when(Nível == "sim" |
                               Nível == '    "Sim"'~"Sim",
                             Nível == "Não possui" |
                               Nível == "não" |
                               Nível == '    "Não"'~"Não",
                             Nível == "Não Sabe" |
                               Nível == '    "Não sabe"' |
                               Nível == "99" ~ "Não sabe",
                             TRUE ~ Nível)) %>%
    filter(!is.na(Nível)) %>%
    mutate(Nível = factor(Nível, levels = c("Sim",
                                            "Não",
                                            "Não sabe"))) %>%
    group_by(Categoria, Nível) %>%
    summarise(n=n()) %>%
    group_by(Categoria) %>%
    mutate(Percentual = n/sum(n))
}

f_sim  = function(df, q, ano){
  q <- enquo(q)
  ano <- quo_name(ano)
  
  df %>%
    select(!! q) %>%
    mutate(!! q := case_when(!! q == "sim" |
                               !! q == '    "Sim"'~"Sim",
                             !! q == "Não possui" |
                               !! q == "não" |
                               !! q == '    "Não"'~"Não",
                             !! q == "Não Sabe" |
                               !! q == '    "Não sabe"' |
                               !! q == "99" ~ "Não sabe",
                             TRUE ~ !! q)) %>%
    mutate(!! q := factor(!! q, levels = c("Sim",
                                           "Não",
                                           "Não sabe"))) %>%
    count(!! q, name = "n", .drop = F) %>%
    mutate(Percentual = n/sum(n)) %>%
    filter(!! q == "Sim")  %>%
    mutate("Categoria" = !! ano)
}

f_nomex_somay_nomegrupo = function(df, nomex, somay, nomegrupo){
  nomex <- quo_name(nomex)
  somay <- enquo(somay)
  nomegrupo <- quo_name(nomegrupo)
  
  df %>%
    select(!! nomex := !! somay) %>%
    gather("Eixo_x","Eixo_y") %>%
    filter(!is.na(Eixo_y)) %>%
    group_by(Eixo_x) %>%
    summarise(Eixo_y = sum(Eixo_y)) %>%
    mutate("Grupo" = !! nomegrupo)
}

f_calcula_percentual  = function(df, grupo_percentual, item_percentual, n){
  grupo_percentual <- enquo(grupo_percentual)
  item_percentual <- enquo(item_percentual)
  n <- enquo(n)
  
  df %>%
    mutate(!! grupo_percentual := as_factor(!! grupo_percentual)) %>%
    mutate(!! item_percentual := as_factor(!! item_percentual)) %>%
    group_by(!! grupo_percentual, !! item_percentual) %>%
    summarise(!! n := sum(!! n)) %>%
    group_by(!! grupo_percentual) %>%
    mutate(Percentual = !! n/sum(!! n))
}

f_nomex_grupos_quantitativo = function(df, nomex, grupos){
  nomex <- quo_name(nomex)
  grupos <- enquo(grupos)
  
  df %>%
    select("Grupo" = !! grupos) %>%
    group_by(Grupo) %>%
    summarise("Eixo_y"=n()) %>%
    mutate("Eixo_x" = !! nomex)
}

f_grafico_col_numero = function(df, x, y){
  x <- enquo(x)
  y <- enquo(y)
  
  df <- df %>%
    ggplot(aes(x = !! x, y = !! y)) +
    geom_col(aes(fill = !! y), position="dodge") +
    geom_text_repel(aes(label = format(!! y, big.mark=".", digits = 3, decimal.mark = ",")),
                    vjust = -0.5,
                    position = position_dodge(width = 0.9),
                    point.size = NA) +
    scale_y_continuous(expand = expansion(mult = c(0, .15))) +
    scale_fill_viridis_c() +
    theme(legend.position="none",
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.y = element_blank(),
          axis.line.x = element_line(),
          panel.background = element_blank())
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_group_numero = function(df, x, y, grupo, legend_nrow){
  x <- enquo(x)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    ggplot(aes(x = !! x, y = !! y, group = !! grupo)) +
    geom_col(aes(fill = !! grupo), position="dodge") +
    geom_text_repel(aes(label = format(!! y, big.mark=".", digits = 3, decimal.mark = ",")),
                    hjust = -0.01,
                    position = position_dodge(width = 0.9),
                    angle = 90,
                    point.size = NA) +
    scale_y_continuous(expand = expansion(mult = c(0, .25))) +
    scale_fill_viridis_d() +
    theme(legend.position="bottom",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.y = element_blank(),
          axis.line.x = element_line(),
          panel.background = element_blank()) +
    guides(fill=guide_legend(nrow=legend_nrow,byrow=TRUE))
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_numero_flip = function(df, x, y, grupo, legend_nrow){
  x <- enquo(x)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    ggplot(aes(x = !! x, y = !! y, group = fct_rev(!! grupo))) +
    geom_col(aes(fill = !! grupo), position = "dodge") +
    geom_text(aes(label = format(!! y, big.mark=".", digits = 3, decimal.mark = ",")),
              hjust = -0.1,
              position = position_dodge(width = 0.9),
              check_overlap = TRUE) +
    scale_y_continuous(expand = expansion(mult = c(0, .1))) +
    scale_fill_viridis_d() +
    coord_flip() +
    theme(legend.position="bottom",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          axis.line.y = element_line(),
          panel.background = element_blank()) +
    guides(fill=guide_legend(nrow=legend_nrow, byrow=TRUE))
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_numero_flip_2_x = function(df, x1, y, x2){
  x1 <- enquo(x1)
  y <- enquo(y)
  x2 <- enquo(x2)
  
  df <- df %>%
    ggplot(aes(x = fct_rev(!! x2), y = !! y)) +
    geom_col(aes(fill = !! x2), position = "dodge") +
    geom_text(aes(label = format(!! y, big.mark=".", digits = 3, decimal.mark = ",")),
              hjust = -0.1,
              position = position_dodge(width = 0.9),
              check_overlap = TRUE) +
    facet_wrap(vars(!! x1), strip.position = "left", ncol = 1) +
    scale_x_discrete(expand = expansion(add = 1)) +
    scale_y_continuous(expand = expansion(mult = c(0, .1))) +
    scale_fill_viridis_d() +
    coord_flip() +
    theme(legend.position="none",
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          axis.line.y = element_line(),
          panel.background = element_blank(),
          panel.spacing = unit(0, "lines"),
          strip.background = element_blank(),
          strip.placement = "outside",
          strip.text.y.left = element_text(angle = 0, hjust = 1)
    )
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_numero_flip_3_groups = function(df, x1, x2, y, grupo){
  x1 <- enquo(x1)
  x2 <- enquo(x2)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    ggplot(aes(x = fct_rev(!! x2), y = !! y, group = fct_rev(!! grupo))) +
    geom_col(aes(fill = !! grupo), position = "dodge") +
    geom_text(aes(label = format(!! y, big.mark=".", digits = 3, decimal.mark = ",")),
              hjust = -0.1,
              position = position_dodge(width = 0.9),
              check_overlap = TRUE) +
    facet_wrap(vars(!! x1), strip.position = "left", ncol = 1) +
    scale_x_discrete(expand = expansion(add = 1)) +
    scale_y_continuous(expand = expansion(mult = c(0, .1))) +
    scale_fill_viridis_d() +
    coord_flip() +
    theme(legend.position="right",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          axis.line.y = element_line(),
          panel.background = element_blank(),
          panel.spacing = unit(0, "lines"),
          strip.background = element_blank(),
          strip.placement = "outside",
          strip.text.y.left = element_text(angle = 0, hjust = 1)
    )
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A1", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_percent = function(df, x, y){
  x <- enquo(x)
  y <- enquo(y)
  
  df <- df %>%
    mutate(precisao = ifelse(!! y < 0.0995, 0.1, 1)) %>%
    ggplot(aes(x = !! x, y = !! y)) +
    geom_col(aes(fill = !! y), position = "dodge") +
    geom_text_repel(aes(label = label_percent(accuracy = precisao, decimal.mark = ",")(!! y)),
                    vjust = -0.5,
                    position = position_dodge(width = 0.9),
                    point.size = NA) +
    scale_y_continuous(expand = expansion(mult = c(0, .1))) +
    scale_fill_viridis_c() +
    theme(legend.position="none",
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.y = element_blank(),
          axis.line.x = element_line(),
          panel.background = element_blank())
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_group_percent = function(df, x, y, grupo, legend_nrow){
  x <- enquo(x)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    mutate(precisao = ifelse(!! y < 0.0995, 0.1, 1)) %>%
    ggplot(aes(x = !! x, y = !! y, group = !! grupo)) +
    geom_col(aes(fill = !! grupo), position = "dodge") +
    geom_text_repel(aes(label = label_percent(accuracy = precisao, decimal.mark = ",")(!! y)),
                    hjust = -0.01,
                    position = position_dodge(width = 0.9),
                    angle = 90,
                    point.size = NA) +
    scale_y_continuous(expand = expansion(mult = c(0, .22))) +
    scale_fill_viridis_d() +
    theme(legend.position="bottom",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.y = element_blank(),
          axis.line.x = element_line(),
          panel.background = element_blank()) +
    guides(fill=guide_legend(nrow=legend_nrow, byrow=TRUE))
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_percent_flip = function(df, x, y, grupo, legend_nrow){
  x <- enquo(x)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    mutate(precisao = ifelse(!! y < 0.0995, 0.1, 1)) %>%
    ggplot(aes(x = !! x, y = !! y, group = fct_rev(!! grupo))) +
    geom_col(aes(fill = !! grupo), position = "dodge") +
    geom_text(aes(label = ifelse(!! y, label_percent(accuracy = precisao, decimal.mark = ",")(!! y), "")),
              hjust = -0.05,
              position = position_dodge(width = 0.9),
              check_overlap = TRUE) +
    scale_y_continuous(expand = expansion(mult = c(0, .12))) +
    scale_fill_viridis_d() +
    coord_flip() +
    theme(legend.position="bottom",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          axis.line.y = element_line(),
          panel.background = element_blank()) +
    guides(fill=guide_legend(nrow=legend_nrow, byrow=TRUE))
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_stack_percent = function(df, x, y, grupo, legend_nrow){
  x <- enquo(x)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    mutate(precisao = ifelse(!! y < 0.0995, 0.1, 1)) %>%
    ggplot(aes(x = !! x, y = !! y, group = !! grupo)) +
    geom_col(aes(fill = !! grupo), position = position_stack(reverse = TRUE)) +
    geom_text_repel(aes(label = ifelse(!! y > 0.0005, label_percent(accuracy = precisao, decimal.mark = ",")(!! y), ""), fill = !! grupo, color = after_scale(prismatic::best_contrast(fill, c("white", "black")))),
                    position = position_stack(reverse = TRUE, vjust = .5),
                    point.size = NA,
                    segment.colour = NA) +
    scale_y_continuous(expand = expansion(mult = c(0, .1))) +
    scale_fill_viridis_d() +
    theme(legend.position="bottom",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.y = element_blank(),
          axis.line.x = element_line(),
          panel.background = element_blank()) +
    guides(fill=guide_legend(nrow=legend_nrow,byrow=TRUE))
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_stack_percent_flip = function(df, x, y, grupo, legend_nrow){
  x <- enquo(x)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    mutate(precisao = ifelse(!! y < 0.0995, 0.1, 1)) %>%
    arrange(!! grupo) %>%
    ggplot(aes(x = !! x, y = !! y)) +
    geom_col(aes(fill = !! grupo), position = position_stack(reverse = TRUE)) +
    geom_text(aes(label = ifelse(!! y > 0.0005, label_percent(accuracy = precisao, decimal.mark = ",")(!! y), ""), fill = !! grupo, color = after_scale(prismatic::best_contrast(fill, c("white", "black")))),
              position = position_stack(reverse = TRUE, vjust = .5),
              check_overlap = TRUE) +
    scale_y_continuous(expand = expansion(mult = c(0, 0.05))) +
    scale_fill_viridis_d() +
    coord_flip() +
    theme(legend.position="bottom",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          axis.line.y = element_line(),
          panel.background = element_blank()) +
    guides(fill=guide_legend(nrow=legend_nrow,byrow=TRUE))
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

f_grafico_col_stack_percent_flip_2_x_groups = function(df, x1, x2, y, grupo, legend_nrow){
  x1 <- enquo(x1)
  x2 <- enquo(x2)
  y <- enquo(y)
  grupo <- enquo(grupo)
  
  df <- df %>%
    mutate(precisao = ifelse(!! y < 0.0995, 0.1, 1)) %>%
    arrange(!! grupo) %>%
    ggplot(aes(x = fct_rev(!! x2), y = !! y)) +
    geom_col(aes(fill = !! grupo), position = position_stack(reverse = TRUE)) +
    geom_text(aes(label = ifelse(!! y > 0.0005, label_percent(accuracy = precisao, decimal.mark = ",")(!! y), ""), fill = !! grupo, color = after_scale(prismatic::best_contrast(fill, c("white", "black")))),
              position = position_stack(reverse = TRUE, vjust = .5),
              check_overlap = TRUE) +
    facet_wrap(vars(fct_rev(!! x1)), strip.position = "left", ncol = 1) +
    scale_x_discrete(expand = expansion(add = 1)) +
    scale_y_continuous(expand = expansion(mult = c(0, 0.05))) +
    scale_fill_viridis_d() +
    coord_flip() +
    theme(legend.position="bottom",
          legend.title = element_blank(),
          axis.title = element_blank(),
          axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          axis.line.y = element_line(),
          panel.background = element_blank(),
          panel.spacing = unit(0, "lines"),
          strip.background = element_blank(),
          strip.placement = "outside",
          strip.text.y.left = element_text(angle = 0, hjust = 1)
    )+
    guides(fill=guide_legend(nrow=legend_nrow,byrow=TRUE))
  if(gera.graficos.office) {
    df %>% graph2office(file=arquivo_graficos, append = arquivo_graficos_criado, paper = "A4", orient = "portrait")
    arquivo_graficos_criado <<- TRUE
  }
  df
}

