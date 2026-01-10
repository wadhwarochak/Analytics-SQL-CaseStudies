-- Multiple Table Analysis

-- Connect to database (MySQL)
USE maven_advanced_sql;

-- See tables
SELECT * FROM happiness_scores;
SELECT * FROM country_stats;

-- Basics Joins
SELECT happiness_scores.year, happiness_scores.country, happiness_scores.happiness_score, country_stats.continent
FROM happiness_scores
INNER JOIN country_stats
ON happiness_scores.country = country_stats.country;

SELECT	hs.year, hs.country, hs.happiness_score,
cs.continent
FROM happiness_scores hs
INNER JOIN country_stats cs
ON hs.country = cs.country;


