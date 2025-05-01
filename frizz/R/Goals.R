#' Number of goals scored by an individual
#'
#' @param a Data frame of the frisbee team
#' @param b Name of the person
#'
#' @returns Number of goals scored by that person
#' @export
#'
#' @examples goals(teamW, "Riley")

goals <- function(a, b) {
  count <- sum(a$Action == "Goal" & a$Receiver == b, na.rm = TRUE)
  cat("Number of goals by", b, ":", count, "\n")
}
