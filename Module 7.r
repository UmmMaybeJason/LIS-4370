# Module 7

#S3 ex. 1
player_s3 <- list(name = "Tyler", speed = "fast", time = 6)
class(player_s3) <- "player"


print(player_s3)
head(player_s3)
list(player_s3)

#S3 ex. 2
subject_s3 <- list(
  name = "Physics",
  difficulty = "Hard",
  avg_grade = 68.9
)

class(subject_s3) <- "Subject"


#S4 ex. 1
setClass("player",
         slots = list(
           name = "character",
           speed = "character",
           time = "numeric"
         ))

player_s4 <- new("player", name = "Jason", speed = "fast", time = 4.8)
print(player_s4)

#S4 ex. 2
setClass("Subject",
         slots = list(
           name = "character",
           difficulty = "character",
           avg_grade = "numeric"
         ))

subject_s4 <- new("Subject", name = "Calculus", difficulty = "Medium", avg_grade = 84.5)
