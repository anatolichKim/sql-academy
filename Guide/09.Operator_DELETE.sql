-- # Deleting all records
-- Remove all records from Payments table, using operator DELETE.
DELETE 
FROM Payments

-- # Deletion with condition
-- Delete a record from the Goods table with the good_name field equal to "milk"
DELETE 
FROM Goods 
WHERE good_name="milk"

-- # Deletion with JOIN
-- Modify the query to remove the Goods that are of the delicacies type.
DELETE  Goods, 
        GoodTypes 
FROM Goods 
JOIN GoodTypes 
ON Goods.type = GoodTypes.good_type_id 
WHERE GoodTypes.good_type_name = "delicacies"