#' Overall stats for a given receiver on the team
#'
#' @param a Data frame of the frisbee team
#' @param b Name of the person
#'
#'
#' @returns Formatted summary of the player's drops, catches, drop rate, and
#' @returns catch rate
#' @export
#'
#' @examples receiver_stats(teamW, "Riley")
receiver_stats <- function(a, b) {
  catches <- sum(a$Action == "Catch" & a$Receiver == b, na.rm = TRUE)
  drops <- sum(a$Action == "Drop" & a$Receiver == b, na.rm = TRUE)
  touches <- catches + drops

  drop_rate <- ifelse(touches > 0, round(drops / touches * 100, 2), 0)
  catch_rate <- ifelse(touches > 0, round(catches / touches * 100, 2), 0)
  cat("Receiving stats for", b, ":\n",
      "Drops:", drops, "\n",
      "Catches:", catches, "\n",
      "Drop rate:", drop_rate, "%\n",
      "Catch rate:", catch_rate, "%\n")
}



