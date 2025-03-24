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

xyplot(price ~ packs | rownames, data = cigarette_data,
       main = "Price vs. Cigarette Consumption by State",
       xlab = "Average Consumption (packs)",
       ylab = "Average Price",
       col = "blue")

ggplot(cigarette_data, aes(x = cigarette_data$packs, y = cigarette_data$price)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Consumption vs. Price",
       x = "Average Price",
       y = "Average Consumption")
