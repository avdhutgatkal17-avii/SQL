-- 1. Create database
CREATE DATABASE organizations_1;
USE organizations_1;


CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    city VARCHAR(50),
    bdate DATE
);
 
 desc employee ;
CREATE TABLE investor (
    inv_no INT PRIMARY KEY,
    inv_name VARCHAR(50),
    inv_date DATE,
    inv_amt VARCHAR(50),
    emp_id INT
);
 
 desc investor ;
-- 2. Insert at least 5 records into Employee
INSERT INTO employee (emp_id, emp_name, city, bdate)
VALUES
(101, 'Yogesh Rawat', 'Pune', '2005-11-25'),
(102, 'Saurabh Deshmane', 'Satara', '2004-11-12'),
(103, 'Yogesh Gavande', 'Nashik', '2006-11-13'),
(104, 'Avdhut Gatkal', 'Pune', '2005-11-12'),
(105, 'Rahul Patil', 'Mumbai', '2005-08-20');

INSERT INTO investor (inv_no, inv_name, inv_date, inv_amt, emp_id)
VALUES
(111, 'Siddharth Shukla', '2005-11-25', '10000', 101),
(112, 'Gautam Gulati', '2001-08-04', '12000', 102),
(113, 'Manu Punjabi', '2003-03-25', '15000', 103),
(114, 'Karan Veer', '2002-02-01', '20000', 104),
(115, 'Shiv Thakare', '2005-09-17', '25000', 105);

-- 3. Display all Employee records
desc Employee ;
SELECT * FROM employee ;
-- 4. Add Age and Salary columns to Employee, check constraints for
-- (Age<=50 and Salary>=10000).
ALTER TABLE employee
ADD COLUMN age INT,
ADD COLUMN salary varchar (50) ;
ALTER TABLE employee add constraint chk_EmpAge_salary check(age>50 and salary>=10000);

SELECT * FROM employee;

-- 5.Add a column ‘Age’ to the Investor table  ,  
ALTER TABLE investor
ADD COLUMN age INT;

desc investor;

-- 6.Change the data type of inv_name from varchar to text in the Investor table 
ALTER TABLE investor
MODIFY COLUMN inv_name text;

-- 7.Change the name of the column/field Emp_id to E_id.
ALTER TABLE employee
rename COLUMN emp_id to e_id;

ALTER TABLE investor
rename COLUMN emp_id to e_id;

-- 8. Update the city of Emp_id-4 to the current city, Nagpur

update employee SET city ='nagpur'  where e_id = 104 ;

-- 9. Delete one record from the Investor table.
DELETE FROM investor WHERE inv_no = 113;
SELECT * FROM investor ;

-- 10. Drop the column ‘Age’ from the Investor table.
ALTER TABLE investor
DROP COLUMN age;

-- 11. . Drop the CHECK constraint on the ‘Age’ column from the Employee table

ALTER TABLE employee
DROP CHECK  chk_EmpAge_salary ;

-- 12. Create foreign key constraints between the Employee and Investor tables
ALTER TABLE investor
ADD CONSTRAINT fk_investor_employee
FOREIGN KEY (e_id) REFERENCES employee(e_id);

select * from employee02 ;
select * from investor ;

-- 13. Display any 4 columns from the Investor table\
SELECT inv_no, inv_name, inv_date, inv_amt
FROM investor;

-- 14. Rename a table.
RENAME TABLE employee to employee02 ;

-- 15. Delete all the records using the TRUNCATE command.

ALTER TABLE investor
DROP FOREIGN KEY fk_investor_employee;
TRUNCATE TABLE investor;
TRUNCATE TABLE employee01;

SELECT * FROM investor;
SELECT * FROM employee01;

-- 16. Drop both tables
DROP TABLE investor;
DROP TABLE employee02;

SHOW TABLES;


 




