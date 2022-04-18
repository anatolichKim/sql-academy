-- Pick name field from Passenger table.
SELECT name FROM Passenger;

-- Pick member_id, member_name and status fields from FamilyMembers table.
SELECT member_id, member_name, status FROM FamilyMembers;

-- Select all columns from Payments table.
SELECT * FROM Payments;

-- Complete the request below to see the list of passengers. As you can see Bruce Willis was here twice (at the beginning and at the end of the list).
-- Your task is to get a list of unique passenger names by modifying the proposed request.

SELECT DISTINCT name FROM Passenger;