--- Top 5 categories which have the most films --

SELECT
    c.name        AS category_name,
    COUNT(f.film_id) AS film_count
FROM category AS c
JOIN film_category AS fc
  ON c.category_id = fc.category_id
JOIN film AS f
  ON fc.film_id = f.film_id
GROUP BY c.category_id, c.name
ORDER BY film_count DESC
LIMIT 5;

-- Rental demand by category
SELECT
c.name AS category_name,
COUNT(r.rental_id) AS rental_count
FROM category AS c
JOIN film_category AS fc
ON c.category_id = fc.category_id
JOIN film AS f
ON fc.film_id = f.film_id
JOIN inventory AS i
ON f.film_id = i.film_id
JOIN rental AS r
ON i.inventory_id = r.inventory_id
GROUP BY c.category_id, c.name
ORDER BY rental_count DESC;





