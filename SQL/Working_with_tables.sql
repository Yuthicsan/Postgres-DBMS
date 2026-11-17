create table users(
	id serial primary key,
	username varchar(50)
);

insert into users (username)
values
	('manahan93'),
	('pferrer'),
	('si93onis');
insert into users (username)
values
	('Yuthi');


select * from users;


create table photos(
	id serial primary key,
	url varchar(200),
	user_id integer references users(id)
);


insert into photos (url,user_id)
values
	('http://one.jpg',4);



SELECT * FROM photos;



insert into photos (url,user_id)
values
	('http://two.jpg',1),
	('http://25.jpg',1),
	('http://36.jpg',1),
	('http://754.jpg',2),
	('http://35.jpg',3),
	('http://256.jpg',4);



select * from photos where user_id = 4;

select url, username from photos 
join users on users.id = photos.user_id;



--exercise 8

--boat_id integer references boats(id)
--where boat_id = 1


--data consistency


insert into photos(url , user_id ) values ('http://5665',null);

drop table photos;
drop table users ;

--delete constrints
create table photos(
	id serial primary key,
	url varchar(200),
	user_id integer references users(id) on delete cascade 
);

create table photos(
	id serial primary key,
	url varchar(200),
	user_id integer references users(id) on delete set null  
);























