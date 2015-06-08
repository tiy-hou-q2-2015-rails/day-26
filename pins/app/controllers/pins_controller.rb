class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def new
  end

  def show
  end
end
