###############################################################################

###############################################################################

########## C?digo com fun??es relacionadas ? sobreposi??o de nicho

########## Criado por Hugo Marques em 07/III/2020

###############################################################################

###############################################################################


###############################################################################

###############################################################################


# As planilha devem conter apenas n?meros
# Para comparar duas esp?cies, ? preciso que ambas planilhas contenham os mesmos itens (mesmo que seja tudo 0 para o item X na planilha da esp?cie A se o item X for consumido apenas pela esp?cie B)


###############################################################################

###############################################################################


## Fun??o para para gerar as reamostragens a partir de um dataframe
# x = dataframe a ser reamostrado
# n = n?mero de reamostragens

resampling <- function(x, n){
    lista <- NULL
    
    for(i in 1:n){
        lista[[i]] <- dplyr::sample_n(x, nrow(x), replace = T)
    }
    
    lista
}


###############################################################################

###############################################################################


## ATERNATIVA, CASO QUEIRA DETERMINAR O TAMANHO DA REAMOSTRA

# x = dataframe a ser reamostrado
# t = tamanho da reamostra. Como h? reposi??o, a reamostra pode ser at? maior que a amostra original
# n = n?mero de reamostragens

resampling_alt <- function(x, t, n){
    lista <- NULL
    for(i in 1:n){
        lista[[i]] <- dplyr::sample_n(x, t, replace = T)
    }
    #for(j in lista){
    #    names(lista) <- paste0("subamostra",1:rep)    
    #} # para renomear os dataframes das reamostragens
    lista
    #list2env(lista, .GlobalEnv) # se quiser ja extrair da lista criada
}

