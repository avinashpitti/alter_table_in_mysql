create database avi;

use avi;

create table money(
id int primary key, 	# primary key restricts from entering duplicate key
first_name varchar(20),
last_name varchar(20),
daily_pay decimal(5,2)
);

alter table money
add phone_no int;

#alter table money
#rename column phone_no int to email varchar(20); # rename column doesn't support data type change

alter table money 
rename column phone_no to email; # First we should rename column

alter table money
modify column email varchar(30); # Then we should change data type

alter table money
drop column email;

insert into money
values
(1,"sachin","tendulkar",800),
(2,"virender","sehwag",999),
(3,"rahul","dravid",770),
(4,"sunil","gavaskar",850);

select * from money;

select * from money where daily_pay >800;

select * from money where daily_pay !=850;

alter table money
add column hire_date date;

update money
set hire_date="2022-01-19" where id=1;

update money
set hire_date="2024-10-10" where id=4;

select * from money;

select * from money
where hire_date is null;

select * from money
where hire_date is not null;


update money
set daily_pay=920 where id=4;

update money
set daily_pay=880 where id=1;

select * from money;

create table time(
my_date date,
my_time time,
my_datetime datetime
);

insert into time
values
(current_date(),current_time(),now());


select * from time;


