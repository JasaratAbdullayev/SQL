create table istifadeci (
istifadeci_id int identity(1,1) primary key ,
istifadeci_adi nvarchar(50) ,
istifadeci_soyad nvarchar(50)
)
create table telefon(
telefon_id int identity(1,1),
telefon_nomre char(20) ,
)    


insert into telefon
values
('050-456-45-45')
select * from telefon


select * from istifadeci where 
exists (select * from telefon where telefon.istifadeci_id=istifadeci.istifadeci_id  and telefon.telefon_nomre like '070%') and
exists (select * from telefon where telefon.istifadeci_id=istifadeci.istifadeci_id  and telefon.telefon_nomre like '050%') and
exists (select * from telefon where telefon.istifadeci_id=istifadeci.istifadeci_id  and telefon.telefon_nomre like '055%')




update telefon set telefon_nomre=replace(telefon_nomre, '+994','0') 

update telefon set telefon_nomre=replace(telefon_nomre, '-','') 



select * from telefon

