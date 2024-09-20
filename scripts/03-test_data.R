#### Preamble ####
# Purpose: Sanity check of the data
# Author: Doran Wang
# Date: 19 September 2024
# Contact: doran.wang@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Need to have simulated data


#### Workspace setup ####
library(tidyverse)
library(readr)

#### Test data ####
data <- read_csv:("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))
