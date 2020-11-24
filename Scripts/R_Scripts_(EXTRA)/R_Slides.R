
# PART 1 - READING IN DATA ----
burrow_dimensions_raw <- read.csv("../Data/Ghost_crab_burrow_architecture.csv")
Burrow_tibble <- as_tibble(burrow_dimensions_raw[, 1:5])
Burrow_table <- head(Burrow_tibble)
knitr::kable(Burrow_table,
             col.names = c('Site', 'Impact Types', 'Burrow Shape', 'Beach Slope', 'Sand Compaction'))

# SELECTING COLUMNS ----
burrow_site_depth_temp_month <- burrow_dimensions_raw %>%
  select(site, burrow.depth, burrow.temperature, month) %>%
  filter(site == "Debidue Island" | site == "Folly Beach " | site == "Pawleys Island 1" | site == "Edisto Beach")
selected_data_tibble <- as_tibble(burrow_site_depth_temp_month)
selected_data_table <- head(selected_data_tibble)
knitr::kable(selected_data_table,
             col.names = c('Site', 'Burrow Depth (mm)', 'Burrow Temperature (°C)', 'Month'))

# SELECTING COLUMNS # 2 ----
burrow_shape_temperature_sites <- burrow_dimensions_raw %>%
  select(site, burrow.shape, burrow.temperature) %>%
  filter(site == "Debidue Island" | site == "Folly Beach " | site == "Pawleys Island 1" | site == "Edisto Beach")
depth_temp_site_tibble <- as_tibble(burrow_shape_temperature_sites)
depth_temp_site_table<- head(depth_temp_site_tibble)
knitr::kable(depth_temp_site_table,
             col.names = c('Site', 'Burrow Depth (mm)', 'Burrow Temperature (°C)'))









