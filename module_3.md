---
title: "Module_3"
author: "Aaron_M"
date: "1/28/2021"
output: rmarkdown::github_document
---

```{r}

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_political_poll_results <- c(4,62,51,21,2,14,15)
CBS_political_poll_results <- c(12,75,43,19,1,21,19)

polls <- cbind(Name,ABC_political_poll_results,CBS_political_poll_results)

polls

```

```{r}
polls.df <- data.frame(Name,ABC_political_poll_results,CBS_political_poll_results)

polls.df

```

```{r}

#mean(polls.df)
#argument is not numeric or logical: returning NA[1] NA

#mean(polls.df[,2:3])
#this function is no longer supported for data frames on my version of R

#I used lapply instead
lapply(polls.df[,2:3],mean)

#$ABC_political_poll_results
#[1] 24.14286

#$CBS_political_poll_results
#[1] 27.14286

```

```{r}

polls.matrix <- as.matrix(polls.df[,2:3])

polls.matrix

```
```{r}

mean(polls.matrix)

```

```{r}

lapply(as.data.frame(polls.matrix),mean)

#The average poll result for ABC was about 24% and the average poll result for CBS was about 27%
```
