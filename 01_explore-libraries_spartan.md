01\_explore-libraries\_spartan.R
================
william.bannick
Wed Jan 31 14:32:06 2018

``` r
library(tidyverse)
```

    ## Loading tidyverse: ggplot2
    ## Loading tidyverse: tibble
    ## Loading tidyverse: tidyr
    ## Loading tidyverse: readr
    ## Loading tidyverse: purrr
    ## Loading tidyverse: dplyr

    ## Conflicts with tidy packages ----------------------------------------------

    ## filter(): dplyr, stats
    ## lag():    dplyr, stats

Storing Information on Installed packages

``` r
packages<- as.tibble(installed.packages())
#number of packages
nrow(packages)
```

    ## [1] 199

Exploring the packages

``` r
table(packages$Built)
```

    ## 
    ## 3.4.0 3.4.1 3.4.2 3.4.3 
    ##    96    54    46     3

``` r
packages %>%
  count(Built) %>%
  mutate(prop= n/sum(n))
```

    ## # A tibble: 4 x 3
    ##   Built     n       prop
    ##   <chr> <int>      <dbl>
    ## 1 3.4.0    96 0.48241206
    ## 2 3.4.1    54 0.27135678
    ## 3 3.4.2    46 0.23115578
    ## 4 3.4.3     3 0.01507538

``` r
# table(package_df$Priority)
# table(package_df$Priority, package_df$LibPath)
# prop.table(table(package_df$NeedsCompilation))
```
