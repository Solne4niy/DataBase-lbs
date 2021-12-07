--1
alter table PERSON
    drop constraint person_type;
   
--2
alter table PERSON
    drop column surname;
	
alter table PERSON
    modify person_type int not null;

--3
alter table PERSON
    rename column wikiurl to wiki;

--4
alter table PERSON
    add url int;
alter table PERSON 
    add constraint constr unique (url, wiki);
    
--5
alter table PRIZE
    drop constraint prize_type;
alter table PRIZE
    add constraint prize_type 
			foreign key (prize_type) references PRIZE_TYPE(id)