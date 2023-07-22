select * from election;

select CAND_SEX, Year ,count(CAND_SEX)
from election
group by cand_sex,year
having cand_sex='F'
order by year desc;

