--Query 3
--Last meetings of the team by dates;

SELECT Winner,Loser,Date,L_Points,W_Points
FROM [Meetings Between Teams]
WHERE Winner=5 OR Loser =5
ORDER BY Date DESC;