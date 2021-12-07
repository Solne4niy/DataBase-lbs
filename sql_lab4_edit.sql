----------
insert into EVENT_TYPE values (1, 'event_type1');

insert all
    into EVENT_TYPE values (2, 'event_type2')
    into EVENT_TYPE values (3, 'event_type3')
    into EVENT_TYPE values (4, 'event_type4')
    into EVENT_TYPE values (5, 'event_type5')
	into EVENT_TYPE values (6, 'event_type6')
    into EVENT_TYPE values (7, 'event_type7')
select * from dual;

----------
create or replace directory data_load as 'D:\\load\\';
create table EVENT_TYPE_LOAD(
	id int,
    name varchar(50)
)
organization external(
    type ORACLE_LOADER
    default directory data_load
    access parameters(
        records delimited by newline
        nobadfile
        nologfile
        fields terminated by ','
        missing field values are null
    )
    location ('loading.txt')
);

insert into EVENT_TYPE select * from EVENT_TYPE_LOAD;
drop table EVENT_TYPE_LOAD;

----------
update EVENT_TYPE set name = 'update many' where id > 5;
update EVENT_TYPE set name = 'update one' where name = 'event_type2';

----------
delete from EVENT_TYPE where id = 3;