create table telebe(
t_id int primary key ,
t_ad nvarchar(50),
t_soyad nvarchar(50),
t_tel char(10)
)
create table adres(
id int  primary key,
t_adres nvarchar(50),
)

select *from telebe
select *from adres
select *from telebe A inner join adres B on A.t_id=B.id
select *from telebe A left join adres B on A.t_id=B.id
select *from telebe A right join adres B on A.t_id=B.id
select *from telebe A full join adres B on A.t_id=B.id

select *from telebe A left join adres B on A.t_id=B.id
select *from telebe A left join adres B on A.t_id=B.id where B.id is null
