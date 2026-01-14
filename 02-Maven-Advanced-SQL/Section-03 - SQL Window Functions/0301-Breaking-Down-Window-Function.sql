-- Connect to database (MySQL)
USE maven_advanced_sql;

-- 1. Window function basics
-- Return all row numbers
SELECT country, year, happiness_score,
		ROW_NUMBER() OVER(PARTITION BY country order by happiness_score) as row_num
FROM happiness_scores
ORDER BY country, row_num;


-- Return all row numbers within each window
-- where the rows are ordered by happiness score
SELECT	 country, year, happiness_score,
		 ROW_NUMBER() OVER(PARTITION BY country ORDER BY happiness_score) AS row_num
FROM	 happiness_scores
ORDER BY country, row_num;

-- Return all row numbers within each window
-- where the rows are ordered by happiness score descending
SELECT	 country, year, happiness_score,
		 ROW_NUMBER() OVER(PARTITION BY country ORDER BY happiness_score DESC) AS row_num
FROM	 happiness_scores
ORDER BY country, row_num;