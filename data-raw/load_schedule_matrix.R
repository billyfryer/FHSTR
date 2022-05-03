# Load Schedule Matrix

library(data.table)

url <- "https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/Schedule%20Matrix.csv"

schedule_matrix <- data.table::fread(url)

usethis::use_data(schedule_matrix, overwrite = TRUE)
