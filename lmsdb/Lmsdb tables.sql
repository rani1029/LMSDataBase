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

--Felloship candidates table

CREATE TABLE Fellowship_Candidates (
id int identity(1,1) primary key NOT NULL,
first_name varchar(250) NOT NULL,
middle_name varchar(200) DEFAULT NULL,
last_name varchar(200) NOT NULL,
email varchar(100) NOT NULL,
hired_city varchar(100) NOT NULL,
degree varchar(100) NOT NULL,
hired_date date NOT NULL,
mobile_num bigint NOT NULL,
permanent_pincode int DEFAULT NULL,
hired_lab varchar(50) DEFAULT NULL,
attitude_remark varchar(200) DEFAULT NULL,
communication_remark varchar(200) DEFAULT NULL,
knowledge_remark varchar(200) DEFAULT NULL,
aggregate_remark varchar(200) DEFAULT NULL,
birth_date date NOT NULL,
is_birth_date_verified varchar DEFAULT null,
parent_name varchar(100) DEFAULT NULL,
parent_occupation varchar(100) NOT NULL,
parent_mobile_num bigint NOT NULL,
parent_annual_sal float DEFAULT NULL,
local_addr varchar(255) NOT NULL,
permanent_addr varchar(150) DEFAULT NULL,
photo_path nvarchar(500) DEFAULT NULL,
joining_date date DEFAULT NULL,
candidate_status varchar(100) NOT NULL,
personal_information int DEFAULT 0,
bank_information varchar(100) DEFAULT null,
educational_information_filled varchar(100) DEFAULT null,
document_status varchar(20) DEFAULT NULL,
remark varchar(150) DEFAULT NULL,
);

select * from Fellowship_Candidates;

--Candidates_Personal_det_check table

CREATE TABLE Candidates_Personal_det_check (
id int identity(1,1) primary key NOT NULL,
candidate_id  int NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
field_name varchar(255) NOT NULL,
is_verified varchar(10) DEFAULT NULL,
lastupd_stamp date DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL
);

select * from Candidates_Personal_det_check;