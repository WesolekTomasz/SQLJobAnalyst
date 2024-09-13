/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all jobs postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market,
    providing insights into the most valuable skills for job seekers.
*/

SELECT
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Poland'
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5


/* 
In Poland, the skills most in demand for data analysts reflect the global
trends but with some local nuances. Here's a summary of the top skills:
- SQL (131 demands): SQL is a fundamental skill for data analysts, as it's essential for querying and managing databases.
The high demand indicates that strong SQL skills are crucial for analyzing and manipulating large datasets.
- Python (85 demands): Python is highly valued for its versatility in data analysis and its rich ecosystem of libraries (like pandas and NumPy). 
It's used for scripting, data manipulation, and more complex data analysis tasks.
- Excel (73 demands): Excel remains a staple tool for data analysis, especially for tasks that involve quick data manipulation,
pivot tables, and visualizations. Its broad use across industries ensures it remains in high demand.
- Tableau (56 demands): Tableau is a leading data visualization tool that helps in creating interactive and shareable dashboards.
Proficiency in Tableau is important for presenting data insights effectively.
- Power BI (46 demands): Similar to Tableau, Power BI is another powerful tool for business analytics and data visualization.
It's popular for its integration with other Microsoft products and its robust data visualization capabilities.
These skills highlight the importance of both technical and visualization capabilities for data analysts in Poland.


[
  {
    "skills": "sql",
    "demand_count": "131"
  },
  {
    "skills": "python",
    "demand_count": "85"
  },
  {
    "skills": "excel",
    "demand_count": "73"
  },
  {
    "skills": "tableau",
    "demand_count": "56"
  },
  {
    "skills": "power bi",
    "demand_count": "46"
  }
]


/*

