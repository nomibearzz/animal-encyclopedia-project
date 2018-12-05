class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      logging_in
      redirect_to animals_path
    else
      flash[:error] = "Username/Password does not exist"
      #flash[:error] = ["чувак проверь пароль"]
      redirect_to new_session_path
    end
  end

  def destroy
    logging_out
    redirect_to new_session_path
  end
end
