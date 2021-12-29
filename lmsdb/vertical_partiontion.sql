---vertical partioning
---divide one table into multiple table so that retriving and manupulating data will be fast;

select * from Hired_Candidates;

create table candidate_details(id int foreign key references Hired_Candidates(id),first_name varchar(70),last_name varchar(100));

create table hiringDetails(id int foreign key references Hired_Candidates(id),hired_city varchar(80),degree varchar(80),hired_lab varchar(70));

select first_name,hired_city from Hired_Candidates;