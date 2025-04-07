# Module 11

# Corrected code to this week's assignment

turkey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
  return(outlier.vec) 
}

test <-  matrix(
  c(1, 2, 3, 4, 5,    
    1, 2, 20, 4, 5,      
    1, 2, 20, 4, 5),     
  nrow = 5)

turkey_multiple(test)