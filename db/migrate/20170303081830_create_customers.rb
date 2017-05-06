class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.references  :user
      t.string :first_name
      t.string :last_name
      t.integer :phone1
      t.string :username

      t.timestamps
    end
     add_index :customers, :username
  end
end
