--avg salary with having hired lab  for more than one id 
--using group by and having 
 
select Fellowship_Candidates.hired_lab,
		avg(parent_annual_sal) AS avgsalary
From Fellowship_Candidates
Inner join Candidate_Bank_Det ON Fellowship_Candidates.id = Candidate_Bank_Det.candidate_id
Inner join Candidates_Personal_det_check on Fellowship_Candidates.id= Candidates_Personal_det_check.candidate_id 
group by Fellowship_Candidates.hired_lab
having COUNT(Fellowship_Candidates.hired_lab)>1;

===========================================================================================================================================================
-- query to find first name and dgree name if particular row exists
-- using exists()

select Fellowship_Candidates.first_name,candidate_qualification.degree_name
from Fellowship_Candidates inner join candidate_qualification on 
Fellowship_Candidates.id=candidate_qualification.candidate_id
where  exists (select candidate_qualification.is_degree_name_verified from candidate_qualification inner join 
Fellowship_Candidates on candidate_qualification.candidate_id=Fellowship_Candidates.id where candidate_qualification.is_degree_name_verified=1);

===============================================================================================================================================================
--to find the averge salary is higher or lower than parent annual salary
--using case 

select [dbo].[Fellowship_Candidates].parent_annual_sal,
  ( case when (AVG(parent_annual_sal)) < parent_annual_sal then 'low' else 'higher' end )as avg_salary
from Fellowship_Candidates
full outer join Candidate_Bank_Det on Fellowship_Candidates.id=Candidate_Bank_Det.candidate_id
inner join Candidates_Personal_det_check on Fellowship_Candidates.id=Candidates_Personal_det_check.candidate_id
group by Fellowship_Candidates.parent_annual_sal
having 
COUNT(Fellowship_Candidates.parent_annual_sal)>1;


========================================================================================================================================================



