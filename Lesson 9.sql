use example;
select * from orders where id=2;
-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1 LIMIT 1;
COMMIT;

-- Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
select * from products;
select * from catalogs;

create VIEW STORE as
(select pr.name as PROD, ct.name as CAT FROM products as pr
left join
catalogs as ct
on pr.catalog_id=ct.id);

Select * from STORE;

use VKDUMP;
-- создайте хранимую процедуру hello() которая будет возвращать приветствие в зависимости от текущего времени суток, с 06 до 12 - доброе утро, 
-- с 12до18 добрый день, с 18до00 добрый вечер , и 00до06 Доброй ночи.
DELIMITER //
CREATE FUNCTION hello()
RETURNS TINYTEXT NOT deterministic
BEGIN
DECLARE VREM INT;
set VREM= HOUR(NOW());
CASE 
WHEN (VREM>=6 AND VREM<12) THEN 
	RETURN "Доброе утро";
WHEN (VREM>=12 AND VREM<18) THEN 
	RETURN "Добрый день";
WHEN (VREM>=18 AND VREM<0) THEN 
	RETURN "Добрый вечер";
WHEN (VREM>=0 AND VREM<6) THEN
	RETURN "Доброй ночи";
END CASE;
END//
DELIMITER ;

select hello();
-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
--  Допустимо присутствие обоих полей или одно из них. 
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.
use example;
delimiter //
CREATE TRIGGER ZERO_INS before INSERT ON products
for each row begin
if new.name is null and new.description is null then 
signal sqlstate '45000'
set message_text = 'Нельзя, чтобы оба поля принимали нулевые значения';
end if;
end;
end //

CREATE TRIGGER ZERO_UPD before update ON products
for each row begin
if new.name is null and new.description is null then 
signal sqlstate '45000'
set message_text = 'Нельзя, чтобы оба поля принимали нулевые значения';
end if;
end;
end //
delimiter ;


