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

 
 --
CREATE TABLE candidates_education_details_check (
id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
candidate_id int  NOT NULL FOREIGN KEY REFERENCES fellowship_candidates(id),
field_name varchar(255) NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp datetime DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
)