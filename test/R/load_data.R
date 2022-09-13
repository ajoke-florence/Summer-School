library(tidyverse)

penguin_csv_url <- "https://raw.githubusercontent.com/allisonhorst/palmerpenguins/main/inst/extdata/penguins.csv"

penguins_online <- read_csv(penguin_csv_url)
