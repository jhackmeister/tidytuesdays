library(tidyverse)

tuesdata <- tidytuesdayR::tt_load(2025, week = 20)

water_quality <- tuesdata$water_quality
weather <- tuesdata$weather

head(water_quality)

water_quality <- water_quality %>% 
  mutate(across(c("enterococci_cfu_100ml", "water_temperature_c", "conductivity_ms_cm"), as.integer))


summary(water_quality)
         