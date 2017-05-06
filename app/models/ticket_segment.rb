class TicketSegment
  include Virtus.model


  attribute :duration, Integer
  attribute :origin, String
  attribute :destination, String
  attribute :connectionDuration, Integer
  attribute :departureTime, DateTime
  attribute :arrivalTime, DateTime
 
  #def self.dump(segment)
    #segment.to_h
  #end

  #def self.load(segment)
   # new(segment)
  #end

 end
