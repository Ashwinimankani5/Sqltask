create database Bank;
use Bank;
create table Employeedetails( id int, first_name varchar(20),last_name varchar(20),address varchar(25),conatactNo  varchar(25), age int,salary_per_month int,branch_name varchar(30) );

 insert into Employeedetails values (1,'raju','patil','Bagalkot','874774441',25,56079,'bagalkot');
 insert into Employeedetails values (2,'ritika','naik','bilagi','78417448',26,43879,'bagalkot');
 insert into Employeedetails values (3,'veena','goudar','navanagar','98745878',25,37548,'bagalkot');
 insert into Employeedetails values (4,'varun','mudhol','mudhol','741255896',28,30079,'bagalkot');
 insert into Employeedetails values (5,'suraj','sompur','gadag','117845557',29,33879,'bagalkot');
 insert into Employeedetails  values (6,'satvik','mankani','hubli','7124963000',30,37079,'bagalkot');
 
 select * from Employeedetails;

select count(*) as total from Employeedetails;
select sum(salary_per_month)as id_name from Employeedetails;
select max(salary_per_month) from Employeedetails;
select min(salary_per_month) from Employeedetails;
select avg(salary_per_month) from Employeedetails;