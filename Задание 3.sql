use example;
create table products (id serial, value int);
insert into products(value) values (0),(56),(0),(130),(57),(2),(0);
select * from products order by value=0,value;