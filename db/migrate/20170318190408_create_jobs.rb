class CreateJobs < ActiveRecord::Migration[5.0]
  def up
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :primary_role
      t.string :type
      t.string :location
      t.boolean :remote
      t.boolean :visa
      t.tsrange :salary
      t.jsonb :equity, default: {}
      t.string :coworkers

      t.timestamps
    end
     add_index :jobs, :title
  end
  def down
   drop_table :jobs
  end
end
