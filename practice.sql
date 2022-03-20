select * from train;

create table stud( 
rno int primary key, 
name varchar(20), 
dob date, 
gender varchar(10), 
class varchar(10), 
college varchar(50), 
city varchar(20), 
marks float);

insert into stud values(102003199,'Vishnu',date'2001-12-24','male','second','Thapar uni','patiala',95);

insert into stud values(102003197,'Deevang',date'2001-05-24','male','second','Thapar uni','patiala',94);

insert into stud values(102003200,'Prateek',date'2001-06-24','male','second','Thapar uni','haryana',92);

insert into stud values(102003198,'hriday',date'2001-07-24','female','second','Thapar uni','gb road',15);

insert into stud values(102003194,'pata ni',date'2001-10-24','male','second','Thapar uni','patiala',69);

select * from stud 
 
;

desc stud


select rno, name, class  
from stud  
where city='patiala';

select * from stud 
order by asc 
;

select * from stud 
order by marks 
;

update table stud 
set marks=89 
where rno=102003197;

update table stud 
set marks='89' 
where rno='102003197';

select * from stud 
;

update stud  
set marks='69' 
where rno='102003197';

select * from stud 
;

update stud  
set name='D' city='sangrur' 
where rno='102003197';

update stud  
set name='D' city='sangrur' 
where rno='102003197';

update stud  
set name='D' city='sangrur' 
where rno='102003197';

update stud  
set name='D' ciy='Sangrur' 
where rno='102003197';

update stud  
set name='D', ciy='Sangrur' 
where rno='102003197';

update stud  
set name='D', city='Sangrur' 
where rno='102003197';

delete from stud  
where city='amritsar';

select * from stud 
;

delete from stud 
where city='gb road';

delete from stud 
where marks<70;

select * from stud 
;

create table emps( 
empno int primary key, 
ename varchar(20), 
job varchar(20), 
sal int, 
deptno int);

insert into emps(100,'shady','director',5000,200);

insert into emps values(100,'shady','director',5000,200);

insert into emps values(101,'eminem','hr',4500,201);

insert into emps values(102,'raunak','clerk',2000,203);

insert into emps values(103,'lala','salespeson',2000,203);

insert into emps values(104,'hriday','clerk',1000,204);

select * from emps  
where deptno='203';

select * from emps  
where sal<2000;

select * from emps  
where sal>2000;

select name, sal 
where job='salesperson' or job='clerk';

select name, sal 
from emps 
where job='salesperson' or job='clerk';

select ename, sal 
from emps 
where job='salesperson' or job='clerk';

select * from emps 
where sal>2000 and sal<3000;

select * from emps 
where sal>2000 and sal<3600;

select * from emps 
where sal>2000 and sal<4600;

select * from emps 
where deptno='201' or deptno='203';

select deptno,sal 
from emps 
order by deptno asc, 
sal desc;

select * from emps 
;

select * from emps 
where ename like 'c%';

select * from emps 
where ename like '%c';

select * from emps 
;

select * from emps 
where ename like 'e%';

select * from emps 
where ename like '%y';

select * from emps 
where ename like '%a%a' or ename like '%A%A';

select * from emps 
where ename like _b%' or ename like _B%';

select * from emps 
where ename like _b%' or ename like '_B%';

select * from emps 
where ename like '_b%' or ename like '_B%';

select * from emps 
where ename like 'l%' or ename like '%a';

select sysdate from dual;

select to_char(sysdate,'day') from dual;

select to_char(sysdate,'month') from dual;

select to_char(sysdate,'ddsp') from dual;

select to_char(sysdate,'am') from dual;

select to_char(sysdate,'pm') from dual;

select next_date(sysdate+3,'friday') from dual;

select next_day(sysdate+3,'friday') from dual;

select round(to_date(sysdate),'month') from dual;

select truncate(to_date(sysdate),year) on dual;

select truncate(to_date(sysdate),'year') on dual;

select truncate(to_date(sysdate),'yyyy') on dual;

select truncate(to_date(sysdate),'month') from dual;

select TRUNC(to_date(sysdate),'month') from dual;

select round(to_date(sysdate),'yyyy') from dual;

select (to_truncdate(sysdate),'yyyy') from dual;

select trunc(to_date(sysdate),'yyyy') from dual;

select to_day(sysdate+3),'day') from dual;

select next_day(sysdate+3),'day') from dual;

