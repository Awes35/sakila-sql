use sakila;
#author Kollen Gruizenga
#query1
#find & display names of all actors who were in more than 40 movies

SELECT a.first_name, a.last_name
FROM actor a, film_actor fa, film f
WHERE fa.actor_id = a.actor_id
AND f.film_id = fa.film_id
GROUP BY fa.actor_id
HAVING COUNT(fa.actor_id) > 40;

#SELECT f.title, count(fa.actor_id)
#FROM film f INNER JOIN film_actor fa ON f.film_id = fa.film_id
#GROUP BY f.title;

#SELECT *
#FROM actor
#NATURAL JOIN film_actor;