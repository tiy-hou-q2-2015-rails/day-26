class PinsController < ApplicationController

  before_action :authenticate_user!

  def index
    @pins = @current_user.pins
    #@pins = Pin.where(user_id: session[:user_id]).all # only pins for vitaly (or the current_user)
  end

  def authenticate_user!

    if signed_in?
      @current_user = User.find session[:user_id]
    else
      redirect_to sign_in_path
    end

  end

  def signed_in?
    if session[:user_id].to_i > 0
      return true
    else
      return false
    end
  end
end
