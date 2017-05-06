class CreateJobSeekings < ActiveRecord::Migration[5.0]
  def up
    create_table :job_seekings do |t|
      t.references :job
      t.references :prospect

      t.timestamps
    end
    add_index :job_seekings, [:job_id, :prospect_id]
  end
  def down
    drop_table :job_seekings
  end
end
