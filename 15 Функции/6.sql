CREATE PROCEDURE add_application(
    in name VARCHAR(255),
    in domain VARCHAR(255),
    in plan VARCHAR(50))
begin
    INSERT INTO applications (name, domain, plan) VALUES
    (name, domain, plan);
end;