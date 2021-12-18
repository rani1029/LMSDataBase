--

CREATE PROCEDURE Update_Candidates @lab varchar(30),@fname varchar(40)
As
BEGIN TRY
       UPDATE  Hired_Candidates
       SET hired_lab = @lab
       WHERE first_name = @fname;
END TRY 
BEGIN CATCH  
   -- statements that handle exception
   select
   ERROR_LINE() AS ErrorLine
END CATCH  
GO;

exec Update_Candidates @lab='.netdeveloper',@fname='Rani';