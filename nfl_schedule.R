library(tidyverse)
library(nflreadr)

# Data------

sched <- load_schedules(seasons = 2022) |> 
  filter(home_team == "NYG" | away_team == "NYG") |> 
  select(season, game_type, week, away_team, home_team, away_score, home_score, result)

write_csv(sched, "schedule_test.csv")  
