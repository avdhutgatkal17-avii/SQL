drop database organization ;
create database organization ;

use organization ;

create table employee (Empid int not null primary key ,
First_name varchar(50), Last_name varchar(50) ,gender char , Role varchar (50) , Manager_id varchar(50) );

alter table employee add column dept varchar(50) ;

desc employee ;
select * from  employee ;

insert into employee (Empid, First_name , Last_name, gender , Role , dept , Manager_id ) values (
1, 'prathmesh' , 'deshmane' , 'M' , 'Team leader ' , 'retail ' ,'M11'  );

insert into employee (Empid, First_name , Last_name, gender , Role , dept , Manager_id ) values 
(2 , 'Saurabh' , 'deshpande' , 'M' , 'consultant ' ,'sales' ,'M12' )  ,
(3, 'siddharth' , 'kersaarkar' , 'M' , 'JR.employee ' ,'HR', 'M13' ),
(4, 'soham' , 'pujari' , 'M' , 'manager ' , 'admin' ,'M14'  ),
(5, 'sahil' , 'bonde' , 'M' , 'office boy' ,'admin' , 'M15'  ) ;

select distinct dept from employee order by dept;
select distinct role from employee order by role ;

select * from employee where role = ' Team leader ' and dept = 'HR' ;

select * from employee where role in ('president' , 'manager' );
select * from employee where role in ('Team leader' , 'manager' );

select * from employee where role not in ('president' , 'manager' );
select * from employee where role not in ('Team leader' , 'manager' );

alter table employee add column Experience int ;

select * from employee ;

update employee set Experience=8 where Empid=1 ;
update employee set Experience=5 where Empid=2 ;
update employee set Experience=10 where Empid=3 ;
update employee set Experience=8 where Empid=4 ;
update employee set Experience=15 where Empid=5 ;

select * from employee ;
select * from employee where Experience between 6 and 10;
select * from employee where Experience = 6 or Experience= 10;

-- like operator 

select * from employee where Last_name like 'p%' ; -- the name start with "p"
select * from employee where Last_name like '%e' ;  -- the name end with "e"

select * from employee ;
select * from employee order by experience limit 5;
 insert into employee  (Empid, First_name , Last_name, gender , Role , dept , Experience,  Manager_id  ) values
 (6, 'Avdhut' , 'Gatkal ', 'M' , 'President' , 'HR' , null , null );

 desc employee ;
