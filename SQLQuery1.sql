create database jobtop

create table account (
	username varchar(50) primary key,
	password varchar(50),
	role varchar(50)
)

create table question(
	que_id int primary key identity(1,1),
	question nvarchar(300)
	
)

create table company(
	company_id   int  primary key identity(1,1),
company_name nvarchar(50),
username		nvarchar(50),
que_id          int,
ansr       nvarchar(50),
contact_person     nvarchar(50),
company_contact      numeric(18,0),
company_addrs     nvarchar(50),
company_email    nvarchar(50),
company_details     nvarchar(MAX)
)
select * from account