#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Doran Wang
# Date: 19 September
# Contact: doran.wang@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("tidyverse")
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# get package
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()

#### Save data ####
write_csv(data, "data/raw_data.csv") 


