class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: "bob"
    session[:user_id] = user.id
    redirect_to root_path
  end
end
