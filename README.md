
<!-- README.md is generated from README.Rmd. Please edit that file -->

# FHSTR

<!-- badges: start -->
<!-- badges: end -->

This package currently provides data from the 2022 Beijing Olympics from
NBC’s API. The name of this package comes from the Olympic Motto:
“Faster, Higher, Stronger - Together”. This package is still a work in
progress and new functions will hopefully be added soon! This package
will likely be updated to include Paris 2024 Data when that event comes
around.

## Installation

You can install the development version of FHSTR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("b4billy/FHSTR")
```

## Preloaded Datasets

So far there are 3 pre-loaded data sets in the FHSTR package to help get
you started. To learn more about these data sets, uncomment and try the
code chunk below!

``` r
library(FHSTR)
?sport_list
?date_list
?schedule_matrix
```

## Loading Other Data

Functions are currently being written to load other data that has been
pulled from the NBC Olympics API. Both pre-parsed CSVs will be available
as well as the raw JSON files.
