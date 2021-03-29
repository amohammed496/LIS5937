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

tukey.outlier <- function (y)
{
  Q1<- quantile(y,0.25)
  Q3<- quantile (y, 0.75)
  quarts <- c(First=Q1, Third= Q3, IQR = Q3-Q1)
  lower <- quarts[1]-1.5*quarts[3]
  upper <- quarts [2] + 1.5*quarts[3]
  out <- ((y<lower) | (y> upper))
  return(out)
}

undebug(tukey_multiple)
tukey_multiple(x)
