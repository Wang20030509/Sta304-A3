#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Doran Wang
# Date: 19 September 2024
# Contact: doran.wang@mial.utoronto.ca 
# License: MIT
# Pre-requisites: Need to download the data


#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )
#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
