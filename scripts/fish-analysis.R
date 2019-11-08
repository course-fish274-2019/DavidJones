# First commits

fish_data = read.csv("raw_data/Gaeta_etal_CLC_data_1.csv")
fish_data

# Building a history

library(dplyr)

# The line below creates a new data set with the Variable "length_cat" that has the value "big" if the length is over 300 and "small" if the value is less than 300

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
fish_data_cat

# The line below will only show fish with a scale length greater than 1 mm

fish_data_cat_scalelength <- filter(fish_data_cat, scalelength  > 1)
fish_data_cat_scalelength

# The lines below create a scatterplot of fish length vs scale length

library(ggplot2)

ggplot(fish_data_cat_scalelength, aes(x = length, y = scalelength, color = lakeid)) +
  geom_point(size=1)
  


# try this
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram()

