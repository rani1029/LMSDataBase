--function


CREATE PROCEDURE totalcandidats (
    @id INT,
    @total_count INT OUTPUT
) AS
BEGIN
    SELECT 
       id
       
    FROM
        Fellowship_Candidates
    WHERE
        id = @id;

    SELECT @total_count = COUNT();
END;