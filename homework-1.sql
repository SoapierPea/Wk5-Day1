-- 1. How many actors are there with the last name ‘Wahlberg’?
    SELECT last_name
    FROM actor
    WHERE last_name = 'Wahlberg';

    -- 2 actors have the last name Wahlberg

-- 2. How many payments were made between $3.99 and $5.99?
    SELECT COUNT(amount)
    FROM payment
    WHERE amount BETWEEN 3.99 and 5.99;

    -- There were 5602 payments made between 3.99 and 5.99

-- 3. What film does the store have the most of? (search in inventory)
    SELECT film_id, COUNT(inventory_id)
    FROM inventory 
    WHERE film_id BETWEEN 1 and 1000
    GROUP BY film_id;

    SELECT title, film_id
    FROM film;
    --- there are many movies with 8 counts, but none have a greater count value
    --- Examples: film_id: 753,764,767, 1000: Rush Goodfellas, Saturday Lambs, Scalawag Duck, Zorro Ark  


-- 4. How many customers have the last name ‘William’?
    SELECT last_name
    FROM customer
    WHERE last_name = 'William';

    -- No customers with last name William


-- 5. What store employee (get the id) sold the most rentals?
    SELECT first_name, last_name, staff_id
    FROM  staff;

    --Jon Stephens

-- 6. How many different district names are there?
    SELECT COUNT(district)
    FROM address;
    -- 603 districts

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

    SELECT COUNT(actor_id) > 13, film_id
    FROM film_actor
    GROUP BY film_id; 
    --508 Film ID

    SELECT title
    FROM  film
    WHERE film_id = 508;

    -- Lambs Cincinatti

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';

--21 people

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
    


-- 10. Within the film table, how many rating categories are there? And what rating category has the 
-- movies total?

    --SELECT COUNT(DISTINCT rating)
    SELECT MAX(DISTINCT rating)
    FROM film;
     -- 5 ratings
     --NC-17
    


