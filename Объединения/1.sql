SELECT train_number, train_name, departure_time AS 'time',
       'departing' AS 'direction'
FROM departing_trains

UNION

SELECT train_number, train_name, arrival_time,
       'arriving' AS 'direction'
FROM arriving_trains
ORDER BY time