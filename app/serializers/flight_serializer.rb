class FlightSerializer < ActiveModel::Serializer
  type :flight

  attributes :id, :company, :points, :duration

 has_many :segments

end
