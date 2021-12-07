create table PERSON_TYPE(
    id int primary key,
    name varchar(50)
);

create table PERSON(
    id int primary key,
	name varchar(50),
	surname varchar(50),
	fathername varchar(50),
	add_info varchar(255),
	wikiurl varchar(500),
	person_type int,
    constraint person_type 
		foreign key (person_type) references PERSON_TYPE(id) on delete cascade
);

create table PRIZE_TYPE(
    id int primary key,
    name varchar(50)
);

create table PRIZE(
    id int primary key,
	name varchar(50),

	prize_type int,
    constraint prize_type 
		foreign key (prize_type) references PRIZE_TYPE(id) on delete cascade
);


create table EVENT_TYPE(
    id int primary key,
    name varchar(50)
);

create table EVENT(
    id int primary key,
	name varchar(50),
	address varchar(150),
	eventdate date,
	eventtime timestamp,
	
	event_type int,
    constraint event_type
		foreign key (event_type) references EVENT_TYPE(id) on delete cascade,	
		
	person int,
    constraint person
		foreign key (person) references PERSON(id) on delete cascade,
	
	prize int,
    constraint prize
		foreign key (prize) references PRIZE(id) on delete cascade
	
);