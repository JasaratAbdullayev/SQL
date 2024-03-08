create table ixtisas(
ixtisas_id int primary key identity(1,1),
name nvarchar(80) not null,
)
insert ixtisas values(N'Kiber_tehlukesizliyi'),(N'SQl'),(N'Web_development'),(N'Design')

create table telimci(
telimci_id int primary key identity(1,1),
telimci_ad nvarchar(50) not null,
telimci_soyad nvarchar(50) not null,
telimci_ataad nvarchar(50) not null,
telimci_fin char(7) unique not null,
telimci_tel char(10) not null,
telimci_tevellud date not null,
ixtisas_id int FOREIGN KEY references ixtisas(ixtisas_id),
staj tinyint not null,
status bit default 1
)
insert Telimci values(N'Zaur',N'Qasimov',N'Əkbər','83JBKLA','0775233215','2000.01.02', 1,2,1)
insert Telimci values(N'Elmira',N'Mehdiyeva',N'Nazim','47HJKYT','0506328802','1999.06.21',4,4,1)
insert Telimci values(N'Emin',N'Memmedov',N'Xanid','35YUBTQ','0554847734','1997.04.12',3,2,0)
insert Telimci values(N'Gülana',N'Hacizade',N'Nesib','76JKLPQ','0775233215','2004.01.01',1,1,1)
insert Telimci values(N'Aysu',N'Rehimova',N'Mahir','91AHPTR','0503093875','2001.02.26',2,3,0)

create table paket(
paket_id int primary key identity(1,1),
paket_ad nvarchar(50) not null,
paket_deyer float not null,
paket_muddet varchar not null
)
insert paket values(N'Veb','120','3')
insert paket values(N'Şəbəkə','150','4'),(N'SQL','180','6 ')
insert paket values(N'Full stack','180','6 ')

create table bolme(
bolme_id int primary key,
bolme_ad nvarchar(30) not null
)
insert bolme values(1,N'C#'),(2,N'Sql'),(3,N'API'),(4,N'JS')
create table movzu(
movzu_id int primary key,
movzu_ad nvarchar(30) not null
)
insert Movzu values(1,N'Metodlar'),(2,N'OOP'),(3,N'Nezeriyye')

create table paket_bolme(
paket_bolme_id int primary key identity(1,1),
paket_id int foreign key references paket(paket_id),
bolme_id int foreign key references bolme(bolme_id)
)
insert paket_bolme values (2,1),(2,2),(5,3),(6,4)
insert paket_bolme values(7,3)

create table paket_movzu(
paket_movzu_id int primary key identity(1,1),
paket_id int foreign key references paket(paket_id),
movzu_id int foreign key references movzu(movzu_id)
)
insert paket_movzu values (2,1),(2,2),(5,3),(6,3)
insert paket_movzu values(7,2)

create table telebe(
telebe_id int primary key,
telebe_ad nvarchar(30) not null,
telebe_soyad nvarchar(30) not null,
telebe_ataad nvarchar(30) not null,
telebe_fin varchar(30) null,
universitet_id int foreign key references universitet(universitet_id),
ixtisas_id int foreign key references ixtisas(ixtisas_id),
kurs_id int foreign key references kurs(kurs_id),
telebe_unvan nvarchar(30) not null,
telebe_tel nvarchar(30) not null,
telebe_gmail nvarchar(30) not null
)
insert Telebe values(1,N'Ilkana',N'Kazimova',N'Mahmud','67QLKOD',3,2,2,'Baki.ZahidXelilov','0504266010','ilkanahajizada99@gmail.com')
insert Telebe values(2,N'Nezrin',N'Hesenli',N'Mehemmed','56QLADR',1,3,4,'Baki.HesenbeyZerdabi','0552730595','nezrinhesenli00@gmail.com')
insert Telebe values(3,N'Anar',N'Babayev',N'Samir','78SJBNQ',5,1,3,'Baki.MikayilMusfiq','0507323355','anarbabayev11@gmail.com')
insert Telebe values(4,N'Umid',N'Hacizade',N'Rahim','81JMKLA',1,4,1,'Baki.SemedVurğun','0558694979','umidhacizada13@gmail.com')

