class SessionController < ApplicationController
  def new
    @user = User.new
  end

  def create

    username = params[:username]
    password = params[:password]
  

    user = User.find_by username: username
    if (user.present?) && (user.authenticate password)
      session[:user_id] = user.id
      redirect_to root_path
    else
      # only show the flash once
      flash.now[:alert] = "Something wrong with username and/or password"
      render :new
    end

  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end
end
