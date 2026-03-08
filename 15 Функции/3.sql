CREATE FUNCTION get_recommended_games(player_id INT)
RETURNS VARCHAR(110)
BEGIN
    DECLARE player_genre VARCHAR(100);
    SET player_genre = (
        SELECT favorite_genre
        FROM players
        WHERE id = player_id
        );
    RETURN (
        SELECT GROUP_CONCAT(title ORDER BY title SEPARATOR ',')
        FROM games
        WHERE genre = player_genre
        );
END