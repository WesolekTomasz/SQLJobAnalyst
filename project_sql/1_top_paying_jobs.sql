/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls)
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment oppurtonities
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN
    company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location IN ('Poland', 'Germany', 'France') AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 100

/*
The analysis of top-paying remote data analyst job postings reveals key insights into
the highest salary opportunities within the industry. Focusing on roles with clearly defined salaries,
the following findings provide valuable information for data analysts seeking high-paying positions:

The highest-paying role is a Research Engineer/Research Scientist
position at Fraunhofer-Gesellschaft in Germany, offering an annual salary of $179,500.
Several Data Analyst roles, particularly in France, Poland, and Germany,
 also rank among the top-paying opportunities, with average salaries ranging
from $111,175 to $102,500. Notable companies hiring for these positions include
Contentsquare, Allegro, Grover, and Capco. Junior Data Analyst and Pricing Data Analyst
roles in Poland show lower average salaries, ranging from $53,014 to $75,067.5,
while still offering valuable career growth potential within prominent organizations like Allegro.
The lowest-paying position in this analysis is an HR Data Analyst role
at Westinghouse Electric Company in Poland, offering an annual salary of $43,200.
In conclusion, data analysts seeking remote positions can expect the most lucrative opportunities
in research and specialized data roles, particularly in Germany and Poland.

[
  {
    "job_id": 1263109,
    "job_title": "Research Engineer* / Research Scientist* for Development of Radar...",
    "job_location": "Germany",
    "job_schedule_type": "Full-time and Part-time",
    "salary_year_avg": "179500.0",
    "job_posted_date": "2023-12-22 21:18:26",
    "company_name": "Fraunhofer-Gesellschaft"
  },
  {
    "job_id": 155170,
    "job_title": "Data Analyst",
    "job_location": "France",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-09 07:32:08",
    "company_name": "Contentsquare"
  },
  {
    "job_id": 367763,
    "job_title": "Data Analyst",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-09-05 04:19:21",
    "company_name": "Allegro"
  },
  {
    "job_id": 774732,
    "job_title": "(Senior) People Data Analyst (m/w/x)",
    "job_location": "Germany",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-05-15 07:18:25",
    "company_name": "Grover"
  },
  {
    "job_id": 876513,
    "job_title": "Data Analyst - Financial Services",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-28 12:19:26",
    "company_name": "Allegro"
  },
  {
    "job_id": 369283,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-07-07 09:28:39",
    "company_name": "Allegro"
  },
  {
    "job_id": 1240464,
    "job_title": "Data Analyst",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-01-31 12:15:58",
    "company_name": "Capco"
  },
  {
    "job_id": 1281562,
    "job_title": "Data Analyst (CX Tech)",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "102500.0",
    "job_posted_date": "2023-03-25 11:43:15",
    "company_name": "Allegro"
  },
  {
    "job_id": 470832,
    "job_title": "SAP Finance Data Analyst",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "77017.5",
    "job_posted_date": "2023-12-16 21:11:19",
    "company_name": "Westinghouse Electric Company"
  },
  {
    "job_id": 189127,
    "job_title": "Junior Data Analyst (Campaign Team)",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "75067.5",
    "job_posted_date": "2023-12-22 03:10:55",
    "company_name": "Allegro"
  },
  {
    "job_id": 278699,
    "job_title": "Data Analytics & BI Sales & Marketing Consultant",
    "job_location": "Germany",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "72000.0",
    "job_posted_date": "2023-12-24 07:18:50",
    "company_name": "Schwarz Gruppe"
  },
  {
    "job_id": 705215,
    "job_title": "Data Analyst (Pricing)",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "57500.0",
    "job_posted_date": "2023-06-27 20:47:14",
    "company_name": "Allegro"
  },
  {
    "job_id": 182664,
    "job_title": "Data Operation Analyst",
    "job_location": "Germany",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "56381.0",
    "job_posted_date": "2023-06-07 00:19:05",
    "company_name": "U.S. Army Medical Command"
  },
  {
    "job_id": 314601,
    "job_title": "Data Analyst POEI - Ecole de la Data & de l'IA - Promotion 202307",
    "job_location": "France",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-05-05 16:35:10",
    "company_name": "Business & Decision"
  },
  {
    "job_id": 67765,
    "job_title": "Junior/Mid/Senior Data Analyst (Pricing)",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-02-27 21:09:30",
    "company_name": "Allegro"
  },
  {
    "job_id": 282943,
    "job_title": "Junior Data Analyst - e-Xperience 2023",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "53014.0",
    "job_posted_date": "2023-04-18 10:46:01",
    "company_name": "Allegro"
  },
  {
    "job_id": 12599,
    "job_title": "HR Data Analyst",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "43200.0",
    "job_posted_date": "2023-12-16 13:11:25",
    "company_name": "Westinghouse Electric Company"
  }
]

/*