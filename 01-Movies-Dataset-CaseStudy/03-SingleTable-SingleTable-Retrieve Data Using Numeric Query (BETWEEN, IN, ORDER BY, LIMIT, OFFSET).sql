### Module: Retrieve data using numeric query (BETWEEN, IN, ORDER BY, LIMIT, OFFSET)

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

-- Print all bollywood movies ordered by their imdb rating
	SELECT * 
        from movies WHERE industry = "bollywood"
        ORDER BY imdb_rating ASC;

-- Print first 5 bollywood movies with highest rating
	SELECT * 
        from movies WHERE industry = "bollywood"
        ORDER BY imdb_rating DESC LIMIT 5;

-- Select movies starting from second highest rating movie till next 5 movies for bollywood
	SELECT * 
        from movies WHERE industry = "bollywood"
        ORDER BY imdb_rating DESC LIMIT 5 OFFSET 1;




-- print all movies by the order of their release year (latest first)
   select * from movies order by release_year desc
   
-- all movies released this year in 2022   
   select * from movies where release_year=2022  
   
-- ok now all the movies released after 2020
   select * from movies where release_year>2020  
   
-- all movies after year 2020 that has more than 8 rating
   select * from movies where release_year>2020 and imdb_rating>8
   
-- select all movies that are by marvel studios and hombale films
   select * from movies where studio in ("marvel studios", "hombale films")
   
-- select all thor movies by their release year
   select title, release_year from movies 
   where title like '%thor%' order by release_year asc

-- select all movies that are not from marvel studios
   select * from movies where studio!="marvel studios"