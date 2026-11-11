-- Creating table 

CREATE TABLE cities (
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

-- Insert data

INSERT INTO cities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 38505000, 8223);

INSERT INTO cities (name, country, population, area)
VALUES 
	('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);


-- Selecting data

select * from cities;

select name , country from cities;

select name , name, population , country from cities;

-- exercise 1

select * from movies;

-- math operations

select name , population / area as population_density from cities;

select name , population + area  from  cities;

select name , population - area from cities;

select name , population * area from cities;

select name , population ^ area from cities; -- exponentiation

select name , population |/ area from cities; -- square root

select name , population @ area from cities; -- absolute value

select name , population % area from cities;  -- modulo

--exercise 2

select name , price * units_sold as revenue from phones;

-- string operations and functions

select name || country from cities;

select name || ', ' || country from cities;

select name || ', ' || country as location from cities;


select name , country , concat(name, ' is a city in ', country) as description from cities;

select name , country , length(name) as name_length from cities;

select name , country , lower(name) as lower_name from cities;

select name , country , upper(name) as upper_name from cities;