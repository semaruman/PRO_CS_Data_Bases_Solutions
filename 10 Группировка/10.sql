SELECT
    user_id,
    COUNT(course_id) AS 'number_of_certificates',
    GROUP_CONCAT(course_id ORDER BY issue_date ASC SEPARATOR '; ') AS 'completed_courses'
FROM certificates
GROUP BY user_id
ORDER BY number_of_certificates DESC,  user_id DESC
LIMIT 10;