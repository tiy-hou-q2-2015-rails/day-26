class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  def authenticate_user!
    @current_user = User.find_by id: session[:user_id]
    if @current_user.nil?
      redirect_to sign_in_path
    end
  end


end
