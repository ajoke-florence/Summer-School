library(tidyverse)
library(palmerpenguins)
library(skimr)

# dev.off()
p <- penguins %>%
  drop_na(species, sex) %>%
  ggplot(
    aes(
      x = bill_length_mm,
      y = bill_depth_mm,
      colour = species,
      shape = sex
    )
  )


penguins %>%
  drop_na(species, sex) %>%
  ggplot(
    aes(
      x = bill_length_mm,
      y = bill_depth_mm,
      colour = species,
      shape = sex
    )
  ) +
  geom_point()


penguins %>%
  drop_na(species, sex) %>%
  ggplot(
    aes(
      x = bill_length_mm,
      y = bill_depth_mm,
      colour = species,
      shape = sex
    )
  ) +
  geom_point() +
  geom_smooth()


penguins %>%
  drop_na(species, sex) %>%
  ggplot(
    aes(
      x = bill_length_mm,
      y = bill_depth_mm,
      colour = species,
      shape = sex
    )
  ) +
  geom_point() +
  geom_smooth(method = "lm")


penguins %>%
  drop_na(species, sex) %>%
  ggplot(
    aes(
      x = bill_length_mm,
      y = bill_depth_mm,
      colour = species,
      shape = sex
    )
  ) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(
    facets = "species",
    ncol = 3
  )

penguins %>%
  drop_na(species, sex) %>%
  ggplot(
    aes(
      x = bill_length_mm,
      y = bill_depth_mm,
      colour = species,
      shape = sex
    )
  ) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(
    facets = "sex",
    ncol = 1
  ) +
  scale_y_log10()


penguins %>%
  ggplot(aes(
    x = flipper_length_mm,
    fill = species
  )) +
  geom_histogram()

penguins %>%
  ggplot(aes(
    x = flipper_length_mm,
    fill = species
  )) +
  geom_bar()

p %>% ggplot(penguins, aes(
  x = factor(1),
  fill = species
)) +
  geom_bar(width = 1)
p + coord_polar(theta = "y")


penguins %>%
  drop_na(sex) %>%
  ggplot(
    aes(x = bill_length_mm)
  ) +
  geom_histogram() +
  facet_wrap(
    facets = "sex",
    ncol = 1
  )

penguins %>%
  # drop_na(sex)%>%
  ggplot(
    aes(x = species)
  ) +
  geom_bar() +
  facet_wrap(
    facets = "island",
    ncol = 2
  )

penguins %>%
  # drop_na(sex)%>%
  ggplot(
    aes(x = species, fill = island)
  ) +
  geom_bar()



penguins %>%
  drop_na(species, sex) %>%
  ggplot(
    aes(
      x = flipper_length_mm,
      y = body_mass_g,
      colour = species
    )
  ) +
  geom_point()


penguins %>%
  ggplot(aes(
    x = flipper_length_mm,
    body_mass_g
  )) +
  geom_hex(bins = c(20, 20 * 0.010))


penguins %>%
  ggplot(aes(
    x = flipper_length_mm,
    body_mass_g
  )) +
  geom_hex(bins = c(15, .15)) +
  geom_point(colour = "red")

penguins %>%
drop_na()%>%
  ggplot(aes(
    x = species,
    y = flipper_length_mm,
    fill = sex
  )) +
  geom_boxplot()

penguins %>%
  drop_na(sex) %>%
  ggplot(
    aes(x = bill_length_mm)
  ) +
  geom_histogram() +
  facet_wrap(
    facets = "sex",
    ncol = 1
  )

penguins %>%
  drop_na(sex) %>%
  ggplot(
    aes(x = bill_depth_mm)
  ) +
  geom_histogram() +
  facet_wrap(
    facets = "sex",
    ncol = 1
  )

penguins %>%
drop_na()
  ggplot(
    aes(
      x = flipper_length_mm,
      fill = species
    )
  ) +
  geom_histogram()


library(dplyr)
skim(storms)

storms %>%
  ggplot(
    aes(
      x = wind,
    )
  ) +
  geom_histogram()


storms %>%
  ggplot(
    aes(
      x = long,
      y = lat,
      color=pressure
    )
  ) +
  geom_point()


storms %>%
  group_by(name) %>%
  summarise(n = n())

storms %>%
  count(name) %>%
  filter(name == "Amy")


storms %>%
  ggplot(
    aes(
      x = year,
      y = wind,
    )
  ) +
  geom_point(alpha = 0.1) +
  geom_smooth()

storms %>%
  group_by(year) %>%
  summarise(
    wind_median = median(wind)
  ) %>%
  ggplot(
    aes(
      x = year,
      y = wind_median
    )
  ) +
  geom_line()

