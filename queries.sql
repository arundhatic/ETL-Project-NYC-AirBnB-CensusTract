
SELECT * FROM airbnb_data;

SELECT * FROM census_data;

SELECT airbnb_data.censustract, airbnb_data.id, airbnb_data.name, airbnb_data.host_id, airbnb_data.host_name, airbnb_data.neighbourhood_group,
airbnb_data.neighbourhood, airbnb_data.latitude, airbnb_data.longitude, airbnb_data.room_type, airbnb_data.price, census_data.county,
census_data.borough, census_data.black, census_data.native, census_data.asian, census_data.income, census_data.incomepercap, census_data.poverty,
census_data.employed, census_data.unemployment
FROM airbnb_data
JOIN census_data
ON airbnb_data.censustract = census_data.censustract;


SELECT airbnb_data.censustract, airbnb_data.id, airbnb_data.name, airbnb_data.host_id, airbnb_data.host_name, airbnb_data.neighbourhood_group,
airbnb_data.neighbourhood, airbnb_data.latitude, airbnb_data.longitude, airbnb_data.room_type, airbnb_data.price, census_data.county,
census_data.borough, census_data.black, census_data.native, census_data.asian, census_data.income, census_data.incomepercap, census_data.poverty,
census_data.employed, census_data.unemployment
FROM airbnb_data
INNER JOIN census_data
ON airbnb_data.censustract = census_data.censustract;

SELECT airbnb_data.censustract, AVG (airbnb_data.price) AS "airbnb_avg_price", AVG(census_data.income) AS "average_income"
FROM airbnb_data
JOIN census_data
ON airbnb_data.censustract = census_data.censustract
GROUP BY airbnb_data.censustract
ORDER BY airbnb_data.censustract DESC;

