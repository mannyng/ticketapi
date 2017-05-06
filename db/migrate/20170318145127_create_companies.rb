class CreateCompanies < ActiveRecord::Migration[5.0]
  def up
    create_table :companies do |t|
      t.references :user
      t.string :name
      t.integer :phone1
      t.string :role
      t.string :logo
      t.string :website
      t.string :markets
      t.tsrange :team_size
      t.string :pitch
      t.text :description
      t.string :products
      t.string :street
      t.string :area
      t.string :city
      t.string :state
      t.string :country
      t.string :reg_code

      t.timestamps
    end
      add_index :companies, :role
  end
  def down
   drop_table :companies
  end
end
