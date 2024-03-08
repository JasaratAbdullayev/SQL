create table istifadeci (
istifadeci_id int identity(1,1) primary key ,
istifadeci_adi nvarchar(50) ,
istifadeci_soyad nvarchar(50)
)
create table telefon(
telefon_id int identity(1,1) primary key,
telefon_nomre char(10) unique,
istifadeci_id int foreign key references istifadeci(istifadeci_id)
)     


select * from istifadeci, telefon 
where  istifadeci

select * from nomre where nomre.