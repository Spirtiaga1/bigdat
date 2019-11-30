desc userz;
select * from userz;
-- Добавил в таблицу два поля
alter table userz add column created_at datetime default now();
alter table userz add column updated_at datetime default now
-- Заполнил два поля
update userz set created_at=NOW();
update userz set updated_at=NOW();
-- Спецом поменял на варчар, чтобы было как в задании
alter table userz modify column created_at VARCHAR(100);
alter table userz modify column updated_at VARCHAR(100);

-- Добавил тестовый столбец с типом варчар и внес в него столбец креатед_ад неполный, как в задании чтобы
alter table userz add column test_hard varchar(100);
update userz set test_hard=substring(created_at,1,16);

-- Исправил на нужный формат и перевел в формат датавремя
update userz set test_hard=concat(test_hard,':00');
alter table userz modify column test_hard datetime;