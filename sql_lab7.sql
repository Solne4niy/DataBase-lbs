#--1. Люди у яких день народження цього місяця
select surname, name, fathername, datebd from person
where Month(datebd) = Month(CURRENT_DATE()); 

#--2. Люди, у яких прізвище починаєтся на В
select surname, name, fathername from person
    where surname like 'В%';   

#--3. Люди, які народились осіню
select surname, name, fathername, datebd from person
where Month(datebd) between 9 and 11;

#--4. 2 наймолодші особистості
select surname, name, fathername, datebd
from person
order by datebd desc
limit 2;

#--5. Люди, у яких прізвище та ім`я починаются Б літеру
select surname, name, fathername from person
    where surname like 'Б%' and name like 'Б%';   

#--6. Люди у яких день народження сьогодні
select surname, name, fathername, datebd from person
where Month(datebd) = Month(CURRENT_DATE()) and Day(datebd) = Day(CURRENT_DATE()); 
    
#--7. Кількість людей, які народились певного року
select Year(datebd), Count(*)
from person 
group by Year(datebd);

#--8. Наймолодша особистість
select surname, name, fathername, datebd from person
order by datebd desc
limit 1;

#--9. Кількість особистостей с певним типом
select person_type.name, Count(person.id)
from person right join person_type on person_type.id = person.person_type
group by person_type.name;

#--10. Кількість подій, у яких приймав участь кожна особистість
select CONCAT(person.surname, ' ', person.name, ' ', person.fathername) as 'Людина', Count(events.id) as 'Кількість'
from person join events on events.person = person.id
group by CONCAT(person.surname, ' ', person.name, ' ', person.fathername);