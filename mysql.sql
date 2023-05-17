--- client -- service ===> serice is ruuning

---> mysql ? 

-- mysql -h localhost -P 3306 -u root -p 
-- enterpassword: 

--- mysql command  must end with ; or \g 

/***
    this a c style comment 

*/

/**********
    Operations ---> DBMS 
    DDL ---> Data definition lang.  (create , drop,alter ,trancate, rename )
    DML ---> Data manipulation lang. ---> insert , update ,delete . call , merge
    DRL ----> Data Retreival lang. ----> Select 
    DCL ---> Data control lang. (Grant , revoke )
    TCL ----> Begin , commit , savepoint , rollback 

*************/


--- create user ? ===> DDL ? --> data about users ,,


create user 'osassuit'@'localhost' identified by 'Iti123456789_';
-----------------------------------------------------------------------------------

---------  Connect to database 

use databasename;

------> show available database

show databases; 

-- tables in db  ---> `dbname`.`tablename`

---- grant all privileges to osassuit 

GRANT ALL privileges on *.* to 'osassuit'@'localhost';


revoke ALL privileges on *.* from 'osassuit'@'localhost';


--- 
revoke privileges

on item 

from user ; 

----------------------------------------------------------------
grant INSERT, Select on `phpmenia`.`employees` to  'osassuit'@'localhost';


revoke insert 
on `phpmenia`.`employees` from  'osassuit'@'localhost';


----------------------- database creation ---------

create database databasename ;  --- valid 

----- case sensitivity in db name and table name ---> depends on operating system 
create database NOHA; 

drop database noha; 


-----------------------list all databases in the server 


show databases; 


------------ list how the database created ? 

show create database `databasename`; 

--------- create table 
use `dbname`;

create `dbname`.`tablename`(colname datatype [constriant]); 

create table `osassuit`.`students`(id int primary key, name varchar(40) unique);


--- to show how the table created 

show create table `students`;


------------------------------

create table `osassuit`.`students`(id int primary key, name varchar(40) unique,

gender enum ('male', 'female')

);


---------------------------------------------------------


-- table employees , department 0---> one to many between employee department -

-- employee (id , name, address , dept_id, gender , bdate, salary)

-- departatment(id , name ) 



create table departatments (id int auto_increment primary key, dept_name varchar(20));


-- create table employees(
--     id int auto_increment primary key, 
--     name varchar(100) not null, 
--     address varchar(100), 
--     gender enum('male', 'female'),
--     salary int default 1000, 
--     bdate date,
--     dept_id int , 
--     foreign key (dept_id) 
--     references departatments(id )
-- ) engine =Innodb;


create table employees2(
    id int auto_increment primary key, 
    name varchar(100) not null, 
    address varchar(100), 
    gender enum('male', 'female'),
    salary int default 1000, 
    bdate date,
    dept_id int references departatments(id )
    
) engine =Innodb;























