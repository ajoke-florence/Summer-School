library(tidyverse)
library(palmerpenguins)
penguins
install.packages('skimr')
library(skimr)
skim(penguins)

skim(penguins) %>% is_skim_df()

skim(iris) %>% tibble::as_tibble()
penguins %>%
select(species, island, bill_length_mm) %>%
filter(island =='Dream') %>%
mutate(bill_length_meters = bill_length_mm/1000)%>%
group_by(species)%>%
summarise(mean_bill_length_mm = mean(bill_length_mm), sd_bill_length_mm = sd(bill_length_mm))

penguins %>%
select(species, island, flipper_length_mm) %>%
group_by(island)%>%
summarise(mean_flipper_length_mm = mean(flipper_length_mm, na.rm=T), sd_flipper_length_mm = sd(flipper_length_mm, na.rm=T))

penguins %>%
select(species, island, flipper_length_mm) %>%
group_by(species, island)%>%
summarise(mean_flipper_length_mm = mean(flipper_length_mm, na.rm=T))

penguins %>% 
select(species, bill_length_mm, bill_depth_mm)%>%
drop_na()%>%
mutate(bill_ratio = bill_length_mm/bill_depth_mm)%>%
group_by(species)%>%
summarize(mean_bill_ratio = mean(bill_ratio))


penguins %>%
select(bill_depth_mm, bill_length_mm, flipper_length_mm, body_mass_g)%>%
drop_na()%>%
mutate(bill_depth_m=bill_depth_mm/1000, bill_length_m=bill_length_mm/1000, flipper_length_m=flipper_length_mm/1000)

penguins %>%
select(where(is.numeric) | where(is.integer)) %>%
drop_na() %>%
mutate(bill_depth_m = bill_depth_mm/1000, bill_length_m=bill_length_mm/1000, flipper_length_m=flipper_length_mm/1000)

#skim(penguins)
#sapply(penguins, class)

penguins %>%
select(where(is.numeric) | where(is.integer)) %>%
mutate(across(ends_with ("_mm"), ~ .x /1000, .names = "{.col}_meter)")) %>%
rename_with(~sub("_mm_meter", "_meter", .x))


penguins %>%
  summarise(across(where(is.numeric), mean, na.rm=T))

penguins %>%
filter(bill_length_mm > mean(bill_length_mm, na.rm =T))

penguins %>%
filter(bill_depth_mm > mean(bill_depth_mm, na.rm =T))

penguins %>%
filter(flipper_length_mm > mean(flipper_length_mm, na.rm =T))

penguins %>%
filter(body_mass_g > mean(body_mass_g, na.rm =T))

