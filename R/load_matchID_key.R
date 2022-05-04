#' Load Olympic MatchID Keys
#' 
#' Given a sportID, list all possible matchIDs as well as the corresponding event
#' @author Billy Fryer
#' @param sportID Sport ID
#' @return A data.frame
#' @importFrom data.table fread
#' @export
#' @examples
#' \donttest{
#' load_olympic_matchID_key(sportID = 113)
#' }
#' @source NBC API
load_olympic_matchID_key <- function(sportID) {
  url <- paste0("https://raw.githubusercontent.com/b4billy/Beijing-Olympics-Data-Repo/main/Data/Match%20ID%20Keys/", sportID, "%20Match%20ID%20Key.csv")
  
  output <- data.table::fread(url)
  
  return(output)
}