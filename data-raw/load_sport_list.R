# Load Sport List

library(data.table)

url <- "https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/Sport%20List.csv"

sport_list <- data.table::fread(url)

usethis::use_data(sport_list, overwrite = TRUE)
