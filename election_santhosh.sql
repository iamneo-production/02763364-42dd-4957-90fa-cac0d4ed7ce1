select * from election;

-- 1
select CAND_SEX, count(CAND_SEX)
from election
group by cand_sex, year
having cand_sex='F';

-- 2
