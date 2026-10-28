Employees Whose Manager Left the Company
select 
employee_id
from employees
where salary < 30000
and manager_id not in (select employee_id from employees)
order by employee_id


Exchange Seats
Solution
Medium

Movie Rating
Medium

Restaurant Growth
Medium

Friend Requests II: Who Has the Most Friends
Solution
Medium

Investments in 2016
Solution
Medium

Department Top Three Salaries
