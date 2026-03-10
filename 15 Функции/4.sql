CREATE FUNCTION get_container_status(con_id varchar(64))
RETURNS VARCHAR(100)
BEGIN
    declare con_status varchar(50);
    SET con_status = (
        SELECT status
        FROM containers
        WHERE id = con_id
        );
    IF con_status <=> NULL THEN
        SET con_status = 'Container not found';
    end if;
    RETURN con_status;
END;