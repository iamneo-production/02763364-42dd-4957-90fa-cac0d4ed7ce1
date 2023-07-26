select * from election;
--1
create index idx_female on election(cand_sex,year);

select CAND_SEX, Year ,count(CAND_SEX)
from election
group by cand_sex,year
having cand_sex='F'
order by year desc;

--2
create index idx_countofcanidates on election (st_name,year);

select st_name, YEAR, count(CAND_NAME) as total_candidates
from election
group by st_name, YEAR
order by st_name asc;

--3
create index idx_st_name on election(st_name);


explain plan for
select  st_name , sum(totvotpoll) 
from election
where partyabbre='BJP' and year='1987'
group by st_name;
select * from table(DBMS_XPLAN.DISPLAY);

select  st_name , sum(totvotpoll) 
from election
where partyabbre='BJP' and year='1987'
group by st_name;

--4

select  st_name, count(cand_name) as totalcandidates
from election
where year='2004' 
group by st_name;

--5

select partyname,cand_name,totvotpoll from election
where st_name='Andhra Pradesh' and year=1989
order by totvotpoll desc 
fetch first 5 rows only;

SELECT partyname,SUM(totvotpoll) AS tot_vot
FROM election
GROUP BY  partyname
having st_name = 'Andhra Pradesh' AND year = 1989
ORDER BY totvotpoll DESC
fetch first 5 rows only;


select * from election;