select next_day(sysdate+3) from dual;

select to_char(sysdate,'day') from dual;

select to_char(sysdate,'ddsp') from dual;

select to_char(sysdate,'am') from dual;

select round(to_date(sysdate),'month') from dual;

select round(to_date(sysdate),'yyyy') from dual;

select to_char(dob,'day') from emps;

select * from emps;

select * from stud;

select to_char(dob,'day') from emps;

select to_char(dob,'day') from stud;

select * from stud  
where to_char(dob,'day')-'monday';

select * from stud  
where to_char(dob,'friday')-'monday';

select * from stud  
where to_char(dob,'fmday')-'monday';

select * from stud  
where to_char(dob,'day')='monday';

select to_char(dob,'day') from stud;

select * from stud  
where to_char(dob,'day')='sunday';

select * from stud  
where to_char(dob,'day')='wednesday';

select * from stud  
where to_char(dob,'day')= to_char(sysdate,'month');

select * from stud  
where dob>sysdate-30;

create table train( no int primary key, tod timestamp, toa timestamp);

insert into train values(1,'6:30:00am', '7:00:00am');

insert into train values(1,'20-feb-2022 6:30:00am', '20-feb-2022 7:00:00am');

insert into train values(2,'20-feb-2022 6:30:00pm', '20-feb-2022 7:00:00pm');

select timestamp from train;

select * from train;

select * from train;

select to_char(toa,'HH:MI:SS') as toa, to_char(tod,'HH:MI:SS')as tod;

select to_char(toa,'HH:MI:SS') as toa, to_char(tod,'HH:MI:SS')as tod from train;

select * from train  
where to_char(toa,'pm')='pm';

select chr(65) from dual;

select chr(61) from dual;

select chr(26) from dual;

select concat('hello', 'moto');

select concat('hello', 'moto') from dual;

select instr('hello' , 'e');

select instr('hello' , 'e') from dual;

select instr('hello' , 'o') from dual;

select lenght('hello');

select lenght('hello') from dual;

select length('hello');

select length('hello') from dual;

select length('hellos friend') from dual;

select lpad('thapar',3,'@') from dual;

select ltrim('###Thapar%%','#') from dual;

select ltrim(T#hapar%%','#') from dual;

select ltrim(Th#apar%%','#') from dual;

select ltrim(####Thapar%%','#') from dual;

select ltrim('Th#apar%%','#') from dual;

select ltrim('#####Th#apar%%','#') from dual;

select rpad('hello friends',3,'@') from dual;

select rpad('hellofriends',3,'@') from dual;

select rpad('hellofriends',3,'@') from dual;

select lpad('hellofriends',3,'@') from dual;

select lpad('hello friends',3,'@') from dual;

select rpad('hello friends',3,'@') from dual;

select rpad('hellofriends',3,'@') from dual;

select rpad('heiifriends',3,'@') from dual;

select rpad('hiilo',3,'@') from dual;

select rtrim('hello%%%','%') from dual;

select replace('thapar','p','l') from dual;

select substr('thapar university',3,12);

select substr('thapar university',3,12) from dual;

select initcap('heelo thapar university is') from dual;

select lower('HELO THAT') FROM DUAL 
;

select upper('heelo friend') from dual;

select tranlate('hellooos','o','i') from dual;

select translate('hellooos','o','i') from dual;

select translate('hollooos','o','i') from dual;

select abs(-58) ;

select abs(-58) from dual;

select ceil(22.1) from dual;

select cos(45) from dual;

select cos(1) from dual;

select cos(1) from dual;

select cos(0) from dual;

select exp(1) from dual;

select floor(123.96) from dual;

select mod(10,2) from dual;

select mod(5,2) from dual;

select power(10,2) from dual;

select round(10,[1])  from dual 
;

select round(10,[,1])  from dual 
;

select sign*=(69) from dual;

select sign=(69) from dual;

select sign(69) from dual;

select sign(1) from dual;

select sign(2) from dual;

select sign(-2) from dual;

select sign(-27) from dual;

select sqrt(25);

select sqrt(25) from dual;

select sqrt(27) from dual;

select truncate(15,3);

select truncate(15,3) from dual;

select trunc(15,3) from dual;

select trunc(27,3) from dual;

select trunc(27,1) from dual;

select sysdate;

select sysdate from dual;

select add_months(sysdate,'3') from dual;

