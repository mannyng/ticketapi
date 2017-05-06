class FlightTicket < ActiveRecord::Base
  #serialize :segment, HashSerializer
  #store_accessor :segment#, :duration, :departureTime, :arrivalTime, :origin, :destination, :connectionDuration
  # serialize :segment#, TicketSegment

end
