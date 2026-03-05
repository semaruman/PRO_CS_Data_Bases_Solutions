SELECT u.name AS 'name',
       IFNULL(GROUP_CONCAT(s.text SEPARATOR '; '), 'нет запросов')AS 'text'
FROM users u
LEFT JOIN search_queries s ON u.id = s.user_id
WHERE s.text LIKE '%html%' or s.text LIKE '%css%' or s.text <=> null
GROUP BY u.name
ORDER BY name DESC