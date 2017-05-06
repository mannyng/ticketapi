class AddRowOrderPositionToCards < ActiveRecord::Migration[5.0]
  def up
    add_column :cards, :row_order_position, :integer
  end
  def down
   drop_column :cards, :row_order_position
  end

end
