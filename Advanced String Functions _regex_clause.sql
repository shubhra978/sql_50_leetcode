Fix Names in a Table
Solution
Easy

Patients With a Condition
Solution
Easy

Delete Duplicate Emails
WITH email_rank_cte AS (
    SELECT 
        id,
        ROW_NUMBER() OVER (PARTITION BY email ORDER BY id ASC) AS email_rank
    FROM person
)
DELETE FROM person
USING email_rank_cte
WHERE person.id = email_rank_cte.id
  AND email_rank_cte.email_rank > 1;

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
