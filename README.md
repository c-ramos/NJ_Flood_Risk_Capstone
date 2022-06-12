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


![Resources/ERD_NJ_Flood_Risk.png](https://github.com/c-ramos/NJ_Flood_Risk_Capstone/Resources/ERD_NJ_Flood_Risk.png)

### Database Tables
*  Cities_Along_Raritan.csv:   Lists cities that lie along the banks of the Raritan River in NJ.
*  Storm_Data.csv:	Lists storm events, average rainfall by month, zipcode
*  RealEstate_Values.csv:   Lists RealEstate Home Values for single family homes in cities along the Raritan River.
							The price is the average list price of single family homes by zipcode, month, year. 
*  HomeValue_FloodSummary.csv:  Provisional data based on the earlier 3 database tables to be used by the machine
								learning model to predict if the list price of the average single family home will
								drop based on average rainfall, zipcode, city, county.
