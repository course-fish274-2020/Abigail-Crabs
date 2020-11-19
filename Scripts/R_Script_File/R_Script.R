# Part 1 ----
library(ggplot2)
library(dplyr)
library(tidyverse)
#Reading in data
burrow_dimensions_raw <- read.csv("Data/Ghost_crab_burrow_architecture.csv")
head(burrow_dimensions_raw)

# Part II: Filtering Data ----
#Filtering site, depth, temp, month
burrow_site_depth_temp_month <- burrow_dimensions_raw %>%
  select(site, burrow.depth, burrow.temperature, month)
# Debidue Island + Folly Beach + Pawleys Island 1 +  Edisto Beach











ggplot(burrow_dimensions_raw, aes(x = burrow.depth, color = site)) +
  geom_histogram()











