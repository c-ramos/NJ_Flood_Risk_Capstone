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
**CHOICE OF MODEL***

SUPERVISED LEARNING-
Supervised learning deals with labeled data.
The reason to choose this is we have labeled data (njhome_floodsummary.csv)
We are Predicting 2011-2022 Precipitation(Anomaly_pct) vs House _Price drop
The Prediction is “Y” and “N”.
So its Binary Classification.

Decision  for binary classification Algorithms)
REGRESSION-regression is used to predict continuous variables
LOGISTIC REGRESSION-Logistic regression predicts binary outcomes, meaning that there are only two possible outcomes.
CLASSIFICATION-Classification, on the other hand, is used to predict discrete outcomes
The outcome, in this case, is whether the person will vote "Yes" or "No." The classification model's algorithms would attempt to learn patterns from the data, and if the model is successful, gain the ability to make accurate predictions for new voters.

1.DECISSION TREE
2.RANDOM FOREST(ENSEMBLE)


----------FINAL RUBRIC FINDINGS---------

The njhome_floodsummary csv was updated

and we got CURRENT ACCURACY SCORE for VARIOUS alogorithms-

by minimising/reframing on X_train.shape X = X = df [['CITY', 'ELEVATION', 'month', 'year', 'city_month_total_rain', 'Anomalypct', 'avghomeprice_month']]-7 columns -projected in Feature importance

by minimising/reframing on X_train.shape
X = X = df [['CITY', 'ELEVATION', 'month', 'year',
       'city_month_total_rain',
       'Anomalypct',
       'avghomeprice_month']]-7 columns -projected in Feature importance
       


1.LOGISTIC REGRESSION-0.5912408759124088

2.DECISION TREE-0.8029197080291971


3.RANDOM FOREST -0.8321167883211679 (Using the equation (TP + TN) / Total, we can determine our accuracy)- this gave more accuracy m The final algorithm for the project is RANDOM FOREST with highest accuracy.

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
