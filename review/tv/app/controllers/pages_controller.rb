class PagesController < ApplicationController
  before_action do
    authenticate_user!
  end

  # before_action :authenticate_user!

  def welcome
    @shows = Show.all
  end
end
