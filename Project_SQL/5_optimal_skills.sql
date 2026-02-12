with skills_demand as (
SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count  
FROM
    job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short='Data Analyst' and salary_year_avg IS NOT NULL and job_work_from_home=TRUE
GROUP BY
   skills_dim.skill_id
),Avg_salary as (
SELECT
    skills_job_dim.skill_id,
    ROUND(AVG(salary_year_avg),0) AS average_salary
FROM
    job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short='Data Analyst' and salary_year_avg IS NOT NULL and job_work_from_home=TRUE
GROUP BY
    skills_job_dim.skill_id
)

select
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    average_salary 
from
    skills_demand
    inner join Avg_salary on skills_demand.skill_id = Avg_salary.skill_id 
WHERE
    demand_count > 10 
order by
    average_salary DESC,
    demand_count DESC     
limit 25;

