library(tidyverse)
library(nflreadr)

# Data------

sched <- load_schedules(seasons = 2022) |> 
  filter(home_team == "LV" | away_team == "LV") |> 
  select(season, game_type, week, away_team, home_team, away_score, home_score, result)

write_csv(sched, "schedule_test.csv")  
