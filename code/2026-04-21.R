library(tidyverse)

# Option 1: tidytuesdayR R package 
tuesdata <- tidytuesdayR::tt_load(2026, week = 16)

financing_schemes <- tuesdata$financing_schemes
health_spending <- tuesdata$health_spending
spending_purpose <- tuesdata$spending_purpose

glimpse(financing_schemes)
