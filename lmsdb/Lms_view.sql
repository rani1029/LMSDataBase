-- crete view

CREATE VIEW mentor_lab_View AS
SELECT Lab.location,mentor.name,mentor.mentor_type 
FROM Lab
  JOIN mentor on Lab.id=mentor.lab_id;

  select * from mentor_lab_View;

  ==========================================================================================================================================================================
  ---delete view

  drop mentor_lab_View;

  --insert
  --cannot update as multiple table included in view

  insert into mentor_lab_View values ('kolkata','jeery','boot');
  
