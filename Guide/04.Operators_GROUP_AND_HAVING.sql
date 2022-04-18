-- # Grouping and sorting
-- Count the number of students in each class and also sort them in descending order of the number of students. 
-- You can get the student's belonging to a specific class from the Student_in_class table. 
-- As a result, display the class identifier (class field) and the number of students in this class.
-- Use the count alias to display the number of students.
SELECT class, COUNT(student) AS count 
FROM Student_in_class 
GROUP BY class 
ORDER BY count DESC;

-- # Aggregation functions MIN and MAX
-- Find the oldest family members (use birthday field) among all existing families based on their status (status field). 
-- Display the status and date of birth.
-- Use the birthday alias to display the date of birth.
SELECT status, MIN(birthday) AS birthday 
FROM FamilyMembers 
GROUP BY status 
ORDER BY birthday DESC; 

-- # Aggregation function AVG
-- Get the average flight time for each aircraft model. 
-- Output the plane field and the average flight time in seconds.
-- Use the time alias to display the time.
-- Use TIMESTAMPDIFF(second, time_out, time_in) function to get the time difference in seconds between two dates.
SELECT plane, AVG(TIMESTAMPDIFF(second, time_out, time_in)) AS time 
FROM Trip 
GROUP BY plane;

-- # Selecting using multiple aggregation functions
-- Output the room ID (field room_id), the average cost for one day of rent (the price field, use the avg_price alias for display), and the number of reservations for this room (use the count alias). 
-- Sort the result in descending order, first by the number of reservations, and then by the average cost.
SELECT room_id, AVG(price) AS avg_price, COUNT(id) AS count 
FROM Reservations 
GROUP BY room_id 
ORDER BY count DESC, avg_price DESC;

-- # HAVING
-- Supplement the query from the previous task, leaving only those rooms in the sample whose average rental price exceeds 150 units.
SELECT room_id, AVG(price) AS avg_price, COUNT(id) AS count 
FROM Reservations 
GROUP BY room_id 
HAVING avg_price > 150 
ORDER BY count DESC, avg_price DESC;

