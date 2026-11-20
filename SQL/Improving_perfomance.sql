
show data_directory;



select oid , datname from pg_database;



select * from pg_class;



--Index
create index on users (username);



drop index users_username_idx;




explain analyse select *
from users
where username = 'Emil30'



select username, count(*)
from users
join tags on tags.user_id = users.id
group by username 
order by count(*) desc;




create view tags as (
	select id, created_at, user_id, post_id, 'photo_tag' as type from photo_tags
	union all
	select id, created_at, user_id, post_id, 'caption_tag' as type from caption_tags
);



select * from tags;



create view recent_posts as (
	select * from posts order by created_at desc limit 10
);


select * from recent_posts;




create or replace view recent_posts as (
	select * from posts order by created_at desc limit 15
);


drop view recent_posts;



select * from likes 
left join posts on posts.id = likes.post_id
left join comments on comments.id = likes.comment_id;




select 
	date_trnc('Week', coalesce(posts.created_at , comments.created_at)) as week
from likes 
left join posts on posts.id = likes.post_id
left join comments on comments.id = likes.comment_id;



select 
	date_trnc('Week', coalesce(posts.created_at , comments.created_at)) as week
from likes 
left join posts on posts.id = likes.post_id
left join comments on comments.id = likes.comment_id;
group by week
order by week 



create table accounts (
	id serial primary key,
	name varchar(20) not null,
	balance integer not null
);




insert into accounts (name , balance) values ('gia' , 100) , ('alyson' , 100);



select * from accounts;



begin;



update accounts
set balance = balance - 50 
where name = 'alyson';



update accounts
set balance = balance + 50 
where name = 'gia';



commit



 