class ActorsController < ApplicationController

  before_action do
    authenticate_user!
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new params.require(:actor).permit(:first_name, :last_name, :character, :bio, :show_id)
    if @actor.save
      redirect_to root_path
    else
      render :new
    end

  end
end
