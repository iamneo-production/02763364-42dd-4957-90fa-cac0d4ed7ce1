--Index created for table election

create index indx on election (st_name, PARTYABBRE, PARTYNAME, cand_sex,year);

-- 1 Total count of female candidates participating in each year

select year,count(*) as femalecandidatecount from election where cand_sex='F' group by year;

-- 2 Total candidates participated in the election at each state in each year

select st_name,year,count(*) AS TotalCandidatesCount from election group by st_name,year;

-- 3 Total votes BJP got in each state in the year 1987

select st_name,sum(totvotpoll) AS TotalVotes from election where year='1987' and partyabbre='BJP' group by st_name;

-- 4 Total candidates participated in the election in each state in the year 2004

select st_name,count(*) AS TotalCandidatesCount from election where year=2004 group by st_name;

-- 5 Top 5 parties that got the most votes in uttar pradesh in the year 2014

select partyname,sum(TOTVOTPOLL) AS TotalVotes from election where st_name='Uttar Pradesh' and year='2014' 
group by partyname order by TotalVotes desc
fetch first 5 ROWS ONLY;
