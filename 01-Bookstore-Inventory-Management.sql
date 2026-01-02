===================================================================================================
-- A. Data Retrieval & Filtering

-- Retrieve all details of every book in the inventory.
SELECT * from books;

-- List the name, author, and price of each book available.
SELECT title, author, price from books;

-- Display the titles of books that are considered expensive according to company standards (above a certain price threshold).4.
SELECT title from books where price > 50;

-- Identify books that are currently out of stock.
SELECT title from books where stock =0;

-- Find the top 10 most expensive books in the catalog.
SELECT title from books order by price desc limit 8;

-- Retrieve the five oldest books based on their publication year.
select title from books order by publication_year limit 5;

-- Find books that have not yet been rated by customers.
select title from books where rating is null;

-- Show books where the publisher’s information is available.
select title from books where publisher is not null;

===================================================================================================
B. Working with Operators

-- Display each book’s title, its listed price, and the price after applying a 10% tax.
SELECT title, price, ROUND(price + price * (10.0 / 100), 2) as price_with_tax from books;
SELECT title, price, round((price*1.1),2)  as price_with_tax from books;


-- Identify books with a high page count but still priced affordably.
SELECT title, pages, price from books where pages  > 800 and price <20;

-- Find books whose rating is different from the highest possible score.
-- Find highest rating
select * from books order by rating desc;
select max(rating) from books;

-- Query:
select * from books where rating != 5;
select * from books where rating != (select max(rating) from books)
or rating is null;


-- Retrieve books that are either not in English or are offered in a digital format.
SELECT * from books where language != 'English' OR format = 'eBook';

===================================================================================================
C. Pattern Matching & Range Filtering

-- List books whose titles include a certain keyword, regardless of case.
SELECT * from books where lower(title) LIKE '%sky%';


-- Identify authors whose last names start with a specific two-letter prefix.

-- Find all books that fall under a selected set of genres.

-- Retrieve books whose prices are within a specified range.

-- List books published outside of a given year range.

SELECT * from books;