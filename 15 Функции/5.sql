CREATE FUNCTION format_number(number int)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    declare res_number varchar(100);
    if number < 1000 then
        set res_number = number;
    elseif number >= 1000 then
        set res_number = concat(format(number/1000, 1), 'K');
    end if;

    if res_number like '%.0%' then
        set res_number = substring_index(res_number, '.', 0);
    end if;

    return res_number;
end;