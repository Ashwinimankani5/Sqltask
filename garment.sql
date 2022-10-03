SELECT * FROM garment.employees;
SELECT * FROM garment.employeers;

insert into employees values(1,"veena", "goudar","bagalkot","874789854",20000,"fulltime",8);
insert into employees values(2,"tashu", "mudhol","badami","847845889",20000,"part-time",4);
insert into employees values(3,"varun", "undi","hubli","898547871",20000,"fulltime",8);
insert into employees values(4,"akash", "nari","mysore","8740112032",20000,"part-time",4);
insert into employees values(5,"veena", "reshmi","gadag","7995410125",20000,"part-time",4);
insert into employees values(6,"nikhil", "patil","mudhol","874598858",20000,"fulltime",8);
insert into employees values(7,"suhas", "sompur","bilagi","9710024578",20000,"part-time",4);
insert into employees values(8,"deepa", "vandal","gadag","6874988755",20000,"fulltime",8);
insert into employees values(9,"manoj", "mankani","dharawad","7847758892",20000,"fulltime",8);
insert into employees values(10,"vani", "goudar","bidar","8747889502",20000,"part-time",4);
insert into employees values(11,"praveen", "naikar","banglore","8974456200",20000,"fulltime",8);
insert into employees values(12,"ritika", "kirsur","banglore","7451120000",20000,"fulltime",8);
insert into employees values(13,"manju", "dandi","navanagar","79821140120",20000,"fulltime",8);
insert into employees values(14,"shamant", "gouda","karavar","8744475510",20000,"part-time",4);
insert into employees values(15,"druti", "kavdi","udupi","9899778478",20000,"part-time",4);

update garment.employees set salary = 10000 where id = 2;
update employees set salary = 10000 where id = 4;
update employees set salary = 10000 where id = 5;
update employees set salary = 10000 where id = 7;
update employees set salary = 10000 where id = 10;
update employees set salary = 10000 where id = 14;
update employees set salary = 10000 where id = 15;

select*from employees;

alter table employees add column gender varchar(5);
select*from employees;

update employees set gender= "F" where id= 1;
update employees set gender= "F" where id= 2;
update employees set gender= "F" where id= 5;
update employees set gender= "F" where id= 8;
update employees set gender= "F" where id= 10;
update employees set gender= "F" where id= 12;
update employees set gender= "F" where id= 15;

update employees set gender= "M" where id= 3;
update employees set gender= "M" where id= 4;
update employees set gender= "M" where id= 6;
update employees set gender= "M" where id= 7;
update employees set gender= "M" where id= 9;
update employees set gender= "M" where id= 11;
update employees set gender= "M" where id= 13;
update employees set gender= "M" where id= 14;

select * from employees where salary= 20000;
select * from employees order by id desc;

select * from employees where first_name like 'n%';
select * from employees where first_name like 'a%';
select * from employees where first_name like 'v%';
select * from employees where first_name like 's%';

select * from employees where first_name like '%n%';
select * from employees where first_name like '%a%';
select * from employees where first_name like '%s%';
select * from employees where first_name like '%i%';

select last_name,count(*) from employees group by last_name;
select address,count(*) from employees group by address;
select salary,count(*) from employees group by salary;
select job_type,count(*) from employees group by job_type;

select distinct(first_name) from employees;
select distinct(address) from employees;

select first_name,sum(salary)from employees group  by first_name;
select first_name,sum(salary)as sum from employees group  by first_name having sum>15000;
select first_name,sum(salary)as sum from employees group  by first_name having sum>15000;
select first_name,sum(salary)as sum from employees group  by first_name having sum>25000;


select instr('wert5yuiolkijhygtfre','y')as inString;
select instr('wert5yuiolkijhygtfre','o')as position;
select instr('wert5yuiolkijhygtfre','f')as inString;

select substr('wert5yuiolkijhygtfre',2,4)as position;
select substr('wert5yuiolkijhygtfre',3,5)as substring;
select substr('wert5yuiolkijhygtfre',6,4)as position;

alter table employees add column age INT not null;

update employees set age= 25 where id = 1   ;
select*from employees;

create table worker(worker_id int not null,first_name varchar(25),last_name varchar(25), address varchar(45),company_code int not null, age int check(age>=18),salary int,contact_no long unique ) ;
INSERT INTO worker values (202,"vikas","bhadra","rajajinagar",14,20,18000,7487778454);
INSERT INTO worker values (203,"padma","goudar","shivajinagar",15,22,20000,7411858454);
INSERT INTO worker values (204,"manjula","mudhol","bapujinagar",16,24,28000,8799778454);
INSERT INTO worker values (205,"rani","mankani","navajinagar",17,28,30000,7701208454);
INSERT INTO worker values (206,"navya","nari","vijayanagar",19,17,19000,9985111245);

