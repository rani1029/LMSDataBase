---sp with one parameter

CREATE PROCEDURE Selectall_Candidates @hiredCity varchar(30)
AS
SELECT * FROM Hired_Candidates WHERE hired_city = @hiredCity
GO;

exec Selectall_Candidates @hiredCity='mumbai';