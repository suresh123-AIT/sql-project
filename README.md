# Introduction

This SQL project focuses on solving five important business queries using structured query language. The project demonstrates practical usage of SELECT statements, JOIN operations, GROUP BY, aggregate functions, subqueries, and filtering techniques to extract meaningful insights from the dataset. Each query is designed to solve a real-world data problem and improve analytical thinking. This project highlights my ability to write optimized SQL queries and perform data analysis effectively 

SQL Queries Check Out Here: [Project SQL Folder](/Project_SQL/)

# background 

This project involves the creation of a sql_course database in PostgreSQL, designed to manage job-related data across five structured tables. The tables were logically connected using primary and foreign key relationships to simulate a real-world relational database. By writing optimized JOIN queries, I retrieved and analyzed relevant information based on specific business requirements. This project showcases my ability to design relational schemas, manage structured data, and efficiently extract meaningful insights using SQL

# Tools i used 

This project was developed using **PostgreSQL** for database creation and management, and **SQL** for writing and executing complex queries. I used **VS Code** as the development environment to manage scripts and interact with the database efficiently. Version control was maintained using Git, and the project was hosted on **GitHub** to track changes and showcase the work professionally. These tools helped streamline development, testing, and collaboration processes.

# The Analysis 

Analyzed the dataset using SQL to identify and present insights on top-paying jobs by applying advanced querying and data retrieval techniques.
```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    name as company_name
FROM
    job_postings_fact 
    left join company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short='Data Analyst' and job_location='Anywhere' and job_schedule_type='Full-time'
    and salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;
```
![Top paying roles](assets\top_paying_jobs.png)
# what i learned 

Through this project, I strengthened my understanding of relational database design, including creating tables with primary and foreign key relationships. I improved my ability to write efficient SQL queries using JOINs, GROUP BY, aggregate functions, and filtering techniques. I gained hands-on experience in retrieving meaningful insights from structured data. Additionally, I enhanced my problem-solving skills by translating business questions into optimized SQL queries.

# Conclusions

This project demonstrates my ability to design a relational database and efficiently retrieve meaningful insights using SQL. By working with multiple related tables and solving real-world job-related queries, I strengthened my data analysis and querying skills. The experience enhanced my understanding of PostgreSQL and database management concepts. Overall, this project reflects my practical knowledge of SQL and my ability to apply it to solve business problems.
