# User inputs for making the R Notebook, so that the calculations sheet only needs code changes

# City
city <- "Yen Bai"
country <- "Vietnam"
map_file_prefices <- c("'Yen_Bai_'", "'Yenbai_'") # Include single quotations around prefices

# Selecting Benchmark cities (additional cities will be chosen via Oxford Economics and nearby_countries_string)
bm_cities_manual <- c("Ca Mau", "Cao Lanh", "Can Tho", "Hong Ngu", "Rach Gia", "Hoi An", "Yen Bai", "Cao Bang", "Dien Bien Phu") # NULL when not in use# NULL when not in use; add country as element name (as used by citypopulation.de) when it differs from focus city's country
nearby_countries_string <- "cambodia|vietnam|thailand|myanmar|burma|malays|brunei"

# Oxford Economics
# Is city in Oxford Economics?
# oxford_locations <- readr::read_csv("../../03-multi-scan-materials/oxford-locations.csv", col_types = "c")
# dplyr::filter(oxford_locations, Country == country)
in_oxford <- F
# If there is no Oxford data, manually set population
# population_manual <- 
# area_manual <- c("" = X)

# Local File Locations
# I recommend creating a directory to host all of the data used by multiple city
# scans. I call my such directory `03-multi-scan-materials`
# You can find all of these files except Oxford Economics at
# https://github.com/bennotkin/multi-city-scan-data

# Photovoltaic Potential (THIS CHANGES PER COUNTRY)
# Download files from https://globalsolaratlas.info/download/
# Download the *_GISdata_LTAy_YearlyMonthlyTotals_GlobalSolarAtlas-v2_GEOTIFF/ version
pv_path <- "../../03-multi-scan-materials/Vietnam_GISdata_LTAy_YearlyMonthlyTotals_GlobalSolarAtlas-v2_GEOTIFF/monthly/"

# Oxford Economics (internal)
oxford_file <- "../../03-multi-scan-materials/Oxford Global Cities Data.csv"
oxford_areas_file <- "../../03-multi-scan-materials/oxford-economics-areas.csv"

# UN Data Population
undata_file <- "../../03-multi-scan-materials/undata-pop.csv"

# Koeppen Climate Classification
koeppen_file <- "../../03-multi-scan-materials/Koeppen-Geiger-ASCII.csv"

# Flood Archive
flood_archive_file <- "../../03-multi-scan-materials/flood-archive"