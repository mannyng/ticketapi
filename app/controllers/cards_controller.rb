class CardsController < ApplicationController
 skip_before_action :authenticate_user_from_token!, raise: false

  def index
    cards = Card.all
   render json: cards
  end

  def show
   card = Card.find(params[:id])
   render json: card
  end

  def create
   card = Card.new(card_params)
   card.customer_id = 1
   if card.save!
    #{render head: none}
   render json: card
  end
 end
 
  def update
   card = Card.find(params[:id])
  if  card = card.update(card_params)
   render json: card
   else
   render json: card
  end
 end

 private

  def card_params
     params.require(:card).permit(:row_order_position, :title, :description, :status, :color, :customer_id)
  end
  
end
