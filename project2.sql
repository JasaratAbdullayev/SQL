create table Satici(
Satici_ID int identity(1,1) primary key,
Satici_ad nvarchar(20),
Satici_Soy nvarchar(20),
Satici_Ata nvarchar(20),
Satici_Maas int
)
create table Alici(
Alici_ID int identity(1,1) primary key,
Alici_ad nvarchar(20),
Alici_Soy nvarchar(20),
Alici_Ata nvarchar(20),
Alici_Tel nvarchar(14),
Alici_Mail nvarchar(30)
)
create table Mehsul(
Mehsul_ID int identity(1,1) primary key,
Mehsul_ad nvarchar(20),
Mehsul_Alis int,
Mehsul_Satis int,
Meh_Mod int foreign key references Model(Model_ID)
)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Macbook pro',2000,3000,1)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Macbook pro',2000,3000,1)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'RTX 4090',5000,25000,6)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'RTX 4080',3000,3200,6)
insert into Mehsul (Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Radeon 7900 xt',1000,2000,5)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Radeon 6900 xt',3000,2000,5)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Core i9',500,5000,4)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Core i7',100,1000,4)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Ryzen 7 7900X',5000,5100,5)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Gammax 300',10,50,5)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'legion duel 2',1250,2300,6)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'S6 max',50,100,6)
insert into Mehsul(Mehsul_ad,Mehsul_Alis,Mehsul_Satis,Meh_Mod) values(N'Rog strix',234,536,7)
alter table Satici
add filial_id int foreign key references  Filial(Filia_ID)

create table Model(
Model_ID int identity(1,1) primary key,
Model_ad nvarchar(20),
Mod_Mar int foreign key references Marka(Marka_ID)
)
create table Marka(
Marka_ID int identity(1,1) primary key,
Marka_ad nvarchar(20)
)
create table Filial(
Filia_ID int identity(1,1) primary key,
Filia_ad nvarchar(20),
Filia_un nvarchar(20),
Filial_nom nvarchar(20),
Filial_gmail nvarchar(20)
)

Create table Satis(
Satis_Meh int foreign key references Mehsul(Mehsul_ID),
Satis_Alc int foreign key references Alici(Alici_ID),
Satis_Stc int foreign key references Satici(Satici_ID)
)
alter table satis
add tarix date
insert into satis values (1,1,1,N'2020-02-12')
insert into satis values (2,2,2,N'2020-04-23')
insert into satis values (3,3,3,N'2020-10-10')
insert into satis values (4,4,4,N'2020-05-20')
insert into satis values (5,5,5,N'2020-06-30')
insert into satis values(6,6,1,N'2020-04-19')

 insert into Alici values (N'Seymur',N'Cəbiyev',N'Bəkir',0708965232,'seymurceb@gmail.com')
insert into Alici values (N'Heydər',N'Şükürov',N'Amin',0773562589,'heydershkurov02@gmail.com')
insert into Alici values(N'Nİhad',N'Mirəliyev',N'Bəkir',0502869623,'nihad2134@gmail.com')
insert into Alici values (N'Seymur',N'Cəbiyev',N'Bəkir',0708965232,'seymurceb@gmail.com')
insert into Alici values (N'Seymur',N'Cəbiyev',N'Bəkir',0556965232,'seymurceb@gmail.com')
insert into Alici values (N'Heydər',N'Şükürov',N'Amin',0773462589,'heydershkurov02@gmail.com')
insert into Alici values(N'Nİhad',N'Mirəliyev',N'Bəkir',0504569623,'nihad2134@gmail.com')

insert into Satici(Satici_ad,Satici_Soy,Satici_Ata,Satici_Maas) values ('Kamal','Əliyev','Heydər',400)
insert into Satici(Satici_ad,Satici_Soy,Satici_Ata,Satici_Maas) values ('Cəsarət','Abdullayev','Polad',350)
insert into Satici(Satici_ad,Satici_Soy,Satici_Ata,Satici_Maas) values ('Davud','Kərimov','Aslan',420)
insert into Satici(Satici_ad,Satici_Soy,Satici_Ata,Satici_Maas) values('Cavid','Qurbanli','Pasha',500)
insert into Satici(Satici_ad,Satici_Soy,Satici_Ata,Satici_Maas) values('Naqi','Abbasov','Sakir',350)
insert into Satici(Satici_ad,Satici_Soy,Satici_Ata,Satici_Maas) values('Zamin','Əsədullayev','Zakir',400)




