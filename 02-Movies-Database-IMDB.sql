=============================================================================================
Retrieve Data Using Text Query (SELECT, WHERE, DISTINCT, LIKE)

SELECT * from moviesdb.movies;
SELECT title, industry FROM moviesdb.movies;
use moviesdb;
select * from movies where industry = 'Bollywood';

-- count hollywood movies
select count(*) from movies where industry = 'hollywood';

-- unique industries
select distinct industry from movies;

-- find thor movies
-- wild card search
select * FROM movies where title LIKE "%THOR%";
select * FROM movies where title LIKE "%america%";

-- find movies without studio value (data issue)
select * FROM movies where studio="";
select * FROM movies where studio is NULL;

-- all movie titles and release year for all Marvel Studios movies.
select title, release_year from movies where studio = "Marvel Studios";

-- movies that have Avenger in their name.
select title FROM movies where title LIKE "%Avenger%";

-- year when the movie "The Godfather" was released.
select release_year from movies where title = "The Godfather";

-- distinct movie studios in the Bollywood industry
select distinct(title) from movies where industry = "Bollywood";


-- Which movies had greater than 9 imdb rating?
SELECT * from movies where imdb_rating>9;

-- Movies with rating between 6 and 8
SELECT * from movies where imdb_rating>=6 and imdb_rating <=8;
SELECT * from movies where imdb_rating BETWEEN 6 AND 8;

-- Select all movies whose release year can be 2018 or 2019 or 2022
-- Approach1:
SELECT * from movies where release_year=2022 
or release_year=2019 or release_year=2018;

-- Approach2:
SELECT * from movies where release_year IN (2018,2019,2022);

-- All movies where imdb rating is not available (imagine the movie is just released)
SELECT * from movies where imdb_rating IS NULL;

-- All movies where imdb rating is available 
SELECT * from movies where imdb_rating IS NOT NULL;


=============================================================================================
Retrieve Data Using Numeric Query (BETWEEN, IN, ORDER BY, LIMIT, OFFSET)
-- Print all bollywood movies ordered by their imdb rating
SELECT * From movies where industry = "bollywood"
order by imdb_rating desc;

-- Print first 5 bollywood movies with highest rating
	SELECT * 
        from movies WHERE industry = "bollywood"
        ORDER BY imdb_rating DESC LIMIT 5;

-- Select movies starting from second highest rating movie till next 5 movies for bollywood
	SELECT * 
        from movies WHERE industry = "bollywood"
        ORDER BY imdb_rating DESC LIMIT 5 OFFSET 1;

-- print all movies by the order of their release year (latest first)
select * from movies order by release_year desc;
   
-- all movies released this year in 2022
select * from movies where release_year=2022;
   
-- ok now all the movies released after 2020
select * from movies where release_year>2020;
   
-- all movies after year 2020 that has more than 8 rating
select * from movies where release_year>2020 and imdb_rating>8;
   
-- select all movies that are by marvel studios and hombale films
select * from movies where studio in ("marvel studios", "hombale films");
   
-- select all thor movies by their release year
select title, release_year from movies 
   where title like '%thor%' order by release_year asc

-- select all movies that are not from marvel studios
select * from movies where studio!="marvel studios"

=============================================================================================
Summary Analytics (MIN, MAX, AVG, GROUP BY)

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

=============================================================================================
