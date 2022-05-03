#' Olympic Sport ID Data
#' 
#' This data set lists all sports competed in the 2022 Beijing Olympics and their respective sportIDs
#' 
#' @format A data frame with 15 rows and 5 variables:
#' \describe{
#'   \item{n_SportID}{int Respective Sport ID for each sport}
#'   \item{n_SportTypeID}{int Sport IDs are split into 2 catagories. One for events with matches like curling and hockey and everything else}
#'   \item{c_Sport}{chr Name of Sport}
#'   \item{c_SportShort}{chr Abbreviation for Sport}
#'   \item{b_RecordsAvailable}{logi Useless Column}
#' }
#'  @source NBC
"sport_list"