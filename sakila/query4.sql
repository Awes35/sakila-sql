use sakila;
#author Kollen Gruizenga
#query 4
#find/display all customers who rented more than 4 horror movies

SELECT DISTINCT cu.first_name, cu.last_name
FROM film_category fc, category c, customer cu, rental r, inventory i #film f
WHERE c.name = 'Horror'
AND fc.category_id = c.category_id
#AND fc.film_id = f.film_id
#found the horror films ^
AND i.film_id = fc.film_id
AND r.inventory_id = i.inventory_id
AND r.customer_id = cu.customer_id
GROUP BY r.customer_id
HAVING COUNT(r.customer_id) > 4


