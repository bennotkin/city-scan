# Script for running multiple scans R files / rendering one without opening

# Load packages
library(stringr)
library(dplyr)

# Set working directory to location of scan directories
setwd("~/Documents/world-bank/crp/city-scans/01-current-scans/")

# Render Current Scans
list.files(recursive = T) %>% # List all of the files in the working directory
  subset(str_detect(., "scan-calculations.Rmd")) %>% # select only the relevant RMD files
  subset(!str_detect(., "0000-template")) %>% # Exclude the template file
  # Selection methods if you don't want to run all the calculations-template.Rmd files
  subset(str_detect(., "mombasa")) %>% # select by string
  # .[c(10)] %>% # select by number
  lapply(function(file) {
    from_render <- T # This variable changes how the RMD file prints; must be defined for output to print prettily
    dir <- str_extract(file, "(^.*)/.*$", group = T)
    output_file = str_replace(file, ".Rmd", "")
    rmarkdown::render(file, "html_notebook", output_dir = paste0(dir, "/scan"))
    rm(list = ls()) # Clears the environment to avoid contamination between cities
  })

# Update all directories with template repo's changes
list.files(recursive = T, all.files = T) %>%
  subset(str_detect(., ".git/index")) %>%
  str_extract("(2023.*)/.git/index", group = T) %>%
  subset(!is.na(.)) %>%
  # .[c(1,3,4,8,10)] %>%
  lapply(function(dir) {
    cmd <- paste("git -C", dir, "pull")
    system(cmd)
  })