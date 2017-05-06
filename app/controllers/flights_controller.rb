class FlightsController < ApplicationController
  before_action :authenticate_user_from_token!, raise: false

  def index
     @flights = Flight.all
    #if params[:origin].present?
    #  @orig = params[:origin]
    #  choose_ticket = ChooseTicket.new(@orig)
     # flights = Segment.where(
     # choose_ticket.where_clause,
     # choose_ticket.where_args).
     # order(choose_ticket.order)
    #flights = Segment.where("origin" = @origin )
    #flights = Flight.where("segment->>'origin' = ?", 'GRU')
   #else
   #   flights = []
   # end
  
   render json: @flights
   end

end
