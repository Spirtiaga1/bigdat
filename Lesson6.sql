-- 1. Из всех друзей этого пользователя 33 найти того, кто больше всех с ним общалсяa
-- ВРОДЕ НЕ БЫЛО ПРОБЛЕМ
use vk;
select 
from_user_id,
count(to_user_id) as TOTAL 
from messages where to_user_id=33 and from_user_id in (select friend_id from friendship where status_id in (select id from friendship_statuses where id!=5  and user_id=33))
 group by from_user_id order by TOTAL DESC LIMIT 1;

 -- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
 -- НЕ ПОНЯЛ, КАК ОТДЕЛИТЬ ТОЛЬКО 10, ПОЛУЧИЛОСЬ ТОЛЬКО ПО УСЛОВИЮ СДЕЛАТЬ
select 
count(id)
-- count(liked_id),
from likes
where user_id in (select user_id from profiles where TIMESTAMPDIFF(YEAR, birthday, NOW())>19 order by TIMESTAMPDIFF(YEAR, birthday, NOW()));
 
 -- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
 --  СМОГ ВЫВЕСТИ, НО НЕ СМОГ ПОНЯТЬ КАК СРАВНИТЬ В ЗАПРОСЕ
(select
'Man', 
 count(id) from likes
 where user_id in (select user_id from profiles where sex='m'))
 UNION
(select 
'Woman',
 count(id) from likes
 where user_id in (select user_id from profiles where sex='f'));
 
 -- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
 -- Я ПРИДУМАЛ ТОЛЬКО 4
 select MIN(updated_at) from users;
 select * from communities order by name desc;
select * from media;
select
id,
updated_at,
concat(first_name, ' ', last_name) FIO 
from users
where id in (
(select id from users where updated_at=(select MIN(updated_at) from users)), -- тот, кто не обновлят статус давно
(select distinct user_id from friendship where requested_ad=(select min(requested_ad) from friendship)), -- тот, кто давно не отправлял запрос на дружбу
-- select user_id from likes where id=(select id from likes where liked_at=(select  max(liked_at) from likes))
(select user_id from media where updated_at in (select MIN(updated_at) from media)) -- тот, кто давно не обновляет медиатеку
);

