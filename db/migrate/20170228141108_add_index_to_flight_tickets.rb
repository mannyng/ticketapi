class AddIndexToFlightTickets < ActiveRecord::Migration[5.0]
  def up
    add_index :flight_tickets, :segment, using: :gin
    add_index :ticket_details, :flight_id  
 
  end
  def down
   remove_index :ticket_details, :flight_id
   #remove_index :flight_tickets, :segment#, using: :gin
  end
end
