### Module: Calculated Columns (IF, CASE, YEAR, CURYEAR)

-- Print actor name, their birth_year and age
	SELECT 
           name, birth_year, (YEAR(CURDATE())-birth_year) as age
	FROM actors;

-- Print profit for every movie
	SELECT 
	    *, 
           (revenue-budget) as profit 
	from financials;

-- Print revenue of all movies in INR currency
	SELECT 
           movie_id, 
	   revenue, 
           currency, 
           unit,
           IF (currency='USD', revenue*77, revenue) as revenue_inr
	FROM financials;

-- Get all the unique units from financial table
	select 
	   distinct unit 
	From financials;

-- Print revenue in millions 
	SELECT 
           movie_id, revenue, currency, unit,
           CASE
              WHEN unit="Thousands" THEN revenue/1000
              WHEN unit="Billions" THEN revenue*1000
             ELSE revenue
           END as revenue_mln
	FROM financials

