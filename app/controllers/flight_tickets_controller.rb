class FlightTicketsController < ApplicationController
  skip_before_action :authenticate_user_from_token!, raise: false


  def index
      #if params[:origin].present?
      #@origin = params[:origin]
      #choose_ticket = ChooseTicket.new(@origin)
      #ticket = FlightTicket.where('segment@>'origin' = ?',  @origin )
       #@ticket = FlightTicket.where("segment->>'origin' = ?", 'GRU')
      #ticket = FlightTicket.where('segment @> ?', {origin: 'jfk'}) 
      #ticket = FlightTicket.where(
      #choose_ticket.where_clause,
      #choose_ticket.where_args).
      #order(choose_ticket.order)
    #else
     # ticket = []
    #end

    #render json: ticket
    #render json: FlightTicket.all.to_a
    render json: FlightTicket.all
  end

end
