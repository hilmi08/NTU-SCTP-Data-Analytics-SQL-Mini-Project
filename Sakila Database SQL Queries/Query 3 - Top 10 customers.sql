-- Top 10 customers by total payments made --

SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    SUM(p.amount) AS total_spent
FROM customer AS c
JOIN payment AS p
  ON c.customer_id = p.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 10;
