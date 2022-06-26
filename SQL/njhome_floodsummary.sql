-- Clear njhome_floodsummary
delete from njhome_floodsummary;
-- Join rainfall and homeprice file to 
-- Create summary file for ML and Tableau
insert into njhome_floodsummary
select pcr.city, pcr.lat, pcr.long, pcr.elevation, pcr.month, pcr.year, 
pcr.city_max_day_rain, pcr.city_month_total_rain, pcr.city_avg_daily_rain, 
pcr.anomalypct, pcr.anomaly,
njh.county, njh.sizerank,
njh.date, njh.avg_home_price, njh.price_drop
from per_city_rainfall pcr, njhomeprice njh
where pcr.city = njh.city
and pcr.month = njh.month
and pcr.year = njh.year;
