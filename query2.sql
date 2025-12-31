SELECT m.title AS movie_title, d.first_name AS director_firstname, d.last_name AS director_lastname, g.name AS genre
FROM movies m
JOIN directors d ON m.director_id = d.id
JOIN genres g ON m.genre_id = d.id
LIMIT 50;

SELECT m.title AS movie_title, m.release_date AS movie_release_date, m.rating AS movie_rating, a.first_name AS actor_firstname, a.last_name AS actor_lastname, ma.role AS actor_role
FROM movies_actors ma
RIGHT JOIN movies m ON ma.movie_id = m.id
RIGHT JOIN actors a ON ma.actor_id = a.id;