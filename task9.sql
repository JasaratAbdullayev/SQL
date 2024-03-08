create table advisor(
A_id int primary key,
A_name nvarchar(50),
A_address nvarchar(100)
)

create table student(
S_id int primary key ,
S_name nvarchar(50) not null,
S_gpa tinyint not null,
S_birthday date not null,
A_id int null foreign key references advisor(A_id) 
)

insert  advisor  values (101,N'javid',N'Rome'), (102,N'Hasan',N'Baku'),(103,N'Fuad',N'Ganja'),(104,N'Emil',N'Baku')
insert student values (111,N'Huseyn',88,N'2001.11.01',103),(222,N'Togrul',75,N'2002.10.02',102),(333,N'Ali',94,N'2003.08.03',102),(444,N'Orxan',75,N'2002.01.02',101)
insert into student (S_id,S_name,S_gpa,S_birthday)
values (555,N'Elvin',57,N'2000.05.07')

select *from student
select *from advisor

--buraqeder  sual 1dir

select  top(3) *from student order by S_gpa asc -- buraqeder sual 2

alter table student
alter column S_name nvarchar(50) --- bu iki alter alt alta yazilir ve sual 3un cavabidi
select *from student where S_birthday>N'2002.01.01' -- buraqeder sual5




select *from advisor where A_name like ('h%') -- buraqeder sual6



update student set A_id=104 where S_id=555-- buraqeder sual4

select *from student where S_gpa >80 and S_birthday not like (N'%.08.&')  ---sual 8in cavabi


alter table student
add S_scholarship smallmoney


update student set S_scholarship=4500 where S_gpa>81 
update student set S_scholarship=2000 where S_gpa< 80 and S_gpa> 51   -- alterli ve updateli biryerde sual11in cavabidi

select format(S_scholarship ,'C') from student ---sual 12nin cavabidi 
select distinct * from advisor
select  distinct  A_address from advisor ---sual10nun cavabi


------------------------------------------------------------
------------------------------------------------------------

create table employee(
emp_id int primary key identity(1,1),
emp_name nvarchar(50),
emp_salary smallmoney,
annual_bonus int,
gender nvarchar(1),
dept_id int foreign key references department(dept_id)
)
create table department(
dept_id int  primary key,
dept_name nvarchar(50),
location_id int foreign key references location(l_id)
)
create table location (
l_id int  primary key,
l_name nvarchar(50)
)
----task1
select  emp_name,dept_name from employee full join department on employee.dept_id=department.dept_id group by emp_name,dept_name
select *from employee
select *from department

----task2
select emp_name,dept_name from employee left join department on employee.dept_id=department.dept_id group by emp_name,dept_name
select *from employee
select *from department


----task3
select dept_name,emp_name from employee right join department on employee.dept_id=department.dept_id group by emp_name,dept_name
select *from employee
select *from department
----task4
select emp_id,emp_name,dept_name from employee full join department on employee.dept_id=department.dept_id group by emp_id,emp_name,dept_name
select *from employee
select *from department

----task5
select  emp_name,dept_name, l_id from department full join employee on employee.dept_id=department.dept_id
                                       left join location on department.location_id=location.location_id group by emp_name,dept_name, l_id



select *from employee
select *from department
select *from location