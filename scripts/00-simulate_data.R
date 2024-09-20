#### Preamble ####
# Purpose: Simulate data 
# Author: Doran Wang
# Date: 19 September 2024
# Contact: doran.wang@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(tibble)
library(readr)

#### Simulate data ####
set.seed(304)

start_data <- as.Date("2018-01-01")
end_data <- as.Date("2023-12-31")

number_of_dataes <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dataes,
        min = as.numeric(start_data),
        max = as.numeric(end_data)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dataes, lambda = 15)
  )

write_csv(data, file = "C:/Users/User/Documents/Sta304-A3/data/raw_data/simulated.csv")


