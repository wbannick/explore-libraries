#' Which libraries does R search for packages?


#' Installed packages

## use installed.packages() to get all installed packages
packages<- installed.packages()
packages
## how many packages?
#198

#' Exploring the packages

## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
##   * what proportion need compilation?
##   * how break down re: version of R they were built on
package_df<- data.frame(packages)
table(package_df$LibPath)
table(package_df$Priority)
table(package_df$Priority, package_df$LibPath)
prop.table(table(package_df$NeedsCompilation))

#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?


#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
## study package naming style (all lower case, contains '.', etc
## use `fields` argument to installed.packages() to get more info and use it!

test<- data.frame(installed.packages(noCache = T))

