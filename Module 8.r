# Module 8 Assignment

dataset <- read.csv("C:/Users/Jason Derulo/Desktop/USF/USF/Spring 2025/LIS 4370/Module 8 Dataset.txt")

require(pryr)
require(ISLR)
require(boot)

library(data.table)
library(dplyr)
library(plyr)

str(dataset)

StudentAverage <- ddply(dataset, .(Sex) ,transform, Grade.Average = mean(Grade))

istudents <- dataset %>% filter(grepl("i", Name))
head(istudents)

write.csv(istudents, "Filtered_Students.csv", row.names = FALSE)

