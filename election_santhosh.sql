select * from election;

select CAND_SEX, count(CAND_SEX)
from election
group by cand_sex
having cand_sex='F';