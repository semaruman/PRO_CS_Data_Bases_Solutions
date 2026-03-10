SELECT
    room_number,
    specialization,
    name AS 'doctor_name',
    GROUP_CONCAT((
        SELECT CONCAT(ticket_number, ' - ', appointment_time)
        FROM appointments
        WHERE id = doctor_id
        ) SEPARATOR '; ')

FROM doctors;