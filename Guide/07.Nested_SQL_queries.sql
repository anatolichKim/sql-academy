-- # Scalar subqueries
-- Print the number of flights for each passenger represented in the Passenger table. 
-- The list of flights is in the Pass_in_trip table.
-- As a result, output the number of flights (use the alias count) and the passenger's name.
SELECT 
    (SELECT COUNT(trip) FROM Pass_in_trip 
        WHERE Passenger.id = Pass_in_trip.passenger
    ) AS count, name 
FROM Passenger     
ORDER BY count DESC;

-- # Column subqueries with IN clause
-- Display the names of goods from the Goods table (field good_name) that have never been purchased by any of the family members (Payments).
SELECT good_name FROM Goods 
WHERE good_id NOT IN 
    (SELECT good 
     FROM Payments 
     JOIN FamilyMembers ON FamilyMembers.member_id = Payments.family_member 
     ORDER BY good
    );

-- # Row subqueries
-- List the rooms (all fields, the table Rooms), which according to their convenience (has_tv, has_internet, has_kitchen, has_air_con) matches room ID "11".
SELECT * FROM Rooms 
WHERE (has_tv, has_internet, has_kitchen, has_air_con) = 
    (SELECT has_tv, has_internet, has_kitchen, has_air_con 
     FROM Rooms 
     WHERE id = 11
    );