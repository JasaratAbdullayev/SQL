create table satici(
satici_id int primary key identity (1,1),
satici_ad nvarchar(50),
satici_soyad nvarchar(50),
satici_ataad nvarchar(50)
)
create table alici(
alici_id int primary key ,
alici_ad nvarchar(50),
alici_soyad nvarchar(50)
)
create table marka (
marka_id int identity(1,1) primary key,
marka_ad nvarchar(20),
)
create table model(
model_id int identity(1,1) primary key,
model_ad nvarchar(20),
marka_id int foreign  key references marka(marka_id)
)
create table kateqorya(
kateqorya_id int identity(1,1) primary key,
kateqorya_ad nvarchar(50)
)
create table mehsul(
mehsul_id int identity(1,1) primary key,
mehsul_ad nvarchar(50),
mehsul_alis int,
mehsul_satis int,
mehsul_fin nvarchar(10),
model_id int foreign key references model(model_id),
kateqorya_id int foreign key references kateqorya(kateqorya_id)
)
 create table filial(
 filial_id int primary key,
 filial_ad nvarchar(50),
 filial_unvan nvarchar(50) unique
 )


