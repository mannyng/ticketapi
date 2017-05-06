class UsersController < ApplicationController
  skip_before_action :authenticate_user_from_token!


  def index
    render json: User.all
  end


end
