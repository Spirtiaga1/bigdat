-- Создайте таблицу logs типа Archive. 
use example;
create table logs (
Time datetime,
Tablen text,
PK int,
name text
) Engine=Archive;
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу 
-- logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
use example;
delimiter $$
CREATE TRIGGER catalogs_log after insert on catalogs 
for each row
BEGIN
insert into logs values(NOW(),'catalogs',NEW.id,NEW.name);
end $$
CREATE TRIGGER users_log after insert on users 
for each row
BEGIN
insert into logs values(NOW(),'users',NEW.id,NEW.name);
end $$
CREATE TRIGGER products_log after insert on users 
for each row
BEGIN
insert into logs values(NOW(),'products',NEW.id,NEW.name);
end $$
drop trigger users_log;
delimiter ;

