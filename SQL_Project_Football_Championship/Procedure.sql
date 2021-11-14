--Query 5,Procedure 
--Create a procedure that calculates the number of points of a team on a date submitted with a parameter (team parameter and date parameter).

CREATE PROCEDURE Points
AS 
SELECT COUNT(Winner)*3 FROM [Meetings Between Teams]
WHERE Winner=1 AND Date > '2007-10-09'
EXEC Points