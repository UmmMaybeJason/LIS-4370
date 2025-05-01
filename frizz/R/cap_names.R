#' Name Capitalization for Frisbee Teams
#'
#' Converts the names within a given column to capitalize the first letter of
#' each player on a team
#'
#' @param a Data Frame of the frisbee team
#' @param b Number of the column with given player names that wants to be
#' capitalized
#'
#' @returns Names of the players in capitalized format
#' @export
#'
#' @examples cap_names(teamW, 10)

cap_names <- function(a, b) {
  names <- as.character(a[[b]])
  sapply(names, function(x) {
    if (is.na(x) || x == "") x
    else paste0(toupper(substring(x, 1, 1)), substring(x, 2))
  })
  return(a[[b]])
}

