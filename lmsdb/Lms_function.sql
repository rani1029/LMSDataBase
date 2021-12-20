-- system function

--aggregate function
--1 avg()

select AVG(parent_annual_sal) avgsalary
from Fellowship_Candidates;

---2 count()

SELECT
    COUNT(*) count
FROM
    Fellowship_Candidates
WHERE
    parent_annual_sal > 40000;

----3 max()

select MAX(id) maxsalary
 from Fellowship_Candidates;

 =====================================================================================================================================================================================
 --user defined function 
--Create scalar function to get emp firstnamw name 

Create function getcandidate
(
@candidate varchar(50)
)
returns varchar(101)
As
Begin return (Select @candidate);
end 

select dbo.getcandidate(first_name) as candidatename from Fellowship_Candidates;
--execute function
 select email from getcandidates();

 ==============================================================================================================================================================================
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