CREATE TABLE Cust343(
 custid varchar(3) primary key,
 Lname varchar(15),
 Fname varchar(15),
 area varchar(2),
 phoneno numeric(8,0)
 );

CREATE TABLE Movie343(
 Mvno numeric(2,0) primary key,
 title varchar(25),
 type varchar(10),
 star varchar(25),
 price numeric(8,2)
 );

CREATE TABLE Invoice343(
 Invno varchar(3) primary key,
 Mvno Number(2) foreign key references movie343(mvno),
 custid varchar(3) foreign key references cust343(custid),
 issueDate Date,
 retDate Date
 );

insert into cust343 values
('A01','Bayross','Ivan','sa',6125467),
('A02','Saitwal','Vandana','mu',5560379),
('A03','Jaguste','Pramada','da',4563891),
('A04','Navindgi','Basu','ba',6125401),
('A05','Sreedhar','Ravi','va',NULL),
('A06',NULL,'Rukmini','gh',5125274)

insert into movie343 values
(1,'Bloody Vengeance','action','Jackie Chan',100.00),
(2,'The Firm','thriller','Tom cruise',200.00),
(3,'Pretty Woman','romance','Richard Gere',150.00),
(4,'Home Alone','Comedy','Macaulay Culkin',150.55),
(5,'The Fugitive','Thriller','Harrison Ford',200.00),
(6,'Coma','Suspense','Michael Douglas',100.00),
(7,'Dracula','Horror','Gary Oldman',150.25),
(8,'Quick change','Comedy','Bill Murray',100.00),
(9,'Gone with the wind','Drama','Clarke Gable',200.00),
(10,'Carry on Doctor','Comedy','Leslie Phillips',100.00)

insert into Invoice343 values
('i01',4,'A01','7/23/2012','7/25/2012'),
('i02',3,'A02','8/12/2012','8/15/2012'),
('i03',1,'A02','8/15/2012','8/18/2012'),
('i04',6,'A03','9/10/2012','9/13/2012'),
('i05',7,'A04','8/05/2012','8/08/2012'),
('i06',2,'A06','9/18/2012','9/20/2012'),
('i07',9,'A05','7/07/2012','7/10/2012'),
('i08',9,'A01','8/11/2012','8/14/2012'),
('i09',5,'A03','7/06/2012','7/09/2012'),
('i10',8,'A06','9/03/2012','9/06/2012')

﻿select * from cust343

select * from movie343

select * from invoice343

select concat(fname,' ',lname) as "Name" from cust343 

select fname, area from cust343

select distinct(type) from movie343

select concat(fname,' ',lname) as "Name" from cust343 where fname like '_a%'

select concat(fname,' ',lname) as "Name" from cust343 where lname like 'S%' or lname like 'J%'

select concat(fname,' ',lname) as "Name" from cust343 where area like '_a'

select concat(fname,' ',lname) as "Name" from cust343 where area in ('ba','mu','gh')

select concat(fname,' ',lname) as "Name" from cust343 where phoneno is NULL

select * from invoice343 where extract(Month from issueDate) = 9

select * from invoice343 where custid in ('A01','A02')

select title from movie343 where type in ('action','Comedy')

select title, price, price*15 as "New Cost" from movie343 where price>159

select title,type from movie343 where type not like 'Horror'

select title,sqrt(price) from movie343

select type, avg(price) from movie343 group by type

select concat(fname,' ',lname), title from invoice343, cust343, movie343 where invoice343.custid = cust343.custid and invoice343.mvno = movie343.mvno

select concat(fname,' ',lname), area, custid from cust343 where phoneno is NULL

delete from invoice343 where retdate <= '7/10/1993'

update cust343 set area = 'vs' where custid = 'A05'

select title, invoice343.custid, invoice343.mvno from movie343, invoice343 where invoice343.mvno = movie343.mvno

select concat(fname,' ',lname), title, to_char(retdate, 'Month') as "Return Month" from cust343, invoice343, movie343 where cust343.custid = invoice343.custid and movie343.mvno = invoice343.mvno

select cust343.custid from invoice343, cust343 where mvno in (select mvno from movie343 where star = 'amir') and invoice343.custid = cust343.custid

select title from movie343, invoice343, cust343 where invoice343.custid = cust343.custid and invoice343.mvno = movie343.mvno and fname = 'Vandana'

alter table invoice343 add column remark varchar(25)

select movie343.mvno from movie343, invoice343, cust343 where invoice343.custid = cust343.custid and invoice343.mvno = movie343.mvno and fname = 'Pramada'

update cust343 set phoneno = 466389 where fname = 'Pramada'

update invoice343 set issueDate = '07/24/1993' where invoice343.custid = 'A01'

update movie343 set price = 250.00 where title = 'Gone with the wind'

delete from invoice343 where invno = 'i05'

delete from invoice343 where retdate <= '7/10/1993'

update cust343 set area = 'vs' where custid = 'A05'

update cust343 set fname = 'Sasi' where lname = 'Rukmini'

update movie343 set price = price + 100

update cust343 set area = 'LA' where fname = '_r%'

delete from cust343 where area = 'ba'
