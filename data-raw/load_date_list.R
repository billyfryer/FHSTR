# Load Date List

library(data.table)

url <- "https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/Date%20List.csv"

date_list <- data.table::fread(url)

usethis::use_data(date_list, overwrite = TRUE)