Fix Names in a Table
Solution
Easy

Patients With a Condition
Solution
Easy

Delete Duplicate Emails
Solution
Easy

Second Highest Salary
  /*using subquery */
select max(salary) as SecondHighestSalary 
from employee
where 
salary < (select max(salary) from employee)

  /* using limit */
SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

Group Sold Products By The Date
Solution
Easy

List the Products Ordered in a Period
Easy

Find Users With Valid E-Mails
