--insertion
--insertion into hired_candidates table
use LMSDb;
insert into Hired_Candidates values ('Rani','K','Gupta','ranig@gmail.com','mumbai','B.Tech','2019-05-07',9856743645,987654, 'Devloper', 'fine', 'Good', 'Good', 'Great', 'Ok', '2020-05-07',1);
insert into Hired_Candidates values ('Sourabh','R','kumar','skk@gmail.com','mumbai','B.Tech','2019-05-07',9856743875,987854, 'Devloper', 'fine', 'Good', 'Good', 'Great', 'Ok', '2020-05-07',2),
('Josh','K','waren','jkw@gmail.com','mumbai','MBA','2019-05-07',985675342,987654, 'manager', 'fine', 'Good', 'Good', 'Great', 'Ok', '2020-05-07',3),
('Rahul','g','Sharma','rgk@gmail.com','mumbai','B.Tech','2019-05-07',985678945,987879, 'Devloper', 'fine', 'Good', 'Good', 'Great', 'Ok', '2020-05-07',4),
('Jammie','K','jonas','jkj@gmail.com','mumbai','B.Tech','2019-05-07',6789743645,567654, 'Devloper', 'fine', 'excellent', 'Good', 'Great', 'Ok', '2020-05-07',5);

=================================================================================================================================================

----insertion into Felloship candidates table
select * from Fellowship_Candidates
insert into Fellowship_Candidates values('Rahul','g', 'Sharma', 'rgk@gmail.com','mumbai','M.Tech','2018-11-13', 3456785643,567845, 'Backend',
'Good', 'Good', 'v good', 'Good', '1997-12-13', 'y', 'shyam', 'Clerk', 654378908, 500000.00, 'juhu', 'nasik',
'photo_path6', '2019-11-13', 'present', 1, 'yes', 'yes', 'Verified', 'Good');
insert into Fellowship_Candidates values ('nick', 'jim', 'jams', 'ngn@gmail.com ', 'mumbai','M.Tech','2018-11-13', 34598796436,567845, 'fullstack',
'Good', 'Good', 'v good', 'Good', '1997-12-13', 'y', 'rams', 'Manager', 6543789087, 1500000.00, 'juhu', 'nasik',
'photo_path4.jpg', '2019-11-13', 'present', 1, 'yes', 'yes', 'not uploaded', 'Good'),('isha', 'raj', 'Sharma', 'igk@gmail.com ', 'delhi','M.Tech','2018-11-13', 8765436436,987845, 'Backend',
'Good', 'Good', 'v good', 'Good', '1997-12-13', 'y', 'amar sharma', 'farmer', 6543789087, 500000.00, 'cp', 'luknow',
'photo_path3.jpg', '2019-11-13', 'present', 1, 'no', 'yes', 'Verified', 'Good'),('rocky', '', 'singh', 'rgs@gmail.com ', 'delhi','media comm','2018-11-13', 85673643621,943215, 'Content writer',
'Good', 'Good', 'v good', 'Good', '1997-12-13', 'y', 'santhosh singh', 'Salesman', 6543789087, 70000.00, 'cp', 'luknow',
'photo_path3.jpg', '2019-11-13', 'present', 1, 'no', 'yes','Verified', 'Good');


=====================================================================================================================================================================================================
-- 3 Candidates_Personal_det_check table

select * from Candidates_Personal_det_check;

insert into Candidates_Personal_det_check values(8,'engg','no','2021-06-13',1,'2021-06-13',01);
insert into Candidates_Personal_det_check values(8,'engg','no','2021-06-13',1,'2021-06-13',01),
(9,'engg','no','2021-06-13',1,'2021-06-13',01),(10,'IT','no','2021-06-13',1,'2021-06-13',01),
(11,'engg','yes','2021-06-13',1,'2021-06-13',01);

=============================================================================================================================================================================
-- 4 candidate_bank_details table 

select * from candidate_bank_det;

insert into candidate_bank_det values(8,'Rahul',345672187,1,'AF456743K',1,'jh8876548',1,765432456,1,'2021-06-13',1),
(9,'Rahul',345672187,1,'AF456743K',1,'jh8876348',1,76656456,1,'2021-06-13',1),
(10,'nick',876542187,1,'FGF6743K',1,'mh76576548',1,87543245761,1,'2021-06-13',1),
(11,'isha',0987662187,1,'AF456743K',1,'jh8876548',1,76542456,1,'2021-06-13',1);

====================================================================================================================================================================================================================

 ---5 candidate_qualification  table 

 select * from candidate_qualification;

insert into candidate_qualification values(8,1,'b.tech',1,'csc',0,2020,1,80.9,90.8,1,'bridgelabz',1,3,1,'softskill',0,'2021-06-13',1);
insert into candidate_qualification values(9,1,'b.tech',1,'csc',0,2020,1,98.9,90.8,1,'srm institute',1,6,1,'java',0,'2021-06-13',2),
(10,1,'b.tech',1,'csc',0,2020,1,78.9,90.8,1,'bmm college',1,3,1,'data science',0,'2021-06-13',3),
(11,1,'b.tech',1,'csc',0,2020,1,95.9,90.8,1,'bridgelabz',1,7,0,'react',0,'2021-06-13',1);

=========================================================================================================================================================================================================================
--6 candidates_education_details_check

select * from candidates_education_details_check;

insert into candidate_qualification values(8,'engg',1,'2021-06-13',1,'2019-08-13',1),
(9,'engg',0,'2021-06-13',1,'2019-08-13',1),
(10,'iT',1,'2021-06-13',1,'2019-08-13',1),
(11,'engg',1,'2021-06-13',1,'2019-08-13',1);

=======================================================================================================================================================================================
--8 user detail table
select * from User_Details;

insert into User_Details values('rg@gmail.com','rashmita','Goswami','rgpass',6785432789,0);
insert into User_Details values('ranig@gmail.com','rani','gupta','ranigpass',67856543289,1),('ag@gmail.com','amit','Gopal','agpass',90780772789,1),
('jb@gmail.com','josh','berry','jbpass',67895467789,0),
('ben@gmail.com','ben','kevin','bkpass',3456432789,1);

====================================================================================================================================================================================================

-- 9 user roles table
select * from user_roles;

insert into user_roles values(1,'ContentWriter'),(3,'developer'),
(4,'electrical_engineer'),
(5,'Maneger'),
(6,'Assistent engineer');

===================================================================================================================================================================================
--company table

select * from company;

insert into company values ('Kpmg','it city','hyderabad',1,'2021-09-13',1),('Kpmg','it city','hyderabad',1,'2021-09-13',1),
('tcs','it city','banglore',1,'2021-09-13',1),
('Kpmg','it city','banglore',1,'2021-09-13',1),
('infosys','it city','hyderabad',1,'2021-09-13',1);

==========================================================================================================================================================================================

--tech-stack table

select * from Tech_stack;

insert into Tech_stack values('react','image1.jpg','y','2021-09-13',0),('pythan','image2.jpg','yes','2021-09-13',0),
('.net','image3.jpg','y','2021-09-13',0),
('angular','image4.jpg','no','2021-09-13',1),
('java','image5.jpg','yes','2021-09-13',0);

=================================================================================================================================================