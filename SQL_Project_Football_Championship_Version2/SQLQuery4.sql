select COUNT(winner)*3+count(draw) as 'Points of team'
from Matches
where (Team_ID_1=2) or (Team_ID_2=2) and (Match_Date<'2022-10-24');