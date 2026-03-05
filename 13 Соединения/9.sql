SELECT
    w.word AS english_word,
    t.translation,
    l.name AS language
FROM words w
LEFT JOIN translations t ON w.id = t.word_id
LEFT JOIN languages l ON t.language_id = l.id
ORDER BY w.word ASC;