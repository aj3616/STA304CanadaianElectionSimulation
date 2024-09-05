library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

set.seed(999)

simulated_data <-
  tibble(
    # Use 1 through to 151 to represent each division
    "Division" = 1:338,
    # Randomly pick an option, with replacement, 151 times
    "Party" = sample(
      x = c("Liberal", "Conservative", "Bloc Québécois", "Green", "New Democratic", "Others"),
      size = 338,
      replace = TRUE
    )
  )

simulated_data

sample(simulated_data)
