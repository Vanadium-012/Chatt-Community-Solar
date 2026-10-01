# Analysis Overview
To start, the main question that fueled this project was "What could be done to reduce Chattanooga's urban heat islands as well as address climate change at the same time?" This is what drove me to initially start by researching solar canopies. I started by researching already existing solar canopies, like [Rutgers University's Institutional Planning and Operations](https://ipo.rutgers.edu/news/parking-advisory) article on the large solar canopies that power the New Brunswick campus. Further, I read up on the solar array located at the John F. Kennedy International Airport in New York City, as reported in an article titled ["PORT AUTHORITY AND THE NEW TERMINAL ONE CONSORTIUM KICK OFF CONSTRUCTIOIN OF NEW YORK CITY'S LARGEST SOLAR ARRAY AT JOHN F. KENNEDY INTERNATIONAL AIRPORT"](https://www.panynj.gov/port-authority/en/press-room/press-release-archives/2024-Press-Releases/port-authority-and-the-new-terminal-one-consortium-kick-off-cons.html). The key portion that caught my attention when reading was how **"The Port Authority, in partnership with the New York Power Authority, also is constructing a 12-megawatt solar canopy at JFK's long-term parking lot 9 that will consist of 7.5 megawatts of battery storage for airport peak energy us and a 6-megawatt community solar generation facility, as well as provide coverd parking for 3,000 vehicles,"**

[![A photograph showing JFK Airport's AirTrain in the middle ground, solar panels in the foreground, and the Manhattan skyline in the background](https://totalenergies.com/sites/g/files/nytnzq121/files/styles/1200x667/public/images/totalenergies_the-roads-to-carbon-neutral-saison-5-episode-4-cover_2025.png?itok=X1FKw6EW)](https://totalenergies.com/news/news/the-roads-to-carbon-neutral-big-apple)
[![A drone shot of a solar canopy on the campus of Rutgers University](https://project-images-2018.s3.amazonaws.com/_AUTOx1084_fit_center-center_none/Knightsbridge-RD-pic-2.jpg)](https://galvanizeit.org/project-gallery/rutgers-solar-canopy)

## Study Area
The analysis encompasses the boundaries of the City of Chattanooga, ranging from the western neighborhood of Lookout Valley/Tiftonia, to the suburban backdrop of East Brainerd. The major retailers located in the city's boundaries *(Walmart, Target, Food City, ALDI, and Publix)* all have a significant swath of urban makeup, and thus, the potential for solar canopies. This is considerably so when it comes to retail/grocery store locations in Brainerd, a much more car-dependent area of the city compared to the downtown business district or neighboring Northshore.
![Chattanooga Community Solar Study area in Google Earth Pro](https://github.com/Vanadium-012/Chatt-Community-Solar/blob/main/GIS%20Components/Community-Solar-Analysis-StudyArea.jpg)

#### Analysis Methedology for Car Temperatures
It's important to note that the calculations for the "Internal Car Temperature Fahrenheit" column seen in the **"Temperature-Time-Series-2019-2025-InternalCar-Temperature"** comes from the academic paper titled *McLaren, Catherine, et al. “Heat stress from enclosed vehicles: Moderate ambient temperatures cause significant temperature rise in enclosed vehicles.” Pediatrics, vol. 116, no. 1, 1 July 2005, [https://doi.org/10.1542/peds.2004-2368.](https://doi.org/10.1542/peds.2004-2368)*

The key exerpt that fueled the calculations goes as: **"'...we showed that the internal vehicle temperature can reach 117°F within 60 minutes, with 80% of the temperature rise occurring in the first 30 minutes. In general, after 60 minutes, one can expect an (\~)40°F increase in internal temperatures for ambient temperatures spanning 72 to 96°F...'"**
So, I exercised analytical flexibility to choose a number close to 40°F, and decided on "43.14" to account for internal car temperatures. Two examples of a calculation are as follows:

* *76 degrees Fahrenheit + 43.14 degrees Fahrenheit = 119 degrees Fahrenheit* 
* *92 degrees Fahrenheit + 43.14 degrees Fahrenheit = 135 degrees Fahrenheit*
  
  (All calculations is rounded for spreadsheet ease-of-access).

As for the "Minutes Shopping" column in the spreadsheet, this metric comes from Capital One Shopping's Research division in a report titled ["Grocery Shopping Statistics"](https://capitaloneshopping.com/research/grocery-shopping-statistics/). The report analyzes how in the United States of America, **"...grocery stores totaled $915.7 billion in 2025..."** and how **"The average American consumer visits the grocery store once every 4.4 days and spends 47 minutes shopping."**

#### Methods Used
Several applications were utilized in order to complete this project. A simple list is provided below.:
* [QGIS](https://www.qgis.org)
* [Libreoffice Calc](https://www.libreoffice.org)
* [Antares SQL](https://antares-sql.app)
* [DB Browser for SQLite](https://sqlitebrowser.org)
* [Google Earth Pro](https://www.google.com/earth/about/versions/) **Please note, this application will be discontinued on the 25th of June, 2027. Google recommends using the web version for spatial analysis.**
* [Tableau Public](https://public.tableau.com/app/discover)
* [THEIA IDE](https://theia-ide.org)

#### Temperature Data Source
All of the temperature data that fueled the analysis comes from the National Renewable Energy Labratory/National Labratory of the Rockies, through the website [Solar Story](https://solarstory.com/peak-sun-hours-calculator/) for better ease of access.

#### Visualization Previews
Some key findings during the visualization phase of the analysis are shown below. To see interactive versions of the visualizations, please refer to the associated [Tableau Public post](https://public.tableau.com/views/SolarArraysforMajorRetailersinChattanoogaTN/SolarArraysAnnualData?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
![Tableau Public visualizations depicting heat maps and line charts on outdoor and indoor car temperature](https://github.com/Vanadium-012/Chatt-Community-Solar/blob/main/Tableau%20Story%20and%20Slideshow/Tableau%20Visualizations/Community%20Solar%20AnalysisViz9.png)
![Total solar irradiance for each major retailer's parking lot space](https://github.com/Vanadium-012/Chatt-Community-Solar/blob/main/Tableau%20Story%20and%20Slideshow/Tableau%20Visualizations/Community%20Solar%20AnalysisViz4.png)
![Total solar irradiance for individual stores](https://github.com/Vanadium-012/Chatt-Community-Solar/blob/main/Tableau%20Story%20and%20Slideshow/Tableau%20Visualizations/Community%20Solar%20AnalysisViz1.png)


#### Spatial Analysis Process
Attached in this repository regarding solar canopies is a .docx file that goes over the methodology. Please refer to it for replicating this study. However, for ease-of-access, here is a numbered list of the process used for parking lot solar irradiance.
```
1.) Area-oriented data (square meters, kilometers, meters, square feet) comes from Google Earth Pro metadata in the “measurements” section by right-clicking a polygon, and right clicking Properties.

2.) The Panel Area is calculated by multiplying the Parking Lot Area by the Total Covered Area (e.g. 22247 x 0.80 = 1777.97.6).

3.) Panel Efficiency comes from the hypothetical that N-type panels are being used. These panels have a 21% base cell efficiency based on CleanEnergyReviews’ article on different solar panel types.

4.) System Losses are calculated based on data from SolarSME’s data on the loss percentage on key causes of system losses among different panels. As this project focuses on N-type back face solar panels, the key cause of energy loss is shading, with an assumed 12.05% energy loss.

5.) The temperature coefficient is determined by how, according to JoinSun, N-type panels have temperature coefficients of -0.24% - 0.32%. In the case of this project, -0.25% is used.

6.) The total sun hours per month are calculated from Solar Story. Its data comes from NREL.gov.
```
