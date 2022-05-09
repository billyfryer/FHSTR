.datatable.aware <- TRUE

#' Load Olympic CSV Data
#' 
#' Given a Sport ID and Match ID, load a pre-parsed CSV of data from that event
#' @author Billy Fryer
#' @param sportID Sport ID
#' @param matchID Match ID
#' @return A data.frame
#' @importFrom data.table fread
#' @importFrom dplyr filter
#' @importFrom stringr str_replace_all
#' @export
#' @examples 
#' \donttest{
#' load_olympic_csv_data(sportID = 113, matchID = 746587)
#' }
#' @source NBC API
load_olympic_csv_data <- function(sportID, matchID){
  
  url <- paste0("https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/",
                sportID,"%20CSVs/",matchID,".csv")
  
  # Read in CSV File from website
  output <- tryCatch(
    {data.table::fread(url)},
    error = function(err){"Combination of sportID and matchID does not exist."}
    )
  return(output)
}

#' Load Olympic JSON Data
#' 
#' Given a Sport ID and Match ID, load the raw JSON file
#' @author Billy Fryer
#' @param sportID Sport ID
#' @param matchID Match ID
#' @return Nested Lists in the form of a JSON File
#' @importFrom data.table fread
#' @importFrom dplyr filter
#' @importFrom stringr str_replace_all
#' @importFrom jsonlite fromJSON 
#' @export
#' @examples 
#' \donttest{
#' load_olympic_json_data(sportID = 113, matchID = 746587)
#' }
#' @source NBC API
load_olympic_json_data <- function(sportID, matchID){
  
  url <- paste0("https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/",
                sportID,"%20JSONs/",matchID,".json")
  
  # Read in CSV File from website
  output <- tryCatch(
                     {data.table::fread(url)},
                     error = function(err){"Combination of sportID and matchID does not exist."}
                     )
  return(output)
}
