#' Sport List
#' 
#' This data set lists all sports competed in the 2022 Beijing Olympics and their respective sportIDs
#' 
#' @format A data frame with 15 rows and 5 variables:
#' \describe{
#'   \item{c_Sport}{chr Name of Sport}
#'   \item{c_SportShort}{chr Abbreviation for Sport}
#'   \item{n_SportID}{int Respective Sport ID for each sport}
#'   \item{n_SportTypeID}{int Sport IDs are split into 2 catagories. One for events with matches like curling and hockey and everything else}
#' }
#' @source NBC Olympics API
"sport_list"