create database organization ;
use organization;
create table employee(
Empid int primary key ,
empname varchar (50),
city varchar(50),
bdate date );

create table investor(
invno int primary key ,
invname varchar (50),
invdate date,
invamt varchar(50),
empid int );

insert into employee01 (e_id,empname,city,bdate)
values(101, "Yogesh rawat " , "pune" , '2005-11-25'),
(102, "saurabh deshmane" , "satara" , '2004-11-12'),
(103, "Yogesh gavande " , "nashik" , '2006-11-13'),
(104, "avdhut gatkal " , "pune" , '2005-11-12');


insert into investor (invno, invname, invdate, invamt , Empid)
values(111, "siddhart shukla " ,'2005-11-25', '10000' , 150),
(112, "Gautam gulati " ,'2001-08-04', '12000' , 151),
(113, "manu panjabi" ,'2003-03-25', '15000' , 152),
(114, "karan veer" ,'2002-02-01', '20000' , 153),
(115, "shiv thakre " ,'2005-09-17', '25000' , 154);

select * from employee ;
select * from investor ;


alter table employee
add column (age int ) ;

alter table employee
add column salary varchar(50);

desc employee ;

alter table investor
add column (age int ) ;

desc employee01 ;

alter table employee add constraint chk_EmpAge_salary check(age>50 and salary>=10000);

alter table investor modify invname text ;
alter table  employee rename column Empid to e_id ;
alter table  investor rename column Empid to e_id ;

update employee SET city ='nagpur'  where e_id = 104 ;

delete from employee where e_id=103 ;
set autocommit=0;
delete from investor where Empid=152 ;
select * from employee ;
select * from investor ;

alter table investor drop column age ; 
desc investor ;
desc employee;


alter table employee drop constraint age_chk;

alter table employee drop constraint chk_EmpAge_salary ;

alter table investor drop empid;
alter table investor add column emp_id int;
alter table investor add constraint e_inv foreign key investor (emp_id) references employee01(e_id);

select * from employee01 ;
select * from investor ;
desc investor;

select invno, invname , invdate, invamt from investor ;

rename table employee to employee01 ;

select * from employee ;
select count(*) from employee ;
select count(*) from employee where experience is null ;

select count(empid) from employee where dept= 'Admin';
select min(Experience) from employee ;
select max(Experience) from employee ;
select sum(Experience) from employee ;
select avg(Experience) as emp_exr from employee ;


select DEPT,COUNT(*) as employee_count
FROM employee GROUP BY DEPT ;

select Role,COUNT(*) as employee_count
FROM employee GROUP BY Role ;

select Gender , count(*) as employee_count
FROM employee GROUP BY Gender;

select * from employee ;
SELECT DEPT, sum(Experience) as total_experience
FROM employee GROUP BY DEPT
HAVING total_experience >= 10 AND total_experience <=20 ;

select Dept, count(empid)
FROM employee
GROUP BY Dept
HAVING count(empid) >=2
ORDER BY count(empid) desc;

SELECT DEPT, SUM(Experience) as total_experience FROM employee GROUP BY DEPT
HAVING total_experience >= 10 or total_experience <= 20 ;

