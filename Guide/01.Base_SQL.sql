-- # Selecting by single column
-- Pick name field from Passenger table.
SELECT  name
FROM Passenger;

-- # Selecting by multiple columns
-- Pick member_id, member_name and status fields from FamilyMembers table.
SELECT  member_id,
        member_name,
        status
FROM FamilyMembers;

-- # Selecting all columns
-- Select all columns from Payments table.
SELECT  *
FROM Payments;
    
-- # Selecting unique rows
-- Complete the request below to see the list of passengers.
-- Your task is to get a list of unique passenger names by modifying the proposed request.
SELECT  DISTINCT name
FROM Passenger;