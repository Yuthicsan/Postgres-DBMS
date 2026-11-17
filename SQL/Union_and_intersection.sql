--union

select *
from products
order by price desc 
limit 4;

select *
from products
order by price/weight desc
limit 4;

--joining the both will result in 
(
	select *
	from products
	order by price desc 
	limit 4
)
union 
(
	select *
	from products
	order by price/weight desc
	limit 4
);



-- with duplicates
(
	select *
	from products
	order by price desc 
	limit 4
)

union all
(
	select *
	from products
	order by price/weight desc
	limit 4
);



--intersect and intersect all

(
	select *
	from products
	order by price desc 
	limit 4
)
intersect
(
	select *
	from products
	order by price/weight desc
	limit 4
);


(
	select *
	from products
	order by price desc 
	limit 4
)
intersect all
(
	select *
	from products
	order by price/weight desc
	limit 4
);


-- except

(
	select *
	from products
	order by price desc 
	limit 4
)
except 
(
	select *
	from products
	order by price/weight desc
	limit 4
);



--exercise 18
--(
--	select manufacturer 
--	from phones 
--	where price < 170
--)
--union
--(
--	select manufacturer
--	from phones
--	group by manufacturer
--	having count(*) > 2
--)
