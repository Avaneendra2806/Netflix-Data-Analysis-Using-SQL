-- 1) what is the total number of Movies and TV Shows on netflix?

SELECT 
    type, COUNT(*) AS count
FROM
    netflix_titles
GROUP BY type;

-- 2) Which Country has produced the most content(Movies + TV SHows) on netflix. List the Top 5 Countries

SELECT 
    country, COUNT(*) AS count
FROM
    netflix_titles
WHERE
    country IS NOT NULL
GROUP BY country
ORDER BY count DESC
LIMIT 5;

-- 3) list all Movies and TV Shows released in the year 2020

SELECT 
    title, type, release_year
FROM
    netflix_titles
WHERE
    release_year = 2020;

-- 4) What are all the Movies directed by 'kristen Johnson'?

SELECT 
    title
FROM
    netflix_titles
WHERE
    director ='Kirsten Johnson'
        AND type = 'Movie';
        
-- 5) Which Content Rating is most common on netflix

SELECT 
    rating, COUNT(*) as count
FROM
    netflix_titles
WHERE
    rating IS NOT NULL
GROUP BY rating
ORDER BY count DESC
LIMIT 5;

-- 6) Find list of all TV Shows that have 5 or more seasons

SELECT 
    title, duration
FROM
    netflix_titles
WHERE
    type = 'TV Show'
        AND CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) >= 5;
        
-- 7) List all the movies produces in india that belong to the 'comedies' category

SELECT 
    title
FROM
    netflix_titles
WHERE
    country LIKE '%India%'
        AND listed_in LIKE '%Comedies%'
        AND type = 'Movie';

-- 8) How many movies were released each yaer? Sort the results in Descending order of the release year

SELECT 
    release_year, COUNT(*) AS count
FROM
    netflix_titles
GROUP BY release_year
ORDER BY release_year DESC
LIMIT 10;


-- 9) Who are the Top 5 Directors with the highest no of directed movies(Excluding not given)

SELECT 
    director, COUNT(*) AS count
FROM
    netflix_titles
WHERE
    director IS NOT NULL
        AND director <> 'NOT given'
GROUP BY director
ORDER BY count DESC
LIMIT 5;

-- 10) What are the 5 oldest movies released in india on netflix ?

SELECT 
    title, release_year
FROM
    netflix_titles
WHERE
    country LIKE '%India%'
        AND type = 'Movie'
ORDER BY release_year ASC
LIMIT 5;

-- 11) Find all the titles of all movies list as Documentaries that were released after the year 2015.

SELECT 
    title, release_year
FROM
    netflix_titles
WHERE
    listed_in LIKE '%Documentaries%'
        AND release_year > 2015
        AND type = 'Movie'
ORDER BY release_year DESC;

-- 12) Which movie has the longest duration in minutes on netflix?

SELECT 
    title, duration
FROM
    netflix_titles
WHERE
    type = 'Movie' AND duration LIKE '%min%'
ORDER BY CAST(SUBSTRING(duration,
        1,
        INSTR(duration, ' ') - 1)
    AS UNSIGNED) DESC
LIMIT 1;

-- 13) Identify the release years in which more than 50 movies from India were released

SELECT 
    release_year, COUNT(*) AS movie_count
FROM
    netflix_titles
WHERE
    country LIKE '%India%'
        AND type = 'Movie'
GROUP BY release_year
HAVING COUNT(*) > 50
ORDER BY movie_count DESC;

-- 14) Which is the most recently released movie for each country

select country,title,release_year
FROM(
 SELECT country,title,release_year,
 ROW_NUMBER() OVER (
  partition by country
  order by release_year desc
 ) AS rn
 FROM netflix_titles
 where type='Movie' AND country is NOT NULL
 ) AS ranked
 where rn=1
 order by release_year desc;
 
 
