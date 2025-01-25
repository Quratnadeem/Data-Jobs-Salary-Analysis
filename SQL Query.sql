SELECT *from DataJobs

select AVG(salary_in_usd) AS [Average Salary] from DataJobs
select COUNT(work_year) as HeadCount from DataJobs


select TOP 5 job_title, COUNT(work_year) as HeadCount, AVG(salary_in_usd) AS [Average Salary], MAX(salary_in_usd) as [Max Salary], 
MIN(salary_in_usd) as [Min Salary] from DataJobs
group by job_title
order by HeadCount desc

select work_setting, COUNT(work_year) as HeadCount, 
(COUNT(work_year) * 100.0 / SUM(COUNT(work_year)) over()) as Percentage
from DataJobs
Where work_year = 2023

select top 8 job_category, work_year, AVG(salary_in_usd) as Avg_Salary, COUNT(work_year) as HeadCount from DataJobs
group by job_category, work_year
order by Avg_Salary desc

select work_year, AVG(salary_in_usd) from DataJobs
group by work_year

select AVG(salary_in_USD), sum(COUNT(work_year)) over(), work_year from DataJobs
where company_size = 'L'
group by work_year

select top 3 job_category, AVG(salary_in_USD), COUNT(work_year) from DataJobs
where work_year = 2024
group by job_category
order by COUNT(work_year) 

select AVG(salary_in_USD) from DataJobs
where work_year = 2024