
CREATE VIEW users_certificates AS
SELECT u.id, u.full_name, GROUP_CONCAT(c.title ORDER BY c.created_date DESC SEPARATOR '; ') AS 'certificates'
FROM users u
JOIN certificates cer ON u.id = cer.user_id
JOIN courses c ON cer.course_id = c.id
GROUP BY u.id, u.full_name
ORDER BY full_name