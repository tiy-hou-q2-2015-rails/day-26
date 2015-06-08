class PinsController < ApplicationController

  before_action do
    if session[:user_id].nil?
      redirect_to sign_in_path
    else
      @current_user = User.find_by id: session[:user_id]
    end
  end

  def index
    # @pins = Pin.where(user_id: @current_user.id).all
    @pins = @current_user.pins.order("created_at desc")
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new params.require(:pin).permit(:photo_url, :link)
    @pin.user = @current_user
    if @pin.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
end
