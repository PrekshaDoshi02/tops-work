use Assesment

-- Create Table Company 
create table Company (CompanyId int primary key , 
CompanyName varchar(45) , 
Street varchar(45) , 
City varchar(45) ,
State varchar(20) , 
Zip varchar(10) ) 
desc Company 

-- Create Table Contact
create table Contact ( ContactId int primary key ,
CompanyId int ,
foreign key (CompanyId) references Company(CompanyId) ,
FirstName varchar(45) ,
LastName varchar(45) ,
Street varchar(45) ,
City varchar(45) ,
State varchar(20) ,
Zip varchar(10) ,
IsMain boolean ,
Email varchar(20) ,
Phone varchar(15) )
desc Contact 

-- Create Table Employee
create table Employee_A (EmployeeId int primary key ,
FirstName varchar(45) ,
LastName varchar(45) ,
Salary decimal(10,2) ,
HireDate date ,
JobTitle varchar(45) ,
Email varchar(20) ,
Phone varchar(12) ) 
desc Employee_A

-- Create Table ContactEmployee
create table ContactEmployee (ContactEmployeeId int ,
ContactId int ,
foreign key (ContactId) references Contact(ContactID) ,
EmployeeId int ,
foreign key (EmployeeId) references Employee_A(EmployeeId) ,
ContactDate date ,
Description varchar(100) )
desc ContactEmployee

insert into Company (CompanyId , CompanyName , Street , City , State , Zip) 
values ( 101 , "Amazon" , "S.G. Highway" , "Ahamedabad" , "Gujarat" , "383430") ,
( 102 , "MicroSoft" , "C.G. Road" , "Mumbai" , "Maharastra" , "308930") ,
( 103 , "Flipkart" , "Parimal Garden" , "Benglor" , "Karnataka" , "380009") ,
( 104 , "Urban Outfitters, Inc" , "Swastik Char Rasta" , "Surat" , "Gujarat" , "343830") ,
( 105 , "AJIO" , "Panchavati Cross Road" , "Udaipur" , "Rajasthan" , "383439") 
select * from Company 

insert into Contact (ContactId , CompanyId , FirstName , LastName , Street , City , State , Zip , IsMain , Email , Phone)
values( 1 , 101 , "Preksha" , "Doshi" , "Tavar Road" , "Ahamedabad" , "Gujarat" , "383430" , 1 , "preksha@gmail.com" , "1234567890" ) ,
( 2 , 102 , " Lesley" , "Bland" , "Bandra Road" , "Indore" , "Rajasthan" , "383896" , 0 , "lesley@gmail.com" , "9876543021" ) ,
( 3 , 103 , " Dianne" , "Connor" , "C.G. Road" , "Jalandar" , "Panjab" , "380405" , 1 , "dianne123@gmail.com" , "1478523690" ) ,
( 4 , 104 , " Jack" , "Lee" , "Mira Road" , "Mumbai" , "Maharastra" , "383852" , 1 , "jacklee321@gmail.com" , "3069852147" ) ,
( 5 , 105 , "Dhruvi" , "Patel" , "Bhayandar" , "Surat" , "Chennai" , "698547" , 0 , "dhruvi@gmail.com" , "1234985630" )
select * from Contact

insert into Employee_A (EmployeeId , FirstName , LastName , Salary , HireDate , JobTitle , Email , Phone)
values ( 1 , "Arvi" , "Gandhi" , "200000.36" , "2024-03-15" , "CMA" , "arvi@gmail.com" , "6547893021") ,
( 2 , "Urii" , "Patel" , "225000.46" , "2023-09-25" , "HR" , "uriiipatel@gmail.com" , "1003255621") ,
( 3 , "Dhairya" , "Doshi" , "300000.24" , "2025-05-06" , "CA" , "dhairya@gmail.com" , "4444666699") ,
( 4 , "Riya" , "Suthar" , "175000.88" , "2024-12-01" , "Manager" , "riya123@gmail.com" , "6548520361") ,
( 5 , "Naiya" , "Sankhesara" , "260000.96" , "2025-04-19" , "Developer" , "naiya@gmail.com" , "6789654123")
select * from Employee_A

insert into ContactEmployee (ContactEmployeeId , ContactId , EmployeeId , ContactDate , Description )
values ( 1 , 1 , 1 , "2024-03-15" , "Managed Account" ) ,
( 2 , 2 , 2 , "2023-09-25" , "Managed Meetings" ) ,
( 3 , 3 , 3 , "2025-05-06" , "Handle Accounts" ) ,
( 4 , 4 , 4 , "2024-12-01" , "Business Discussion" ) ,
( 5 , 5 , 5 , "2025-04-19" , "Technical Support" ) 
select * from ContactEmployee

-- 4) In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 
update Contact set Phone = '215-555-8800' where ContactId = 2;

-- 5) In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” . 
update Company set CompanyName = "Urban Outfitters" where CompanyId = 104 ;

-- 6) In ContactEmployee table, the statement that removes Dianne Connor’s contact event with Jack Lee (one statement).


-- 7) Write the SQL SELECT query that displays the names of the employees that 
-- have contacted Toll Brothers (one statement). Run the SQL SELECT query in
-- MySQL Workbench. Copy the results below as well.

 
-- 8) What is the significance of “%” and “_” operators in the LIKE statement?
--      % → Matches any number of characters
--      _ → Matches exactly one character

-- 9) Explain normalization in the context of databases.
--      Normalization is the process of organizing data in a database to:
--      Reduce data redundancy ,
--      Improve data integrity ,
--      Avoid update, insert, and delete anomalies

-- 10) What does a join in MySQL mean?
--      A JOIN is used to combine rows from two or more tables based on a related column (usually a foreign key).
--      It allows data to be retrieved from multiple tables in a single query.

-- 11) What do you understand about DDL, DCL, and DML in MySQL?
-- DDL (Data Definition Language)
--      Used to define database structure.
--        CREATE
--        ALTER
--        DROP
--        TRUNCATE
-- DML (Data Manipulation Language)
--     Used to manage data.
--        INSERT
--        UPDATE
--        DELETE
--        SELECT
-- DCL (Data Control Language)
--     Used to control access.


-- 12) What is the role of the MySQL JOIN clause in a query, and what are some common types of joins? 
-- The JOIN clause retrieves data from multiple tables based on a related column.
--     Common Types of JOINs:
--          INNER JOIN – Matching rows in both tables
--          LEFT JOIN – All rows from left table + matching from right
--          RIGHT JOIN – All rows from right table + matching from left
--          FULL JOIN (not directly supported in MySQL)
