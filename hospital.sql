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

/* insert into patient(id,first_name,last_name,age,address,date,email,contact_no,bloodgroup) values(10,'manju','dhaan',29 ,'raichur','2022-08-08','manjudhaan@gmail.com',7841800451);
select * from patient; */


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
select * from patient  order by id desc;




/*  I%  :  it is pattern matching used for  any pattern or any stringwith letter I simillarly  A%  for pattern length starts with A*/
select * from patient where  first_name LIKE 'a%';

/*  '%anyletter%'  : is used  to fetch data for the letter between any string  */
select * from patient where  first_name LIKE '%e%';

/*group by : it allows and display the duplicates values*/
select  first_name ,count(*) from patient  group by first_name;
select * from patient order by id;

/*distinct : it does not allow duplicate*/
select distinct (first_name) from patient;

/*having : used after grouping 
where : used before groupin
common Syntax : select distinct from where groupby having order by*/

select first_name,sum(age) from patient group by  first_name; /*used for total sum and it shows duplicate values sum in a single line*/

select first_name,sum(age) as sum from patient group by  first_name having sum>21; /*used to get data greaterthan> reffered value*/

select INSTR('XwOrkzODC','o') as instring; /* instring(INSTR) : it is used for fetching the charecter position*/
select INSTR('XwOrkzODC','r') as position;

select SUBSTR('XwOrkzODC',4,1) as substring; /*it is used to fetch data with respect to index*/
select SUBSTR('XwOrkzODC',4,0) as substring;  /* use substring or instring or position  words to fetch data*/
select SUBSTR('XwOrkzODC',4,6) as substring;
select SUBSTR('XwOrkzODC',4,7) as substring;

/* CONSTRAINTS :used to limit the type of data 
by default  primery key will executes the not null and unique values internally

TYPES OF CONSTRAINTS
1)NOT NULL : this constaints restrict  the nullvalues while inserting  the data into tables

2)UNIQUE  : it will not allow any duplicate values to store into the table.

3)PRIMERY KEY : primary key uniquely identifies each row  in database table. by default primary
key  will have NOT NULL and UNIQUE  constraint  defined on it.

4) CHECK :  it is used to limit the range of value for a particular column.

5)DEFAULT : it takes the default values which is alreadyly set for paricular row only....not for all the rows in one perticular column

*/


/* ASSIGNMENT : assending , descending, groupby, groupby having, inSTR ,SUBSTR, constaints 5 example  for each for 2 column */


select * from patient


