class CardSerializer < ActiveModel::Serializer
  type :card

  attributes :id, :title, :description, :status, :color, :customer_id, :row_order_position

  has_many :tasks

end
