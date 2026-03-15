Query 1:
SELECT City, AVG(AQI) as Avg_AQI 
FROM city_day 
WHERE AQI != '' 
GROUP BY City 
ORDER BY Avg_AQI DESC;

Query 2:
SELECT City, MAX(AQI) as Max_AQI 
FROM city_day 
WHERE AQI != '' 
GROUP BY City 
ORDER BY Max_AQI DESC 
LIMIT 10;

Query 3:
SELECT SUBSTRING(Date, 1, 4) as Year, 
AVG(AQI) as Avg_AQI 
FROM city_day 
WHERE AQI != '' 
GROUP BY Year 
ORDER BY Year;

Query 4:
SELECT 
AVG(CAST(PM2_5 AS FLOAT)) as Avg_PM2_5,
AVG(CAST(PM10 AS FLOAT)) as Avg_PM10,
AVG(CAST(NO2 AS FLOAT)) as Avg_NO2,
AVG(CAST(SO2 AS FLOAT)) as Avg_SO2,
AVG(CAST(CO AS FLOAT)) as Avg_CO
FROM city_day
WHERE PM2_5 != '';

Query 5:
SELECT City, AVG(CAST(AQI AS FLOAT)) as Avg_AQI
FROM city_day
WHERE AQI != ''
GROUP BY City
ORDER BY Avg_AQI ASC
LIMIT 10;

Query 6:
SELECT SUBSTRING(Date,6,2) as Month,
AVG(CAST(AQI AS FLOAT)) as Avg_AQI
FROM city_day
WHERE AQI != ''
GROUP BY Month
ORDER BY Month;

Query 7:
SELECT AQI_Bucket, COUNT(*) as Count
FROM city_day
WHERE AQI_Bucket != ''
GROUP BY AQI_Bucket
ORDER BY Count DESC;

Query 8:
SELECT City, 
SUBSTRING(Date,1,4) as Year,
AVG(CAST(AQI AS FLOAT)) as Avg_AQI
FROM city_day
WHERE AQI != ''
GROUP BY City, Year
ORDER BY City, Year;