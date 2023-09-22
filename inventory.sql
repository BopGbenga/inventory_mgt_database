create database inventory_management_db;
 
use inventory_management_db;

create table users(
id int ,
username varchar(200),
email varchar(40),
phone_no int,
user_type ENUM('Admin', 'customer'),
primary key (id)
);


create table admin(
id int primary key,
fullname varchar (30),
username varchar (30),
email varchar (30),
phone_no int,
users_id int,
FOREIGN KEY (users_id) REFERENCES users(id)
);

create table category(
id int,
name varchar (80),
primary key (id)
);

create table suppliers(
id int,
name varchar (20),
email varchar (30),
phone_no int ,
primary key (id)
);

create table product(
id int,
product_name varchar (30),
product_description varchar (200),
size varchar(20),
price int ,
category_id int,
foreign key (category_id) references category(id),
primary key (id)
);



create table items (
id int PRIMARY KEY ,
item_name varchar (30),
price int,
size varchar (20),
weight int,
category_id int
);
drop table admin;

create table  ORDERS (
id int PRIMARY KEY ,
user_id  int,
quantity int,
order_date datetime,
Item_id int,
FOREIGN KEY (item_id) References items(id)
);

create table customers (
id int primary key,
name varchar (30),
phone_no int,
email varchar (50),
user_type int,
foreign key (user_id) references users (id)
);

drop table admin;

create table suppliers_product (
id int primary key,
product_name varchar (15),
supplier_id int,
product_id int,
price int,
foreign key (supplier_id) references suppliers(id),
foreign key (product_id) references product (id)
);



-- inserting records into entities 

insert into users (id,username,email,phone_no,user_type) 
values ( 1,"john_son", "john23@gmail.com", 0399990,"customer") ;

insert into users (id,username,email,phone_no,user_type) 
values ( 2,"james", "james@gmail.com", 399440,"Admin") ;

insert into admin (id, fullname,username,email,phone_no,users_id )
value (1, "Agba olufemi", "Agba", "agba@gmail.com",899775, 2);

insert into category (id,name)
values ( 1, "Appliances");

insert into category  (id,name)
values (2, "fashion");

insert into suppliers(id,name,email,phone_no )
values(1,"olasco","ola@gmail.com",089048594);

insert into suppliers(id,name,email,phone_no )
values(2,"dan","dan@gmail.com",089045594);

insert into product (id,product_name,product_description,size,price,category_id)
values(1,"pressing_iron","The Binatone dry iron is the most ergonomic solution for ironing out the troubles of all homes.", "meduim", 20,1);

insert into product (id,product_name,product_description,size,price,category_id)
values (2,"shoes","very light shoe","small",50,2);

insert into items (id, item_name,price, size,weight,category_id)
values(1,"pressing-iron",30,"medium",2.5, 1);

insert into items (id, item_name,price, size,weight,category_id)
values(2,"fridges",30,"medium",3.5, 1);

insert into items (id, item_name,price, size,weight,category_id)
values(3,"polo",30,"large",3.5, 2);

insert into suppliers_product (id, product_name,supplier_id,product_id,price)
values (1, "sneakers",1, 2,400);

insert into suppliers_product (id, product_name,supplier_id,product_id,price)
values (2, "microwave",2, 1,400);

insert into customers (id, name,phone_no,email,user_id)
values(1,olusegun,9878584,"segun@gmail.com","customer");

insert into orders (id,user_id, quantity,order_date,item_id)
values(1, 1, 3, current_date(), 3);

-- getting records
select * from admin;
select * from product;

-- updating records;
update users
set username = "johnbull"
where id = 1 ;

-- delete records ;
delete from  admin
where id = 1;