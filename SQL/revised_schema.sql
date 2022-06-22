-- Creating tables for nj_flood_risk
CREATE TABLE per_city_rainfall (
    city VARCHAR(50) NOT NULL,
    lat FLOAT NOT NULL,
    long FLOAT NOT NULL,
    elevation FLOAT NOT NULL,
    month INTEGER NOT NULL,
	year INTEGER NOT NULL,
    city_max_day_rain FLOAT NOT NULL,
    city_month_total_rain FLOAT NOT NULL,
    city_avg_daily_rain FLOAT NOT NULL,
    anomalypctFLOAT NOT NULL,
    anomaly CHAR(1) NOT NULL,
     PRIMARY KEY (city, month, year)
);
CREATE TABLE njhomeprice (
     zipcode VARCHAR(5) NOT NULL,
     state CHAR(2) NOT NULL,
     city VARCHAR(50) NOT NULL,
     county VARCHAR(30) NOT NULL,
     sizerank INTEGER NOT NULL ,
     date DATE NOT NULL,
     month INTEGER NOT NULL,
     year INTEGER NOT NULL,
     avg_home_price FLOAT NOT NULL,
     price_drop CHAR(1)
);
CREATE TABLE njhome_floodsummary (
    city VARCHAR(50) NOT NULL,
    lat FLOAT NOT NULL,
    long FLOAT NOT NULL,
    elevation FLOAT NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL,
    city_max_day_rain FLOAT NOT NULL,
    city_month_total_rain FLOAT NOT NULL,
    city_avg_daily_rain FLOAT NOT NULL,
    anomalypct FLOAT NOT NULL,
    anomaly CHAR(1) NOT NULL,
    county VARCHAR(30) NOT NULL,
    sizerank INTEGER NOT NULL,
    eom_date DATE NOT NULL,
    avg_home_price FLOAT NOT NULL,
    price_drop CHAR(1)
);