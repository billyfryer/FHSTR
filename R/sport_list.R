#' Sport List
#' 
#' This data set lists all sports competed in the 2022 Beijing Olympics and their respective sportIDs
#' 
#' @format A data frame with 15 rows and 5 variables:
#' \describe{
#'   \item{SportID}{int Respective Sport ID for each sport}
#'   \item{SportTypeID}{int Sport IDs are split into 2 catagories. One for events with matches like curling and hockey and everything else}
#'   \item{Sport}{chr Name of Sport}
#'   \item{SportShort}{chr Abbreviation for Sport}
#' }
#' @source NBC Olympics API
"sport_list"