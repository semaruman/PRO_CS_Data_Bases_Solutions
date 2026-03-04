SELECT full_name, details, join_date, days_without_break
FROM users
WHERE is_active AND days_without_break >= 1 AND days_without_break<=7 AND
      (details LIKE "%разработчик%" OR details LIKE "%аналитик%")
ORDER BY days_without_break DESC, join_date ASC;