select 
	SUM(CASE WHEN Fellowship_Candidates.birth_date IS NOT NULL THEN 1 ELSE 0 END) as sum_Per,
	max(ISNULL(Fellowship_Candidates.parent_annual_sal,0)) AS avg_difference
From Fellowship_Candidates
Inner join Candidate_Bank_Det ON Fellowship_Candidates.id = Candidate_Bank_Det.candidate_id
Inner join User_Details on Fellowship_Candidates.first_name=User_Details.first_name

group by Fellowship_Candidates.degree
 HAVING COUNT(Fellowship_Candidates.id) > 2;

