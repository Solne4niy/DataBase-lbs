#--1. Кількість особистостей
select Count(id)
from person;

#--2. Кількість подій
select Count(id)
from events;

#--3. Кількість особистостей з однаковим ім'ям
select name, Count(id)
from person
group by name;

#--4. Наймолодша особистість
select surname, name, fathername, datebd
from person
where datebd = (select Max(datebd) from person);

#--5. Особистість, яка має найбільшу кількість нагород
select CONCAT(person.surname, ' ', person.name, ' ', person.fathername), Count(prize.id)
from person join events on events.person = person.id join prize on prize.id = events.prize
group by CONCAT(person.surname, ' ', person.name, ' ', person.fathername)
order by Count(prize.id) DESC
limit 1;