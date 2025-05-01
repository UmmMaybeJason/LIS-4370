#' Throwaway Stats
#'
#' @param a
#' @param b
#'
#' @returns Formatted summary of the player's completion, throwaways, and their
#' rates
#' @export
#'
#' @examples thrower_stats(teamW, "Ethan")
thrower_stats <- function(a, b) {
  completions <- sum(a$Action == "Catch" & a$Passer == b, na.rm = TRUE)
  throwaways <- sum(a$Action == "Throwaway" & a$Passer == b, na.rm = TRUE)
  attempts <- completions + throwaways

  throwaway_rate <- ifelse(attempts > 0, round(throwaways / attempts * 100, 2), 0)
  completion_rate <- ifelse(attempts > 0, round(completions / attempts * 100, 2), 0)

  cat("Throwing stats for", b, ":\n",
      "Completions:", completions, "\n",
      "Throwaways:", throwaways, "\n",
      "Throwaway rate:", throwaway_rate, "%\n",
      "Completion rate:", completion_rate, "%\n")
}
