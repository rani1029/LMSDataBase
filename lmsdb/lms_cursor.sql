--- scroll cursor 

declare Retrievecursor cursor scroll for select email from User_Details

declare @candidateEmail varchar(50);
-----Open cursor
open Retrievecursor;
-----Fetch data
fetch first from Retrievecursor into @candidateEmail; 
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
