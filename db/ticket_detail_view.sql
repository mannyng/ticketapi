SELECT
  flights.id                as flight_id,
  flights.company           as company,
  flights.points            as points,
  flights.duration          as total_duration,
  segments.id               as segments_id,
  segments.duration         as duration,
  segments.arrival_time         as arrivalTime,
  segments.departure_time       as departureTime,
  segments.origin               as origin,
  segments.destination          as destination
  segments.connection_duration  as connectionDuration
FROM
  flights
JOIN segments ON 
   flights.id = segments.flight_id   

