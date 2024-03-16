
select *
from tasks t
where t.user_id = 1

select *
from tasks t 
where t.status_id = (select id from status where name = 'new');

update tasks
set status_id = (select id from status where name = 'completed')
where id = 19

select u.*
from users u 
where u.id not in (
	select t.user_id 
	from tasks t
)

insert into tasks (title, description, status_id, user_id)
values ('Create a report', 'Create a report of ... ', 1, 26)

select t.*
from tasks t 
where status_id <> (select id from status where name = 'completed');

delete from tasks 
where id = 2546

select u.*
from users u 
where u.email like 'bhansen@example.org'

update users 
set fullname = 'John Smith'
where id = 1000

select t.status_id, count(t.id) as count_of_tasks
from tasks t
group by t.status_id 

select t.*, u.email as user_email
from tasks t 
join users u on u.id = t.user_id
where u.email like '%@example.org'

select t.*
from tasks t 
where t.description is null 

select t.user_id, u.fullname, u.email, t.id as task_id, t.title, t.description, t.status_id  
from users u 
inner join tasks t on t.user_id = u.id 
where t.status_id = (select id from status where name = 'in progress');

select u.id, u.fullname, u.email, COUNT(t.id) as count_of_tasks
from users u 
left join tasks t on t.user_id = u.id 
group by u.id, u.fullname, u.email;
