-- loadflights.sql
-- Question 1 
-- Which destination in the flights database is the furtherest distance away, based on information in the flights database
SELECT 
    *
FROM
    flights
ORDER BY distance DESC
LIMIT 1;

-- Question 2
-- What are the different number of engines in the planes table; 
-- Foreach number of engines which aircraft have the greatest number of seats?
SELECT engines, count(*) FROM planes GROUP BY engines; 
SELECT * FROM planes WHERE engines = 1 ORDER by seats DESC LIMIT 1;
SELECT * FROM planes WHERE engines = 2 ORDER by seats DESC LIMIT 5;
SELECT * FROM planes WHERE engines = 3 ORDER by seats DESC LIMIT 2;
SELECT * FROM planes WHERE engines = 4 ORDER by seats DESC LIMIT 1;

-- Question 3
-- Show the total number of flights
SELECT COUNT(*) FROM flights; 

-- Question 4
-- Show the total number of flights by airline (carrier)
SELECT carrier, count(*) FROM flights GROUP BY carrier; 

-- Question 5
-- Show the total number of flights by airline (carrier) ordered by number of flights in descending order
SELECT carrier, count(*) FROM flights GROUP BY carrier ORDER by count(*) DESC; 

-- Question 6
-- Show only the top 5 airlines, by airline (carrier) ordered by number of flights in descending order
SELECT carrier, count(*) FROM flights GROUP BY carrier ORDER by count(*) DESC LIMIT 5; 

-- Question 7
-- Show only the top 5 airlines, by airline (carrier) by distance greater than 1000 miles ordered by number of flights in descending order
SELECT carrier, count(*) FROM flights WHERE distance > 1000 GROUP BY carrier ORDER by count(*) DESC LIMIT 5; 

-- Question 8
-- Which are the top 5 most popular origins and destinations by carrier during Dec 2013? 
SELECT carrier, origin, dest, count(*) FROM flights WHERE year=2013 AND month=12 GROUP BY carrier ORDER BY count(*) DESC LIMIT 5; 