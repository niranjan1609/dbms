create table  Employee21(
employee_id varchar(15),
ename varchar(20),
date_of_birth date,
salary numeric(9,2));

select * from Employee21;

create table Department21(
	depname varchar(25),
	location varchar(25),
	budget numeric(10),
	primary key(depname));

select * from Department21;


create table Instructor21(
	id numeric(3),
	iname varchar(25),
	designation varchar(20), 
	salary numeric(10), 
	depname varchar(25),
	primary key(id));

select * from Instructor21;

create table Course21(
	CCode varchar(10) ,
	ctitle varchar(25),
	credits numeric(25),
	depname varchar(10),
	primary key(CCode));

select * from Course21;

create table Section21(
	section_id varchar(5),
	CCode varchar(10),
	sem varchar(8),
	year numeric(5),
	room_no varchar(6));



create table Teach21(
		id numeric(3),
		section_id numeric(5),
		CCode varchar(10),
		SEM varchar(2), 
		year numeric(4),
		primary key(id, section_id, CCode, SEM, year));

	
create table Student21(
	Sid numeric(15),
	sname varchar(20),
	date_of_birth date,
	depname varchar(25),
	primary key(Sid));
  
create table Take20(
	Sid numeric(15),
	section_id numeric(5),
	CCode varchar(10),
	SEM varchar(2),
	year numeric(4),
	grade varchar(2),
	primary key(Sid, section_id, CCode, SEM, year));



insert into Employee21(employee_id,ename ,date_of_birth ,salary) values 
('A01','Bhanu','19-sep-1999',1000),
('A02','Niranjan','16-sep-1999',5000),
('A03','Achyuth','07-Aug-2001',1000),
('A04','Rahul','08-Nov-2001',15100),
('A05','Abhi','09-Aug-1999',15412);
insert into Employee21 values ('A06','Deekshith','16-jan-2000',152.652);
insert into Employee21 values ('A07','Divya','27-aug-2000',15205.64);
insert into Employee21 values ('A08','Bindu','1-jan-1999',1540.54);
insert into Employee21 values ('A09','Babji','13-jan-1999',15244.132);
insert into Employee21 values ('A10','Madiri Roshitha','13-feb-2000',10255.21);
insert into Employee21 values('A11',' Ram','12-march-2000',51455.0221);



insert into Instructor21 values('1','Dheenumeric(2,2)raj','Professor',65000,'csc');
insert into Instructor21 values('2','Hariharan','Professor',65000,'goerge');
insert into Instructor21 values('3','Manikishan','Professor',75000,'lolan');
insert into Instructor21 values('4','Abhinav','Professor',60000,'english');
insert into Instructor21 values('5','Bhanu','Professor',60000,'maths');
insert into Instructor21 values('6','Ayushi','Professor',65000,'goerge');
insert into Instructor21 values('7','Neelam','Professor',65000,'maths');
insert into Instructor21 values('8','Ashwathi','Professor',65000,'csc');
insert into Instructor21 values('9','Niranjan','Professor',60120,null);

insert into Course21 values('cs103','Intro to comp',3,'csc');
insert into Course21 values('cs206','ML',3,'csc');
insert into Course21 values('en103','Advanced eng',3,'english');
insert into Course21 values('ma101','Li Algebra',4,'maths');
insert into Course21 values('ge201','Geography',2,'goerge');
insert into Course21 values('os201','os',2,'csc');

insert into Section21 values('101','cs103','s1',2018,1);
insert into Section21 values('102','cs103','s1',2018,2);
insert into Section21 values('101','en103','s2',2018,3);
insert into Section21 values('104','ge201','s1',2018,4);
insert into Section21 values('104','os201','s1',2018,4);

insert into teach21 values(1,'101','cs103','s1',2018);
insert into teach21 values(3,'101','cs103','s1',2018);
insert into teach21 values(4,'101','en103','s2',2018);
insert into teach21 values(6,'104','ge201','s1',2018);
insert into teach21 values(1,'104','os201','s1',2018);
insert into teach21 values(2,'102','cs103','s2',2010);
insert into teach21 values (3,'103','cs101','s2',2010);
insert into teach21 values(4,'104','cs103','s2',2009);



insert into Student21 values(256,'Sreshta','6-5-1999','csc');
insert into Student21 values(257,'Abhiram','6-25-1999','english');
insert into Student21 values(258,'Vinay','6-9-1999','goerge');
insert into Student21 values(259,'Venkatesh','4-19-1999','maths');

insert into take20 values(256,101,'cs103','s1',2018,'A+');
insert into take20 values(257,101,'en103','s2',2018,'A+');
insert into take20 values(258,104,'ge201','s1',2018,'A');


select * from Section21;
select * from Instructor21;
select * from Take20;
select * from teach21;
select * from course21;



/*1*/select iname from Instructor21 where depname is null;
/*2*/select iname from Instructor21 where depname is not null
/*3*/select count(iname) as Num_Instructors from Instructor21 natural join teach21  where teach21.SEM='s2' and teach21.year=2010;
/*4*/select ccode from teach21 where SEM,year in(select SEM in teach21 where sem='s2') and (select year in teach21 where year=2009)) and ((sem not in(select SEM in teach21 where sem='s2') and year in(select year in teach21 where year=2010));

