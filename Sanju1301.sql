-- Displays all details of table Election.
-- Sanku Sanjana select * from election;

-- Creating Index.
create index dataget on election (st_name, PARTYABBRE, PARTYNAME, year);

-- 1 Total Count of female candidates participating in each year.
SELECT CAND_SEX, Year ,count(CAND_SEX) as totalFemaleCandidates
from election
group by cand_sex,year
having cand_sex='F'
order by year asc;

-- 2 Total candidates participated in election at each state every year.
SELECT st_name, YEAR, count(st_name) as total_candidates
from election
group by st_name, YEAR
order by st_name asc;

-- 3 Total votes BJP got in each state in the year 1987
SELECT  st_name , sum(totvotpoll) as TotalVotes
from election
WHERE partyabbre='BJP' and year='1987'
group by st_name;


-- 4 Total candidates who participated in election in the each state in the year 2004.
SELECT  st_name, count(st_name) as totalcandidates
from election
WHERE year='2004' 
group by st_name;

-- 5 Top 5 parties that got the most votes in Uttar Pradesh in the Year 2014.
SELECT partyname, sum(totvotpoll) as TotalVotes from election
WHERE st_name = 'Uttar Pradesh' and year = '2014' 
group by partyname
order by sum(totvotpoll) desc
fetch first 5 rows only;