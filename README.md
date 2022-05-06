
<!-- README.md is generated from README.Rmd. Please edit that file -->

# FHSTR

<!-- badges: start -->
<!-- badges: end -->

This package currently provides data from the 2022 Beijing Olympics from
NBC’s API. The name of this package comes from the Olympic Motto:
“Faster, Higher, Stronger - Together”.

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

## Determining Match IDs

For every event, there is a unique MatchID. To figure out which matchID
corresponds to which game use the following code:

``` r
hockey_matchIDs <- load_olympic_matchID_key(sportID = 113) # Hockey
```

## Sport Schedules

The sport schedules are similar to the matchID keys except they contain
more information such as whether medals were awarded or location of
events. Sport schedules can be found by running the code below:

``` r
hockey_sport_schedule <- load_olympic_sport_schedules(sportID = 113)
```

## Loading Event Data

Data from the events is available in 2 different formats: raw JSON files
and pre-parsed CSVs. The advantage of having access to the JSON files is
that you are able to dig through and find more data available than what
is present in the CSVs. This is typically more time consuming. That is
why pre-parsed CSVs are available. Sample code below:

``` r
 # W Hockey USA vs Canada CSV Data
csv_data <- load_olympic_csv_data(sportID = 113, matchID = 746587)

# W Hockey USA vs Canada JSON Data
json_data <- load_olympic_json_data(sportID = 113, matchID = 746587)
```

## Sample Work Flow for Hockey and Curling

Due to the nature of their tournaments, Hockey and Curling Function
different from the rest of the sports. An example workflow for Hockey
and Curling is shown below:

``` r
# Call the Package
library(FHSTR)

# Get Sport List
sport_list <- FHSTR::sport_list

# Filter to desired Sport
hockey <- dplyr::filter(sport_list, sport_list$c_Sport == "Hockey")

# Pull the Sport ID
sportID <- hockey$n_SportID

# Sport Schedule
hockey_schedule <- load_olympic_sport_schedules(sportID)
 
# Find Match ID for USA vs Canada Gold Medal Match in Hockey
gold_medal_match <- dplyr::filter(.data = hockey_schedule, 
              hockey_schedule$c_ContainerMatch == "Gold Medal Game" &
              hockey_schedule$GenderEvent.c_Name == "Women's Tournament")

gold_id <- gold_medal_match$Match.n_ID

# Load CSV and JSON Data
csv_data <- load_olympic_csv_data(sportID = sportID, 
                                  matchID = gold_id)
json_data <- load_olympic_json_data(sportID = sportID, 
                                    matchID = gold_id)
```

## Sample Workflow for All Other Sports

The following code can be applied to the rest of the sports. Bobsled was
selected as an example.

``` r
# Call the Package
library(FHSTR)

# Get Sport List
sport_list <- FHSTR::sport_list

# Filter to desired Sport
bobsled <- dplyr::filter(sport_list, sport_list$c_Sport == "Bobsled")

# Pull the Sport ID
sportID <- bobsled$n_SportID

# Sport Schedule
bobsled_schedule <- load_olympic_sport_schedules(sportID)

# Monobob Run 4 Data
monobob <- dplyr::filter(.data = bobsled_schedule, 
              bobsled_schedule$c_ContainerMatch == "Monobob" &
              bobsled_schedule$c_Match == "Run 4")
  
# Get Match ID
run4_id <- monobob$n_MatchID

# Load CSV and JSON Data
csv_data <- load_olympic_csv_data(sportID = sportID, 
                                  matchID = run4_id)
json_data <- load_olympic_json_data(sportID = sportID, 
                                    matchID = run4_id)
```

## Raw Datasets

If you want to use the CSV or JSON data sets outside of R, they are
available at the at this link: [Beijing 2022 Data
Repository](https://github.com/b4billy/Beijing-Olympics-Data-Repo/tree/main/Data)
