-- # INNER JOIN
-- Join the Class and Student_in_class tables using an inner join on the Class.id and Student_in_class.class fields. 
-- Print the class name (Class.name field) and student ID (Student_in_class.student field).
SELECT Class.name, Student_in_class.student FROM Class 
INNER JOIN Student_in_class ON Student_in_class.class = Class.id;


-- # Multi table INNER JOIN
-- Append the query from the previous assignment by adding another inner join to the Student table. 
-- Combine the Student_in_class.student and Student.id fields and print the student's name (first_name field) instead of the student ID.
SELECT Class.name, first_name FROM Class 
INNER JOIN Student_in_class ON Student_in_class.class = Class.id 
INNER JOIN Student ON Student.id = Student_in_class.student 
ORDER BY first_name

-- # Multi table INNER JOIN with filtration
-- Print the names of products that a family member with the "son" status bought. 
-- To get a selection, you need to join the Payments table with the FamilyMembers table for the family_member and member_id fields, and the Goods table for the good and good_id fields.
SELECT good_name FROM Goods 
JOIN Payments ON good = good_id 
JOIN FamilyMembers ON member_id = family_member 
WHERE FamilyMembers.status = 'son'

-- # INNER JOIN with grouping
-- Print the identifier (the room_id field) and the average rating of the room (the rating field, for display use the avg_score alias), based on reviews from the Reviews table.
-- This table is linked to Reservations (the table where you can get the room ID) by the reservation_id and Reservations.id fields.
SELECT room_id, AVG(rating) as avg_score FROM Reviews 
JOIN Reservations ON Reservations.id = reservation_id 
GROUP BY room_id 
ORDER BY avg_score DESC