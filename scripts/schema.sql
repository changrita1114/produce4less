-- Create tables

SELECT * FROM apple_country
SELECT * FROM apple_price

CREATE TABLE apple_country (
  commodity TEXT,
  country TEXT,
  millions_of_tonnes INT,
  PRIMARY KEY (commodity)
);

CREATE TABLE apple_price (
  date TEXT,
  region TEXT,
  commodity TEXT,
  variety TEXT,
  unit TEXT,
  weighted_avg_price INT,
  PRIMARY KEY (commodity)
);

-- Queries
-- Join tables on commodity
SELECT apple_country.commodity, apple_country.country, apple_country.millions_of_tonnes, apple_price.weighted_avg_price
FROM apple_country
JOIN apple_price
ON apple_country.commodity = apple_price.commodity;

