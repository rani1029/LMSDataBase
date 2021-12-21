-- system function

--aggregate function
--1 avg()

select AVG(parent_annual_sal) avgsalary
from Fellowship_Candidates;

--avg with groub by 

select AVG(parent_annual_sal) avgsalary
from Fellowship_Candidates
group by hired_lab;

---count() with group by

SELECT
    COUNT(id) totalCandidates,hired_city
FROM
    Fellowship_Candidates
WHERE
    parent_annual_sal > 80000 group by hired_city;

---count() with group by,order by 

SELECT
    COUNT(id) totalCandidates,hired_city
FROM
    Fellowship_Candidates
WHERE
    parent_annual_sal > 40000 group by hired_city order by count(parent_annual_sal);

----max()

select MAX(id) maxsalary,degree
 from Fellowship_Candidates
 group by degree;

 ---max() with having,group by 

 select MAX(parent_annual_sal) maxsalary,degree
 from Fellowship_Candidates
 group by degree
 HAVING COUNT(id) > 2;

 ---order by

 SELECT * FROM Fellowship_Candidates
ORDER BY id;


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
 ----scalar function 
Create function UsernameUpperCase(@name varchar)   
 returns varchar(50)  
  As   
  Begin  
Declare @UpperVar varchar(100)  
Select  @UpperVar = Upper(@name) from dbo.CpuLogData    
return isnull( @UpperVar , '-')  
--isnull provide alternative otput if result is null
 End 

 select [dbo].UsernameUpperCase('ismpraful@gmail.com') from CpuLogData;

 =====================================================================================================================================================================================================

 --inline table valued function

 CREATE FUNCTION GetUserName(@name varchar(50))   
returns table return   
SELECT technology,user_name,Cpu_Working_Time FROM dbo.CpuLogData where user_name = @name  
 ;
 --implement function
 select * from dbo.GetUserName('ismpraful@gmail.com');

 ============================================================================================================================================================================================


