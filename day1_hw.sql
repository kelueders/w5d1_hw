SELECT * FROM actor;
SELECT * FROM inventory;
SELECT * FROM film;
SELECT * FROM customer;
SELECT * FROM payment;
SELECT * FROM address;
SELECT * FROM film_actor;
SELECT * FROM rental;

-- Question #1
SELECT COUNT(last_name) FROM actor
WHERE last_name = 'Wahlberg';

-- Question #2
SELECT COUNT(amount) FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question #3 - there are 72 movies that the store has 8 copies of
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Question #4
SELECT COUNT(last_name) FROM customer
WHERE last_name = 'William';

-- Question #5
SELECT COUNT(staff_id) FROM rental
GROUP BY staff_id
LIMIT 1;

-- Question #6
SELECT COUNT(DISTINCT district) FROM address;

-- Question #7
SELECT film_id, COUNT(film_id) FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;

-- Question #8
SELECT last_name FROM customer
WHERE last_name LIKE '%es' and store_id=1;

-- Question #9
SELECT amount, COUNT(amount) FROM payment
WHERE customer_id > 380 AND customer_id < 430
GROUP BY amount
HAVING COUNT(amount) > 250;

-- Question #10
SELECT rating, COUNT(rating) FROM film
GROUP BY rating
