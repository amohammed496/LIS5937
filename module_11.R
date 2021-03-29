tukey_multiple <- function(x) {
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

library(ggplot2)

x <- as.matrix(mpg$hwy)

debug(tukey_multiple)

tukey_multiple(x)

quarts <- function (x)
{
  Q1<- quantile(x,0.25,names=FALSE)
  Q3<- quantile (x, 0.75, names=FALSE)
  quarts <- c(First=Q1, Third= Q3, IQR = Q3-Q1)
}

tukey.outlier <- function (x)
{
  quarts <- quarts (x)
  lower <- quarts[1]-1.5*quarts[3]
  upper <- quarts [2] + 1.5*quarts[3]
  Out <- ((x<lower) | (x> upper))
}

undebug(tukey_multiple)
tukey_multiple(x)
