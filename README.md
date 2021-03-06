# stats
Data related to covid-19 and US health infrastructure

Ties together several data sources to provide insight on hospital bed gross availability based on geographic metrics of the user's choosing (i.e. State, City, 
County, or CBSA).

A Core Based Statistical Area (CBSA) is a U.S. geographic area defined by the Office of Management and Budget (OMB) that consists of one or more counties 
(or equivalents) anchored by an urban center of at least 10,000 people plus adjacent counties that are socioeconomically tied to the urban center by commuting. 

CBSA is available as a like-for-like comparison, as many published sources related to Covid-19 utilize CBSA as the delimiting geographic variable, so it is
important to be able to reference this data to bring a relevant healthcare infrastructure assessment to bear.

# Documents
uscities.csv :  Provides City, State, County, Population, and Density figures for 28,889 US locations.

USCitiesLatLonZip :  Provides City, State, Latitude, Longitude, and array of Zip Codes for cross-reference.

CityStateCountyCbsa.csv :  Provides a referencable list containing the City, State, County, and applicable CBSA code.

CBSA.csv :  Provides detailed geographic information sorted by CBSA code.

Hospitals.csv : Provides Hospital Name, City, State, and infrastructure metrics for 3,597 locations across the US.

# Sources
CBSA information prepared by U.S. Census Bureau, Population Division, based on Office of Management and Budget, March 2020 delineations <https://www.whitehouse.gov/wp-content/uploads/2020/03/Bulletin-20-01.pdf>.	

US City/State/County information provided by simplemaps.com under Creative Commons Attribution 4.0 license for non production uses.  <https://simplemaps.com/data/us-cities> .

Information related to individual hospitals retrieved from American Hospitals Directory, <https://www.ahd.com/state_statistics.html>

