use sakila;
#author: Kollen Gruizenga
#query 5
#find customers that saw movie with SCARLETT BENING

SELECT DISTINCT  cu.first_name, cu.last_name
FROM actor a, film_actor fa, film f, customer cu, inventory i, rental r
WHERE a.first_name = 'SCARLETT'
AND a.last_name = 'BENING'
AND fa.actor_id = a.actor_id
AND f.film_id = fa.film_id
AND i.film_id = f.film_id
AND r.inventory_id = i.inventory_id
AND r.customer_id = cu.customer_id
