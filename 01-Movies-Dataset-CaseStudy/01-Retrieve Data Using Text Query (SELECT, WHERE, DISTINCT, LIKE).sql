### Retrieve data using text query(SELECT, WHERE, DISTINCT, LIKE)

-- Simply print all the movies 
	SELECT * from movies;

-- Get movie title and industry for all the movies
	SELECT title, industry from movies;

-- Print all moves from Hollywood 
	SELECT * from movies where industry="Hollywood";

-- Print all moves from Bollywood 
	SELECT * from movies where industry="Bollywood";

-- Get all the unique industries in the movies database
	SELECT DISTINCT industry from movies;

-- Select all movies that starts with THOR
	SELECT * from movies where title LIKE 'THOR%';

-- Select all movies that have 'America' word in it. That means to select all captain America movies
	SELECT * from movies where title LIKE '%America%';

-- How many hollywood movies are present in the database?
	SELECT COUNT(*) from movies where industry="Hollywood";

-- Print all  movies where we don't know the value of the studio
	SELECT * FROM movies WHERE studio='';

-- Print all movie titles and release year for all Marvel Studios movies
   SELECT title, release_year from movies where studio="Marvel Studios"

-- Print all movies that have Avenger in their name
   SELECT * from movies where title LIKE '%Avenger%'

-- Print the year in which "The Godfather" move was released
	SELECT release_year from movies where title="The Godfather"

-- Print all distinct movie studios on Bollywood industry
	SELECT DISTINCT studio from movies where industry="Bollywood"