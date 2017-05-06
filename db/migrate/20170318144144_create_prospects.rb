class CreateProspects < ActiveRecord::Migration[5.0]
  def up
    create_table :prospects do |t|
      t.references :user
      t.string :name
      t.integer :phone1
      t.string :role
      t.string :cv
      t.string :website
      t.string :markets
      t.tsrange :team_size
      t.string :pitch
      t.text :description
      t.string :street
      t.string :area
      t.string :city
      t.string :state
      t.string :country 
      t.string :id_code

      t.timestamps
    end
     add_index :prospects, :role
  end
  def down
    drop_table :prospects
  end
end
