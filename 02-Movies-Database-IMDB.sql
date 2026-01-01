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