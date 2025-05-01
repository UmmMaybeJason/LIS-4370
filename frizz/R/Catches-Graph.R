#' Using GGPlot2 functions to Graph Player Catches
#'
#'#' @param a Data frame of the frisbee team
#' @param ... Name of the players desired on the graph
#'
#'
#' @returns Plot of all listed players in the function
#' @export
#'
#'@importFrom ggplot2 ggplot aes geom_bar scale_fill_manual geom_text theme
#'@importFrom ggplot2 labs element_text plot.background element_rect
#'@importFrom ggplot2 panel.background
#'
#' @examples catches_g(teamW, "Riley", "Tommy", "Blake")

catches_graph <- function(data, ...) {
  players <- c(...)
  colors <- c("#3300FF", "#9900FF", "#FF00FF", "#9999FF", "#9933CC", "#FF99FF")

  catch_count <- sapply(players, function(player) {
    sum(data$Action == "Catch" & data$Receiver == player, na.rm = TRUE)
  })

  p_data <- data.frame(
    Player = factor(players, levels = players),
    Catches = catch_count
  )

  ggplot(p_data, aes(x = Player, y = Catches, fill = Player)) +
    geom_bar(stat = "identity") +
    scale_fill_manual(values = colors[1:length(players)]) +
    geom_text(aes(label = Catches), size = 4) +
    labs(title = "Total Catches by Player",
         x = "Player Name",
         y = "Number of Catches") +
    theme(legend.position = "right",
          plot.title = element_text(hjust = 0.5),
          plot.background = element_rect(fill = "aliceblue"),
          panel.background = element_rect(fill = "mintcream"))
}

