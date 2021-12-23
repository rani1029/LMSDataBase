--- scroll cursor 

declare Retrievecursor cursor scroll 
--selecting row 
for select email from User_Details

declare @candidateEmail varchar(50);
-----Open cursor
open Retrievecursor;
-----Fetch data
fetch first from Retrievecursor into @candidateEmail; 
--do query on selected row on whchi have cursor now 
--typecast as printing as string
print 'Candidate email: ' +cast(@candidateEmail as varchar(50))
--close cursor 
close Retrievecursor
-----deallocate cursor
deallocate Retrievecursor

==============================================================

--forword only cursor


declare ForwardOnlycursor
cursor for select * from User_Details
--open cursor
open ForwardOnlycursor;
--next cursor
fetch next from ForwardOnlycursor

close ForwardOnlycursor
--Deallocate the cursor
deallocate ForwardOnlycursor

===============================================================================================================================================================
---static cursor

declare cursorjoinsTable 

--cursor for joins table
CURSOR  STATIC for SELECT Fellowship_Candidates.degree,Fellowship_Candidates.birth_date,Candidate_Bank_Det.account_num 
FROM Fellowship_Candidates
 LEFT JOIN Candidate_Bank_Det on Fellowship_Candidates.id=Candidate_Bank_Det.id;

open cursorjoinsTable;

--next cursor
fetch next from cursorjoinsTable

close cursorjoinsTable

--Deallocate the cursor
deallocate cursorjoinsTable
===================================================================================================================================================================
--dynamic cursor
--changes reflect after open cursor
DECLARE tableCursor CURSOR DYNAMIC
FOR
select candidate_id,field_name from Candidates_Personal_det_check;
 
OPEN  tableCursor;
DELETE FROM Candidates_Personal_det_check WHERE candidate_id=10;
select * from Candidates_Personal_det_check;
fetch next from tableCursor;
fetch relative 2 from tableCursor;

CLOSE tableCursor;

DEALLOCATE tableCursor;



