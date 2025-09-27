# Write your MySQL query statement below
SELECT v.customer_id , count(v.visit_id) as count_no_trans
FROM Visits v
left JOIN Transactions t
ON v.visit_id = t.visit_id
where t.transaction_id is null
Group by v.customer_id 
