create database hospital;
use hospital;

create table patient( id int, first_name varchar(20),last_name varchar(20),age int, address varchar(40),date date, email varchar(40),contact_no bigint);
alter table hospital.patient add column bloodgroup varchar(5);


select* from patient;
insert into patient values(1,'roopa','shirur',20 ,'shivajinagar','2022-08-01','roopashirur@gmail.com',7484952125);
insert into patient values(2,'harsha','patil',25 ,'rajajinagar','2022-08-02' ,'harshapatil@gmail.com',9740096335 );
insert into patient values(3,'ashu','mankani',22,'majestic','2022-08-03' ,'ashum@gmail.com',784951472 );
insert into patient values(4,'surekha','bandi',26,'bagalkot','2022-08-04','sureka.bandi@gmail.com',887544887 );
insert into patient values(5,'veena','goudar',27 ,'belaganvi','2022-08-05','veenagoudar@gmail.com',712312517 );
insert into patient values(6,'praveen','hunsyal',20 ,'ballary','2022-08-06','praveenhunsyal@gmail.com',8147542581 );
insert into patient values(7,'raju','mudhol',25 ,'bilagi','2022-08-07','rajumudhol@gmail.com',8747879999);
insert into patient values(8,'manju','dhavan',26 ,'raichuru','2022-08-08','manjudhavan@gmail.com',7121800451);


update patient set bloodgroup = 'A+' where id = 1;
update patient set bloodgroup = 'O+' where id = 2;
update patient set bloodgroup = 'A-' where id = 3;
update patient set bloodgroup = 'B+' where id = 4;
update patient set bloodgroup = 'O-' where id = 5;
update patient set bloodgroup = 'O+' where id = 6;
update patient set bloodgroup = 'AB-' where id = 7;
update patient set bloodgroup = 'AB+' where id = 8;

select * from patient  where  id = 1 ;
select * from patient  where  first_name ='harsha';
select * from patient  where  age = 27;
select * from patient  where  bloodgroup ='AB-';
select * from patient  where  email = "veenagoudar@gmail.com" ;
select * from patient  where  contact_no =8147542581;

select * from patient  where  id = 1 and first_name = "roopa" ;
select * from patient   where  id = 1 or first_name = "veena" ;
select * from patient   where  id = 1 or first_name = "praveen" and bloodgroup = "O-" ;
select * from patient   where  id = 1 or first_name = "praveen" or  bloodgroup = "O+" ;
SELECT * FROM patient  where id between 1  and 5;
SELECT * FROM patient  where first_name between 'roopa'  and 'ashu';

SELECT * FROM patient WHERE age IN (20);

select * from patient


