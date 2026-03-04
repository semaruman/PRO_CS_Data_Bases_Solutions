SELECT parameter_name, performance_impact
FROM video_settings
WHERE performance_impact > (
    SELECT AVG(performance_impact)
    FROM video_settings
    )
ORDER BY performance_impact DESC;