DROP VIEW IF EXISTS main_courses;

CREATE VIEW IF NOT EXISTS  main_courses AS
SELECT 
    c.title,
    c.price,
    c.photo,
    COUNT(uc.course_id) AS users_count
FROM 
    courses c
LEFT JOIN 
    user_courses uc ON c.id = uc.course_id
GROUP BY 
    c.id, c.title, c.price, c.photo
ORDER BY 
    c.created_date DESC
LIMIT 6