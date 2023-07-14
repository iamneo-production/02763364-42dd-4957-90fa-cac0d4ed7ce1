select year,count(*) as femalecandidatecount from election where cand_sex='F' group by year;
--2
select st_name,year,count(*) AS TotalCandidatesCount from election group by st_name,year;
--3
select st_name,sum(totvotpoll) AS TotalVotes from election where year='1987' and partyabbre='BJP' group by st_name;

--election table 
select * from election;
--3
select st_name,sum(totvotpoll) AS TotalVotes from election where year='1987' and partyabbre='BJP' group by st_name;
--ex
select year from election where year='1987';
--4
select st_name,count(*) AS TotalCandidatesCount from election where year=2004 group by st_name;
--5
select partyname,sum(TOTVOTPOLL) AS TotalVotes from election where st_name='Uttar Pradesh' and year='2014' 
group by partyname order by TotalVotes desc
limit 5;