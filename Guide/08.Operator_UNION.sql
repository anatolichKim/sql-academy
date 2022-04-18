-- # Spending report 
-- CREATE a family cost report Quincey for the 3rd quarter of 2005. 
-- Sort IN ascending order member_name, THEN IN descending order of the costs field. 
-- The last line is the total for the entire family. 
-- To do this, under the column good_name, print the word "Total:", AND under costs - the total amount of all costs, leaving the first two fields empty. 
WITH report AS
(
	SELECT  member_name,
	        status,
	        good_name,
	        SUM(amount * unit_price) AS costs
	FROM FamilyMembers
	JOIN Payments
	ON Payments.family_member = FamilyMembers.member_id
	JOIN Goods
	ON Goods.good_id = Payments.good
	WHERE member_name LIKE "%Quincey"
	AND date < "2005-10-01"
	AND date > "2005-06-30"
	GROUP BY  payment_id
	ORDER BY member_name ASC,
	          costs DESC
)
SELECT  *
FROM report UNION
SELECT  member_name = NULL,
        status = NULL,
        "Total:",
        (
			SELECT  DISTINCT SUM(costs)
			FROM report 
		)
FROM report
