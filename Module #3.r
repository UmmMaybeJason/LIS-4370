# Module 3 Code
library(ggplot2)

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_results <- c(4, 62, 51, 21, 2, 14, 15)

CBS_results <- c(12, 75, 43, 19, 1, 21, 19) 

polldf <- data.frame(Name, ABC_results, CBS_results)
print(polldf)

poll_graph_CBS <- ggplot(polldf, aes(x = Name, y = CBS_results)) + geom_bar(stat = "identity")
print(poll_graph_CBS)

poll_graph_ABC <- ggplot(polldf, aes(x = Name, y = ABC_results)) + geom_bar(stat = "identity")
print(poll_graph_ABC)
