1757. Recyclable and Low Fat Products

Select product_id from Products
where low_fats like 'Y' and recyclable like 'Y'
Order by product_id asc;


584. Find Customer Referee

select name from customer
where referee_id is null or referee_id <>2
order by id;

595. Big Countries
SELECT name, population, area from World
where area >= 3000000 or population >= 25000000

1148. Article Views I
  
select distinct author_id as id from views where author_id = viewer_id
order by author_id asc;

1683. Invalid Tweets
  
select tweet_id from Tweets where length(content)>15;

178. Rank Scores
select
score,
dense_rank() over (order by score desc) as rank
from scores
