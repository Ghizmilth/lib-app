class UsersController < ApplicationController

  before_action :require_login, only: [:show]

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  def new
    #we make a new users
    # to pass to the form vieaw later
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
