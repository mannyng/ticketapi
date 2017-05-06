class CreateIndexFt < ActiveRecord::Migration[5.0]
  def up

    execute <<-SQL
      CREATE INDEX ticket_seg_origin_index ON flight_tickets ((segment->>'origin'))
    SQL
  end
   def down
     drop_index :ticket_seg_origin_index
   end
end
