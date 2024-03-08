create table dept(
dept_id int primary key,
dept_name nvarchar(50),
dept_loc nvarchar(50)
)
select *from dept
insert dept values(10,N'accounting',N'new_york'),(20,N'research',N'dallas'),(30,N'sales',N'chicago'),(40,N'operations',N'boston')


create table emp(
  emp_no int primary key,
  e_name nvarchar(50),
  job nvarchar(50),
  mgr int,
  hiredate date,
  sal  smallmoney,
  comm int,
  dept_id int foreign key references dept(dept_id)
)

 alter table emp
 alter column sal money
 select *from emp
 



 

insert into emp
values(
7839, N'KING', N'PRESIDENT', null,N'17-11-1981',5000, null, 10);
insert into emp
values(
7698, N'BLAKE', N'MANAGER', 7839,N'01-05-1981',
2850, null, 30
);
insert into emp
values(
7782, N'CLARK', N'MANAGER', 7839,N'9-6-1981',
2450, null, 10
);
insert into emp
values(
7566, N'JONES', N'MANAGER', 7839,
N'2-4-1981',
2975, null, 20
);
insert into emp
values(
7788, N'SCOTT', N'ANALYST', 7566,N'13-JUL-87',
3000, null, 20
);
insert into emp
values(
7902, N'FORD', N'ANALYST', 7566,
N'3-12-1981',
3000, null, 20
);
insert into emp
values(
7369, N'SMITH', N'CLERK', 7902,
N'17-12-1980',
800, null, 20
);
insert into emp
values(
7499, N'ALLEN', N'SALESMAN', 7698,
N'20-2-1981',
1600, 300, 30
);
insert into emp
values(
7521, N'WARD', N'SALESMAN', 7698,
N'22-2-1981',
1250, 500, 30
);
insert into emp
values(
7654, N'MARTIN', N'SALESMAN', 7698,
N'28-9-1981',
1250, 1400, 30
);
insert into emp
values(
7844, N'TURNER', N'SALESMAN', 7698,
N'8-9-1981',
1500, 0, 30
);
insert into emp
values(
7876, N'ADAMS', N'CLERK', 7788,
N'13-JUL-87',
1100, null, 20
);
insert into emp
values(
7900, N'JAMES', N'CLERK', 7698,
N'3-12-1981',
950, null, 30
);
insert into emp
values(
7934, N'MILLER', N'CLERK', 7782,
N'23-1-1982',
1300, null, 10
);
 select *from emp
 --------1
select distinct emp_no,e_name, sal  from emp 
-------------


select *from emp
select *from dept
---------2
select  *from emp where exists (select dept_id from dept where emp.dept_id=dept.dept_id and dept_id=30)
----------

-------3-----
select *from emp order by sal asc offset 2 rows fetch next 2 rows only
------------
--------4

select e_name, dept_name from emp left join dept on emp.dept_id=dept.dept_id
-----------------
-------------5---
select *from emp
update emp set sal=sal+((sal*30)/100) from emp where hiredate<N'15-01-1982'
select *from emp
-----------