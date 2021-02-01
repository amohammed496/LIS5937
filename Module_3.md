Module\_3
================
Aaron\_M
1/28/2021

``` r
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_political_poll_results <- c(4,62,51,21,2,14,15)
CBS_political_poll_results <- c(12,75,43,19,1,21,19)

polls <- cbind(Name,ABC_political_poll_results,CBS_political_poll_results)

polls
```

    ##      Name      ABC_political_poll_results CBS_political_poll_results
    ## [1,] "Jeb"     "4"                        "12"                      
    ## [2,] "Donald"  "62"                       "75"                      
    ## [3,] "Ted"     "51"                       "43"                      
    ## [4,] "Marco"   "21"                       "19"                      
    ## [5,] "Carly"   "2"                        "1"                       
    ## [6,] "Hillary" "14"                       "21"                      
    ## [7,] "Bernie"  "15"                       "19"

``` r
polls.df <- data.frame(Name,ABC_political_poll_results,CBS_political_poll_results)

polls.df
```

    ##      Name ABC_political_poll_results CBS_political_poll_results
    ## 1     Jeb                          4                         12
    ## 2  Donald                         62                         75
    ## 3     Ted                         51                         43
    ## 4   Marco                         21                         19
    ## 5   Carly                          2                          1
    ## 6 Hillary                         14                         21
    ## 7  Bernie                         15                         19

``` r
#mean(polls.df)
#argument is not numeric or logical: returning NA[1] NA

#mean(polls.df[,2:3])
#this function is no longer supported for data frames on my version of R

#I used lapply instead
lapply(polls.df[,2:3],mean)
```

    ## $ABC_political_poll_results
    ## [1] 24.14286
    ## 
    ## $CBS_political_poll_results
    ## [1] 27.14286

``` r
#$ABC_political_poll_results
#[1] 24.14286

#$CBS_political_poll_results
#[1] 27.14286
```

``` r
polls.matrix <- as.matrix(polls.df[,2:3])

polls.matrix
```

    ##      ABC_political_poll_results CBS_political_poll_results
    ## [1,]                          4                         12
    ## [2,]                         62                         75
    ## [3,]                         51                         43
    ## [4,]                         21                         19
    ## [5,]                          2                          1
    ## [6,]                         14                         21
    ## [7,]                         15                         19

``` r
mean(polls.matrix)
```

    ## [1] 25.64286

``` r
lapply(as.data.frame(polls.matrix),mean)
```

    ## $ABC_political_poll_results
    ## [1] 24.14286
    ## 
    ## $CBS_political_poll_results
    ## [1] 27.14286

``` r
#The average poll result for ABC was about 24% and the average poll result for CBS was about 27%
```
