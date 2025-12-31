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