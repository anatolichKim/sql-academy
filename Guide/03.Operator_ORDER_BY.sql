-- # Descending sort
-- For each individual payment, print the item number and the amount, sorted in descending order of this amount. 
-- The list of payments is in the Payments table.
-- To display the amount use sum alias.
SELECT good, (unit_price * amount) as sum FROM Payments ORDER BY sum DESC; 

-- # Multi column sort
-- Select the list of family members with second name Quincey in ascending sort by status and member_name columns.
SELECT * FROM FamilyMembers WHERE member_name LIKE "% Quincey" ORDER BY status, member_name;

