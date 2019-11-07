# First commits

fish_data = read.csv("raw_data/Gaeta_etal_CLC_data.csv")
fish_data

# Building a history

library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

