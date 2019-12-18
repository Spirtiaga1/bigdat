-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select distinct
U.id,
U.name 
from 
users as U
RIGHT JOIN
orders as O
on
U.id=O.user_id ;

-- Выведите список товаров products и разделов catalogs, который соответствует товару.
select pr.name as Продукт, ct.name as Товар
from 
products as pr
JOIN
catalogs as ct
on pr.catalog_id=ct.id;

-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.
select * from flights;

select
V.ID,
IZ.FROM,
V.TO
from
(select
fl.id as ID,
c.name as 'FROM'
from 
cities as c
RIGHT JOIN
flights as fl
on c.label=fl.IZ
order by fl.id) as IZ
JOIN
(select
fl.id as ID,
c.name as 'TO'
from 
cities as c
RIGHT JOIN
flights as fl
on c.label=fl.v
order by fl.id) as V
on IZ.id=V.id
order by V.ID;





