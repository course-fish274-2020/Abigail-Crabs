# Load libraries ----
library(ggplot2)
library(tidyverse)
#Reading in data
burrow_dimensions_raw <- read.csv("Data/Ghost_crab_burrow_architecture.csv")
head(burrow_dimensions_raw)

# Filtering depth, temp, month for specific sites ----
      # Debidue Island + Folly Beach + Pawleys Island 1 +  Edisto Beach
burrow_site_depth_temp_month <- burrow_dimensions_raw %>%
  select(site, burrow.depth, burrow.temperature, month) %>%
  filter(site == "Debidue Island" | site == "Folly Beach " | site == "Pawleys Island 1" | site == "Edisto Beach")
head(burrow_site_depth_temp_month)

#Plotting data ----
burrow_data_plot <- ggplot(burrow_site_depth_temp_month, aes(x = burrow.depth, y = burrow.temperature, color = month)) +
  geom_point() +
  facet_wrap(~site) +
  geom_smooth(method = "loess") +
  labs(x = "Burrow Depth (mm)", y = "Burrow Temperature (°C)") +
  labs(title = "Burrow Depth vs Temperature") +
  theme(plot.title = element_text(hjust = 0.5))
print(burrow_data_plot)


# Filtering data for another analysis
    # Burrow shape vs burrow temp  for specific sites
burrow_shape_temperature_sites <- burrow_dimensions_raw %>%
  select(site, burrow.shape, burrow.temperature, month) %>%
  filter(site == "Debidue Island" | site == "Folly Beach " | site == "Pawleys Island 1" | site == "Edisto Beach")
head(burrow_shape_temperature_sites)




#Plotting analysis 2
burrow_data_plot_2 <- ggplot(burrow_shape_temperature_sites, aes(x = burrow.shape, y = burrow.temperature, color = burrow.shape)) +
  geom_point() +
  geom_jitter() +
  facet_wrap(~site)+
  labs(x = "Burrow Site", y = "Burrow Temperature (°C)") +
  labs(title = "Burrow Shape vs Temperature") +
  theme(plot.title = element_text(hjust = 0.5))
print(burrow_data_plot_2)
