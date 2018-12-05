class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @user = User.find(session[:user_id])
  end

  def logging_in
    session[:user_id] = @user.id
  end

  def logged_in
    !!session[:user_id]
  end

  def logging_out
    session[:user_id] = nil
  end

  def authenticate
    redirect_to new_session_path unless logged_in
  end
end
