
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
you started. To learn more about these data sets, try the code chunk
below!

``` r
library(FHSTR)
?sport_list
?date_list
?schedule_matrix
```

## Loading Event Data

Data from the events is availible in 2 different formats: raw JSON files
and pre-parsed CSVs. The advantage of having access to the JSON files is
that you are able to dig through and find more data available than what
is present in the CSVs. This is typically more time consuming. That is
why pre-parsed CSVs are available. Sample code below:

``` r
csv_data <- load_olympic_csv_data(sportID = 113, matchID = 746587)
json_data <- load_olympic_json_data(sportID = 113, matchID = 746587)
```

## Sample Work Flow

A sample work flow can be seen below:

``` r
# Call the Package
library(FHSTR)

# Filter to desired Sport
hockey <- filter(FHSTR::sport_list, c_Sport == "Hockey")

# Pull the Sport ID
sportID <- hockey$n_SportID
```

## Loading Multiple Events at Once

For sports like Hockey or Curling, you may want to
