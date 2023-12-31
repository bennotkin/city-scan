# City Scan Assemblage README

## Setting up the directory

To create a new City Scan, begin by cloning this repository:

```
git clone <path or url to repo> <yyyy-mm-group-cityname>
```

or, to reduce file size (which is, as of yet, not very large):

```
git clone --filter=blob:none <path or url to repo> <yyyy-mm-group-cityname>
```

For example, for the July 2023 Yen Bai scan, I would do

```
git clone 01-current-scans/0000-template 01-current-scans/2023-07-vietnam-yen-bai
```

Doing so will create a directory with the starting pieces for a new scan.

## Directory Contents

- `README.md`
- `city-scan-calculations-template.Rmd` The file that generates all of the plots and the statistical reference sheet
- `user-inputs.R` This file defines the variables used by the calculations file
- `scan/`
  - `Links/` The directory where the InDesign document reads all its files from. At the start it includes the images used by all scans; you will later paste all maps and plots into this directory as well
  - `template-city-scan.idml`

## Not in the directory
You will also need the following files which are not in the directory. These files are used by all or multiple city scans. Some of these are stored in a separate repo, which you can clone with `git clone https://github.com/bennotkin/multi-scan-materials.git`. I recommend cloning this to a location outside the folder created by the previous cloning, as these files will be used by many scans. (See [Suggested directory structure](#Suggested-directory-structure) below.)

A couple datasets are not included in the repo

1. Oxford Economics (internal only, request from CRP team member)
2. Photovoltaics (different dataset per country: download the *_GISdata_LTAy_YearlyMonthlyTotals_GlobalSolarAtlas-v2_GEOTIFF/ version from https://globalsolaratlas.info/download/ after selecting the appropriate country)

## First steps, after cloning
1. Download relevant directories (see below) from [Sharepoint](https://worldbankgroup-my.sharepoint.com/:f:/r/personal/tgertin_worldbank_org/Documents/city_scan2?csf=1&web=1&e=E28Xaz), and place in directory. It may be necessary to download in multiple batches.
   1. `AOI/`
   2. `Maps/`
   3. `Stats/`
   4. `toms_outputs/network_analysis` (Place all of these in the `Maps/` folder)
      - `*_radar_plot.png`
      - `*_network_plot.png`
      - `*_network_plus_building_footprints.png`
   5. `toms_outputs/*_age_distribution.csv` (may be located in demographics/ folder; place in the main directory)
2. Edit variables in `user-inputs.R`, including paths to locally downloaded files
3. Ensure relevant `Stats/` files are named as in the R code
   1. `WSF.xlsx`
	 1. `Landcover.xlsx`
	 2. `Elevaton_Slope.xlsx`
	 3. `*_osmpt.xls` (where `*` is `fu`, `pu` and `comb`)
	 4. `*_major_roads.xls`
	 5. `*_pop_area.xls`
4. Run `city-scan-calculations.Rmd`
5. Make any necessary legibility edits to `darthmouth_flood_events.pdf` and `ngdc-earthquake-events.pdf`
6. Copy all files in `plots/` into `scan/Links/`
7. Open the InDesign file. You may be asked to relink the missing files. Relinking one to the scan/Links/ folder should relink all of other files (except those that do not exist.)

## Suggestedd directory structure
For `user-inputs.R` to work with the least amount of edits, imitate the following directory structure, using the same directory names:
- `city-scans/`
  - `01-current-scans/`
    - *Directory for each current city, named in the yyyy-mm-country-city, pattern, cloned from GitHub (see above)*
  - `02-past-scans/`
    - *Directories from `01-current-scans/` after they have been completed*
  - `03-multi-scan-materials/`
    - `flood-archive/` *(Cloned from Github, see [Not in directory](#Not-in-directory) above)*
    - `Koeppen-Geiger-ASCII.csv` *(Cloned from Github, see [Not in directory](#Not-in-directory) above)*
    - `Oxford Global Cities Data.csv` *(internal only; request download)*
    - `oxford-economic-areas.csv` *(Cloned from Github, see [Not in directory](#Not-in-directory) above)*
    - `oxford-locations.csv` *(Cloned from Github, see [Not in directory](#Not-in-directory) above)*
    - Photovoltaics directory *(Downloaded for each country, see [Not in directory](#Not-in-directory) above)*
    - `undata-pop.csv` *(Cloned from Github, see [Not in directory](#Not-in-directory) above)*

## City Scan Checklist
*This checklist is older than the process above; some steps might no longer be relevant or correct.*
- [ ] Set up directory
	- [ ] Create directory (named yyyy-mm-city-country)
	- [ ] Copy in scan directory from previous scan
	- [ ] Temporarily rename previous scan directory and open new InDesign file to set links to new Links/ 
	- [ ] Copy `city-scan-calculations.R` template and change variables
- [ ] Identify which pages to include (include social distancing)
	- [ ] make sure all pages exist (if pages don't exist in copied scan, use `Move pages...` from scan that does include them; may need to delete parent page items from generated page)
		- Social distancing? *Yes*
		- Oxford Economics? *Yes*
		- Demographics? *Yes*
		- Coastal? *Yes*
	- [ ] Delete unnecessary pages
- [ ] Add country map with dot for city on Basic Info page
- [ ] Create plots (and run other calculations)
	- [ ] Set city and country variables
	- [ ] Numeric calculations, run and add to InDesign
		- [ ] Area (requires AOI):
		- [ ] Climate zone (requires AOI):
		- [ ] Add to InDesign
	- [ ] Identify if city is in Oxford Economics
		- [ ] ~~If not, look for population data elsewhere
		- [ ] ~~change population citation
	- [ ] Select benchmark cities (typically, cities with roughly similar populations in nearby countries with similar wealth, in Oxford Economics dataset)
		- Generate benchmark text. (May want to use asterisks to mark capital cities, especially if city in focus is a capital city (see Maseru).)
			- [ ] `Benchmark cities include Ouagadougou* (Burkina Faso), Accra* (Ghana), Bamako* (Mali), Abuja,* Ibadan, Kano and Onitsha (Nigeria) and Dakar* (Senegal). Benchmark cities are regional cities with similar population sizes. Asterisks mark capitals.`
		- [ ] ~~Manually add city area for each benchmark cities~~ *This is now generated for Oxford cities*
		- [ ] Add a note explaining how density is measured / how it is for a wide area and therefore has a lower density than most of the people experience
	- [ ] Generate plots
		- [ ] Oxford
		- [ ] Floods (requires AOI)
			- [ ] Generate
			- [ ] Review and edit
		- [ ] Earthquakes (country name)
			- [ ] Generate
			- [ ] Review and edit
		- [ ] PV
		- [ ] Urban flooding and other WSF plots
	- [ ] Update `city-scan-calculations.R` template with any relevant changes
- [ ] Add images
	- [ ] Delete all city-specific files in Links/ (sort by date created to quickly identify)
	- [ ] Download AOI/, Maps/, toms_outputs/ and Stats/ from OneDrive, save in scan directory
	- [ ] Copy maps into Links/
	- [ ] Copy plots in Link/
	- [ ] Run `rename-generic.R` with `$ Rscript --vanilla rename-generic.R "<PATH TO LINKS DIRECTORY>" "<City>_"`
	- [ ] Add network plots
		- [ ] Recolor network plot: `magick osmaniye_network_plot.png -trim -fuzz 30% -fill white -opaque '#111111' osmaniye_network_plot_white.png`
	- [ ] Add earthquake screenshots
		- [ ] Seismic Hazard: https://maps.openquake.org/map/global-seismic-hazard-map/#8/16.544/103.162
		- [ ] ~~Seismic risk: https://maps.openquake.org/map/global-seismic-risk-map/#7/16.109/102.470
- [ ] Replace city name in sidebar and title page
- [ ] Update legends
- [ ] Write text for each slide
	- [ ] Setting the Context (*Thank you, Yuki!*)
		- [ ] Basic Info
		- [ ] The State of Urban Infrastructure and Service Delivery
			- [ ] Land Administration
			- [ ] Housing
			- [ ] Disaster Risk Management
			- [ ] Energy
			- [ ] Drinking Water Supply
			- [ ] Solid Waste Management
			- [ ] Urban Roads and Transport
			- [ ] ~~Local Administration~~
	- [ ] Map and chart slides
	- [ ] Administrative structure
	- [ ] Plans and policies
	- [ ] Executive Summary
- [ ] Citations
	- [ ] Footnotes
	- [ ] Endnotes
- [ ] Update table of contents
- [ ] Look for previous city names: "Accra|Ghana"
- [ ] Make sure page numbering is correct 
- [ ] Spellcheck
- [ ] Check for TK or tk
