select * from customers;
select * from products;
select * from sales_order;

-- Identify all small orders that were successfully shipped between August 2003 and the end of that year.
SELECT *
FROM sales_order
WHERE deal_size = 'Small' and status = 'Shipped' and month_id between 8 and 12 and year_id=2003;

-- Review all international orders (outside the USA) that are still marked as “In Process.


-- Provide a list of orders for Planes, Ships, and Trains that are in unresolved statuses (neither shipped, in process, nor resolved).


-- Generate a list of customers whose phone numbers contain special symbols such as “( )” or “+”.


-- Find customers whose phone numbers do not include any spaces, as these may indicate inconsistent data formatting.
-- Retrieve all orders placed between February and May 2003 where the quantity ordered was an even number.


-- Identify orders where the selling price recorded was higher than the product’s original listed price.


-- Determine the average value of sales orders across the dataset.


-- Calculate the total number of orders recorded.


-- Calculate the total quantity of items sold across all orders.

-- Find the earliest and the most recent order dates in the dataset.

-- Compare the average order value across different deal sizes (Small, Medium, Large).


-- Determine how many orders were placed each day, and identify which days had the highest order counts.


-- Summarize the total sales revenue for each quarter, presenting results in standard quarterly periods.

-- Report the number of Cars, Motorcycles, Trains, and Ships available in the inventory (group all types of cars together).


-- Identify any product categories where inventory levels have fallen below 10 units, marking them as shortages.


-- Determine which countries have placed more than 10 separate motorcycle orders.


-- Detect and list any orders where the recorded sales amount does not match the calculated amount (quantity × price per unit).

-- Provide a summary of total sales achieved on each calendar date.

-- Identify the three months with the lowest overall sales figures.

-- Calculate the total number of orders placed on each day of the week, and highlight which weekday had the highest activity.

-- Determine which product category has recorded the highest total sales and which has recorded the lowest.

-- Identify the top five customers by total purchase value, including their country and city.

-- Highlight all customers who have never placed an order, if any exist in the dataset.

-- Provide a year-over-year comparison of total sales to identify growth or decline trends.
