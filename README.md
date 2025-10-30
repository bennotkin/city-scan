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

## First steps, after cloning
1. Download relevant directories (see below) from [Sharepoint](https://worldbankgroup-my.sharepoint.com/:f:/r/personal/tgertin_worldbank_org/Documents/city_scan2?csf=1&web=1&e=E28Xaz) or Google Cloud, and place in directory. It may be necessary to download in multiple batches.
   1. `AOI/`
   2. `Maps/`
   3. `tabular/`
   4. `images/`
3. Edit variables in `user-inputs.R`, including paths to locally downloaded files
4. Run `city-scan-calculations.Rmd`
5. Copy all files in `plots/` into `scan/Links/`
6. Open the InDesign file. You may be asked to relink the missing files. Relinking one to the scan/Links/ folder should relink all of other files (except those that do not exist.)

## Suggested directory structure
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
	- [ ] Clone directory (named yyyy-mm-city-country)
- [ ] Identify which pages to include (include social distancing)
	- [ ] make sure all pages exist (if pages don't exist in copied scan, use `Move pages...` from scan that does include them; may need to delete parent page items from generated page)
		- Social distancing? *Yes*
		- Oxford Economics? *Yes*
		- Demographics? *Yes*
		- Coastal? *Yes*
	- [ ] Delete unnecessary pages
- [ ] Add country map with dot for city on Basic Info page (typically using Wikimedia map)
- [ ] Create plots (and run other calculations)
	- [ ] Edit `user-inputs.R` with city-specific information and paths
  	- [ ] If City Scan is one of a set, include all cities as benchmark cities
	- [ ] Run `scan-calculations.Rmd` and preview outputs (creates scan-calculations.nb.html; alternatively render with `rmarkdown::render()`)
	- [ ] Update `city-scan-calculations.R` template with any relevant changes
- Add benchmark text to all relevant InDesign pages
- [ ] Add images
	- [ ] Delete all city-specific files in Links/ (sort by date created to quickly identify)
	- [ ] Copy maps into Links/
	- [ ] Copy plots into Links/
	- [ ] Copy images into Links/
	- [ ] Add earthquake screenshots
		- [ ] Seismic Hazard: https://maps.openquake.org/map/gshm-2023-1/#3/32.00/-2.00
		- [ ] Seismic risk: https://maps.openquake.org/map/grm-2023-1/#3/32.00/-2.00
- [ ] Replace city name in sidebar and title page
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
- [ ] Look for previous city names: e.g., "Accra|Ghana"
- [ ] Make sure slide numbering is correct
- [ ] Spellcheck
- [ ] Check for TK or tk
