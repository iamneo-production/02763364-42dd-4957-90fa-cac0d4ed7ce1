-- Creating Index.
create index el_data on election (ST_NAME, PARTYABBRE, PARTYNAME, year);

-- 1 Total count of female candidates participating in each year.
select CAND_SEX, YEAR ,count(CAND_SEX) as totalFemaleCandidates
from ELECTION
group by CAND_SEX,year
having CAND_SEX='F'
order by year asc;

-- 2 Total candidates participated in election at each state in each year.
select ST_NAME, YEAR, count(ST_NAME) as total_candidates
from ELECTION
group by ST_NAME, YEAR
order by ST_NAME asc;

-- 3 total votes BJP got in each state in the year 1987.
select  ST_NAME , sum(totvotpoll) as TotalVotes
from ELECTION
where partyabbre='BJP' and year='1987'
group by ST_NAME;


-- 4 Total candidates participated in election in each state in year 2004.
select  ST_NAME, count(ST_NAME) as totalcandidates
from ELECTION
where year='2004' 
group by ST_NAME;

-- 5 Top 5 parties that got the most votes in uttar pradesh in the year 2014.
select PARTYNAME, sum(totvotpoll) as TotalVotes
from ELECTION
where ST_NAME = 'Uttar Pradesh' and year = '2014' 
group by PARTYNAME
order by sum(totvotpoll) desc
fetch first 5 rows only;