# User inputs for making the R Notebook, so that the calculations sheet only needs code changes

# City
city <- "Mombasa"
country <- "Kenya"
map_file_prefices <- c("'Mombasa_'", "'mombasa_'") # Include single quotations around prefices

# Selecting Benchmark cities (additional cities will be chosen via Oxford Economics and nearby_countries_string)
bm_cities_manual <- c("Kilifi", "Malindi", "Ukunda") # NULL when not in use; add country as element name (as used by citypopulation.de) when it differs from focus city's country
nearby_countries_string <- "kenya|rwanda|uganda|tanzania|somalia|ethiopia|malawi|madagas|burundi|comoros|djib|eritrea|maurit|mozam|seyche|reunion|south sudan|zambia|zimbab"

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
# Download the *_GISdata_LTAy_YearlyMonthlyTotals_GlobalSolarAtlas-v2_AAIGRID/ version
# The GEOTIFF format also works, but is typically much larger
pv_path <- "../../03-multi-scan-materials/Kenya_GISdata_LTAy_YearlyMonthlyTotals_GlobalSolarAtlas-v2_AAIGRID/monthly/"

# Oxford Economics (internal)
oxford_file <- "../../03-multi-scan-materials/Oxford Global Cities Data.csv"
oxford_areas_file <- "../../03-multi-scan-materials/oxford-economics-areas.csv"

# UN Data Population
undata_file <- "../../03-multi-scan-materials/undata-pop.csv"

# Koeppen Climate Classification
koeppen_file <- "../../03-multi-scan-materials/Koeppen-Geiger-ASCII.csv"

# Flood Archive
flood_archive_file <- "../../03-multi-scan-materials/flood-archive"

# Cyclone Archive
cyclone_archive_file <- "../../03-multi-scan-materials/IBTrACS-tropical-cyclones"