create table istifadeci (
istifadeci_id int identity(1,1) primary key ,
istifadeci_adi nvarchar(50) ,
istifadeci_soyad nvarchar(50)
)
create table telefon(
telefon_id int identity(1,1) primary key,
telefon_nomre char(20) unique,
istifadeci_id int foreign key references istifadeci(istifadeci_id)
)     


insert into telefon
values
('050-456-45-45')



select * from istifadeci where 
exists (select * from telefon where telefon.istifadeci_id=istifadeci.istifadeci_id  and telefon.telefon_nomre like '070%') and
exists (select * from telefon where telefon.istifadeci_id=istifadeci.istifadeci_id  and telefon.telefon_nomre like '050%') and
exists (select * from telefon where telefon.istifadeci_id=istifadeci.istifadeci_id  and telefon.telefon_nomre like '055%')



select concat('+994',telefon_nomre) as 'forma' from telefon where telefon_nomre not like '+994%' 
update telefon set telefon_nomre=concat('+994',telefon_nomre) where telefon_nomre not like '+994%'
update telefon set telefon_nomre=replace(telefon_nomre, '%-%',' ') where telefon_nomre like '%-%'
select *from telefon






