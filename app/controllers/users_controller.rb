class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    #we make a new users
    # to pass to the form vieaw later
    @user = User.new
  end

end
