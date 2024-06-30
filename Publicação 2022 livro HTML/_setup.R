gera.graficos.office = TRUE;

lista.de.pacotes = c("rmarkdown",
                     "tinytex",
                     "tidyverse",
                     "janitor",
                     "repmis",
                     "ggrepel",
                     "renv",
                     "readODS",
                     "prismatic") # escreva a lista de pacotes

if(gera.graficos.office) {
  lista.de.pacotes <- append(lista.de.pacotes, "export")
  arquivo_graficos = "Censo-SUAS-2022-graficos"
  arquivo_graficos_criado = FALSE
}

novos.pacotes <- lista.de.pacotes[!(lista.de.pacotes %in%
                                      installed.packages()[,"Package"])]

if(length(novos.pacotes) > 0) {install.packages(novos.pacotes, repos = "http://cran.us.r-project.org")}

# adiciona pacotes do tidyverse para serem carregados
lista.de.pacotes <- append(lista.de.pacotes, c("readxl", "scales"))

lapply(lista.de.pacotes, require, character.only=T)
rm(lista.de.pacotes,novos.pacotes)
gc()

