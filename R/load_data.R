.datatable.aware <- TRUE

#' Load CSV Data
#' @author Billy Fryer
#' @params sportID matchID
#' @return A data.frame
#' @importFrom dplyr filter
#' @importFrom stringr str_replace_all
#' @importFrom data.table fread
#' @export
#' @examples 
#' \donttest{
#' try(load_csv_data(sportID = 113, matchID = 746587))
#' }
load_csv_data <- function(sportID, matchID){
  
  # Sport List from original repo
  sport_list <- data.table::fread("https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/Sport%20List.csv")
  
  # Filter sport Info to requested sport
  sport_info <- dplyr::filter(sport_list, sport_list$n_SportID == sportID)
  
  # Create Folder name replacing all spaces with "%20"
  folder_name <- paste(sportID, sport_info$c_Sport, "CSVs")
  folder_name <- stringr::str_replace_all(string = folder_name,
                                          pattern = " ",
                                          replacement = "%20")
  
  # Create Full Path Name
  urlpart1 <- "https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/"
  urlpart3 <- paste0("/",matchID,".csv")
  full_url <- paste0(urlpart1, folder_name, urlpart3)
  
  # Read in CSV File from website
  output <- data.table::fread(full_url)
  return(output)
}

#' Load JSON Data
#' @author Billy Fryer
#' @params sportID matchID
#' @return A JSON File
#' @importFrom dplyr filter
#' @importFrom stringr str_replace_all
#' @importFrom data.table fread
#' @importFrom jsonlite fromJSON
#' @export
#' @examples 
#' \donttest{
#' try(load_json_data(sportID = 113, matchID = 746587))
#' }
load_json_data <- function(sportID, matchID){
  
  # Sport List from original repo
  sport_list <- data.table::fread("https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/Sport%20List.csv")
  
  # Filter sport Info to requested sport
  sport_info <- dplyr::filter(sport_list, sport_list$n_SportID == sportID)
  
  # Create Folder name replacing all spaces with "%20"
  folder_name <- paste(sportID, sport_info$c_Sport, "JSONs")
  folder_name <- stringr::str_replace_all(string = folder_name,
                                          pattern = " ",
                                          replacement = "%20")
  
  # Create Full Path Name
  urlpart1 <- "https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/"
  urlpart3 <- paste0("/",matchID,".json")
  full_url <- paste0(urlpart1, folder_name, urlpart3)
  
  # Read in CSV File from website
  
  output <- jsonlite::fromJSON(gsub("\\\\","",readLines(full_url)))
  return(output)
}
