# NJ Flood Risk Capstone

# Overview

## Roles
*	Square/Github Repository: Carolina
*	Triangle/ML: Archana
*	Circle/Database: Mae 

## Selected Topic
**The Impact of Flooding on Home Value for Single Family Homes**
In this analysis, the group will use property sales data from past storm events (Hurricane Ida and Hurricane Sandy) along with maps of flood risks to estimate how property values were affected.

## Questions to Answer with the Data
*   How much rain (in inches) causes flooding in towns surrounding the Raritan River in NJ? 
*   Do major storm events, such as Hurricanes Ida and Sany, affect home value before and after?

## Communications Protocol 
Team members used Slack to communicate changes with one another. The team member responsible for the Github Repository reviewed pull requests, left comments if necessary, and approved/merged requests. 

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

## Machine Learning
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

by minimising/reframing on X_train.shape X = X = df [['CITY', 'ELEVATION', 'month', 'year', 'city_month_total_rain', 'Anomalypct', 'avghomeprice_month']]-7 columns -projected in Feature importance

1.LOGISTIC REGRESSION-0.5912408759124088

2.DECISION TREE-0.8029197080291971

3.RANDOM FOREST -0.8321167883211679 (Using the equation (TP + TN) / Total, we can determine our accuracy)- this gave more accuracy m The final algorithm for the project is RANDOM FOREST with highest accuracy.

-------RANDOM FOREST OVER DECISION TREE--------

DECISION TREE-

-A decision tree is a tree-like model of decisions along with possible outcomes.

-There is always a scope for overfitting, caused due to the presence of variance. -The results are not accurate.

RANDOM FOREST-

-A classification algorithm consisting of many decision trees combined to get a more accurate result as compared to a single tree.

-Random forest algorithm avoids and prevents overfitting by using multiple trees.

-This gives accurate and precise results.

SO RANDOM FOREST BEST FOR THIS MODEL TO PREDICT PRICEDROP

VISUALIZATION -TABLEAU-

https://public.tableau.com/views/FinalDashboard_16571266071880/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link 
