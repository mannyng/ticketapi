class CreateDetailTicketMaterializedView < ActiveRecord::Migration[5.0]
   def up
     execute %{
        CREATE MATERIALIZED VIEW ticket_details AS
SELECT
  flights.id                as id,
  flights.company           as company,
  flights.points            as points,
  flights.duration          as total_duration,
  segments.id               as segments_id,
  segments.duration         as duration,
  segments.arrival_time         as arrivalTime,
  segments.departure_time       as departureTime,
  segments.origin               as origin,
  segments.destination          as destination,
  segments.connection_duration  as connectionDuration,
  segments.flight_id            as flight_id
FROM
  flights
JOIN segments ON
   flights.id = segments.flight_id
   }
   execute %{
    CREATE UNIQUE INDEX 
     flight_ticket_detail_id
       ON
     ticket_details(segments_id)
    }
   end
   def down
    execute "DROP MATERIALIZED VIEW ticket_details"
  end
end
