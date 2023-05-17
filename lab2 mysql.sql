select * from students;

1)
alter table students
add column gender enum('male', 'female');

2)
alter table students
add column birthdate date ;
 
3)
   alter table students
   drop name
   
    alter table students
    add column fname varchar(20) ;
    
     alter table students
     add column lname varchar(20) ;
     
5)
     alter table stubentphone
    add constraint stubentphone_fk
    foreign key (stuemail)
    references students(email)
    on delete cascade ;  
    
    
    alter table stubentphone
    add constraint stubentphone_fk
    foreign key (stuemail)
    references students(email)
    on delete cascade ;  
     
      alter table stubentphone
      drop constraint stubentphone_ibfk_1 ;
6)
      update  students set 
      gender="female",
	  birthdate="1997-11-9",
      fname="naglaa",
      lname="mohamed",
      contactinfo="{email:'nag@gmail.com',address:'meni'}" where email="naglaa@gmail.com";
     
  7)    
     select * from students
     
  8)
        select * from students where gender="male";
 9)
       select count(fname) from students  where gender="female";
    
 10)   select * from students where birthdate < "1992-10-01";
 
 11)     select * from students where birthdate < "1991-10-01" and gender="male";
    
 12)      select  name,maxscore from subjects order by maxscore;
 
 13)     select name from subjects where maxscore = ( select max(maxscore) from subjects);
     
 14)     select fname from students where fname like 'A%';
     
15)       select count(fname) from students where fname="mohamed";

16)       select gender , count(fname)  from students where gender="male"
		 union 
		  select gender , count(fname)  from students where gender="female";
          
17)     select fname from students  
              group by fname
            having count(fname) >= 2;
            
            
      
18)     select fname,examscore,name from students
        inner join exam
        on(students.email = exam.stuemail )
        inner join subjects
        on ( exam.subname = subjects.name);
        
19)  
    delete from students where fname in  ( select fname from students
        inner join exam
        on(students.email = exam.stuemail )
          where examscore < 50);
          
          
          
          insert into students (email,fname) values ("qwe@gamil.com","mohamed");
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
