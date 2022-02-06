select count(winner)as Matches_Won
from Matches
where Winner=5;

select count(match_ID) as Matches_Lost
from Matches
where (Loser)=5;

select count(match_ID) as Matches_Draw
from Matches
where(draw)=5;