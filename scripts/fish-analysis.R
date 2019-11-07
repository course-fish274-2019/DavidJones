# First commits

fish_data = read.csv("raw_data/Gaeta_etal_CLC_data.csv")
fish_data

# Building a history

library(dplyr)

# The line below creates a new data set with the Variable "length_cat" that has the value "big" if the length is over 300 and "small" if the value is less than 300

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
fish_data_cat
