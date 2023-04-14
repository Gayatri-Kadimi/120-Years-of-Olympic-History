create schema Olympic_History;
-- 1. How many Olympics games have been held?
select count(distinct Games) from athlete_events;

-- 2. List down all Olympic games held so far.
select distinct Year,season,city from athlete_events
order by year;

-- 3. Mention the total number of nations who participated in each Olympics game?
select year,count(DISTINCT region) from athlete_events as a 
join noc_regions n on a.NOC=n.NOC
group by year
ORDER BY count(DISTINCT region) DESC;

 -- 4. Which year saw the highest and lowest no of countries participating in the Olympics?
With T1 as (select Games lowest_year ,count(Distinct region ) as lower_no_country
from athlete_events a join noc_regions n on a.noc=n.noc
group by year 
order by lower_no_country asc
limit 1),
T2 as (select Games highest_year ,count(Distinct region ) as higher_no_country
from athlete_events a join noc_regions n on a.noc=n.noc
group by year 
order by higher_no_country desc
limit 1)
select * from T1,T2;
-- or
select 
concat(lowest_year,' ',lower_no_country) Lowest_Country,
concat(highest_year,' ',higher_no_country) Highest_Country
from T;

-- 5. Which nation has participated in all of the Olympic games
select region,count(Distinct Games)	from athlete_events a
join noc_regions n on a.noc=n.noc
group by region
having count(Distinct Games)=(select count(Distinct Games) from athlete_events);

-- 6. Identify the sport which was played in all summer Olympics.

select sub.sport,count(sub.sport) from 
(select distinct sport,year from athlete_events
where season ="summer") sub
group by sub.sport
having count(sub.sport)=(select count(distinct Games) from athlete_events
where season ="summer");


-- 7. Which Sports were just played only once in the Olympics?
select sub.sport,count(sub.sport) from 
(select distinct sport,year from athlete_events
where season ="summer") sub
group by sub.sport
having count(sub.sport)=1;

-- 8. Fetch the total number of sports played in each Olympic game.
select Games,count(Distinct sport) Total_sports from athlete_events
group by games
order by Total_sports desc;

-- 9. Fetch details of the oldest athletes to win a gold medal.

select * from athlete_events
where not medal="NA" and age=(select max(age) from athlete_events where not medal="NA");

-- 10. Find the Ratio of male and female athletes who participated in all Olympic games.
with T1 as (select count(sex) Total_males from athlete_events where sex="M"),
T2 as (select count(sex) Total_Females from athlete_events where sex="F")
select * from T1,T2;

-- 11. Fetch the top 5 athletes who have won the most gold medals.
select Name,count(*) Total_gold_medals from athlete_events
where medal="Gold"
group by Name
order by Total_gold_medals desc
limit 5;

-- 12. Fetch the top 5 athletes who have won the most medals (gold/silver/bronze).
select Name,count(*) Total_gold_medals from athlete_events
where medal="Gold" or medal="silver" or medal="bronze"
group by Name
order by Total_gold_medals desc
limit 5;


-- 13. Fetch the top 5 most successful countries in Olympics. Success is defined by no of medals won.
select region,count(medal) Total_medals from athlete_events a
join noc_regions n on a.noc=n.noc
group by region
order by Total_medals desc
limit 5;

-- 14. List the total gold, silver, and bronze medals won by each country.
with T1 as
(select region,count(medal) Total_gold_medals from athlete_events a join noc_regions n
on a.noc=n.noc where medal="gold" group by 1 order by region),
T2 as
(select region,count(medal) Total_silver_medal from athlete_events a join noc_regions n
on a.noc=n.noc where medal="silver" group by 1 order by region),
T3 as
(select region,count(medal) Total_bronze_medal from athlete_events a join noc_regions n
on a.noc=n.noc where medal="bronze" group by 1 order by region)
select T1.region,Total_gold_medals,Total_silver_medal,Total_bronze_medal from T1,T2,T3
group by 1
order by 1,2,3,4;

-- 15. List the total gold, silver, and bronze medals won by each country corresponding to each Olympic game.
select region,games,medal from athlete_events a 
join noc_regions n on a.noc=n.noc
where not medal= "NA" ; 
select region,games,(select region,games,count(medal) from athlete_events a 
join noc_regions n on a.noc=n.noc where medal="Gold")
