-- 1. Print the names of all airline passengers ever served
SELECT  name 
FROM Passenger;

-- 2. Print the names of all airlines
SELECT  name 
FROM Company;

-- 3. Print all trips made from Moscow
SELECT  * 
FROM Trip 
WHERE town_from = 'Moscow';

-- 4. Print the names of people that end in "man"
SELECT  name 
FROM Passenger 
WHERE name LIKE "%man";

-- 5. Print the number of trips completed on TU-134
SELECT  count(id) AS count 
FROM Trip 
WHERE plane = "TU-134";

-- 6. Which companies have flown on Boeing
SELECT  DISTINCT name 
FROM Company 
JOIN Trip 
ON Trip.company = Company.id 
WHERE plane = "Boeing"

-- 7. Display all the names of aircraft that you can fly to Moscow
SELECT  DISTINCT plane 
FROM Trip 
WHERE town_to = "Moscow"

-- 8. What cities can I fly to from Paris and how long will it take?
SELECT  town_to, 
        SEC_TO_TIME(TIMESTAMPDIFF(second, time_out, time_in)) AS flight_time 
FROM Trip  
WHERE town_from = "Paris" 
GROUP BY id

-- 9. What companies organize flights from Vladivostok?
SELECT  name 
FROM Company 
JOIN Trip 
ON Trip.company = Company.id 
WHERE Trip.town_from = "Vladivostok"

-- 10. Print trips made from 10 a.m. to 14 p.m. on January 1, 1900.
SELECT  * 
FROM Trip 
WHERE time_out >= "1900-01-01 10:00:00" AND 
      time_out <= "1900-01-01 14:00:00" 
ORDER BY time_out