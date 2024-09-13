/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
    helping job seekers understand which skilss to develop that align with top salaries
*/

WITH top_paying_jobs AS(
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        job_posted_date,
        name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN
        company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Poland' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/* Top Skills in Demand:

SQL is the most commonly required skill, appearing in 10 job postings.
Python is also in high demand, appearing in 8 postings.
GCP (Google Cloud Platform) appears in 8 postings, indicating that cloud computing skills are becoming important for data analysts.
Tableau is listed in 6 postings, highlighting the importance of data visualization.
Looker appears in 5 postings, showing a need for skills in data exploration and visualization tools.
Windows appears in 4 postings, reflecting the demand for OS knowledge.

*/

[
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro",
    "skills": "python"
  },
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro",
    "skills": "gcp"
  },
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro",
    "skills": "airflow"
  },
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro",
    "skills": "windows"
  },
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro",
    "skills": "tableau"
  },
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro",
    "skills": "looker"
  },
  {
    "job_id": 876513,
    "job_title": "Data Analyst - Financial Services",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-28 12:19:26",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 876513,
    "job_title": "Data Analyst - Financial Services",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-28 12:19:26",
    "company_name": "Allegro",
    "skills": "gcp"
  },
  {
    "job_id": 876513,
    "job_title": "Data Analyst - Financial Services",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-28 12:19:26",
    "company_name": "Allegro",
    "skills": "windows"
  },
  {
    "job_id": 876513,
    "job_title": "Data Analyst - Financial Services",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-28 12:19:26",
    "company_name": "Allegro",
    "skills": "tableau"
  },
  {
    "job_id": 876513,
    "job_title": "Data Analyst - Financial Services",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-28 12:19:26",
    "company_name": "Allegro",
    "skills": "looker"
  },
  {
    "job_id": 367763,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-09-05 04:19:21",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 367763,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-09-05 04:19:21",
    "company_name": "Allegro",
    "skills": "python"
  },
  {
    "job_id": 367763,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-09-05 04:19:21",
    "company_name": "Allegro",
    "skills": "bigquery"
  },
  {
    "job_id": 367763,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-09-05 04:19:21",
    "company_name": "Allegro",
    "skills": "tableau"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "sql"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "python"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "gcp"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "spark"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "pyspark"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "hadoop"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "scikit-learn"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "excel"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco",
    "skills": "flow"
  },
  {
    "job_id": 1281562,
    "job_title": "Data Analyst (CX Tech)",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-03-25 11:43:15",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 1281562,
    "job_title": "Data Analyst (CX Tech)",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-03-25 11:43:15",
    "company_name": "Allegro",
    "skills": "python"
  },
  {
    "job_id": 1281562,
    "job_title": "Data Analyst (CX Tech)",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-03-25 11:43:15",
    "company_name": "Allegro",
    "skills": "windows"
  },
  {
    "job_id": 1281562,
    "job_title": "Data Analyst (CX Tech)",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-03-25 11:43:15",
    "company_name": "Allegro",
    "skills": "tableau"
  },
  {
    "job_id": 1281562,
    "job_title": "Data Analyst (CX Tech)",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-03-25 11:43:15",
    "company_name": "Allegro",
    "skills": "looker"
  },
  {
    "job_id": 1281562,
    "job_title": "Data Analyst (CX Tech)",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-03-25 11:43:15",
    "company_name": "Allegro",
    "skills": "git"
  },
  {
    "job_id": 470832,
    "job_title": "SAP Finance Data Analyst",
    "salary_year_avg": "77017.5",
    "job_posted_date": "2023-12-16 21:11:19",
    "company_name": "Westinghouse Electric Company",
    "skills": "excel"
  },
  {
    "job_id": 470832,
    "job_title": "SAP Finance Data Analyst",
    "salary_year_avg": "77017.5",
    "job_posted_date": "2023-12-16 21:11:19",
    "company_name": "Westinghouse Electric Company",
    "skills": "sap"
  },
  {
    "job_id": 470832,
    "job_title": "SAP Finance Data Analyst",
    "salary_year_avg": "77017.5",
    "job_posted_date": "2023-12-16 21:11:19",
    "company_name": "Westinghouse Electric Company",
    "skills": "powerpoint"
  },
  {
    "job_id": 189127,
    "job_title": "Junior Data Analyst (Campaign Team)",
    "salary_year_avg": "75067.5",
    "job_posted_date": "2023-12-22 03:10:55",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 189127,
    "job_title": "Junior Data Analyst (Campaign Team)",
    "salary_year_avg": "75067.5",
    "job_posted_date": "2023-12-22 03:10:55",
    "company_name": "Allegro",
    "skills": "gcp"
  },
  {
    "job_id": 189127,
    "job_title": "Junior Data Analyst (Campaign Team)",
    "salary_year_avg": "75067.5",
    "job_posted_date": "2023-12-22 03:10:55",
    "company_name": "Allegro",
    "skills": "looker"
  },
  {
    "job_id": 705215,
    "job_title": "Data Analyst (Pricing)",
    "salary_year_avg": "57500.0",
    "job_posted_date": "2023-06-27 20:47:14",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 705215,
    "job_title": "Data Analyst (Pricing)",
    "salary_year_avg": "57500.0",
    "job_posted_date": "2023-06-27 20:47:14",
    "company_name": "Allegro",
    "skills": "gcp"
  },
  {
    "job_id": 282943,
    "job_title": "Junior Data Analyst - e-Xperience 2023",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-04-18 10:46:01",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 282943,
    "job_title": "Junior Data Analyst - e-Xperience 2023",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-04-18 10:46:01",
    "company_name": "Allegro",
    "skills": "python"
  },
  {
    "job_id": 282943,
    "job_title": "Junior Data Analyst - e-Xperience 2023",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-04-18 10:46:01",
    "company_name": "Allegro",
    "skills": "gcp"
  },
  {
    "job_id": 282943,
    "job_title": "Junior Data Analyst - e-Xperience 2023",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-04-18 10:46:01",
    "company_name": "Allegro",
    "skills": "pyspark"
  },
  {
    "job_id": 67765,
    "job_title": "Junior/Mid/Senior Data Analyst (Pricing)",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-02-27 21:09:30",
    "company_name": "Allegro",
    "skills": "sql"
  },
  {
    "job_id": 67765,
    "job_title": "Junior/Mid/Senior Data Analyst (Pricing)",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-02-27 21:09:30",
    "company_name": "Allegro",
    "skills": "gcp"
  }
]