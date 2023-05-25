SELECT *
FROM data_analyst_jobs;--1793

--Q2
SELECT * 
FROM data_analyst_jobs 
LIMIT 10;
--ExxonMobil

--Q3
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location='TN' OR location='KY';
--They both have 27

--Q4
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location='TN'AND star_rating>4;
--3

--Q5
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--151 intotal

--Q6
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;
--Nebraska

--Q7
SELECT DISTINCT title
FROM data_analyst_jobs;
--881 total jobs

--Q8
SELECT COUNT(DISTINCT title) AS unique_job_titles
FROM data_analyst_jobs
WHERE location='CA';
--230 unique jobs for CA

--Q9
SELECT company,AVG(star_rating) AS avg_star_rating
FROM data_analyst_jobs
GROUP BY company
HAVING SUM (review_count)>5000;
--71 companies with more than 5000 reviews

--Q10
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
GROUP BY company
HAVING SUM (review_count) > 5000
ORDER BY avg DESC;
--Google

--Q11
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'
--774

--Q12
SELECT *
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';





