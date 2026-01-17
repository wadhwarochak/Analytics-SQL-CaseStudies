### Module: SQL Joins (INNER, LEFT, RIGHT, FULL)

-- Print all movies along with their title, budget, revenue, currency and unit. [INNER JOIN]
	SELECT 
            m.movie_id, title, budget, revenue, currency, unit 
	FROM movies m
	INNER JOIN financials f
	ON m.movie_id=f.movie_id;
    
-- Perform LEFT JOIN on above discussed scenario
	SELECT 
            m.movie_id, title, budget, revenue, currency, unit 
	FROM movies m
	LEFT JOIN financials f
	ON m.movie_id=f.movie_id;

-- Perform RIGHT JOIN on above discussed scenario
	SELECT 
            m.movie_id, title, budget, revenue, currency, unit 
	FROM movies m
	RIGHT JOIN financials f
	ON m.movie_id=f.movie_id;

-- Perform FULL JOIN using 'Union' on above two tables [movies, financials]
	SELECT 
            m.movie_id, title, budget, revenue, currency, unit 
	FROM movies m
	LEFT JOIN financials f
	ON m.movie_id=f.movie_id

	UNION

	SELECT 
            m.movie_id, title, budget, revenue, currency, unit 
	FROM movies m
	RIGHT JOIN financials f
	ON m.movie_id=f.movie_id;

-- Interchanging the position of Left and Right Tables
	Select 
	    m.movie_id, title, revenue 
	from movies m 
        left join financials f
        on m.movie_id = f.movie_id;

	Select 
	    m.movie_id, title, revenue 
	from financials f 
        left join movies m
        on m.movie_id = f.movie_id;

-- Replacing 'ON' with 'USING' while joining conditions
	Select 
	   m.movie_id, title, revenue 
	from movies m 
        left join financials f
	USING (movie_id);

-- Show all the movies with their language names
   SELECT m.title, l.name FROM movies m 
   JOIN languages l USING (language_id);
   
-- Show all Telugu movie names (assuming you don't know language id for Telugu)
   SELECT title	FROM movies m 
   LEFT JOIN languages l 
   ON m.language_id=l.language_id
   WHERE l.name="Telugu";

-- Show language and number of movies released in that language
   	SELECT 
            l.name, 
            COUNT(m.movie_id) as no_movies
	FROM languages l
	LEFT JOIN movies m USING (language_id)        
	GROUP BY language_id
	ORDER BY no_movies DESC;
