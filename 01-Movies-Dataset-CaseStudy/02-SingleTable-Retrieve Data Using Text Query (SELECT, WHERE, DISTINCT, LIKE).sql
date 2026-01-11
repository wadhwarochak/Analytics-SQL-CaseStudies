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


-- Print all movie titles and release year for all Marvel Studios movies
	SELECT title, release_year from movies where studio="Marvel Studios"

-- Print all movies that have Avenger in their name
   SELECT * from movies where title LIKE '%Avenger%'

-- Print the year in which "The Godfather" move was released
   SELECT release_year from movies where title="The Godfather"

-- Print all distinct movie studios on Bollywood industry
   SELECT DISTINCT studio from movies where industry="Bollywood"