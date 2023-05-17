1)
     start Transaction ;
    insert into students values ("aaa@gmail.com","male","1999-5-16","ahmed","kamel","NULL");
    insert into exam  values ("aaa@gmail.com","oop","2202-12-30","90");
     commit;
     
2)
    select examdata from exam;
   select CAST(19991405 AS DATE);
   
3)
     select fname,TIMESTAMPDIFF(YEAR, birthdate , CURDATE()) AS age from students ;
     
4)
      select fname,round(examscore , 2) from students,exam
      where students.email=exam.stuemail ;
      
5)
     select concat(fname," ",lname," ",birthdate) from students;

6)
     insert into students values ("fady@gmail.com","male","1999-5-16","fady","kamel","NULL");
     insert into exam  values ("fady@gmail.com","oop",now(),"58");
7)
     CREATE or replace FUNCTION hellow (s CHAR(20))
     RETURNS CHAR(50) 
     DETERMINISTIC
	 RETURN CONCAT('Hello, ',s,'!'); 
     select hello("abdo");
     
8)  
     DELIMITER //
	 CREATE FUNCTION mul(num1 int , num2 int)
     RETURNS int
	 DETERMINISTIC
     BEGIN
	 return num1 * num2;
     END // DELIMITER ;
     select mul(3,5);
	
9)  
    DELIMITER // 
    CREATE  PROCEDURE lab3 (IN studentemail varchar(100), IN exemail varchar(100))
    Begin
      
      select email,examscore from students,exam 
      where  students.email=exam.stuemail and email = studentemail and stuemail=exemail  ;
    end // 
    DELIMITER ;
     
      call lab3("fady@gmail.com","fady@gmail.com");
      
10)
     DELIMITER // 
    CREATE  PROCEDURE lab10 (IN examID int)
    Begin
      
      select email,fname,examscore from students,exam 
      where  students.email=exam.stuemail and  examid=examID and examscore < 50   ;
    end // 
    DELIMITER ;
    call lab10(1);
  
11) 
     DELIMITER // 
    CREATE  PROCEDURE lab11 (IN subjectname varchar(100))
    Begin
         
         select name,max(examscore) from subjects,exam
         where subjects.name=exam.subname and name=subjectname;
      
    end // 
    DELIMITER ;
    call lab11("oop");
    
12)
     
     create table Deleted_Students like students;
     
13)
       DELIMITER // 
       create trigger Deleted_Students_insert before delete 
       on students 
       for each row
	   insert into Deleted_Students  (email,gender,birthdate,fname,lname,contactinfo) 
       values (old.email,old.gender,old.birthdate,old.fname,old.lname,old.contactinfo)
       //
       DELIMITER ;
       
14)
      create table Backup_students like students;
      
       DELIMITER // 
       create trigger backup_student after insert 
       on students 
       for each row
	   insert into Backup_students (email,gender,birthdate,fname,lname,contactinfo) 
       values (new.email,new.gender,new.birthdate,new.fname,new.lname,new.contactinfo)
       //
       DELIMITER ;
       
       insert into students values ("shady@gmail.com","male","2005-5-16","shady","kamel","NULL");
       
15)

create table students_log_insert (id int  auto_increment primary key ,
 description varchar(40), time  datetime);
create table students_log_update (id int  auto_increment primary key ,
 description varchar(40), time  datetime);
 
    DELIMITER // 
    create trigger students_log_insert_time after insert 
    on students
	for each row
	insert into students_log_insert (description, time) values ('insert', now())
    //
    DELIMITER ;
    
  DELIMITER // 
    create trigger students_log_update_time after update 
    on students
	for each row
	insert into students_log_update (description, time) values ('update', now())
    //
    DELIMITER ;
    
insert into students values ("mina@gmail.com","male","2020-5-16","mina","mina","NULL");
update students
set birthdate = "2016-6-10"
where email="magdy@gmail.com";

16) 
    
    mysqldump --databases itistudents > mysqldump.sql;

17)
     mysqldump -u abdo  -h localhost  itistudents students > dumpfilestudent.sql ;
      
18)
     mysql lab < mysqldump.sql ;





