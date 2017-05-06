class CreateFlights < ActiveRecord::Migration[5.0]
  def up
    create_table :flights, id: false, force: true do |t|
    t.integer :id, null: false, limit: 8
    t.string :company
    t.integer :points
    t.integer :duration
    end
    create_table :segments do |t|
    t.integer :duration
    t.integer :connection_duration
    t.datetime :departure_time
    t.datetime :arrival_time
    t.string :origin
    t.string :destination
    t.integer :flight_id, null: false
    end
    execute "ALTER TABLE flights ADD PRIMARY KEY (id)" 
    add_index :segments, :flight_id
  end
  def down
   drop_table :segments
   drop_table :flights
  end
end
