install.packages("tidyverse")
library(tidyverse)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

Allgemein:
  ggplot(data = <DATA>) +
  <Geom_function>(mapping = aes(<MAPPINGS>))

?mpg

ggplot(data = mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))
_____________________________

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))


