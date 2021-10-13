use sakila;
#author: Kollen Gruizenga
#query 7
#Find the customer and rental title for all overdue dvd rentals


SELECT DISTINCT cu.customer_id, cu.first_name, cu.last_name, f.title
FROM film f, customer cu, rental r, inventory i
WHERE (r.rental_date + INTERVAL f.rental_duration DAY) < current_date()
AND r.return_date IS NULL
AND f.film_id = i.film_id
AND i.inventory_id = r.inventory_id
AND r.customer_id = cu.customer_id;

#rental_date and rental_duration are attributes of the rental relation.
#customer and rental title for all overdue DVD rentals