###############################################################################

###############################################################################


## Fun??o para calcular a sobreposi??o de nicho entre duas esp?cies (?ndice de Pianka)

# os dataframes devem conter apenas valores num?ricos (matriz)

# Refer?ncia - ver spaa::niche.overlap.pair

# spA - matriz de dieta da esp?cie A
# spB - matriz de dieta da esp?cie B

pianka <- function(spA, spB){
    
    nij <- colSums(spA)
    pij <- nij/sum(nij)
    nkj <- colSums(spB)
    pkj <- nkj/sum(nkj)
    
    pianka <- sum(pij * pkj)/sqrt((sum(pij^2)) * (sum(pkj^2)))
    
    pianka
    
}
