class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def new
    #we make a new users
    # to pass to the form vieaw later
    @user = User.new
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
