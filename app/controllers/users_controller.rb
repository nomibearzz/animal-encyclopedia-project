class UsersController < ApplicationController
  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:password, :email, :first_name, :last_name, :admin)
  end
end
