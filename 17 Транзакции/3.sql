CREATE PROCEDURE issue_book(IN p_book_id INT, IN p_member_id INT)
BEGIN
    DECLARE is_book_available BOOLEAN;

    START TRANSACTION;

    (SELECT available FROM books WHERE id = p_book_id) INTO is_book_available;

    IF is_book_available THEN
        UPDATE books
        SET available = 0
        WHERE id = p_book_id;

        INSERT INTO loans(book_id, member_id) VALUES
            (p_book_id, p_member_id);

        SELECT 'Книга успешно выдана' AS 'message';
        COMMIT;
    ELSE
        SELECT 'Книга не доступна для выдачи' AS 'message';
        ROLLBACK;
    end if;
end;