create table universitet(
universitet_id int primary key,
universitet_ad nvarchar(30) not null
)
insert universitet values(1,N'ADNSU'),(2,N'BDU'),(3,N'UNEC'),(4,N'BMU'),(5,N'BANM')


create table kurs(
kurs_id int primary key,
kurs_ad nvarchar(30) not null
)
insert kurs values(1,N'AZGIS'),(2,N'Maarif'),(3,N'Master_School'),(4,N'Araz')

create table qeydiyyat(
qeydiyyat_Id int primary key,
telebe_id int foreign key references telebe(telebe_id),
paket_id int foreign key references paket(paket_id),
qeydiyyat_tarix date not null,
endirim money,
status bit default (1),
telimci_id int foreign key references telimci(telimci_id)
)
insert Qeydiyyat values(1,1,2,'2021.02.04','50.00',1,1),(2,2,5,'2020.09.15','20.00',0,2),
                       (3,3,5,'2022.08.21','00.00',1,3),(4,4,6,'2021.01.19','20.00',0,4)
					   insert Qeydiyyat values(5,4,7,'2021.01.19','20.00',0,4)



create table odenis(
oedenis_id int primary key,
qeydiyyat_Id int foreign key references qeydiyyat(qeydiyyat_Id),
odenis_tarix date,
odenis_deyer money not null
)
insert odenis values(1,1,'2021.06.04','600.00'),(2,2,'2022.03.15','360.00'),(3,3,'2022.11.21','540.00'),(4,4,'2021.06.04','360.00')


create table video(
video_id int primary key,
video_link nvarchar(50) not null,
movzu_id int foreign key references movzu(movzu_id),
bolme_id int foreign key references bolme(bolme_id),
paket_id int foreign key references paket(paket_id),
telimci_id int foreign key references telimci(telimci_id)
)
insert Video values(1,N'link1',1,2,2,4),(2,N'link2',2,1,5,5),(3,N'link3',1,3,6,2),(4,N'link4',3,2,2,1)
insert Video values(5,N'link5',2,2,7,1)


select * from ixtisas
select * from telimci  
select * from movzu
select * from bolme
select * from paket 

select *from qeydiyyat  left join paket on qeydiyyat.paket_id=paket.paket_id

select * from paket_movzu
select * from paket_bolme
select * from universitet
select * from kurs
select * from telebe
select * from qeydiyyat
select * from odenis
select * from video

---sual1--Full stack paketi ucun qeydiyyatdan kecen telebelerin sayini tapin:



select count(telebe_id)from qeydiyyat  left join paket on qeydiyyat.paket_id=paket.paket_id where paket_ad like 'Full stack'
  
---sual2--Kursun ayliq dovriyyesini hesablayin


select sum(odenis_deyer-endirim)   from odenis left join qeydiyyat on odenis.qeydiyyat_Id=qeydiyyat.qeydiyyat_Id where status=1
select *from odenis  select *from qeydiyyat

---sual7--Hal-hazirda kursun nece telebesi var
select * from qeydiyyat

select count(telebe_id) from qeydiyyat left join paket on qeydiyyat.paket_id=paket.paket_id 
where datediff(month,qeydiyyat_tarix, getdate())<paket_muddet

---sual8--Her paket uzre her telimcinin ders kecdiyi telebe sayini tapin

select paket_ad,telimci_ad ,count(*) from qeydiyyat left join telebe  on qeydiyyat.telebe_id=telebe.telebe_id   
                                                    left join paket   on qeydiyyat.paket_id=paket.paket_id
					                                left join telimci on qeydiyyat.telimci_id=telimci.telimci_id 
					                                                  group by paket_ad,telimci_ad

																	           
---sual9--Her paket uzre her bolmenin her movzusu uzre nece video derslik var. 

   select paket_ad,paket_bolme_id,paket_movzu_id,count(video_id) as 'video sayi'from qeydiyyat 
                                                    left join paket       on qeydiyyat.paket_id=paket.paket_id 
                                                    left join paket_bolme on qeydiyyat.paket_id=paket_bolme.paket_id
                                                    left join paket_movzu on qeydiyyat.paket_id=paket_movzu.paket_id
                                                    left join video       on qeydiyyat.paket_id=video.paket_id
                                                                          group by paket_ad,paket_bolme_id,paket_movzu_id