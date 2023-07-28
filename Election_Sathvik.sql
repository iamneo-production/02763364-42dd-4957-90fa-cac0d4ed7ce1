SELECT * FROM election;

-- 1.SQL query to find the total count of female candidates participating in each year

SELECT  year, COUNT(st_name) AS Total_Count_of_Female_Candidates
FROM election
WHERE cand_sex = 'F'
GROUP BY year;

-- 2.SQL query to find the total candidates who partitcipated in the election at each state in each year

SELECT st_name, year, COUNT(st_name) AS Total_Candidates
FROM election
GROUP BY st_name, year
ORDER BY st_name ASC;

-- 3.SQL query to find the total votes BJP got in each state in the year 1987

SELECT st_name, SUM(totvotpoll) AS Total_Votes
FROM election
WHERE partyabbre = 'BJP' AND year = 1987
GROUP BY st_name;

-- 4.SQL query to find the total candidates who participated in eletion in each state in the year 2004

SELECT st_name, COUNT(st_name) AS TotalCandidates
FROM election
WHERE year = 2004
GROUP BY st_name;

-- 5.SQL query to find the top 5 parties that got the most votes in Uttar Pradesh in the year 2014

SELECT partyname, SUM(totvotpoll) AS TotalVotes
FROM election
WHERE st_name = 'Uttar Pradesh' AND year = 2014
GROUP by partyname
ORDER BY SUM(totvotpoll) DESC
FETCH FIRST 5 ROWS ONLY;