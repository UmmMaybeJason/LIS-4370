#' Numbers of times for a Person Pulling the Frisbee
#'
#' Take a player's name, and finds out the number of times they pulled
#'
#'
#' @param a A dataframe of the frisbee team
#' @param b Name of the puller
#'
#' @return Number of pulls
#' @export
#'
#' @examples
#' pulls(teamW, "Tommy")

pulls <- function(a, b) {
  count <- sum(data$Action == "Pull" & data$Defender == player_name, na.rm = TRUE)
  cat("Number of pulls by", player_name, ":", count, "\n")
}
