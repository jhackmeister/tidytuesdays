library(tidyverse)

# install data
tuesdata <- tidytuesdayR::tt_load(2026, week = 14)

repairs <- tuesdata$repairs
repairs_text <- tuesdata$repairs_text

repairs_table <- repairs %>%
  filter(repaired %in% c('half', 'no', 'yes')) %>% 
  count(repaired)

ggplot(repairs_table, aes(x=repaired, y=n)) +
  geom_col() +
  
