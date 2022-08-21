create database students;
use students;

create table students(id int, first_name varchar(20),last_name varchar(20), age tinyint, bloodgroup varchar(10), email varchar(25));

alter table students.students add column contactno bigint;
alter table students.students add column percentage smallint;
alter table students.students add column date_of_birth date;
alter table students.students  rename column percentage to grade;
alter table students.students modify column grade char;
alter table students drop column grade;
select * from students;

insert into students values(1,"harsha","patil",15,"A+","harshapatil@g-mail.com");
insert into students values(2,"ramesha","goudar",15,"B+","rameshgoudar@g-mail.com");
insert into students values(3,"suresha","singh",15,"A-","sureshsingh@g-mail.com");
insert into students values(4,"satisha","naik",15,"A+","satishnaik@g-mail.com");
insert into students values(5,"mahesha","hunsyal",15,"A-","maheshahunsyal@g-mail.com");
insert into students values(6,"shreesha","sompur",15,"O+","shreeshasompur@g-mail.com");
insert into students values(7,"trisha","mudhol",15,"AB+","trishamudhol@g-mail.com");
insert into students values(8,"varsha","lamani",15,"AB-","varshalamani@g-mail.com");
insert into students values(9,"darshan","ayyar",15,"B+","darshanayyar@g-mail.com");
insert into students values(10,"sudeep","yadahalli",15,"B-","sudeep.y.@g-mail.com");

delete from students where id = 1 ;
delete from students where id = 2 ;
alter table students order by id;

update students set contactno = 8878884586 where id = 1;
update students set contactno = 8784413261 where id = 2;
update students set contactno = 5487542123 where id = 3;
update students set contactno = 8888226566 where id = 4;
update students set contactno = 8842030006 where id = 5;
update students set contactno = 9878985212 where id = 6;
update students set contactno = 8987971200 where id = 7;
update students set contactno = 8741221112 where id = 8;
update students set contactno = 9888746331 where id = 9;
update students set contactno = 8878884586 where id = 10;


select * from students  where  id = 1 ;
select * from students  where  name = "ramesh" ;
select * from students  where  age = 15 ;
select * from students  where  bloodgroup = "O+";
select * from students  where  email = "sudeep.y.@g-mail.com" ;
select * from students  where  contactno = 8741221112;


select * from students  where  id = 1 and first_name = "harsha" ;
select * from students  where  id = 1 or first_name = "ramesha" ;
select * from students  where  id = 1 or first_name = "ramesha" and bloodgroup = "O+" ;
select * from students  where  id = 1 or first_name = "ramesha" or  bloodgroup = "O+" ;
SELECT * FROM students where id between 1  and 5;
SELECT * FROM students where first_name between "harsha"  and "mahesha";

update students set date_of_birth = '2007-01-12' where id = 1;
update students set date_of_birth = '2007-02-22' where id = 2;
update students set date_of_birth = '2007-03-14' where id = 3;
update students set date_of_birth = '2007-04-17' where id = 4;
update students set date_of_birth = '2007-05-19' where id = 5;
update students set date_of_birth = '2007-06-03' where id = 6;
update students set date_of_birth = '2007-07-29' where id = 7;
update students set date_of_birth = '2007-08-30' where id = 8;
update students set date_of_birth = '2007-09-07' where id = 9;
update students set date_of_birth = '2007-10-13' where id = 10;

update students set grade = 'A' where id = 1;
update students set grade = 'A' where id = 2;
update students set grade = 'B' where id = 3;
update students set grade = 'C' where id = 4;
update students set grade = 'C' where id = 5;
update students set grade = 'A' where id = 6;
update students set grade = 'B' where id = 7;
update students set grade = 'B' where id = 8;
update students set grade = 'A' where id = 9;
update students set grade = 'A' where id = 10;
select * from students







