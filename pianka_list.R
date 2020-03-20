###############################################################################

###############################################################################


## Fun??o para calcular o ?ndice de Pianka comparando as reamostragens das dietas de duas esp?cies.

# lista1 - lista gerada pela fun??o resampling para a esp?cie A
# lista2 - lista gerada pela fun??o resampling para a esp?cie B

pianka_list <- function(lista1, lista2){
    
    nij <- NULL
    pij <- NULL
    for(i in 1:length(lista1)){
        nij[[i]] <- colSums(lista1[[i]])
        pij[[i]] <- nij[[i]]/sum(nij[[i]])
    }
    
    nkj <- NULL
    pkj <- NULL
    for(j in 1:length(lista2)){
        nkj[[j]] <- colSums(lista2[[i]])
        pkj[[j]] <- nkj[[j]]/sum(nkj[[j]])
    }
    
    pianka <- NULL
    for(z in 1:length(nij)){
        pianka[z] <- sum(pij[[z]] * pkj[[z]]) / sqrt((sum(pij[[z]]^2)) * (sum(pkj[[z]]^2)))
    }
    
    pianka
}

