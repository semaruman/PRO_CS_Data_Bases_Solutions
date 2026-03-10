SELECT
    p.name AS parent_name,
    p.birth_year AS parent_birth_year
FROM
    people p
    JOIN relations r ON p.id = r.parent_id
WHERE
    r.child_id = (SELECT id FROM people WHERE name = 'Мария' AND birth_year = 1990)
ORDER BY
    p.name;