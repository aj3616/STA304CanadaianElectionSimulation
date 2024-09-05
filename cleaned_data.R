library(knitr)
library(janitor)
library(lubridate)
library(tidyverse)




cleaned_elections_data = party_data %>% select("Electoral District Name/Nom de circonscription","Elected Candidate/Candidat élu")%>% rename("District_nm" = "Electoral District Name/Nom de circonscription", "party_nm" ="Elected Candidate/Candidat élu") %>%
  separate(col = party_nm, into = c("Other", "elected_party"), sep = "/") %>% select(District_nm, elected_party)

cleaned_elections_data = cleaned_elections_data %>% clean_names(cleaned_elections_data)


names = cleaned_elections_data %>% select(party) %>% unique()

cleaned_elections_data <-
  cleaned_elections_data |>
  mutate(
    elected_party =
      case_match(
        elected_party,
        "Conservateur" ~ "Conservative",
        "Libéral" ~ "Liberal",
        "NPD-Nouveau Parti démocratique" ~ "New Democratic",
        "Parti Vert" ~ "Green","Bloc Québécois" ~"Bloc Québécois")
  )
