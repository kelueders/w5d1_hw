--intro query, select all from the actor table
SELECT *
FROM actor;

-- query for first_name and last_name from the actor table
SELECT first_name, last_name
FROM actor;

-- query from a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT first_name, last_name, actor_ID
FROM actor
WHERE actor_id = 2;

-- query for first_name LIKE Nick
SELECT first_name, last_name, actor_ID
FROM actor
WHERE first_name LIKE 'Nick';

-- % wild card - can take the place of any character
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- query for all first_name data that starts with the letter k and is followed by 2 characters using the WHERE clause
SELECT first_name, actor_id
FROM actor
WHERE first_name
LIKE 'K__';

SELECT first_name, actor_id
FROM actor
WHERE first_name
LIKE 'K_m';

-- query for all first_name data that starts with a K and ends with th
-- using the WHERE clause with both wildcard and underscore
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'K%th'; -- don't need underscores before the %

-- comparison operators
-- greater than > less than <
-- greater or equal >= less than or equal <=
-- not equal <>

-- explore data from payment table with SELECT ALL query *
-- good idea to grab all data from a new table so you know what you're working with
SELECT *
FROM payment;

-- query for data that shows customers who paid
-- an amount greater than $3
SELECT customer_id, amount
FROM payment
WHERE amount > 3.00;

-- query for customers who paid under 7.99 for specific rentals
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount < 7.99;

-- query for payments that were greater than or equal to 5.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount >= 5.99;

-- ORDER BY
-- BETWEEN
-- query fro all data order by amount
SELECT *
FROM payment
ORDER BY amount ASC; -- defaults to ASC ascending

-- order by descending
SELECT *
FROM payment
ORDER BY amount DESC;

-- query for data that shows customers who paid an amount BETWEEN 2.00 and 7.99
-- using WHERE, BETWEEN and AND
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.99 AND 5.99;

-- query for all customers who paid over 0.00
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount;

-- SQL Aggregrations --> Sum(), AVG(), COUNT(), MIN(), MAX()

-- query to display sum of amounts paid over 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- average amount for payments over 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- query to display the COUNT of amounts paid
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- query to display the DISTINCT COUNT of amounts paid <-- unique values
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- query for smallest payment made over 7.99
SELECT MIN(amount) as min_num_payments   -- will create a specific column with our minimum amount
FROM payment
WHERE amount > 7.99;

SELECT amount    -- another way to do it without an aggregate function
FROM payment
WHERE amount > 7.99
ORDER BY amount
LIMIT 1;

-- SELECT the Largest amount greater than 7.99
SELECT MAX(amount) as max_num_payments
FROM payment
WHERE amount > 7.99;

SELECT amount
FROM payment
WHERE amount > 7.99
ORDER BY amount DESC
LIMIT 1;

-- Query to display all amounts (quick demo of groupby)
SELECT amount
FROM payment
WHERE amount = 7.99;

-- query to display different COUNTS of amounts grouped together
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- query to display customer_ids with summed amounts for each customer_id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);

-- grab all amounts by customer_id
SELECT customer_id, amount
FROM payment
GROUP BY customer_id, amount
ORDER BY customer_id;

-- Query to explore the data inside of the customer table
SELECT *
FROM customer;

-- Query to display customer_ids that show up more than 5 times
-- Grouping by the customer's email
SELECT COUNT(customer_id),email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 0;