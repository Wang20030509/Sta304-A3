#### Preamble ####
# Purpose: Sanity check of the data
# Author: Doran Wang
# Date: 11 February 2023 
# Contact: doran.wang@utoronto.ca 
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? 


#### Workspace setup ####
library(tidyverse)
library(readr)

#### Test data ####
data <- read_csv:("~/STA304/A3/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
is.na(data$number_of_marriage)
