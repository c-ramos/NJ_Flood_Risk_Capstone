# Precipitation: Impact on Real Estate Values

## Overview of Group 5 Capstone
*Analyzing property sales data of homes along the Raritan River and historical precipitation data to evaluate how property values are affected*

## Roles
*	Square/Github Repository: Carolina Ramos 
*	Triangle/ML: Archana Jadhav
*	Circle/Database: Mae Gaudio

## Selected Topic
**The Impact of Precipitation on Home Value for Single Family Homes**

Group 5 selected this topic because we wanted to explore the relationship, if any, between storm events and central NJ residential real estate values.  

## Questions to Answer with Data
*   What are the towns surrounding the Raritan River in NJ? 
*   What are the recorded rain totals (in inches) for these towns?
*   Do major storm events, such as Hurricanes Ida and Sandy, affect home value before and after?

## Dashboard
Please see the dashboard [here](https://public.tableau.com/views/Group5_Dashboard_16569394107950/Group5_Dashboard?:language=en-US&:display_count=n&:origin=viz_share_link).

## Presentation
Please see the Segment 4 presentation here: [Segment 3](https://github.com/c-ramos/NJ_Flood_Risk_Capstone/blob/main/Group5_Presentation-Segment3_update.pdf). 

## Database

### Entity Relationship Diagram

![Resources/ERD_NJ_Flood_Risk.png](https://github.com/c-ramos/NJ_Flood_Risk_Capstone/blob/main/Resources/ERD_NJ_Flood_Risk.png)

### Database Tables
*  Cities_Along_Raritan.csv:   Lists cities that lie along the banks of the Raritan River in NJ.
*  Storm_Data.csv:	Lists storm events, average rainfall by month, zipcode
*  RealEstate_Values.csv:   Lists RealEstate Home Values for single family homes in cities along the Raritan River.
							The price is the average list price of single family homes by zipcode, month, year. 
*  HomeValue_FloodSummary.csv:  Provisional data based on the earlier 3 database tables to be used by the machine
								learning model to predict if the list price of the average single family home will
								drop based on average rainfall, zipcode, city, county.

## Analysis and Visualization of Historical Data
### Rainfall/Anomaly
### Anomaly Heatmap
### Average Home Price

## Machine Learning Model
- STROM/RAIN FLOOD PREDICTION ALONG RARITAN RIVER MODEL ( REFLECTING FLOOD (y /n) and HOUSE PRICE CHANGE)
- SUPERVISED MACHINE LEARNING

Columns include:
1.	zipcodes
2.	YEAR-storm event
3.	Annual rainfall/storm(input)
4.	floodzone-(this is output -flood y/n)
5.	Avg single home Price.this column will show changes
6.	Price Drop (outcome) 


steps use-(SUPERVISED  MACHINE LEARNING ) 
1.	classification
2.	logistic regression
3. 	ensembling

the main concept will be: from inches of rain and strom data the zipcode areas flood or not 
data['Price Drop'].replace(['YES','NO'],[1,0],inplace=True)

y_predict = will be 
printing('Predicted drop in price') in those zip codes
printing('Actual drop of price')in those zip codes
the column of singlehome will show the price change
