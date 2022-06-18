-- Creating tables for nj_flood_risk
CREATE TABLE cities (
     zipcode VARCHAR(5) NOT NULL,
     city VARCHAR(50) NOT NULL,
     county VARCHAR(30) NOT NULL,
     floodzone VARCHAR(2),
     latitude FLOAT,
     longitude FLOAT,
     PRIMARY KEY (zipcode),
     UNIQUE (zipcode)
);
CREATE TABLE rainfall (
	year INTEGER NOT NULL,
     jan FLOAT,
     feb FLOAT,
     mar FLOAT,
     apr FLOAT,
     may FLOAT,
     june FLOAT,
     july FLOAT,
     aug FLOAT,
     sep FLOAT,
     oct FLOAT,
     nov FLOAT,
     decem FLOAT,
     Q1_rain FLOAT,
     Q2_rain FLOAT,
     Q3_rain FLOAT,
     Q4_rain FLOAT,
     city VARCHAR(50) NOT NULL,
     PRIMARY KEY (year, city)
);
CREATE TABLE nj_home_price (
     zipcode VARCHAR(5) NOT NULL,
     city VARCHAR(50) NOT NULL,
     county VARCHAR(30) NOT NULL,
     year INTEGER NOT NULL,
     jan FLOAT,
     feb FLOAT,
     mar FLOAT,
     apr FLOAT,
     may FLOAT,
     june FLOAT,
     july FLOAT,
     aug FLOAT,
     sep FLOAT,
     oct FLOAT,
     nov FLOAT,
     decem FLOAT,
     Q1_avg_homeprice FLOAT,
     Q2_avg_homeprice FLOAT,
     Q3_avg_homeprice FLOAT,
     Q4_avg_homeprice FLOAT
);
 
