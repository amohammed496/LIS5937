Module\_4
================
Aaron\_M
2/7/2021

``` r
Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)
```

``` r
par(mfrow=c(1,2))
boxplot(Frequency)
hist(Frequency)
```

![figure-gfm/unnamed-chunk-2-1.png](Module_4_final_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

``` r
par(mfrow=c(1,2))
boxplot(BP)
hist(BP)
```

![figure-gfm/unnamed-chunk-3-1.png](Module_4_final_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
#Compares each assessment with the final decision and saves the results in objects

Fir <- First == FinalDecision
Sec <- Second == FinalDecision

Fir
```

    ##  [1] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE    NA  TRUE

``` r
Sec
```

    ##  [1]  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE

``` r
#Calculates the accuracy of the first assessment by counting all the times the first doctor was right while excluding the time no assessment was given and dividing by the total number of patients while exculding the one where no assessment was given

first_accuracy <- length(Fir[Fir==TRUE & !is.na(Fir)])/length(Fir[!is.na(Fir)])
first_accuracy
```

    ## [1] 0.5555556

``` r
#Calculates the accuracy of the second assessment by counting all the times the second doctor was right and dividing by the total number of patients 

Second_accuracy <- length(Sec[Sec==TRUE])/length(Sec)
Second_accuracy
```

    ## [1] 0.6

``` r
#According to my analysis, the second doctor was more accurate. The first doctor was right only 5 times while the second was right 6 times. Excluding the patient where no assessment was given, about 56% of the first doctor's ratings were accurate. 60% of the second doctor's ratings were accurate.
```
