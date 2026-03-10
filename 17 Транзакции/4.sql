CREATE PROCEDURE return_book(IN p_loan_id INT)
BEGIN
    DECLARE v_book_id INT;
    DECLARE v_loan_exists INT DEFAULT 0;

    START TRANSACTION;

    SELECT COUNT(*) INTO v_loan_exists
    FROM loans
    WHERE id = p_loan_id AND return_date IS NULL;

    IF v_loan_exists = 0 THEN
        ROLLBACK;
        SELECT 'Такой книги нет для возврата' AS message;
    ELSE
        SELECT book_id INTO v_book_id
        FROM loans
        WHERE id = p_loan_id;

        UPDATE books
        SET available = TRUE
        WHERE id = v_book_id;

        UPDATE loans
        SET return_date = CURRENT_TIMESTAMP
        WHERE id = p_loan_id;

        COMMIT;
        SELECT 'Книга успешно возвращена' AS message;
    END IF;
END