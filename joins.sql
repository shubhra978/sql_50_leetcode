1378. Replace Employee ID With The Unique Identifier
select (EmployeeUNI.unique_id) as unique_id, (Employees.name) as name from Employees left join EmployeeUNI on Employees.id = EmployeeUNI.id; 

1068. Product Sales Analysis I
select Product.product_name, Sales.year, Sales.price from Sales left join Product on sales.product_id= Product.product_id

1581. Customer Who Visited but Did Not Make Any Transactions
select Visits.customer_id, Count(*) as count_no_trans from Visits left join Transactions on Visits.visit_id= Transactions.visit_id where Transactions.visit_id is null group by Visits.customer_id;

197. Rising Temperature
# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;

1661. Average Time of Process per Machine
# Write your MySQL query statement below
WITH ProcessTimes AS (
    SELECT 
        machine_id, 
        process_id, 
        MAX(CASE WHEN activity_type = 'end' THEN timestamp ELSE NULL END) - 
        MAX(CASE WHEN activity_type = 'start' THEN timestamp ELSE NULL END) AS process_time
    FROM Activity
    GROUP BY machine_id, process_id
)
SELECT 
    machine_id, 
    ROUND(AVG(process_time), 3) AS processing_time
FROM ProcessTimes
GROUP BY machine_id;

577. Employee Bonus
# Write your MySQL query statement below
select Employee.name, Bonus.bonus from Employee left join Bonus on Bonus.empId = Employee.empId
where Bonus.bonus < 1000 or Bonus.bonus is null;

1280. Students and Examinations
SELECT S.student_id, S.student_name, SJ.subject_name, 
       COUNT(E.subject_name) AS attended_exams
FROM Students S
CROSS JOIN Subjects SJ
LEFT JOIN Examinations E ON S.student_id = E.student_id AND SJ.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, SJ.subject_name
ORDER BY S.student_id, SJ.subject_name;

570. Managers with at Least 5 Direct Reports
select 
name
from employee
where id in (select managerid
from employee
group by managerid
having count(*)>=5) 
  
1934. Confirmation Rate
-- Write your PostgreSQL query statement below
select
s.user_id,
ROUND(
  COALESCE(
    COUNT(CASE WHEN c.action = 'confirmed' THEN 1 END) * 1.0 
    / NULLIF(COUNT(c.action), 0), 
    0
  ), 
  2
)as confirmation_rate
from Signups s
left join 
Confirmations c
on s.user_id = c.user_id
group by s.user_id 
