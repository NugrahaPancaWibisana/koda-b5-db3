-- Point 1
SELECT d.first_name, d.last_name, COUNT(g.id)
FROM movies m
FULL JOIN directors d ON m.director_id = d.id
FULL JOIN genres g ON m.genre_id = g.id
GROUP BY d.first_name, d.last_name;

-- Point 2
SELECT a.first_name, a.last_name, COUNT(ma.movie_id)
FROM movies_actors ma
JOIN actors a ON ma.actor_id = a.id
GROUP BY a.first_name, a.last_name
HAVING COUNT(ma.movie_id) >= 5;

-- Point 3
SELECT d.first_name, d.last_name, count(m.id) as movie_count
FROM movies m
JOIN directors d ON m.director_id = d.id
GROUP BY d.first_name, d.last_name
ORDER BY movie_count DESC
LIMIT 1; 

-- Point 4
SELECT EXTRACT(year FROM m.release_date) as year
FROM movies m
GROUP BY EXTRACT(year FROM m.release_date)
ORDER BY COUNT(m.id) DESC
LIMIT 1;

-- Point 5
SELECT m.id, m.title, m.release_date, m.rating, STRING_AGG(a.first_name || ' ' || a.last_name, ', ' ORDER BY a.first_name, a.last_name) AS actors
FROM movies_actors ma
JOIN movies m ON ma.movie_id = m.id
JOIN actors a ON ma.actor_id = a.id
GROUP BY m.id;