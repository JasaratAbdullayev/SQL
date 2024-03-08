create table telebe (
telebe_id int identity(1,1) primary key,
telebe_ad nvarchar(50) ,
telebe_soyad nvarchar(50),
telebe_yas tinyint ,
telebe_gpa tinyint)

select top(2)* from  telebe order by telebe_gpa desc
select  telebe_gpa from telebe where telebe_gpa between 80 and 95

update telebe set telebe_yas='22' where telebe_id in (2,5)
select *from telebe
select * from telebe where telebe_soyad like ('%ev') and telebe_ad like ('a%')
