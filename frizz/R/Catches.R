#' Number of catches by an individual player
#'
#' @param a Data frame of the frisbee team
#' @param b Name of the player
#'
#' @returns Number of catches by that person
#' @export
#'
#' @examples catches(teamW, "Tommy")

catches <- function(a, b) {
  count <- sum(a$Action == "Catch" & a$Receiver == b, na.rm = TRUE)
  cat("Number of catches by", b, ":", count, "\n")
}

