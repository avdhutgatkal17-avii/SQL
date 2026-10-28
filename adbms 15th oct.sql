create database user ;
show databases ;

use user ;

create table customer (Custid int, custname varchar(15), 
city varchar(10), product varchar(15), price int);

desc customer ;
insert into customer values (1,"Avdhut", "Nashik", "pen",100) ,
 (2,"siddharth", "Nanded", "pencil",50), 
 (3,"prathmesh", "pune", "scale",20),
 (4,"om", "lasalgaon", "eraser",40) ;

select * from customer ;

alter table customer add primary key (Custid);

DELETE FROM customer
WHERE unique_column = 'eraser';

CREATE TEMPORARY TABLE customer_temp AS
SELECT DISTINCT *
FROM customer;

DELETE FROM customer;

INSERT INTO customer
SELECT * FROM customer_temp;

DROP TEMPORARY TABLE customer_temp;

ALTER TABLE customer
ADD PRIMARY KEY (Custid);

select * from customer where custid in(1, 3);

create table Clonetable as select * from Customer; -- imppp(copy of table is clone)

select * from Customer where city = "pune";

select * from Customer order by price;
select * from Customer order by price desc;

select * from Customer order by city;
select * from Customer order by price;

select * from Customer order by city;
select * from Customer order by price;

select * from Customer order by price desc ;
select * from Customer order by city desc;

select upper(custname), lower(product) from Customer ;
select * from Customer ;

alter table Customer add column lastname varchar(50);
select * from Customer ;



update Customer set lastname = "Gatkal" where Custid = 1;
update Customer set lastname = "kesarkar" where Custid = 2;
update Customer set lastname = "Deshmane" where Custid = 3;
update Customer set lastname = "raut" where Custid = 4;

-- concat two column
select concat(custname, ' ', lastname) as fullname from Customer;

-- use of SUBSTR and INSTR functions

select * from Customer ;
select substr(custname,1,3) from Customer ; -- start letters from 1 to 3

select substr(custname,0,3) from Customer ; -- if you give str 0 there will no output

select substr(custname,1,0) from Customer ; -- if you give upto str 0 there will be no output

select substr(custname,2,6) from Customer ; -- from 2nd to 6th letter will be your output

select instr(custname, 'a') asposition from Customer; -- this query shows in the custname where a comes in each row or in which position of custname value
select instr(custname, 'w') asposition from Customer; -- if the letter is not in any name it will give 0 as output

select substr(custname,1,6), instr(custname, 'a')  from Customer ;

select substr(custname,1,6) as substring, instr(custname, 'a')  from Customer ;

select substr(custname,1,6) as substring, instr(custname, 'a')  from Customer where Custid<3 ;