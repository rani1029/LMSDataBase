use LMSDb;

-- 1 HIRED CANDIDTES TABLE

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

-- 2 Felloship candidates table

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

-- 3 Candidates_Personal_det_check table

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

-- 4 candidate_bank_details table 
CREATE TABLE Candidate_Bank_Det(
id int identity(1,1) primary key NOT NULL,
candidate_id int NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
name varchar(100) NOT NULL,
account_num bigint NOT NULL,
is_account_num_verified int DEFAULT 0,
ifsc_code nvarchar(20) NOT NULL,
is_ifsc_code_verified int DEFAULT 0,
pan_number nvarchar(10) DEFAULT NULL,
is_pan_number_verified int DEFAULT 0,
addhaar_num bigint NOT NULL,
is_addhaar_num_verified int DEFAULT 0,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
);

 select * from candidate_bank_det;

 ---5 candidate_qualification  table 

 CREATE TABLE candidate_qualification(
id int IDENTITY (1,1) PRIMARY KEY NOT NULL,
candidate_id int NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
diploma int DEFAULT 0,
degree_name varchar(100) NOT NULL,
is_degree_name_verified int DEFAULT 0,
employee_descipline varchar(100) NOT NULL,
is_employee_descipline_verified int DEFAULT 0,
passing_year int NOT NULL,
is_passing_year_verified int DEFAULT 0,
aggr_per float DEFAULT NULL,
final_year_per float DEFAULT NULL,
is_final_year_per_verified int DEFAULT 0,
training_institute varchar(200) NOT NULL,
is_training_institute_verified int DEFAULT 0,
training_duration_month int DEFAULT NULL,
is_training_duration_month_verified int DEFAULT 0,
other_training varchar(255) DEFAULT NULL,
is_other_training_verified int DEFAULT 0,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL
);
 select * from candidate_qualification;

 
 --6 candidates_education_details_check

CREATE TABLE candidates_education_details_check (
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
candidate_id int  NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
field_name varchar(255) NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp date DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL
);

 select * from candidates_education_details_check;

 --7 candidate document details table

 CREATE TABLE candidate_docs(
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
candidate_id int  NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
doc_type varchar(20) DEFAULT NULL,
doc_path nvarchar(500) DEFAULT NULL,
status int DEFAULT 1,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
);

select * from candidate_docs;

--8 user detail table 

CREATE TABLE User_Details (
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
email varchar(50) UNIQUE NOT NULL,
first_name varchar(200) NOT NULL,
last_name varchar(100) NOT NULL,
password varchar(15) NOT NULL,
contact_number bigint NOT NULL,
verified bit DEFAULT NULL,
);

select * from User_Details;

-- 9 user roles table

CREATE TABLE user_roles (
user_id int NOT NULL FOREIGN KEY REFERENCES User_Details(id),
role_name varchar(100));


drop table user_roles;

select * from user_roles;

--10 company table

CREATE TABLE company(
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
name nvarchar(200) NOT NULL,
address varchar(150) DEFAULT NULL,
location varchar(100) DEFAULT NULL,
status int DEFAULT 1,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL
);

select * from company;

--11 maker program table 

CREATE TABLE Tech_stack (
id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
tech_name nvarchar(50) NOT NULL,
image_path nvarchar(500) DEFAULT NULL,
frameworkcur_status text DEFAULT NULL,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL
);

select * from Tech_stack;
--12 tech stack table 

CREATE TABLE tech_type (
id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
type_name varchar(50) NOT NULL,
cur_status char DEFAULT NULL,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL
)

-- 13 maker program table

CREATE TABLE Maker_Program(
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
tech_stack_id int DEFAULT NULL FOREIGN KEY REFERENCES Tech_Stack(id),
tech_type_id int NOT NULL FOREIGN KEY REFERENCES tech_type(id),
program_name varchar(255) NOT NULL,
program_type varchar(10) DEFAULT NULL,
program_link text DEFAULT NULL,
is_program_approved int,
description varchar(500) DEFAULT NULL,
status int DEFAULT 1,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL,
);

--14 app parameters program

CREATE TABLE App_parameters (
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
key_type varchar(20) NOT NULL,
key_value varchar(20) NOT NULL,
key_text varchar(80) DEFAULT NULL,
cur_status char(1) DEFAULT NULL,
lastupd_user int DEFAULT NULL,
lastupd_stamp date DEFAULT NULL,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL,
seq_num int DEFAULT NULL,
);

--15 lab table

CREATE TABLE Lab(
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
name varchar(50) DEFAULT NULL,
location varchar(50) DEFAULT NULL,
address  varchar(255) DEFAULT NULL,
status int DEFAULT 1,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL,
);

--16 mentor table

CREATE TABLE mentor(
id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
lab_id int NOT NULL FOREIGN KEY REFERENCES lab(id),
name varchar(100) DEFAULT NULL,
mentor_type varchar(20) DEFAULT NULL,
status int DEFAULT 1,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL,
);

-- 17 mentor ideation map table

CREATE TABLE mentor_ideation_map(
id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
mentor_id int NOT NULL FOREIGN KEY REFERENCES mentor(id),
status int DEFAULT 1,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
);

--18 mentor tech stack table 

CREATE TABLE Mentor_techstack(
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
mentor_id int NOT NULL FOREIGN KEY REFERENCES mentor(id),
tech_stack_id int NOT NULL FOREIGN KEY REFERENCES Tech_stack(id),
status int DEFAULT 1,
creator_stamp date DEFAULT NULL,
creator_user int DEFAULT NULL
)