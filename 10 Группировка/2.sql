SELECT driver_id AS 'driver', SUM(fare) AS 'total_earnings'
FROM rides
WHERE ride_date BETWEEN 2023-06-01 AND 2023-08-31
GROUP BY driver
HAVING total_earnings >= 150
ORDER BY total_earnings DESC;