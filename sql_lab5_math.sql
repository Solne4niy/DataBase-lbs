create table EVENT_TYPE_1
    as select id, name from EVENT_TYPE
        where id <= 4;
        
create table EVENT_TYPE_2
    as select id, name from EVENT_TYPE
        where id > 2 and id < 7;



select * from EVENT_TYPE_1
    union select * from EVENT_TYPE_2;
    
select * from EVENT_TYPE_1
    union all select * from EVENT_TYPE_2;



select * from EVENT_TYPE_1
    intersect select * from EVENT_TYPE_2;
	
	
   
select * from EVENT_TYPE_1
    minus select * from EVENT_TYPE_2; 
    
	
	

select * from EVENT_TYPE_1, EVENT_TYPE_2;
