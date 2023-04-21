library(readr)
library(tidyr)
library(ggplot2)


data <- read_csv("gapminder.csv") %>%
  pivot_longer(-country,
               names_to = "year",
               values_to = "gdpPercap",
               names_prefix = "gdpPercap_",
               names_transform = list(year = as.integer))

data[data$country == "Australia", ] %>%
  ggplot(aes(x = year, y = gdpPercap)) +
  geom_line()

print("Hello World")