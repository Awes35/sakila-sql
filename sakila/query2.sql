use sakila;
#author Kollen Gruizenga
#query 2
#display all actors in German movies

SELECT DISTINCT a.first_name, a.last_name
FROM actor a, film_actor fa, film f, language l
WHERE l.name = "German"
AND l.language_id = f.language_id
AND f.film_id = fa.film_id
AND fa.actor_id = a.actor_id

