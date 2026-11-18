
--Subquerie

select max(price)
from products 
where department = 'Toys';

select name , price
from products 
where price > 875


select name , price
from products 
where price > (
	select max(price)
	from products 
	where department = 'Toys'
);


select name , price , (select max(price)
	from products)
from products 

--exercise 19
--select name , price ,price/(select max(price) from phones) as price_ratio
--from phones


select name , price_weight_ratio
from(select name ,price/ weight as price_weight_ratio from products) as p
where price_weight_ratio > 15


select user_id, count(*)
from orders 
group by orders.user_id;



select p.order_count
from(select user_id, count(*) as order_count from orders group by user_id)as p





--exercise 20
--select max(avg_price) as max_average_price 
--from (
--    select avg(price) as avg_price
--    from phones
--    group by manufacturer
--) as p




select user_id
from orders 
where product_id = 3


select first_name
from userss 
join(
	select user_id
	from orders 
	where product_id = 3
)as o
on o.user_id = userss.id



select id 
from products p 
where price / weight > 50;


select id 
from orders 
where product_id in (
	select id from products p where price / weight > 50
);


-- execrise 21
--select name , price    
--from phones
--where price >(
--    select price 
--    from phones
--    where name = 'S5620 Monte'
--);
 



-- execrise 22
--select name
--from phones
--where price > all (select price from phones where manufacturer = 'Samsung')



select name , department , price
from products as p1 
where p1.price = (
	select max(price) from products as p2 where p1.department = p2.department
) 
order by department


select name ,(
	select count(*) from orders as o1 where o1.product_id =p1.id
) as num_orders
from products as p1



select (select max(price) from products);



--execrise 23
--select (select max(price) from phones) as max_price, 
--	(select min(price) from phones) as min_price, 
--	(select avg(price) from phones)as avg_price


