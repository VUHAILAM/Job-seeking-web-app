create database jobtop

create table account (
	username varchar(50) primary key,
	password varchar(50),
	role varchar(50)
)

select * from account