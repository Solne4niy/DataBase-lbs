#--1. проекція таблиці відомих людей
create or replace view view1 as select distinct surname, name, fathername, add_info, wikiurl from person;   
select * from view1;

#--2. проекція відомих людей у яких прізвище починаєтся на К
create or replace view view2 as select distinct surname, name, fathername, add_info, wikiurl from person
where surname like 'К%';   
select * from view2;

#--3. селекція відомих людей у яких немає додаткової інформації
select surname, name, fathername, add_info from person
    where add_info is null;

#--4. Запит на виконання натурального з’єднання у будь-яких таблицях вашої БД.
#відома людина та її тип
select person.surname, person.name, person.fathername, person_type.name as 'Тип', person.add_info
from person, person_type
where person.person_type = person_type.id;

#--5. Запит на виконання умовного з’єднання для таблиць вашої БД
#--студенти, у яких немає інформації про батьків та їх група
select person.surname, person.name, person.fathername, person.add_info, person_type.name as 'Тип'
from person, person_type
where person.person_type = person_type.id and person.add_info is null;