create table  Employee(
employee_id varchar(15),
ename varchar(20),
date_of_birth date,
salary numeric(9,4));

create table  Dep(
dep_name varchar(10),
location varchar(10),
budget numeric(9,4));
select * from dep;
select * from Instructor;






insert into Employee (employee_id,ename ,date_of_birth ,salary) values 
('A01','Bhanu','19-sep-1999',100000),
('A02','Niranjan','16-sep-1999',500000),
('A03','Achyuth','07-Aug-2001',100000),
('A04','Rahul','08-Nov-2001',151000),
('A05','Abhi','09-Aug-1999',1541210);
insert into Employee values ('A06','Deekshith','16-jan-2000',152054.652);
insert into Employee values ('A07','Divya','27-aug-2000',15205.64);
insert into Employee values ('A08','Bindu','1-jan-1999',1520540.54);
insert into Employee values ('A09','Babji','13-jan-1999',1520444.132);
insert into Employee values ('A10','Madiri Roshitha','13-feb-2000',1025125.21);
insert into Employee values('A11',' Ram','12-march-2000',514525.0221);

select * from Employee;

/*1*/select ceiling(Salary) from Employee ;
/*2*/select floor(Salary) from Employee;
/*3*/select round(Salary,2) from Employee;
/*4*/select pow(salary,2) as salary_square from Employee;
/*5*/select lower(ename) from Employee;
/*6*/select ename,length(ename) from Employee;
/*7*/select Lpad(ename,15,'*') from Employee;
/*8*/select Rpad(ename,15,'*') from Employee;
/*9*/select RTrim(ename,' ') from Employee;
/*10*/select LTrim(ename,' ') from Employee;
/*11*/select SUBSTRING(ename,2,3) from Employee;
/*12*/select to_char(date_of_birth,'DD/Month/YYYY') from Employee;
/*13*/select to_date('20170103','YYYYMMDD');
/*14*/select to_date('2017 Feb 20','YYYY Mon DD');
/*15*/select * from Employee where Rtrim(to_char(date_of_birth,'month'),' ')='august';
