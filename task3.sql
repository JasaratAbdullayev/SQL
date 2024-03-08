create table person(
id int primary key identity(1,1)
name varchar(40),
surname varchar(40)
)
create table phone(
id int primary key identity(1,1)
phone_number char(10) unique,
person_id int
)
select * from person where 
exists (select * from phone where phone.person_id=person.id and phone.phone_number like '070%') and
exists (select * from phone where phone.person_id=person.id and phone.phone_number like '050%') and
exists (select * from phone where phone.person_id=person.id and phone.phone_number like '055%')

select concat('+994',phone_number), from phone where phone.phone_number not like '+994%'
update phone set phone.phone_number=concat('+994',phone_number) where phone.phone_number not like '+994%'
update phone set phone.phone_number=REPLACE(phone_number, '%-%', '' where phone.phone_number like '%-%'
