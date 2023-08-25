library(tidyverse)
library(nflreadr)

# Data------

sched <- load_schedules(seasons = 2022) |> 
  filter(home_team == "DEN" | away_team == "DEN") |> 
  select(season, game_type, week, away_team, home_team, away_score, home_score, result)

write_csv(sched, "Data/schedule_test.csv")  
