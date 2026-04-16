CREATE 	DATABASE  IF NOT EXISTS cars;
USE cars;

-- Q)1. READ All  DATA--
SELECT * FROM car_dekho;

-- Q2. Total Cars : To Get a Count of Total Cars. order by them according to oldest car first--
SELECT name , year,count(*)
FROM car_dekho
GROUP BY name,year
ORDER BY year ;

-- Q)3. The manager asked the employee how many cars available in 2023--
SELECT  count(*) as total_cars
FROM car_dekho
WHERE year =2023;

-- Q)4. The manager asked the employee how many cars available in 2020,21,22--
SELECT year, count(*) as total_cars
FROM car_dekho
WHERE year IN (2020,2021,2022)
GROUP BY year;

-- Q)5. Client asked me to print the total of all cars by year . --
SELECT year,COUNT(name)
FROM car_dekho
GROUP BY year;

-- Q)6. Client ask to car dealer agent how many diesel cars will there be in 2017--
SELECT year , count(name) as Diesel_cars
FROM car_dekho
WHERE year =2017 AND fuel="Diesel"
GROUP BY year;
 
 -- Q)7. Client ask to car dealer agent how many petrol  cars will there be in 2018--
 SELECT year,count(name) as petrol_cars
 FROM car_dekho
 WHERE year=2018  and fuel ="Petrol"
 GROUP BY year;
 
 -- Q)8. print all the cars innclude petrol , diesel , cng in all years--
 SELECT year,count(name) as all_cars
 FROM car_dekho
 WHERE fuel IN ("Petrol","Diesel","CNG")
 GROUP BY year;
 
 -- Q)9. Which year had more than 100 cars give year and count of cars--
 SELECT year , COUNT(name) 
 FROM car_dekho
 GROUP BY year
 HAVING COUNT(name) >100;
 
 -- Q)10. The manager said to the employee All cars count details Between 2015 and 2023 --
 SELEct year,count(name)
 FROM car_dekho
 WHERE year BETWEEN 2015 and 2023
  GROUP BY year
  ORDER BY year;
  
  -- Q)11. The manager said to the employee all cars details between 2015 to 2023 not only name and year give full detail --
  SELECT * FROM car_dekho 
  WHERE YEAR BETWEEN 2015 AND 2023
  ORDER BY year ;
  
  
 
 



