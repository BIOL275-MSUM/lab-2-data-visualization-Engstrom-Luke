library(tidyverse)

library(palmerpenguins)

penguins

view(penguins)
# Showed penguin data

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm))
# Made a scatter plot with no color

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island))
# Made a scatter plot with colors blue, green and red. Along with shapes circles, squares, and triangles

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island))+
  facet_wrap(~ species, nrow = 1)
# Made three columns with the titles Adelie, Chinstrap, and Gentoo

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island))+
  facet_grid(island ~ species)
# Added 3 rows titled Biscoe, Dream, and Torgersen on top of the 3 collumns from the previous code

