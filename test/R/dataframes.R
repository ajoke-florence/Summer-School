sepal_length <- c(5.1, 7.0, 6.3)

sepal_width <- c(3.5, 3.2, 3.3)

species <- c('setosa', 'versicolor', 'virginica')

iris_sample <- data.frame(
    species,
    sepal_length,
    sepal_width
    )
iris_sample
class(iris_sample)
dim(iris_sample)
library(tidyverse)

iris_sample

as_tibble(iris)


Day <- c(1,2,3,4,5)

Temp <- c(28,32,31,27,29)

Forecast <- data.frame(Day,Temp)

mean(Forecast$Temp)

sd(Forecast$Temp)

# dev.off()
plot(x = Forecast$Day, y = Forecast$Temp, "l")


