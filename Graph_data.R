
library(tidyverse)

cleaned_elections_data |>
  ggplot(aes(x = elected_party)) + # aes abbreviates "aesthetics" 
  geom_bar()

cleaned_elections_data |>
  ggplot(aes(x = elected_party)) +
  geom_bar() +
  theme_minimal() + # Make the theme neater
  labs(x = "Party", y = "Number of seats", title = "Ridings Won by Each Party in Canada (2021)") # Make labels more meaningful
