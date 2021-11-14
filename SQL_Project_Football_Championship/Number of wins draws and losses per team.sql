--Query 2
--Number of wins, draws and losses per team;

SELECT COUNT(*)
FROM [Meetings Between Teams] 
WHERE Winner = 1 OR Loser=1;
   