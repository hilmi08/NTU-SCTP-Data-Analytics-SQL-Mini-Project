-- Top 10 films most frequently rented --
SELECT
    f.title              AS film_title,
    c.name               AS category_name,
    COUNT(r.rental_id)   AS rental_count
FROM film AS f
JOIN inventory AS i
  ON f.film_id = i.film_id
JOIN rental AS r
  ON i.inventory_id = r.inventory_id
JOIN film_category AS fc
  ON f.film_id = fc.film_id
JOIN category AS c
  ON fc.category_id = c.category_id
GROUP BY f.film_id, f.title, c.name
ORDER BY rental_count DESC
LIMIT 10;
