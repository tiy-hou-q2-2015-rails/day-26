class PagesController < ApplicationController
  def welcome
    @shows = Show.all
  end
end
