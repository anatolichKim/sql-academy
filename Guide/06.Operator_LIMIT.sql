-- # Restricting entries from the beginning of the table
-- Sort the list of companies (Company table) by the name in ascending order and display first two records.
SELECT * FROM Company 
ORDER BY name LIMIT 2;

-- # Limit the number of offset entries
-- Print the beginning (start_pair field) and end (and_pair field) of the second and third sessions from the table Time pair.
SELECT start_pair, end_pair FROM Timepair 
LIMIT 1,2;