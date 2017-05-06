class FlightTickets < ActiveRecord::Migration[5.0]
  def up
    #enable_extension :hstore
   create_table :flight_tickets, id: false, force: true do |t|
    t.integer :id, null: false, limit: 8
    t.string :company
    t.integer :points
    t.integer :duration
    t.jsonb :segment, null: false, default: []
    t.timestamps
   end
    execute "ALTER TABLE flight_tickets ADD PRIMARY KEY (id)"
  end
  def down
    #disable_extension :hstore
    drop_table :flight_tickets
  end
end
