   
    use VKDUMP;
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
Select CONCAT(U.first_name, ' ',U.last_name), RES.Total from users as U
Right JOIN
(select MES.from_user_id, MES.Total from 
(select from_user_id, count(from_user_id) as Total from messages where to_user_id=52 group by from_user_id) as MES
JOIN
(select * from friendship where friend_id=52 or user_id=52) as FR
on FR.user_id=MES.from_user_id) as RES
on U.id=RES.from_user_id
order by RES.Total DEsc Limit 1;

-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
select UZRZ.FIO, UZRZ.birthday, L.likes from
(select U.id, CONCAT(U.first_name, ' ', U.last_name) as FIO, P.birthday from 
users as U 
join 
profiles as P on P.user_id=U.id) as UZRZ
right join 
(select user_id, count(target_id) as likes from likes group by user_id) as L
on UZRZ.id=L.user_id order by UZRZ.birthday DESC LIMIT 10;


-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

select P.sex, COUNT(L.target_id) from profiles as P
right join likes as L on P.user_id=L.target_id
group by P.sex;

-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

select U.id,CONCAT(first_name, ' ', last_name) as FIO, (L.likes+M.fil+MSG.mes) as Overall_activity from users as U
LEFT JOIN 
(select user_id, COUNT(user_id) as likes from likes group by user_id) as L
on U.id=L.user_id
LEFT JOIN
(select user_id, COUNT(user_id) as fil from media group by user_id) as M
on U.id=M.user_id
Left JOIN 
(select from_user_id, COUNT(from_user_id) as mes from messages group by from_user_id) AS MSG
ON U.id=MSG.from_user_id
order by Overall_activity
LIMIT 10;



