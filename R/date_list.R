#' Date List
#' 
#' Data about Dates from the Beijing 2022 Olympic Games
#' 
#' @format A data.frame with 19 rows and 15 variables
#' \describe{
#'  \item{Date}{int Date in numeric format YYYYMMDD}
#'  \item{Current}{logi States whether date is Today which is always False}
#'  \item{Day}{int Day of Competition (Day of Opening Ceremony = 0)}
#'  \item{Day}{chr Day of Week}
#'  \item{DayShort}{chr Abbreviated Day of Week}
#'  \item{DayNr}{int Day of Month Number}
#'  \item{WeekDayNr}{int Day of Week Number (Sunday =  1)}
#'  \item{Month}{chr Month of Competition}
#'  \item{MonthShort}{chr Abbreviated Month of Competition}
#'  \item{MonthNr}{int Month Number}
#'  \item{Year}{int Year}
#'  \item{TimeFirstEventLocal}{POSIXct Time of First Event Locally}
#'  \item{TimeFirstEventUTC}{POSIXct Time of First Event UTC}
#'  \item{TimeLastEventLocal}{POSIXct Time of Last Event Locally}
#'  \item{TimeLastEventUTC}{POSIXct Time of Last Event UTC}
#' }
#' @source NBC Olympics API

"date_list"