#' ---
#' output: github_document
#' ---
library(tidyverse)


#' Storing Information on Installed packages
packages<- as.tibble(installed.packages())
#number of packages
nrow(packages)

#' Exploring the packages
table(packages$Built)
packages %>%
  count(Built) %>%
  mutate(prop= n/sum(n))
  
# table(package_df$Priority)
# table(package_df$Priority, package_df$LibPath)
# prop.table(table(package_df$NeedsCompilation))


