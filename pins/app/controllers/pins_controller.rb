class PinsController < ApplicationController
  def index

    # session[:user_id] = 1

    if session[:user_id].nil?
      redirect_to sign_in_path
      return
    end

    user = User.find_by id: session[:user_id]
    @pins = Pin.where(user_id: user.id).all
  end

  def new
  end

  def show
  end
end
