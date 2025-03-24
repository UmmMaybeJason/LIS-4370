# Module 9

library(ggplot2)
library(lattice)

cigarette_data <- read.csv("C:/Users/Jason Derulo/Desktop/USF/USF/Spring 2025/LIS 4370/CigarettesB.csv")
head(cigarette_data)

cigarette_data <- na.omit(cigarette_data)

plot(cigarette_data$packs, cigarette_data$price,
     main = "Price vs. Cigarette Consumption",
     xlab = "Average Price", 
     ylab = "Average Consumption", 
     col = "blue")
