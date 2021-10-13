use sakila;
#author Kollen Gruizenga
#query 8
#find the customer names who have rented ALL the horror films available

SELECT cu.first_name, cu.last_name
FROM film f, film_category fc, category c, customer cu, rental r, inventory i
WHERE c.name = 'Horror'
AND fc.category_id = c.category_id
AND fc.film_id = f.film_id
AND i.film_id = f.film_id
AND r.inventory_id = i.inventory_id
AND r.customer_id = cu.customer_id
GROUP BY cu.customer_id
HAVING COUNT(r.rental_id) = (
SELECT COUNT(f.film_id) 
FROM film_category fc, category c, film f
WHERE c.name = 'Horror'
AND fc.category_id = c.category_id
AND fc.film_id = f.film_id );

#SELECT cu.first_name, cu.last_name, COUNT(r.rental_id) as horror_film_count
#FROM customer AS cu, rental AS r, inventory as i, film as f, category as ca, film_category as fc
#WHERE cu.customer_id = r.customer_id 
#AND r.inventory_id = i.inventory_id
#AND i.film_id = f.film_id
#AND f.film_id = fc.film_id
#AND fc.category_id = ca.category_id
#AND ca.category_id = 11
#GROUP BY cu.customer_id
#HAVING horror_film_count > 10


#SELECT cu.first_name, cu.last_name
#FROM film f, film_category fc, category c, customer cu, rental r, inventory i
#WHERE c.name = 'Horror'
#AND fc.category_id = c.category_id
#AND fc.film_id = f.film_id
#AND i.film_id = f.film_id
#AND r.inventory_id = i.inventory_id
#AND r.customer_id = cu.customer_id
#SELECT(
#FROM film_category fc, category c, film f
#WHERE c.name = 'Horror'
#AND fc.category_id = c.category_id
#AND fc.film_id = f.film_id )
