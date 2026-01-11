
### Module: Summary Analytics (COUNT, MAX, MIN, AVG, GROUP BY)
 
-- How many total movies do we have in our movies table?
	SELECT COUNT(*) from movies;
	
-- Select highest imdb rating for bollywood movies
	SELECT MAX(imdb_rating) from movies where industry="Bollywood";

-- Select lowest imdb rating for bollywood movies
	SELECT MIN(imdb_rating) from movies where industry="Bollywood";

-- Print average rating of Marvel Studios movies
	SELECT AVG(imdb_rating) from movies where studio="Marvel Studios";
	SELECT ROUND(AVG(imdb_rating),2) from movies where studio="Marvel Studios";

-- Print min, max, avg rating of Marvel Studios movies
	SELECT 
           MIN(imdb_rating) as min_rating, 
           MAX(imdb_rating) as max_rating, 
           ROUND(AVG(imdb_rating),2) as avg_rating
        FROM movies 
        WHERE studio="Marvel Studios";

-- Print count of movies by industry
	SELECT 
           industry, count(industry) 
        FROM movies
        GROUP BY industry;

-- Same thing but add average rating
	SELECT 
            industry, 
            count(industry) as movie_count,
            avg(imdb_rating) as avg_rating
	FROM movies
	GROUP BY industry;

-- Count number of movies released by a given production studio
	SELECT 
	    studio, count(studio) as movies_count 
        from movies WHERE studio != ''
	GROUP BY studio
	ORDER BY movies_count DESC;

-- What is the average rating of movies per studio and also order them by average rating in descending format?
	SELECT 
	   studio, 
	   count(studio) as cnt, 
	   round(avg(imdb_rating), 1) as avg_rating 
	from movies WHERE studio != ''
	GROUP BY studio
        order by avg_rating DESC;