insert into Filial(Filia_ad,Filia_un,Filial_nom,Filial_gmail) values ('Insaatcilar','Yasamal',0705625289,'yasamal@gmail.com')
insert into Filial(Filia_ad,Filia_un,Filial_nom,Filial_gmail) values ('Sumqayit','9mkr',0504125289,'vorzakon@gmail.com')
insert into Filial(Filia_ad,Filia_un,Filial_nom,Filial_gmail) values ('Koroglu','Razin',0504152897,'rovsen@gmail.com')
insert into Filial(Filia_ad,Filia_un,Filial_nom,Filial_gmail) values ('Abseron','Xirdalan',0557892565,'xirdalan@gmail.com')
insert into Filial(Filia_ad,Filia_un,Filial_nom,Filial_gmail) values ('Gence','Kristal',0772568945,'gence@gmail.com')



insert into Marka values(N'APPLE')
insert into Marka values(N'Lenovo')
insert into Marka values(N'MSI')
insert into Marka values(N'Intel')
insert into Marka values(N'AMD')
insert into Marka values(N'NVIDIA')

insert into Model values(N'Kuller',1)
insert into Model values(N'Processor',4)
insert into Model values(N'Ekran karti',5)
insert into Model values(N'Ekran karti',6)
insert into Model values(N'Laptop',1)
insert into Model values(N'Telefon',2)
insert into Model values(N'Ana kart',3)


insert into Satici (filial_id) values (1)
insert into Satici (filial_id) values (2)
insert into Satici (filial_id) values (3)
insert into Satici (filial_id) values (4)
insert into Satici (filial_id) values (5)


--1
select  Filia_ad,count(*) as 'Isci say' from satici
left join Filial on Satici.filial_id=Filial.Filia_ID
group by Filia_ad

--2-----
select  Filia_ad,count(*) as 'Mehsul say'from Mehsul
left join Filial on Mehsul.filial_id=Filial.Filia_ID
group by Filia_ad

--3
select  Satici_ad, sum(Mehsul_satis) as 'Umumi mebleg'  from satis
left join Satici on Satis.Satis_Stc=Satici.Satici_ID
left join Mehsul on Satis.Satis_Meh=Mehsul.Mehsul_ID
where datediff(month,tarix,getdate())=0
group by Satici_ad 

--4

select   Satici_ad,Satici_Maas,count (mehsul_ad) as 'Satdigi mehsul say' from satis
left join Satici on Satis.Satis_Stc=Satici.Satici_ID
left join Mehsul on Satis.Satis_Meh=Mehsul.Mehsul_ID
where datediff(month,tarix,getdate())=0
group by satici_ad,Satici_Maas
update Satici set satici_Maas=(Satici_Maas*1.01)

--5
select sum(Mehsul.Mehsul_Satis),Filial.Filia_ad from satis
inner join satici on satis.Satis_Stc=satici.Satici_ID and MONTH(satis.tarix)=MONTH(GETDATE())
left join mehsul on satis.Satis_Meh=Mehsul.Mehsul_ID
left join filial on filial.Filia_ID=satici.filial_id group by filial.Filia_ad

--6
select Filial.Filia_ad,sum(mehsul.mehsul_alis) as 'Qeder',sum(Mehsul.Mehsul_Satis) as 'GElir' from satis
inner join satici on satis.Satis_Stc=satici.Satici_ID and MONTH(satis.tarix)=MONTH(GETDATE())
left join mehsul on satis.Satis_Meh=Mehsul.Mehsul_ID
left join filial on filial.Filia_ID=satici.filial_id group by filial.Filia_ad

 



--7
Select Mehsul_ad from Mehsul
where Mehsul_Satis=(Select Max(Mehsul_Satis) from Mehsul) or 
Mehsul_Satis=(Select Min(Mehsul_Satis) from Mehsul)

select *from alici
select *from filial
select *from marka
select *from mehsul
select *from model
select *from satici
select *from satis
