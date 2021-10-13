use sakila;
#author Kollen Gruizenga
#query 9
#count number of films with category type Horror

SELECT DISTINCT count(f.film_id)
FROM category c, film f, film_category fc
WHERE c.name = 'Horror'
AND f.film_id = fc.film_id
AND c.category_id = fc.category_id
