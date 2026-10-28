create database demo;
show databases;
use demo;
create table employee(empId int,firstName varchar(20),lastName varchar(10),empAge int, empZone varchar(10));
desc employee;
INSERT INTO employee (empId, firstName, lastName,empAge,empZone)
VALUES
(1, 'Prathamesh','Deshmane', 21, 'West'),
(2, 'Prathamesh','Mane', 20, 'North');

INSERT INTO employee values (3, 'Om','Sane', 23, 'South');
INSERT INTO employee values (3, 'Ram','kadam', 24, null);

update employee set empZone='East' where firstName='Om';

delete from employee where empAge=24;

SELECT *FROM employee;

create database company;
show databases;
use company;
create table employee(empId int not null,firstName varchar(20),lastName varchar(10),empAge int);
desc employee;

INSERT INTO employee values(null,'ravi','kumar',25); -- show error

INSERT INTO employee values(1,null,'kumar',25); 

create table employee1(empId int not null,firstName varchar(20),lastName varchar(10), unique (empId));

INSERT INTO employee1 values(null,'ravi','kumar'); -- show error
INSERT INTO employee1 values(1,'ravi','kumar');
INSERT INTO employee1 values(1,'ravi','kumar');
INSERT INTO employee1 values(2,'ravi','kumar');

SELECT *FROM employee1;

create table employee2(empId int not null,firstName varchar(20),lastName varchar(10),empAge int, check (empAge>20));
INSERT INTO employee2 values(1,'ravi','kumar',21);

alter table employee2 add column salary int;
alter table employee2 drop column salary; 

alter table employee2 add column salary int , add check (salary>=5000);
show create table Employee2;

alter table employee2 drop check employee2_chk_2;

create table employee3(empId int not null,firstName varchar(20),lastName varchar(10),empAge int, check (empAge>20),primary key(empId));
INSERT INTO employee3 values(1,'ravi','kumar',21);
INSERT INTO employee3 values(1,'ravi','kumar',22);
INSERT INTO employee3 values(2,'ravi','kumar',22);

create table employee4(empId int primary key ,firstName varchar(20),lastName varchar(10),empAge int,salary int);

alter table employee4 add constraint chk_EmpAge_salary check(empAge>20 and salary>=5000);

show create table Employee4;

create index DemoIndex2 on employee(firstName,lastName);

show indexes from employee;

use college;
create table persons(pid int not null auto_increment,lastName varchar(20), firstName varchar(20), age int , primary key (pid));