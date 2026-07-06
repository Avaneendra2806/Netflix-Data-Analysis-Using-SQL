# 🎬 Netflix Data Analysis using SQL
## 📖 Overview
This project presents an end-to-end SQL data analysis of the Netflix Movies and TV Shows dataset using **MySQL**. The objective is to analyze Netflix's content library by solving real-world business problems with SQL and extracting meaningful insights from the data
---
## 🎯 Objectives
- Analyze the distribution of Movies and TV Shows on Netflix.
- Identify the most common content ratings.
- Explore content based on release year, country, and duration.
- Analyze content trends across different countries.
- Find top directors and most popular genres.
- Discover the longest movies and oldest released content.
- Solve business problems using SQL queries.
---
## 📊 Dataset Source: https://www.kaggle.com/datasets/shivamb/netflix-shows?resource=download
The dataset contains information about Netflix Movies and TV Shows, including:
- 🎬 Title
- 📺 Content Type
- 🎭 Director
- 👥 Cast
- 🌍 Country
- 📅 Date Added
- 📆 Release Year
- ⭐ Rating
- ⏱️ Duration
- 🎭 Genre
- 📝 Description
---
## 📂 Project Structure

```text
Netflix-Data-Analysis-SQL/
│
├── 📄 README.md
│
├── 📁 Dataset
│   └── 📄 netflix_titles.csv
│
├── 📁 SQL Scripts
│   ├── 📄 Schemas.sql
│   ├── 📄 Business_Problems.sql
│   └── 📄 Business_Problem_Solutions.sql
│
└── 📁 Images
    └── 🖼️ Netflix_Logo.png
```
---
## 🗄️ Database Schema
```sql
DROP TABLE IF EXISTS netflix;
CREATE DATABASE netflix_db
USE netflix_db(As Default Schema)

CREATE TABLE netflix_titles
(
    show_id VARCHAR(5),
    type VARCHAR(10),
    title VARCHAR(250),
    director VARCHAR(550),
    casts VARCHAR(1050),
    country VARCHAR(550),
    date_added VARCHAR(55),
    release_year INT,
    rating VARCHAR(15),
    duration VARCHAR(15),
    listed_in VARCHAR(250),
    description VARCHAR(550)(optional not needed)
);
```
---
## 💼 Business Problems

This project addresses the following business questions using SQL:
1. What is the total number of Movies and TV Shows available on Netflix?
2. Which country has produced the most Netflix content (Movies and TV Shows)? List the **Top 5 countries**.
3. List all Movies and TV Shows released in the year **2020**.
4. Find all Movies directed by **Kristen Johnson**.
5. What is the most common content rating on Netflix?
6. List all TV Shows that have **5 or more seasons**.
7. List all Movies produced in **India** that belong to the **Comedies** category.
8. How many Movies were released each year? Display the results in **descending order** by release year
9. Who are the **Top 5 directors** with the highest number of directed Movies? *(Excluding "Not Given")*
10. What are the **5 oldest Movies** released in India available on Netflix?
11. Find all Documentary Movies released **after 2015**.
12. Which Movie has the **longest duration** (in minutes) on Netflix?
13. Identify the release years in which **more than 50 Movies** from India were released.
14. Find the **most recently released Movie** for each country.
---
## 📈 Key SQL Concepts Used

- ✅ DDL Commands
- ✅ Filtering (WHERE)
- ✅ Sorting (ORDER BY)
- ✅ Aggregate Functions
- ✅ GROUP BY
- ✅ HAVING Clause
- ✅ String Functions
- ✅ Subqueries
- ✅ Window Functions
- ✅ ROW_NUMBER()
---
## 📌 Key Insights
- Movies make up a larger portion of Netflix's content library than TV Shows.
- Drama and International Movies are among the most common genres.
- The United States contributes the highest number of titles.
- Netflix has significantly expanded its content library over recent years.
- Content ratings vary across Movies and TV Shows, reflecting diverse audience segments.
- SQL analytics help uncover valuable trends and support data-driven decision-making.
---
---
## 👨‍💻 Author
**Avaneendra Swayampakala**
🎯 Aspiring Data Analyst
### 💼 Skills
- 📗 Excel
- 🐍 Python
- 🗄️ SQL
- 📊 Power BI
- 📈 Statistical Analysis
