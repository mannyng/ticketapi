class CreateTasks < ActiveRecord::Migration[5.0]
  def up
    create_table :tasks do |t|
      t.string :name
      t.references :card
      t.boolean  :done

      t.timestamps
    end
  end
  def down
   drop_table :tasks
  end
end
