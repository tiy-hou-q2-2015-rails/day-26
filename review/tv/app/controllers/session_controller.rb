class SessionController < ApplicationController
  def new
  end

  def destroy
    session.delete :user_id
    redirect_to root_path, alert: "Ya gone"
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by username: username
    if (user.present?) && (user.authenticate password)
      # yay!
      session[:user_id] = user.id
      redirect_to root_path
    else
      # boo!
      flash.now[:alert] = "💩💩💩 Ya wrong 💩💩💩"
      render :new
    end

  end
end
