#--1. Відсортувати особистостей по прізвищу
select surname, name, fathername
from person
order by surname asc;

#--2. 3 найстарші особистості
select surname, name, fathername, datebd
from person
order by datebd asc
limit 3;

#--3. топ-3 особистостей по кількістю подій
select CONCAT(person.surname, ' ', person.name, ' ', person.fathername) as 'Людина',
Count(events.id) as 'Кількість'
from person join events on events.person = person.id
group by CONCAT(person.surname, ' ', person.name, ' ', person.fathername)
order by Count(events.id) desc
limit 3;

#--4. Особистості відсортовані за ім'ям та прізвищем
select surname, name
from person
order by name asc, surname asc;

#--5. Список подій, відсортовані за датою та часом
select name, address, eventdate, eventtime
from events
order by eventdate desc, eventtime asc;

#--6. Кількість нагород кожної особистості
select CONCAT(person.surname, ' ', person.name, ' ', person.fathername) as 'Людина',
Count(prize.id) as 'Кількість'
from person join events on events.person = person.id join prize on prize.id = events.prize
group by CONCAT(person.surname, ' ', person.name, ' ', person.fathername);

#--7. Список подій та їх тип, впорядкований за типом події
select events.name, events.address, event_type.name as 'тип', events.eventdate, events.eventtime
from events join event_type on event_type.id = events.event_type
order by event_type.name desc;

#--8. Особистості, впорядковані за датою народження
select surname, name, fathername, datebd
from person
order by datebd desc;