-- Creating Index. 
create index dataget on election (st_name, PARTYABBRE, PARTYNAME, year);
-- Deleting Index
drop index dataget;

-- 1 Total Count of female candidates participating in each year.
select CAND_SEX, Year ,count(CAND_SEX) as totalFemaleCandidates
from election
group by cand_sex,year
having cand_sex='F'
order by year asc;

-- 2 Total candidates participated in election at each state every year.
select st_name, YEAR, count(st_name) as total_candidates
from election
group by st_name, YEAR
order by st_name asc;

-- 3 Total votes BJP got in each state in the year 1987
select  st_name , sum(totvotpoll) as TotalVotes
from election
where partyabbre='BJP' and year='1987'
group by st_name;


-- 4 Total candidates who participated in election in the each state in the year 2004.
select  st_name, count(st_name) as totalcandidates
from election
where year='2004' 
group by st_name;

-- 5 Top 5 parties that got the most votes in Uttar Pradesh in the Year 2014.!
select partyname, sum(totvotpoll) as TotalVotes from election
where st_name = 'Uttar Pradesh' and year = '2014'
group by partyname
<<<<<<< HEAD:Election_Santhosh.sql
order by sum(totvotpoll) desc;
=======
order by sum(totvotpoll) desc
fetch first 5 rows only;
>>>>>>> a1e68e1e054c9c6ac5a7d229ed186862b4d205bb:elintrovertido.sql
