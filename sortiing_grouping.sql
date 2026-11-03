2356. Number of Unique Subjects Taught by Each Teacher
Easy

1141. User Activity for the Past 30 Days I
select
activity_date as day,
count(distinct user_id) as active_users 
from
Activity 
 where activity_date > '2019-07-27'::date - INTERVAL '30 days'
    AND activity_date <= '2019-07-27'::date
    and activity_type in ('open_session', 'end_session', 'scroll_down', 'send_message')
group by activity_date


1070. Product Sales Analysis III
/*using subquery*/
SELECT 
  product_id, 
  year AS first_year, 
  quantity, 
  price 
FROM 
  Sales 
WHERE 
  (product_id, year) IN (
    SELECT 
      product_id, 
      MIN(year) AS year 
    FROM 
      Sales 
    GROUP BY 
      product_id
  );
  

596. Classes With at Least 5 Students
Easy

1729. Find Followers Count
Easy

619. Biggest Single Number
Easy

1045. Customers Who Bought All Products
