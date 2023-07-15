-- Displays all details of table Election.
select * from election;

-- Creating Index.
create index dataget on election (st_name, PARTYABBRE, PARTYNAME, year);

-- 1
select CAND_SEX, Year ,count(CAND_SEX) as totalFemaleCandidates
from election
group by cand_sex,year
having cand_sex='F'
order by year;

-- 2
select st_name, YEAR, count(st_name) as total_candidates
from election
group by st_name, YEAR
order by st_name asc;

-- 3
select  st_name , sum(totvotpoll) as TotalVotes
from election
where partyabbre='BJP' and year='1987'
group by st_name;


-- 4

select  st_name, count(st_name) as totalcandidates
from election
where year='2004' 
group by st_name;

-- 5

select partyname, sum(totvotpoll) as TotalVotes from election
where st_name = 'Uttar Pradesh' and year = '2014' and rownum < 6
group by partyname
order by sum(totvotpoll) desc;
