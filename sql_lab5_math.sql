create table PERSON_TYPE_1
    as select id, name from PERSON_TYPE
        where id <= 4;
        
create table PERSON_TYPE_2
    as select id, name from PERSON_TYPE
        where id > 2 and id < 7;



select * from PERSON_TYPE_1
    union select * from PERSON_TYPE_2;
    
select * from PERSON_TYPE_1
    union all select * from PERSON_TYPE_2;



select * from PERSON_TYPE_1
    intersect select * from PERSON_TYPE_2;
	
	
   
select * from PERSON_TYPE_1
    minus select * from PERSON_TYPE_2; 
    
	
	

select * from PERSON_TYPE_1, PERSON_TYPE_2;