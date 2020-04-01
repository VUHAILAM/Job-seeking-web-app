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

create table candidate (
	candidate_id int primary key identity(1,1),
	username varchar(50),
	que_id int,
	ans nvarchar(300),
	profile_date datetime,
	first_name nvarchar(300),
	middle_name nvarchar(300),
	last_name nvarchar(300),
	candidate_addrs nvarchar(300),
	city_id int,
	gender nvarchar(10),
	dob datetime,
	contact_no numeric(10,10),
	email_id nvarchar(300)
)

create table category
(
category_id  int primary key identity(1,1),
category_name     nchar(15),
)

create table area
(
area_id  int  primary key identity(1,1),
category_id    int,
area_name     nchar(15)
)

create table package (
	package_id int primary key identity(1,1),
	package_cost nvarchar(10),
	no_jobs numeric
)

create table company_package (
	comp_package_id int primary key identity(1,1),
	company_id int,
	package_id int
)

create table job_applied(
	applied_id int primary key,
	candidate_id int,
	jobpost_id int,
	applied_date datetime
)

create table job_post (
	jobpost_id int primary key identity(1,1),
	company_id int,
	job_title nvarchar(300),
	area_id int,
	post nvarchar(300),
	no_vacancy numeric,
	startdate datetime,
	end_date datetime,
	expr_req nvarchar(300),
	skillis_req nvarchar(300),
	edu_req nvarchar(300),
	basic_req nvarchar(300),
	salary_min numeric(18,0),
	salary_max numeric(18,0)
)

create table post(
	post_id int primary key identity(1,1),
	area_id int,
	post_name nvarchar(300)
)

create table saved_candidate (
	saved_id int primary key,
	candidate_id int,
	jobpost_id int
)

create table saved_job (
	saved_job_id int primary key identity(1,1),
	candidate_id int,
	jobpost_id int
)

create table selected_candidate (
	selected_id int primary key,
	candidate_id int,
	jobpost_id int
)
alter table job_post alter column post 

select * from company

select * from account