-- Point 1
SELECT *
FROM movies
WHERE extract(year FROM release_date) = 2020;

-- Point 2
SELECT *
FROM actors
WHERE first_name LIKE '%s';

-- Point 3
SELECT *
FROM movies
WHERE rating >= 4 AND rating <= 8 AND extract(year FROM release_date) >= 2004 AND extract(year FROM release_date) <= 2010;