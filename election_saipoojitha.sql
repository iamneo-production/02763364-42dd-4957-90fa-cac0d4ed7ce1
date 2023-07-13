select CAND_SEX,Year,count(CAND_SEX)
from ELECTION
group by CAND_SEX,year
having CAND_SEX='F';

select * from election;

--2