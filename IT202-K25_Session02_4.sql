-- Bảng orders:
-- order_id => int => primary key
-- order_date => datetime => default = ngày hiện tại
-- total_amount => decimal(10,2) => not null
-- customer_id => int => foreign key

create table customers (
    customer_id int primary key ,
    full_name varchar(100) not null,
    email nvarchar(100) not null,
    age int check (age >= 0)
);

create table orders (
    order_id int primary key,
    order_date datetime default (getdate()),
    total_amount decimal(10,2) not null,
    customer_id int not null,
    foreign key (customer_id) references customers (customer_id)
);