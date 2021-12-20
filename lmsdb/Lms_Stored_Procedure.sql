
---select statement stored procedure

CREATE PROCEDURE all_Candidates
AS
SELECT * FROM Hired_Candidates

GO;

exec all_Candidates;

===================================================================================================================================================================================
---sp with one parameter

CREATE PROCEDURE Selectall_Candidates @hiredCity varchar(30)
AS
SELECT * FROM Hired_Candidates WHERE hired_city = @hiredCity
GO;

exec Selectall_Candidates @hiredCity='mumbai';

=================================================================================================================================================

--update using stored procedure

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

=======================================================================================================================================================================
--- create stored procedure with output parameter
 CREATE PROCEDURE  Getsalarydetails
@Salary int,
@maxSalary int OUTPUT
AS 
SELECT @maxSalary=MAX(parent_annual_sal) FROM Fellowship_Candidates
SELECT * FROM Fellowship_Candidates
WHERE parent_annual_sal <@Salary;

---execute stored procedure with output parameter

DECLARE	 @maximumsalary int
            EXEC	[Getsalarydetails]
                    @Salary = 20000,
                   @maxSalary =@maximumsalary OUTPUT
            SELECT @maximumsalary AS ParentMaximumSalary