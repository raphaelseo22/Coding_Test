# Write your MySQL query statement below
SELECT b.unique_id as unique_id, a.name as name
FROM Employees as a LEFT JOIN EMployeeUNI as b ON a.id = b.id