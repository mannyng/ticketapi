class UsersController < ApplicationController
  skip_before_action :authenticate_user_from_token!, raise: false


  def index
    render json: User.all
  end


end
