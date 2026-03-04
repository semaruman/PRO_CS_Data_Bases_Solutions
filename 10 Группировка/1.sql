SELECT brand, GROUP_CONCAT(model) AS 'models'
FROM cars
GROUP BY brand