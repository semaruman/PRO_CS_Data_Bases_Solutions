CREATE PROCEDURE get_certificate(
    IN p_user_id INT,
    IN p_certificate_data VARCHAR(255)
)
BEGIN
    DECLARE is_certificate_active BOOLEAN;
    START TRANSACTION;

    SELECT EXISTS (SELECT '1' FROM certificates WHERE user_id = p_user_id) INTO is_certificate_active;

    IF is_certificate_active THEN
        SELECT 'У пользователя уже есть активный сертификат!' AS 'message';
        ROLLBACK;
    ELSE
        INSERT INTO certificates (user_id, certificate_data, status) VALUES
            (p_user_id, p_certificate_data, 'active');
        SELECT 'Сертификат успешно выдан.' AS 'message';
        COMMIT;
    end if;
end;