create table oorder(
ord_no int primary key,
purch_amt smallmoney not null,
ord_date date not null,
customer_id int foreign key references customer(customer_id),
salesman_id int foreign key references salesman(salesman_id)
)
create table customer(
customer_id int primary key,
cust_name nvarchar(50),
city nvarchar(50),
grade int ,
salesman_id int foreign key references salesman(salesman_id)
)
create table salesman(
salesman_id int primary key,
salesman_name nvarchar(50)
)

insert oorder values(70001 ,150.5 ,'2012-10-05' ,3005 ,5002) ,(70009 ,270.65, '2012-09-10' ,3001, 5005),
(70002, 65.26, '2012-10-05' ,3002 ,5001), (70004, 110.5 ,'2012-08-17', 3009 ,5003),
(70007, 948.5 ,'2012-09-10', 3005, 5002), (70005, 2400.6, '2012-07-27', 3007 ,5001),
(70008, 5760, '2012-09-10', 3002, 5001) ,(70010, 1983.43 ,'2012-10-10', 3004 ,5006),
(70003, 2480.4 ,'2012-10-10', 3009, 5003), (70012 ,250.45 ,'2012-06-27' ,3008 ,5002),
(70011, 75.29 ,'2012-08-17', 3003, 5007), (70013, 3045.6, '2012-04-25', 3002 ,5001)

insert salesman values(5001,'a'),(5002,'b'),(5003,'c'),(5005,'d'),(5006,'e'),(5007,'F')
insert customer values (3002, 'Nick Rimando', ' New York', 100 ,5001),
(3007, 'Brad Davis', ' New York ',200, 5001) ,(3005,' Graham Zusi',' California', 200 ,5002),
 (3008,' Julian Green',' London',  300 ,5002),(3004 ,'Fabian Johnson', ' Paris', 300, 5006),
 (3009,' Geoff Cameron',  'Berlin ',100 ,5003),(3003 ,'Jozy Altidor',' Moscow', 200, 5007),
(3001,' Brad Guzan',' London',  null, 5005)

select *from customer
select *from salesman
select *from oorder


select avg(purch_amt) as 'Kenanin pullarinin ortalamasi' from oorder ---A
select distinct (salesman_id) count from oorder                      ---B
select count(*) as 'numer of customers' from customer                ---C
select max(grade) from customer  group by city                       ---D
select max(purch_amt) as'max purchase of customers' from oorder  group by customer_id order by count( purch_amt)  ---E
select max (purch_amt) from oorder where ord_date like '2012-08-17' group by salesman_id  ---F
select max(grade) from customer where customer_id between '3002' and '3007' group by customer_id ---G
select count(*) from oorder where ord_date='2012-08-17' --this is orders on '2012-08-17'
select count(*) from oorder ---this is all of orders   -->H
select count(salesman_id) from customer  group by city-------I 

