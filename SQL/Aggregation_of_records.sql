--group by
select user_id
from comments
group by user_id;


select max(id)
from comments;


select min(id)
from comments;


select sum(id)
from comments;


select avg(id)
from comments;


select count(id)
from comments;


select user_id , count(id) as num_comments_created
from comments
group by user_id;


select user_id , sum(id)
from comments
group by user_id;


select count(*)
from photos;

select user_id , count(id) as num_comments_created
from comments
group by user_id;



select photo_id , sum(id)
from comments
group by photo_id;


-- exercise 12
--select author_id , count(*)
--from books
--group by author_id;


-- exercise 13
--select name , count(*)
--from books
--join authors on authors.id = books.author_id
--group by name


select photo_id , count(*)
from comments
where photo_id < 3
group by photo_id
having count(*) > 2;



select user_id , count(*)
from comments
where photo_id = 1 or photo_id = 2
group by user_id
having count(*) > 2;



select user_id , count(*)
from comments
where photo_id < 50
group by user_id
having count(*) > 20



 -- exercise 14
--select manufacturer , sum(price * units_sold)
--from phones
--group by manufacturer
--having sum(price * units_sold) > 2000000

