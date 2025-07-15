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

create table driving_license(
id int auto_increment primary key, # primary key can't be null and must be unique
# auto_increment : Automatically increases numeric value by 1 when inserting new rows. Usually used with primary key.
f_name varchar(20) not null, # you can't have a null value.
l_name varchar(20) not null,
email_id varchar(30) unique, # Used when you want no duplicates 
phone_no varchar(15) unique); # we can have more than one unique values but primary key should be only one.

insert into driving_license(f_name,l_name,email_id,phone_no)
values
("avinash","pitti","avinash123@gmail.com","6305577885"),
("amar","yadav","amaryadav12@gmail.com","8741235783"),
("rakesh","sharma","rakesh222@gmail.com","7373737373");

insert into driving_license(f_name,l_name,email_id,phone_no)
values
("srinivas","nani","srinivas321@gmail.com","7823419919");

# While doing if you enter any duplicate entries or miss the column name which is not null it shows error and it moves to the next id.

insert into driving_license(f_name,l_name,email_id,phone_no)
values
("vinod","kumar","vinod777@gmail.com","7823419910");

select * from driving_license;



create table products(
product_id int,
product_name varchar(40),
price decimal(5,2)
);

alter table products
add constraint
unique(product_name);

insert into products
values
(100,"hamburger",3.99),
(101,"fries",1.89),
(102,"soda",1.00),
(103,"icecream",1.49);
#(104,"fries",1.75) if we give this it shows duplicate entry due to unique keyword.

alter table products
modify price decimal(4,2) not null;

# insert into products(product_id,product_name)
# values
# (104,"pizza"); 	# It shows error because column can't be null.

insert into products
values
(104,"pizza",0); # It accepts zero. It is not a null value.

select * from products;

create table customers(
customer_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);

insert into customers(first_name,last_name)
values
("Fred","Fish"),
("Larry","Lobster"),
("Bubble","Bass");

select * from customers;

create table transactions(
transaction_id int auto_increment primary key,
amount decimal(5,2),
customer_id int,
# you can see foreign key under table transactions foreign keys like transactions_ibfk_1
foreign key(customer_id) references customers(customer_id) 
);

alter table transactions
auto_increment =1000;

insert into transactions(amount,customer_id)
values
(4.99,3),
(2.89,2),
(3.38,3),
(4.99,1);

select * from transactions;

select * from customers;

# delete from customers where customer_id=3; # can't delete or update a parent row. A foreign key constraint fails.

insert into transactions(amount,customer_id)
values
(1.00,null);

select * from customers;

insert into customers(first_name,last_name)
values
("Poppy","Puff");

select * from customers;

select * from transactions;




