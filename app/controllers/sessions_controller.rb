class SessionsController < ApplicationController
  
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to welcome_home_path
  end

  def destroy
    reset_session
    redirect_to home_signout_path
  end
  
end
