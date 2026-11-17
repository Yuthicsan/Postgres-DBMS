--sorting


select *
from products
order by price desc;

select *
from products
order by price asc;

select *
from products
order by price;

--two variation

select *
from products
order by name;

select *
from products
order by name desc;

--sorting with to col
select *
from products
order by price , weight;

select *
from products
order by price , weight desc;


select *
from products
offset 30;

select *
from products
limit 5;

select *
from products
order by price 
limit 5
offset 1;\


select *
from products
order by price desc
limit 5
offset 1;


--exercise 17

--select name
--from phones
--order by price desc
--limit 2
--offset 1;

