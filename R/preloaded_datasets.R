#' Date List
#' 
#' Data about Dates from the Beijing 2022 Olympic Games
#' 
#' @format A data.frame with 19 rows and 15 variables
#' \describe{
#'  \item{n_Date}{int Date in numeric format YYYYMMDD}
#'  \item{b_Current}{logi States whether date is Today which is always False}
#'  \item{n_Day}{int Day of Competition (Day of Opening Ceremony = 0)}
#'  \item{c_Day}{chr Day of Week}
#'  \item{c_DayShort}{chr Abbreviated Day of Week}
#'  \item{n_DayNr}{int Day of Month Number}
#'  \item{n_WeekDayNr}{int Day of Week Number (Sunday =  1)}
#'  \item{c_Month}{chr Month of Competition}
#'  \item{c_MonthShort}{chr Abbreviated Month of Competition}
#'  \item{n_MonthNr}{int Month Number}
#'  \item{n_Year}{int Year}
#'  \item{c_TimeFirstEventLocal}{POSIXct Time of First Event Locally}
#'  \item{c_TimeFirstEventUTC}{POSIXct Time of First Event UTC}
#'  \item{c_TimeLastEventLocal}{POSIXct Time of Last Event Locally}
#'  \item{c_TimeLastEventUTC}{POSIXct Time of Last Event UTC}
#' }
#' @source NBC Olympics API
"date_list"

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

#' Schedule Matrix
#' 
#' Data about Event Start Times during the 2022 Beijing Olympics
#' 
#' @format A data.frame with 285 rows and 16 variables
#' \describe{
#'   \item{n_SportID}{int Respective Sport ID for each sport}
#'   \item{c_Sport}{chr Name of Sport}
#'   \item{c_SportShort}{chr Abbreviation for Sport}
#'   \item{n_DateLocal}{int Date in YYYYMMDD format}
#'   \item{c_DateLoca}{POSIXCT Date in POSIXCT format}
#'   \item{d_DateLocal}{chr Date in UNIX format}
#'   \item{c_TimeFirstEventLocal}{POSIXCT Start time in Beijing in POSIXCT format}
#'   \item{c_TimeFirstEventUTC}{POSIXCT Start time in UTC in POSIXCT format}
#'   \item{c_TimeLastEventLocal}{POSIXCT Last time in Beijing in POSIXCT format}
#'   \item{c_TimeLastEventUTC}{POSIXCT Last time in UTC in POSIXCT format}
#'   \item{n_NrOfEvents}{int Number of Events that Day}
#'   \item{n_NrOfMatches}{int Number of Matches that Day}
#'   \item{n_NrOfGold}{int Number of Gold Medals Awarded that Day}
#'   \item{n_NrOfSilver}{int Number of Silver Medals Awarded that Day}
#'   \item{n_NrOfBronze}{int Number of Bronze Medals Awarded that Day}
#' } 
#' @source NBC Olympics API
"schedule_matrix"
