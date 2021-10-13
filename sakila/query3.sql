use sakila;
#author Kollen Gruizenga
#query 3
#find/display actors names who were in horror movies

SELECT DISTINCT a.first_name, a.last_name
FROM film f, film_category fc, category c, film_actor fa, actor a
WHERE c.name = 'Horror'
AND fc.category_id = c.category_id
AND fc.film_id = f.film_id
AND fa.film_id = f.film_id
AND fa.actor_id = a.actor_id;



