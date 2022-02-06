select Match_ID, Team_ID_1,Team_ID_2,Match_Date,Winner
from Matches
where Team_ID_1=5 or Team_ID_2 = 5
order by Match_Date;