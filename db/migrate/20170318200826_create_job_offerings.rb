class CreateJobOfferings < ActiveRecord::Migration[5.0]
  def up
    create_table :job_offerings do |t|
      t.references :job
      t.references :company

      t.timestamps
    end
     add_index :job_offerings, [:job_id, :company_id]
  end
  def down
    drop_table :job_offerings
  end
end
