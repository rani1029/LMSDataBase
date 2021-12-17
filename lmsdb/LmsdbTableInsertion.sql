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