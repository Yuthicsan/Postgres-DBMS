-- where clause

select name , area from cities where area > 3000;

--comparison operators

select name , area from cities where area = 3000;

select name , area from cities where area > 3000;

select name , area from cities where area >= 3000;

select name , area from cities where area = 3000;

select name , area from cities where area <> 3000;

select name , area from cities where area != 3000;

select name , area from cities where area < 3000;

select name , area from cities where area <= 3000;

select name , area from cities where area BETWEEN 3000 AND 5000;

select name , area from cities where area NOT BETWEEN 3000 AND 5000;

select name , area from cities where area IN (3000, 4000, 5000);

select name , area from cities where area NOT IN (3000, 4000, 5000);

select name , area from cities where area not IN (3000, 4000, 5000) or name = 'Japan';

-- exercise 3

select name , price from phones where units_sold > 5000;

-- exercise 4

select name , manufacturer from phones 
where manufacturer = 'Apple' or manufacturer = 'Samsung';

-- exercise 5

select name , price * units_sold as total_revenue from phones where (price * units_sold) > 1000000;

-- updating records

update cities set population = 40000000 where name = 'Tokyo';

-- deleting records

delete from cities where name = 'Tokyo';

-- exercise 6

update phones set units_sold = 8543 where name = 'N8';
select * from phones;

-- exercise 7

delete from phones where manufacturer = 'Samsung';
select * from phones;

