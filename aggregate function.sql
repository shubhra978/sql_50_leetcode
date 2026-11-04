620. Not Boring Movies
    
select
id,
movie,
description,
rating
from cinema
where id % 2 !=0 and description != 'boring'
order by rating desc

1251. Average Selling Price
    
WITH price_sol_cte AS (
    SELECT
        p.product_id,
        p.price,
        u.units,
        (p.price * u.units) AS revenue
    FROM Prices p
    LEFT JOIN UnitsSold u
        ON p.product_id = u.product_id
        AND u.purchase_date BETWEEN p.start_date AND p.end_date
)
SELECT
    product_id,
    COALESCE(
        ROUND(SUM(revenue)::NUMERIC / NULLIF(SUM(units), 0), 2),
        0
    ) AS average_price
FROM price_sol_cte
GROUP BY product_id;

1075. Project Employees I
    
select p.project_id,round(avg(e.experience_years ),2) as average_years 
 from project p
 left join employee e
 on p.employee_id = e.employee_id
 group by project_id

1633. Percentage of Users Attended a Contest
    
select
r.contest_id,
 ROUND(COUNT(u.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
from users u
left join register r
on u.user_id = r.user_id
where contest_id is not null
group by r.contest_id
order by ROUND(COUNT(u.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) desc, contest_id 

1211. Queries Quality and Percentage
    
select query_name,
round(AVG((rating * 1.0) / NULLIF(position, 0)),2) AS quality ,
round(sum(case when rating < 3 then 1.0 else 0.0 end) * 100 /nullif(count(rating),0),2) as poor_query_percentage
from queries
group by query_name 

1193. Monthly Transactions I
    
select
TO_CHAR(trans_date ,'YYYY-MM') as month,
country,
count(amount) as trans_count,
sum(case when state = 'approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state = 'approved' then amount else 0 end) as approved_total_amount 
from
Transactions
group by TO_CHAR(trans_date ,'YYYY-MM') , country


1174. Immediate Food Delivery II

550. Game Play Analysis IV
