--inner join
use LMSDb;

select Fellowship_Candidates.first_name,Fellowship_Candidates.email,Candidates_Personal_det_check.field_name
from Fellowship_Candidates inner join Candidates_Personal_det_check on Fellowship_Candidates.id=Candidates_Personal_det_check.candidate_id;

-----left join

select Fellowship_Candidates.first_name,Fellowship_Candidates.email,Candidate_Bank_Det.addhaar_num
from Fellowship_Candidates left join Candidate_Bank_Det on Fellowship_Candidates.id=Candidate_Bank_Det.candidate_id
order by Fellowship_Candidates.first_name;

---right join

select Fellowship_Candidates.first_name,Fellowship_Candidates.email,Candidate_Bank_Det.addhaar_num
from Fellowship_Candidates right join Candidate_Bank_Det on Fellowship_Candidates.id=Candidate_Bank_Det.candidate_id
order by Fellowship_Candidates.first_name;

--full outer join 

select Fellowship_Candidates.degree,Candidate_Bank_Det.account_num
from Fellowship_Candidates full outer join Candidate_Bank_Det on Fellowship_Candidates.id=Candidate_Bank_Det.candidate_id
order by Fellowship_Candidates.first_name;

--aggregate function
--avg

select AVG(parent_annual_sal) avgsalary
from Fellowship_Candidates;

---count

SELECT
    COUNT(*) count
FROM
    Fellowship_Candidates
WHERE
    parent_annual_sal > 40000;

----max

select MAX(id) maxsalary
 from Fellowship_Candidates;




