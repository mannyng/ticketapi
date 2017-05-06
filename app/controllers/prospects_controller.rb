class ProspectsController < ApplicationController
  skip_before_action :authenticate_user_from_token!

   def index
  #    @prospects = Prospect.all
   end

   private

  def assign_prospect
   @prospect = Prospect.find(params[:id])
  end
  def prospect_params
  
  end 

end
