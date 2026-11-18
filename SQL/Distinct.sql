
-- Distinct

select distinct department from products;


select count(distinct department) from products;


--execrise 24
--select count(distinct manufacturer) from phones


-- Greatest val from list

select greatest(200, 10,20,1000);


select name , weight, greatest(30 , 2 * weight)
from products;



-- least val from list


select least(200, 10,20,1000);

select name , price, least(price * 0.5 , 400)
from products;



select 
	name,
	price,
	case 
		when price > 600 then 'high'
		when price > 300 then 'medium'
		else 'cheap'
	end 
from products	


