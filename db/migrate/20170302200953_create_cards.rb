class CreateCards < ActiveRecord::Migration[5.0]
  def up
    create_table :cards do |t|
      t.string :title
      t.string :description
      t.string :status
      t.string :color
      t.references :customer
    end
     add_index :cards, :status
  end
   def down
    drop_table :cards
   end
end
