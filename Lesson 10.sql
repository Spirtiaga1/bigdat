-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
use VKDUMP;
create UNIQUE index users_email_UI on users(email);
create UNIQUE index users_phone_UI on users(phone);
create index hometown_profiles on profiles(hometown);

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый пожилой пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
use VKDUMP;
use vk;
select
C.name as "Имя группы",
COUNT(CU.user_id) over ()/count(C.id) over() as "Ср.кол-во пользователей в группах",
MAX(P.birthday) OVER W AS "YOUNG",
MIN(P.birthday) OVER W As "OLD",
COUNT(CU.user_id) OVER W AS "USERS IN COMMUNITY",
COUNT(U.id) OVER () AS "USERS IN SYSTEM",
ROUND(COUNT(CU.user_id) OVER W/COUNT(U.id) OVER ()*100,2) AS "%%"
from communities_users as CU
JOIN
communities as C
on C.id=CU.community_id
JOIN
profiles as P
on P.user_id=CU.user_id
JOIN
users as U 
on
U.id=CU.user_id
WINDOW W AS (PARTITION BY C.name)
