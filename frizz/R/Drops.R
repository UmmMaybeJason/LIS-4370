#' Number of drops by a player
#'
#' @param a Data frame of the frisbee team
#' @param b Name of the player
#'
#' @returns Number of drops by that person
#' @export
#'
#' @examples drops(teamW, "Ethan")

drops <- function(a, b) {
  count <- sum(a$Action == "Drop" & a$Receiver == b, na.rm = TRUE)
  cat("Number of drops by", b, ":", count, "\n")
}
