NJ Flood Risk Capstone-(New Brunswick-IDA)

1.*exploring the data
bar chart -x -months
y -axis rainfall/precipitation- in tablue-for 2021

2.scatter plot-
x-axis-a
average monthly rainfall for the 2 yrs
yaxis -average house price 

color dots by cities (for now only (new bruswick)
highlight -september -flood circle make diff shape 


MACHINE LEARNING
STROM/RAIN FLOOD PREDICTION ALONG RARITAN RIVER MODEL ( REFLECTING FLOOD (y /n) and HOUSE PRICE CHANGE)
SUPERVISED MACHINE LEARNING

Columns include:
EVENT
ZIPCODES
CITIES
YEAR
RAINFALL(avg) 
STROM(input)
FLOODZONE-(this is output -flood y/n)
AVERAGE HOUSEPRICE(label)-this column will show changes
PRICE VARIATION (outcome)




I have uploaded in my branch my NEWBRUNSWICKMLFINAL.CSV  (this columns will remain  for final) now i run ML for year 2020-mid 2022

MODEL -
SUPERVISED
1.classification
2.Linear Regression
 x1-rainfall
x2-flood ,x3-strom
y-AVERAGE HOUSE PRICE VARIATION- ( predict change)
3.Ensemble learning-
Random Forest

The main concept will be: from inches of rain and strom data the zipcode areas flood or 
not data['Price variation "HIGH-greaterthan 50,000","LOW-lesser than 50,000"].
replace(['YES','NO'],[1,0],inplace=True)

y_predict = will be printing('Predicted Price variation') in those zip codes printing('Actual PRICE VARIATION')in those zip codes 
the column of HOME VALUE will show the price change.











