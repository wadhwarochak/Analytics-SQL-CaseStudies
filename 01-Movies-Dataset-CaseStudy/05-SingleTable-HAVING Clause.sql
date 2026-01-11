### Module: HAVING Clause

-- Print all the years where more than 2 movies were released
	SELECT 
           release_year, 
           count(*) as movies_count
	FROM movies    
	GROUP BY release_year
	HAVING movies_count>2
	ORDER BY movies_count DESC;
