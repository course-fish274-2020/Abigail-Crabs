library(ggplot2)
library(dplyr)
library(tidyverse)
#Reading in data
burrow_dimensions_raw <- read.csv("Data/Ghost_crab_burrow_architecture.csv")
head(burrow_dimensions_raw)

# Part I: Filtering Data ----
# Filtering depth, temp, month for specific sites
      # Debidue Island + Folly Beach + Pawleys Island 1 +  Edisto Beach
burrow_site_depth_temp_month <- burrow_dimensions_raw %>%
  select(site, burrow.depth, burrow.temperature, month) %>%
  filter(site == "Debidue Island" | site == "Folly Beach " | site == "Pawleys Island 1" | site == "Edisto Beach")
head(burrow_site_depth_temp_month)


ggplot(burrow_site_depth_temp_month, aes(x = burrow.depth, y = burrow.temperature,
  color = site)) +
  geom_point() +
  facet_wrap(~site) +
  geom_smooth(method = "loess")











