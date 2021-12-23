create trigger tr_candidateInsert
on Fellowship_Candidates
after Insert
as
begin
	print 'values inserted';
	--for insert ---select * from inserted---
end

---inserting data----
insert into Fellowship_Candidates values('Rams','g', 'Sharma', 'rgsds@gmail.com','mumbai','M.Tech','2018-11-13', 3456785643,567845, 'Backend',
'Good', 'Good', 'v good', 'Good', '1997-12-13', 'y', 'sunim', 'Clerk', 654567808, 500000.00, 'juhu', 'nasik',
'photo_path8', '2019-11-13', 'present', 1, 'yes', 'yes', 'Verified', 'Good');


select * from Fellowship_Candidates;
===============================================================================================================================================================
ALTER TRIGGER tr_CANDIDATE_ForInsert
ON Fellowship_Candidates
FOR INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = id from inserted
 select * from INSERTED;
 END;
---after inserting trigger will fire 
 insert into Fellowship_Candidates values('lira','g', 'Sharma', 'lisds@gmail.com','mumbai','M.Tech','2018-11-13', 3452385643,567845, 'Backend',
'Good', 'Good', 'v good', 'Good', '1997-12-13', 'y', 'kim', 'Clerk', 64568667808, 500000.00, 'juhu', 'nasik',
'photo_path8', '2019-11-13', 'present', 1, 'yes', 'yes', 'Verified', 'Good');

=========================================================================================================================================================

--instead of triggers on insert

Create TRIGGER tr_InsertTrigger
ON User_Roles
INSTEAD OF INSERT
AS
BEGIN
	print 'Can not add values'
End

select * from user_roles;

insert into user_roles values (8,'engineer');