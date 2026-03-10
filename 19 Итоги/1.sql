SELECT LEFT(name, 1) AS first_letter
FROM names
GROUP BY first_letter
ORDER BY COUNT(*) DESC
LIMIT 2;