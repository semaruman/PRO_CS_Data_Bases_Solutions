SELECT user_id, COUNT(id) AS 'connection_attempts'
FROM security_logs
WHERE message LIKE '%Ошибка подключения%'
GROUP BY user_id
HAVING connection_attempts > 5
ORDER BY connection_attempts DESC;