create table qualification(
id int primary key identity(1,1),
name nvarchar(80) not null,
)
insert into qualification values('inf tehlukesizliyi2')
create table instructor(
id int primary key identity(1,1),
name nvarchar(50) not null,
surname nvarchar(50) not null,
father_name nvarchar(50) not null,
pin char(7) unique not null,
phone_number char(10) not null,
dateofbirth date not null,
qualification_id int FOREIGN KEY references qualification(id),
seniority tinyint not null,
status bit default 1
)
insert into instructor values('samil','suleymanli','A','1223453','3454354','2004-02-12',1,2)
create table university(
id int primary key identity(1,1),
name nvarchar(100) not null
)
create table student(
id int primary key identity(1,1),
name nvarchar(50) not null,
surname nvarchar(50) not null,
father_name nvarchar(50) not null,
pin char(7) unique not null,
university_id int FOREIGN KEY references university(id), 
qualification_id int not null,
adress nvarchar(100) not null,
phone_number char(10) not null,
email varchar(70) not null,
)
create table package(
id int primary key identity(1,1),
name nvarchar(50) not null,
price float not null,
period varchar not null
)
create table section(
id int primary key identity(1,1),
name nvarchar(50) not null
)
create table topic(
id int primary key identity(1,1),
name nvarchar(50) not null
)
create table package_section(
id int primary key identity(1,1),
package_id int foreign key references package(id),
section_id int foreign key references section(id)
)
create table package_topic(
id int primary key identity(1,1),
package_id int foreign key references package(id),
topic_id int foreign key references topic(id)
)
create table registration(
id int primary key identity(1,1),
student_id int foreign key references student(id),
package_id int foreign key references package(id),
contract_date date not null,
sale float default 0,
status bit default 1,
instructor_id int foreign key references instructor(id)
)
create table payment(
id int primary key identity(1,1),
registration_id int foreign key references registration(id),
date date default getdate(),
price float not null
)
create table video(
id int primary key identity(1,1),
name varchar(100) not null,
link varchar(200) not null,
)
create table topic_video(
id int primary key identity(1,1),
video_id int not null,
topic_id int not null
)


Select * from package
Select * from registration


--1.Full stack paketi ucun qeydiyyatdan kecen telebelerin sayini tapin:

select count(registration.student_id) from registration
left join package on registration.package_id=package.id
where package.name='Full Stack'

--2.Kursun ayliq dovriyyesini hesablayin

select sum(package.price) from registration,package where package.id=registration.package_id and registration.status=1


--7.Hal-hazirda kursun nece telebesi var

select count(student_id) from registration where DATEDIFF(day,GETDATE(),registration.contract_date)>0

--8.Her paket uzre her telimcinin ders kecdiyi telebe sayini tapin

select package.name,instructor.name,COUNT(student.id) from registration 
left join student on registration.student_id=student.id
left join package on package.id=registration.package_id
left join instructor on registration.instructor_id=instructor.id
group by package.name,instructor.name




--9.Her paket uzre her bolmenin her movzusu uzre nece video derslik var.

select * from package,topic,section left join package_section on section.id=package_section.section_id 
left join package_topic on package_topic.topic_id=topic.id



