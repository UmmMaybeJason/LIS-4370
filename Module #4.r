# Module 4 Assignment
library(ggplot2)

frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, "NA", 1)
first <- as.factor(first)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
second <- as.factor(second)
FD <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

df <- data.frame(frequency, BP, first, second, FD)

# Boxplots
visit1plot <- ggplot(df, aes(x = as.factor(first), y = BP)) +geom_boxplot() + labs(title = "BP vs 1st Visit")
print(visit1plot)

visit2plot <- ggplot(df, aes(x = as.factor(second), y = BP)) +geom_boxplot() + labs(title = "BP vs 2nd Visit")
print(visit2plot)

# Histograms
visit1hist <- ggplot(df, aes(x = (first))) + geom_bar(fill = "blue", color = "black") + labs(title = "First Visit")
print(visit1hist)

visit2hist <- ggplot(df, aes(x = (second))) + geom_bar(fill = "blue", color = "black") + labs(title = "Second Visit")
print(visit2hist)
