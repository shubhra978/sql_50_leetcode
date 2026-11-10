
The Number of Employees Which Report to Each Employee
SELECT 
    m.employee_id, 
    m.name, 
    COUNT(e.employee_id) AS reports_count, 
    ROUND(AVG(e.age)) AS average_age
FROM Employees m
JOIN Employees e ON m.employee_id = e.reports_to
GROUP BY m.employee_id, m.name
ORDER BY m.employee_id;

Primary Department for Each Employee
Solution
Easy

Triangle Judgement
Solution
Easy

Consecutive Numbers
Solution
Medium

Product Price at a Given Date
Solution
Medium

Last Person to Fit in the Bus
Medium

Count Salary Categories
