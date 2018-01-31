01\_explore-libraries\_spartan.R
================
william.bannick
Wed Jan 31 14:05:25 2018

Which libraries does R search for packages? Installed packages

``` r
## use installed.packages() to get all installed packages
packages<- installed.packages()
## how many packages?
#198
```

Exploring the packages

``` r
## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
##   * what proportion need compilation?
##   * how break down re: version of R they were built on
package_df<- data.frame(packages)
```

    ## Warning in data.row.names(row.names, rowsi, i): some row.names duplicated:
    ## 86,149,152,157,161,162,195,197,199 --> row.names NOT used

``` r
table(package_df$LibPath)
```

    ## 
    ## /Library/Frameworks/R.framework/Versions/3.4/Resources/library 
    ##                                                            142 
    ##                   /Users/william.bannick/Library/R/3.4/library 
    ##                                                             57

``` r
table(package_df$Priority)
```

    ## 
    ##        base recommended 
    ##          14          15

``` r
table(package_df$Priority, package_df$LibPath)
```

    ##              
    ##               /Library/Frameworks/R.framework/Versions/3.4/Resources/library
    ##   base                                                                    14
    ##   recommended                                                             15
    ##              
    ##               /Users/william.bannick/Library/R/3.4/library
    ##   base                                                   0
    ##   recommended                                            0

``` r
prop.table(table(package_df$NeedsCompilation))
```

    ## 
    ##        no       yes 
    ## 0.4656085 0.5343915

Reflections

``` r
## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?
```

Going further

``` r
## if you have time to do more ...

## is every package in .Library either base or recommended?
## study package naming style (all lower case, contains '.', etc
## use `fields` argument to installed.packages() to get more info and use it!

test<- data.frame(installed.packages(noCache = T))
```

    ## Warning in data.row.names(row.names, rowsi, i): some row.names duplicated:
    ## 86,149,152,157,161,162,195,197,199 --> row.names NOT used
