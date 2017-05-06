class CreatePreferences < ActiveRecord::Migration[5.0]
  def up
    create_table :preferences do |t|
      t.jsonb :skills, default: {}
      t.jsonb :experience, default: {}
      t.jsonb :education, default: {}
      t.references :job

      t.timestamps
    end
     add_index :preferences, [:skills, :job_id]
  end
  def down
    drop_table :preferences
  end
end
