use LMSDb;

--HIRED CANDIDTES TABLE

CREATE TABLE Hired_Candidates (
id int identity(1,1) primary key NOT NULL,
first_name varchar(255) NOT NULL,
middle_name varchar(25) DEFAULT NULL,
last_name varchar(255) NOT NULL,
email varchar(255) NOT NULL,
hired_city varchar(100) NOT NULL,
degree varchar(250) NOT NULL,
hired_date datetime NOT NULL,
mobile_num bigint UNIQUE NOT NULL,
permanent_pincode int DEFAULT NULL,
hired_lab varchar(100) DEFAULT NULL,
attitude_remark varchar(250) DEFAULT NULL,
communication_remark varchar(250) DEFAULT NULL,
knowledge_remark varchar(250) DEFAULT NULL,
aggregate_remark varchar(255) DEFAULT NULL,
status varchar(100) NOT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
);

select * from Hired_Candidates;