create table Customer_Master(
custid varchar(3) Primary Key,
Lname  varchar(15) ,
Fname  varchar(15),
area   varchar(2),
phoneno numeric(8,0) );

create table movie_Master(
Mvno Numeric(2,0) Primary Key,
title  varchar(25) ,
Typ  varchar(10),
star   varchar(25),
price numeric(8,2) );



create table  Invoice_transaction(
Invno Varchar(3) Primary Key,
Mvno  Numeric(2,0)  constraint mv1 references movie_Master(mvno),
custid  varchar(3) constraint cust references   Customer_Master(custid),
issueDate   Date,
retDate Date );


insert into Customer_Master values ('A01','Bayross','Ivan','sa',6125467);
insert into Customer_Master values ('A02','Saitwal','Vandana','mu',5560379);	
insert into Customer_Master values ('A03','Jaguste','Pramada','Da',4563891);
insert into Customer_Master values ('A04','Navindgi','Basu','ba',6125401);
insert into Customer_Master values ('A05','Sreedhar','Ravi','va',NULL);
insert into Customer_Master values ('A06','NULL','Rukmini','gh',5125274);
select * from Customer_Master;

insert into movie_Master values (1,'Bloody Vengeance','action','Jackie Chan',100.00);
insert into movie_Master values (2,'The Firm','thriller','Tom cruise',200.00);25-jul-2012
insert into movie_Master values (3,'Pretty Woman','romance','Richard Gere',150.00);
insert into movie_Master values (4,'Home Alone','Comedy','Macaulay Culkin',150.55);
insert into movie_Master values (5,'The Fugitive','Thriller','Harrison Ford',200.00);
insert into movie_Master values (6,'Coma','Suspense','Michael Douglas',100.00);
insert into movie_Master values (7,'Dracula','Horror','Gary Oldman',150.25);
insert into movie_Master values (8,'Quick change','Comedy','Bill Murray',100.00);
insert into movie_Master values (9,'Gone with the wind','Drama','Clarke Gable',200.00);
insert into movie_Master values (10,'Carry on Doctor','Comedy','Leslie Phillips',100.00);
select * from movie_Master;


insert into Invoice_transaction values ('i01',4,'A01','23-jul-2012','25-jul-2012');
insert into Invoice_transaction values ('i02',3,'A02','12-aug-2012','15-aug-2012');
insert into Invoice_transaction values ('i03',1,'A02','15-aug-2012','18-aug-2012');
insert into Invoice_transaction values ('i04',6,'A03','10-sep-2012','13-sep-2012');
insert into Invoice_transaction values ('i05',7,'A04','05-aug-2012','08-aug-2012');
insert into Invoice_transaction values ('i06',2,'A06','18-sep-2012','20-sep-2012');
insert into Invoice_transaction values ('i07',9,'A05','07-jul-2012','10-jul-2012');
insert into Invoice_transaction values ('i08',9,'A01','11-aug-2012','14-aug-2012');
insert into Invoice_transaction values ('i09',5,'A03','06-jul-2012','09-jul-2012');
insert into Invoice_transaction values ('i10',8,'A06','03-sep-2012','06-sep-2012');
select * from Invoice_transaction;


/*1*/SELeCT concat(lname,' ',fname) as name from  Customer_Master;
/*2*/select * from Customer_Master;
/*3*/SELeCT fname,area  from  Customer_Master;
/*4*/select Typ from movie_Master;
/*5*/select concat(lname,' ',fname) as name from Customer_Master where fname like '_a%';
/*6*/select concat(lname,' ',fname) as name from Customer_Master where lname like 'S%' OR  LNAME LIKE 'J%';

/*7*/select concat(lname,' ',fname) as name from Customer_Master where lname between 'B' and 'S';
/*8*/select concat(lname,' ',fname) as name from Customer_Master WHERE AREA LIKE '_a%';
/*9*/select concat(lname,' ',fname) as name from Customer_Master where area='ba' or area='mu' or area='gh';
/*10*/select concat(lname,' ',fname) as name from Customer_Master where phoneno is NULL;
/* 11*/ select * from Invoice_transaction where extract ( month from issueDate) = 09;                                                                                                                  
/*12*/ select * from Invoice_transaction where custid in ('A01','A02');
/*13*/ select title from movie_Master where typ='action' or typ = 'Comedy';
/*14*/ select title from movie_Master where price >150 and price <=200;
/*15*/ select price*15 AS NEWCOST from movie_Master where price >159;
/*16*/ select price*15 "NEW_PRICE" from  movie_Master where price>159;
/*17*/ select * from  movie_Master order by title;
/*18*/select * from movie_master order by typ , title;
/*19*/ select title,typ from movie_Master where type not in ('horror');
/*20*/ select sqrt(price) from movie;
/*21*/ select type,avg(price) from movie group by type;
/*22*/select * from movie_master group by(mvno);
/*23*/select count(mvno) from movie_master where (mvno)>2;
/*24*/
/*25*/select concat(lname,' ',fname) as name, area,	custid from customer_master;
/*26*/delete  from invoice_transaction where retdate <'10-july-1993';







