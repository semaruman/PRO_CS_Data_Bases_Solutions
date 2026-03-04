SELECT response_status, COUNT(id) AS 'request_count'
FROM browser_requests
WHERE response_status != 200
GROUP BY response_status