	-- Отредактировал данные в таблице friendship_statues, добавив при этом статус rejected;
truncate friendship_statuses;
insert into friendship_statuses values (default,"Friends"),(default,"Company friends"), (default,"School friends"),(default,"Best friends"),(default,"Rejected");
select * from friendship_statuses;
-- подправил коммюнити юзерсов
select * from communities_users;

-- Таблица communities_users
-- is_banned Забанен (да/нет)
-- is_admin Наделен администраторскими правами (да/нет)

DESC communities_users;
ALTER TABLE communities_users ADD column is_banned BOOLEAN AFTER user_id;
ALTER TABLE communities_users ADD column is_admin BOOLEAN AFTER user_id;

UPDATE communities_users SET is_banned = TRUE WHERE user_id IN (8, 7, 13);
UPDATE communities_users SET is_admin = TRUE WHERE user_id IN (46, 72, 100, 53, 72,81,42,17);

select * from messages;
-- Таблица messages
-- is_readed Прочитано (да/нет)
-- Header Заголовок сообщения
-- Media_attached_id Прикрепленные файлы
DESC messages;
-- is_readed то же самое что is_delivered
ALTER TABLE messages ADD COLUMN header VARCHAR(255) AFTER to_user_id;
-- Заполним
UPDATE messages SET header = SUBSTRING(body, 1, 50);

ALTER TABLE messages ADD column attached_media_id INT UNSIGNED AFTER body;
-- Заполним
UPDATE messages SET attached_media_id = (
  SELECT id FROM media WHERE user_id = from_user_id LIMIT 1
);

-- 4. По структуре - думаю создание уникального ключа для переписок ускорит работу БД

-- Есть поле id
DESC messages;
-- Возможно имелось ввиду создание индексов


-- 5. Возможно я бы еще создал таблицу, показывающую степень родства между пользователями.
-- По полям:user_id и степень родства

CREATE TABLE relations (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  relative_id INT UNSIGNED NOT NULL,
  relation_status_id INT UNSIGNED NOT NULL
);

CREATE TABLE relation_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO relation_statuses (name) VALUES 
  ('son'),
  ('daughter'),
  ('mother'),
  ('father'),
  ('wife'),
  ('husband')
;
truncate relation_statuses;
select * from relations;
INSERT INTO relations 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 6)) 
  FROM users;
select * from relations;
-- лайки
create table likes (
-- айди лайка
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 -- айди медиа, с таблицы медиа, может повторяться
 media_id INT UNSIGNED NOT NULL,
 -- кто лайкнул, с таблицы юзерсов, так же может повторяться
 user_id int unsigned not null,
 -- дата лайка
 liked_at datetime
 

);
-- заполняем таблицу лайков
select * from likes;
insert into likes
	select
		id,
		floor(1+(RAND()*100)),
		floor(1+(RAND()*100)),
        NOW()
	from media;
    














