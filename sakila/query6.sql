use sakila;
#author: Kollen Gruizenga
#query 6
#find customers at postal code 62703 that saw documentaries

SELECT cu.first_name, cu.last_name, c.name
FROM film f, film_category fc, category c, customer cu, rental r, inventory i, address a
WHERE c.name = 'Documentary'
AND a.postal_code = 62703
AND fc.category_id = c.category_id
AND fc.film_id = f.film_id
#found the documentary films ^
AND i.film_id = f.film_id
AND r.inventory_id = i.inventory_id
AND r.customer_id = cu.customer_id
AND cu.address_id = a.address_id;