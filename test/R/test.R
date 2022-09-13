library(ggplot2)

mat <- matrix(nrow = 3, ncol = 2, c(1, 2, 3, 4, 5, 6))

students <- data.frame(
    c("Cedric", "Fred", "George", "Cho", "Draco", "Ginny"),
    c(3, 2, 2, 1, 0, -1),
    c("H", "G", "G", "R", "S", "G")
)

plot(mtcars$wt, mtcars$mpg)
