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

![Precip_NBBridgewater_CR](https://user-images.githubusercontent.com/96538067/177642294-6f4679c9-13aa-489c-bd36-dc54972c4284.png)

![PrecipAnomaly_NBBridgewater_CR](https://user-images.githubusercontent.com/96538067/177642234-af7ac023-8a02-4d5a-8f68-177a52e63651.png)

*Analysis focuses on major storm events like Hurricanes Sandy and Ida*
![Images/AvgSalesPrice_CR.png](https://github.com/c-ramos/NJ_Flood_Risk_Capstone/blob/245209e625ed1848d49aa468af83c704699c1d71/Images/AvgSalesPrice_CR.png)

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




the main concept will be: from inches of rain and strom data the zipcode areas flood or not 
data['Price Drop'].replace(['YES','NO'],[1,0],inplace=True)

y_predict = will be 
printing('Predicted drop in price') in those zip codes
printing('Actual drop of price')in those zip codes
the column of singlehome will show the price change


--FINAL RUBRIC FINDINGS-

The njhome_floodsummary csv was updated

and we got CURRENT ACCURACY SCORE for VARIOUS alogorithms-

by minimising/reframing on X_train.shape
X = X = df [['CITY', 'ELEVATION', 'month', 'year',
       'city_month_total_rain',
       'Anomalypct',
       'avghomeprice_month']]-7 columns -projected in Feature importance
       
1.LOGISTIC REGRESSION-0.5912408759124088

2.DECISION TREE-0.8029197080291971

3.RANDOM FOREST -0.8321167883211679 (Using the equation (TP + TN) / Total, we can determine our accuracy)- this gave more accuracy m
The final algorithm for the project is RANDOM FOREST with highest accuracy.

-------RANDOM FOREST OVER DECISION TREE--------

DECISION TREE-

-A decision tree is a tree-like model of decisions along with possible outcomes.

-There is always a scope for overfitting, caused due to the presence of variance.
-The results are not accurate.


RANDOM FOREST-

-A classification algorithm consisting of many decision trees combined to get a more accurate result as compared to a single tree.

-Random forest algorithm avoids and prevents overfitting by using multiple trees.

-This gives accurate and precise results.

SO RANDOM FOREST BEST FOR THIS MODEL TO PREDICT PRICEDROP

VISUALIZATION -TABLEAU- 

https://public.tableau.com/views/FinalDashboard_16571266071880/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link

