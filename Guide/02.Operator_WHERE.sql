-- # Simple filtering on numbers
-- Pick good IDs (column good) from Payments table, whose price is greater than 2000. 
-- You can find good price in unit_price column.
SELECT  good
FROM Payments
WHERE unit_price > 2000;
    
-- # Simple filtering on strings
-- SELECT family members names (column member_name) from FamilyMembers table, whose status (column status) equals "father".
SELECT  member_name
FROM FamilyMembers
WHERE status = 'father' 

-- # Logical OR
-- Select family members name (column member_name) from FamilyMembers table, whose status (column status) equals "father".
SELECT  member_name,
        birthday
FROM FamilyMembers
WHERE status = 'father'
      or status = 'mother';

-- # Logical ANDSELECT member_name FROM FamilyMembers WHERE member_name LIKE "% Quincey";ch have both a kitchen (поле has_kitchen) and the Internet (поле has_internet). Write the request, that satisfies the condition and displays all columns from Rooms table.
-- Availability is indicated by 1 or true, and absence is indicated by 0 or false.
SELECT  *
FROM Rooms
WHERE has_kitchen = 1
      AND NOT has_internet = 0;

-- # WHERE BETWEEN
-- Select room reservations (columns room_id, start_date, end_date) from Reservations table, whose total price (column total) is between 500 and 1200.
SELECT  room_id,
        start_date,
        end_date
FROM Reservations
WHERE total BETWEEN 500 AND 1200;

-- # Filtering by string pattern
-- Select all family members whose second name is "Quincey".
SELECT  member_name
FROM FamilyMembers
WHERE member_name LIKE "% Quincey";