select * from worker;
create table bmtc(id int,name varchar(35),source varchar(35),destination varchar(35));
insert into bmtc values (1,"volvo","majestic","chandapur");
  alter table bmtc add column primary key(source) ;
  alter table bmtc add column primary key(source) ;

  alter table bmtc add column name varchar (35) not null default 'seabird';
  insert into bmtc(id,source,destination) values(2,"majestic","rajajinagar");
  select * from bmtc;
  
  
/* foreign key*/
  create table bank (b_id int not null, b_name varchar(25) unique,b_ifsc int, c_id int,primary key(c_id ));
  select * from bank;
    insert into bank values(1,"teju",32,144);

  create table customer (c_id int,c_name varchar(35), c_age int, b_id int, foreign key(b_id)references  bank(c_id));
  select * from customer;
  insert into customer values(1,"veena",47,144);
  
 /*  drop table bank;
  drop table customer; 
  first  we delete child table then we delete child table; 
  which includes primary key that is called as parent 
   which includes foreign key that is called as child 
  */
  
  /* FUNCTIONS : UPPER() , LOWER(), */
  
  select upper(name) from bmtc; /*this will convert all charecters to upper case*/
  select lower(source) from bmtc; /*this will convert all charecters to upper case*/
  select CONCAT('a','b','c','d','e') AS strchar; /*this will convert all charecters to upper case*/
 
 /*LTRIM (left trim) : it will remove the leading spaces of string*/
  select LTRIM (name) from bmtc;
    select RTRIM (destination) from bmtc;

select reverse(source) from bmtc;
/*drop table bmtc;*/
    select * from bmtc;

create table states (id int auto_increment,name varchar(35),no_of_districts int, famous_places varchar(35) , primary key (id));
  select * from states;
    insert into states(name,no_of_districts,famous_places) values("Bagalkot",27,"badami");


/* union(it combine the 2 select query and gives result and can not allow duplicate values) ,
 union all(it combine all the values in select query and gives result and it will  allow duplicate values)*/
  
  create table a(id int);
  insert into a values(1);
  insert into a values(2);
  insert into a values(1);
  insert into a values(3);
  insert into a values(3);
  insert into a values(4);
  insert into a values(5);
  insert into a values(6);
  
  
    create table b(id int);
  insert into b values(1);
  insert into b values(2);
  insert into b values(2);
  insert into b values(5);
  insert into b values(6);
  insert into b values(7);
  insert into b values(8);
  insert into b values(9);
  insert into b values(10);
  insert into b values(11);
  
  select * from  a union select * from  b;
    select * from  a union all select * from  b;
    
    /*sub query*/
    
    select * from  a where condition =(select * from table where condition);
    
    create table  SBI_Bank (id int primary key, b_name varchar(35) unique,b_ifsc varchar(30),b_location varchar(35));
    insert into SBI_Bank values(110,"AXIS","TR8w588qw554RRTY","JAYANAGAR");
	insert into SBI_Bank values(120,"ICICI","ERTY88552RTY","VIJAYNAGAR");
    insert into SBI_Bank values(130,"UNION","WSDCVB8785VBN","RAJAJINAGAR");
    insert into SBI_Bank values(140,"SBM","CVBN8522ERTYU","SHANTINAGAR");
    insert into SBI_Bank values(121,"try","Cmnbv522ERTYU","bgk");

    select * from SBI_Bank;
    
    create table  customer1 (c_id int not null, c_name varchar(35) 
    unique,b_id int not null,c_place varchar(35));
    

select * from customer1;


/*JOINS : to combine the 2 or more  tables
TYPES OF JOINS 
1)INNER JOIN
2)LEFT JOIN OR LEFT OUTER JOIN
3)RIGHT JOIN  OR RIGHT OUTER JOIN
4) CROSS JOIN 
5) FULL OUTER JOIN

*/


/* 1)INNER JOIN : */  
  
SELECT * FROM a;
SELECT * FROM b;

SELECT a.id,b.id FROM a inner join b on a.id= b.id; /*INNER JOIN */
SELECT a.id,b.id FROM a left join b on a.id= b.id;/*LEFT JOIN */
SELECT a.id,b.id FROM a right join b on a.id= b.id; /*RIGHT JOIN */
SELECT a.id,b.id FROM a,b; /*CROSS JOIN */
SELECT a.id,b.id FROM a; /*FULL OUTER JOIN */




    
    
    

  
  
  
  
  
  
  
  
