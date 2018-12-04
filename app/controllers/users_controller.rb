class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy]

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
        flash[:error] = @user.errors.full_messages

        redirect_to new_user_path
    end
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :email, :first_name, :last_name, :admin)
  end
end
